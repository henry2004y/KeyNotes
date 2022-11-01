# Ionosphere {#sec:iono}

## M-I Coupling {#sec:MI_coupling}

For magnetosphere simulations, the simplest inner boundary is treated as a conducting sphere. However, this is often not realistic enough to reveal the nature. The next level extension is to employ a magnetospheric-ionospheric electrostatic
coupling model. The inner boundary, where the MHD quantities are connected to the ionosphere, is taken to be a shell of radius $r_\text{in}$ (e.g. $r_\text{in}\sim 3\,\text{R}_\text{E}$). The ionosphere locates at $r_\text{ion}\sim 1000\,\text{km}\sim 0.15\,\text{R}_\text{E}$. Ideally $r_\text{in}$ shall be as close to $r_\text{ion}$ as possible, but typically it is restricted by computational limitations, such as extraneously high Alfvén speeds and very large $\mathbf{B}$ field gradients closer to the Earth. Inside this shell we do not solve the governing equations (MHD/PIC/Vlasov), but assume a static dipole field. The important physical processes within the shell are the flow of _field-aligned currents_ (FACs) and the closure of these currents in the ionosphere. At each time step,

1. The magnetospheric FACs are mapped along the field lines from the inner boundary to the ionosphere, which are the input to the ionospheric potential equation [@raeder1995]

$$
\nabla\cdot(\pmb{\Sigma}\cdot\nabla\Phi) = -j_\parallel\sin I
$$ {#eq:ionosphere_potential}

where $\pmb{\Sigma}$ is the conductance tensor, $\Phi$ is the electric potential, $j_\parallel$ is the mapped FAC density with the downward considered positive and corrected for flux tube convergence, and $I$ is the inclination of the dipole field at the ionosphere. (???)

2. @eq:ionosphere_potential is solved on the surface of a sphere $r=r_\text{ion}$. The boundary condition $\Phi=0$ is applied at the equator. From here, one can either choose a static analytic model of Hall and Pederson conductance that accounts for multiple physics (e.g. EUV and diffuse auroral contributions), or simply adopt a uniform Pederson conductance, or the height-integrated conductivity, $\Sigma_p = 5\,\text{Siemens}$, while the Hall conductance $\Sigma_H$ is assumed to be zero. The latter one is simplified to solve

$$
\nabla^2\Phi = -j_\parallel\sin I/\Sigma_p
$$

3. Once the potential equation is solved the ionospheric potential is mapped back to the $r_\text{in}$ shell and used as a boundary condition for the magnetospheric flow by taking $\mathbf{v}=(-\nabla\Phi)\times\mathbf{B}/B^2$.

### Caveats

* The mapping assumes conservation, which is not perfect. In practice $r_\text{in}\sim 4\,\text{R}_\text{E}$ is a minimum requirement for reasonable FACs.
* How important it is to use a more realistic conductance model?
* Most numerical codes couples a Cartesian grid to a spherical ionosphere grid, while some couples a spherical grid to a spherical grid. For magnetosphere simulations we need a relatively simple but super fast electric potential solver, therefore structured mesh is often adopted.

## Ionosphere Modeling

* What equation set is the model solving? How is the model solving them? What is being neglected?
* What species are included? How is the chemistry solved?
* Parameterizations in things such as heating, cooling, viscosity, conduction, chemistry, diffusion, collision, absorption, ionization cross sections, reaction rates...
* How are upper and lower boundaries treated? How is the pole or the open/closed field-line boundary treated?
* How are electrodynamics considered? How is the aurora specified? How is the magnetospheric electric field imposed? Is ion precipitation considered?

For an ionosphere, a magnetic field-aligned grid is often used. This is complicated by the non-orthogonal nature of the magnetic field coordinate system. Assumptions are made.

How to solve each direction (coupled or independently)? For the ionosphere, along the field-line is treated differently than across the field-lines.

As the equations of motion are solved for, the source terms must be added. How to treat these with respect to solving in the different directions?

Build a simple 1D ionosphere model is easy (CAN I MAKE ONE MYSELF?).

Steady-state - assume $\partial \mathbf{X}/\partial t = 0$. Strangly, this is applied in situations in which the value can change on a time scale much faster than the time-step. For example, the ion velocity is often assumed to be steady-state. Ion chemistry is sometimes assumed to be steady-state.

### Chemistry

$$
\frac{\partial N}{\partial t} = S - L
$$

where $N$ is the number density of the species, $S$ represents the sources and $L$ represents the losses. Losses can almost always be expressed as:

$$
L = RMN
$$

where $R$ is the reaction rate, $M$ is the density of the species it is reacting with.

For a steady-state,

$$
\begin{aligned}
S - L &= 0 \\
N &= \frac{S}{RM}
\end{aligned}
$$

This is quite stable, but can be very wrong in regions of slowly changing ion densities, such as in the F-region. This is perfect for the E-region, though. It is quite easy to
implement in a simple environment, but can be much more complicated as non-linear terms are include (recombination, in which $M$ can depend on $N$).

An explicit time step chemistry is trivial to implement in almost all situations, but it is also the least stable, since the loss terms can become larger than the source terms and the density can quickly be driven to negative values. Subcycling can help with this, but not always.

An implicit time step chemistry is relatively stable and easier to implement than steady-state. For example in GITM, there is a blend between sub-cycling and a simplified implicit scheme that switches depending on the size of the loss term compared to the density.

Now we need to also look at the source terms. The ionization rates can be obtained from $Q_\text{EUV}$ and substituting $\sigma_s^i \lambda$ instead of $\sigma_s^a\lambda$ (not in $\tau$). [Schunk and Nagy] Chapter 8 list a bunch of chemical equations.

After that, we write down all the sources and losses, decide a time-stepping scheme, and run the model. However, if we don’t have any ion advection, the F-region will just build and build!

### Ion Advection

In the simplest form, we assume an advection speed and let the densities advect upward and downward.
