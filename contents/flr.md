# Field Line Resonance {#sec:flr}

The resonant mode coupling is one of major physical processes in the space plasmas including the magnetic reconnection and collisionless shock wave. The field line resonance describes _the resonant interaction between compressional fast waves and shear Alfvén waves in a non-uniform plasma_ such as the Earth magnetosphere. The concept of this resonant mode coupling was first outlined by Tsutomu Tamao in 1961 and later discussed in his seminal paper on hydromagnetic coupling resonances (Tamao, 1965). Experimental work by John Samson+ (1971) made resonant mode coupling the current paradigm of planetary magnetospheric ULF wave research.

## Historial Review

* Ground observations have shown discrete frequencies for EM wave power.
* In the 1950s people realized that MHD waves of poloidal and toroidal modes can be coupled, and if we thought the modes as standing waves, we might explain the discrete frequencies.
* In the 1970s a simpler box model was proposed to explain field line resonance, and the discrete frequencies are treated as sources that reflect the properties of the magnetopause thickness with a preferred KHI growth rate.
* In the 1980s the cavity model was proposed to link the discrete frequencies to the eigenmodes if we treated the magnetosphere as a cavity.
* In the 1990s the waveguide model was proposed based on the cavity idea to loose the constrain in the azimuthal direction.

Now, the big question is: where do the quantized numbers of the observed ULF waves come from [Kivelson & Southwood, 1986]?Researchers borrowed ideas from ionospheric radio propagation, laser fusion and plasma physics and came up with the names _cavity_ and _waveguide_. For the box model that we will discuss in the next section, if the $z$ boundaries are perfectly reflecting, wave fields must have standing structure in the $z$ direction, and allowed parallel wave numbers are quantized ($k_z = m\pi/c$, as in @eq:flr_kz_quantized). If the boundaries are weakly absorptive, the parallel wave numbers are complex, but the real parts are still quantized as above. If we impose periodic boundary conditions in $y$, the wavenumber in $y$ $k_y$ needs to be quantized as well.

## Governing Equations

The theory starts from linearized MHD equations, by ignoring pressure, gravity, viscosity and rotation,

$$
\begin{aligned}
\rho \frac{\partial \mathbf{u}}{\partial t} = \mathbf{j}\times\mathbf{B}_0 \\
\mathbf{E} = -\mathbf{u}\times\mathbf{B}_0 \\
\nabla\times\mathbf{E} = -\frac{\partial \mathbf{B}_1}{\partial t} \\
\nabla\cdot\mathbf{B}_1 = 0 \\
\nabla\times\mathbf{B}_1 = \mu_0\mathbf{j}
\end{aligned}
$$ {#eq:flr_mhd}

As usual in wave analysis, $\mathbf{u},\mathbf{j},\mathbf{E}$ are treated as perturbations. The MHD wave equation for the electric field can then be obtained,

$$
\begin{aligned}
\dot{\mathbf{E}} &= -\dot{\mathbf{u}}\times\mathbf{B}_0 = -\frac{1}{\rho}(\mathbf{j}\times\mathbf{B})\times\mathbf{B}_0 = -\frac{1}{\mu_0\rho}[(\nabla\times\mathbf{B}_1)\times\mathbf{B}_0]\times\mathbf{B}_0 \\
\ddot{\mathbf{E}} &= [(\nabla\times(\nabla\times\mathbf{E}))\times\mathbf{V}_A]\times\mathbf{V}_A
\end{aligned}
$$

where $\mathbf{V}_A = \mathbf{B}_0 /\sqrt{\mu_0 \rho}$ is the Alfvén velocity, or if we mutate the triad cross terms,

$$
\ddot{\mathbf{E}} = \mathbf{V}_A \times [\mathbf{V}_A\times\nabla\times(\nabla\times\mathbf{E})]
$$ {#eq:flr_e_wave}

### Axisymmetric Spherical Coordinates

First, let's treat the problem in spherical coordinates $(r,\theta,\varphi)$, as done by Henry Radoski and Robert Carovillano in 1966.

In the analysis below the perturbed variables, $\mathbf{B}_1$, $\mathbf{E}$, $\mathbf{j}$ and $\mathbf{u}$ are treated as axisymmetric, i.e. in spherical coordinates any perturbed function has the form

$$
\mathbf{\delta} = \delta_r(r,\theta)\hat{r} + \delta_\theta(r,\theta)\hat{\theta} + \delta_\varphi(r,\theta)\hat{\varphi}
$$

Under this symmetry, the variables can be separated into two independent sets referred to as the _toroidal_ and _poloidal_ variables:

* Toroidal variables

$u_\varphi, B_{1\varphi}, E_r, E_\theta, j_r, j_\theta;\, \nabla\cdot\mathbf{v} = \frac{1}{r\sin\theta}\frac{\partial u_\varphi}{\partial \varphi}\equiv 0$ (incompressible)

* Poloidal variables

$u_r, u_\theta, B_{1r}, B_{1\theta}, E_\varphi, j_\varphi ;\, \nabla\cdot\mathbf{E} = \frac{1}{r\sin\theta}\frac{\partial E_\varphi}{\partial \varphi}\equiv 0$

One insight into these two sets of variables can be gained from the Poynting vector $\mathbf{S}$. The simplest MHD Ohm's law constrains the electric field $\mathbf{E}$ to be perpendicular to the background magnetic field $\mathbf{B}_0$. For the toroidal mode, $\mathbf{E}$ lies in a meridional plane and $B_{1\varphi}$ is out of plane, so $\mathbf{S}$ is directed along the field lines. For the poloidal mode, $\mathbf{S}$ is in a meridional plane and parallel to the wave vector $\mathbf{k}$, because

$$\mathbf{B}_1 = -i\mathbf{k}\times\mathbf{E}\Rightarrow \mathbf{S}\parallel\mathbf{E}\times\mathbf{B}_1 \parallel \mathbf{E}\times(\mathbf{k}\times\mathbf{E})=E^2\mathbf{k} - \cancel{(\mathbf{E}\cdot\mathbf{k})}\mathbf{E} \parallel \mathbf{k}
$$

for a transverse EM wave ($\mathbf{E}\perp\mathbf{k}$). Thus the toroidal mode is an Alfvén mode with dispersion relation $\omega = V_A k \cos\theta$, $\mathbf{S} \parallel \mathbf{B}_0$, while poloidal mode is a fast mode with dispersion relation $\omega = V_A k$, $\mathbf{S} \parallel \mathbf{k}$.

To clarify my early misunderstanding: _a toroidal mode is not propagating in the toroidal direction_! Similarly, _a poloidal mode does not propagate in the poloidal direction_. In fact, it is more common to have a fast poloidal mode propagating in the azimuthal direction, then coupling to the Alfvén toroidal mode along the ambient magnetic field direction, then being observed on the ground.

For the axisymmetric poloidal electric field $E_\varphi \sim e^{i\omega t}$, @eq:flr_e_wave becomes (I HAVEN‘T DERIVED THIS!)

$$
B_0^2[\nabla^2 - (r^2 \sin^2\theta)^{-1}] E_\varphi = -\mu_0 \rho \omega^2 E_\varphi
$$

This is the decoupled poloidal wave equation. For a dipole field, $B_0^2 = \frac{M^2(1+3\mu^2)}{r^6}$, where $M$ is the magnetic moment and $\mu = \cos\theta$ is the colatitude. A solution for $E_\varphi$ is sought after a separation of the unknowns of the form

$$
E_\varphi = \sum_{l=1}^{\infty} f_l(r) P_l^m(\mu)
$$

where $P_l^m$ is the associated Legendre function with integer indices $l$ and $m$. Why this form you may ask? It's a mathematical hypothesis based on experience and talents. With this representation the poloidal wave equation becomes

$$
\sum_{l=1}^{\infty}[(1+3\mu^2)O_l + 2K^2] f_l P_l^m = 0
$$ {#eq:poloidal_spherical_assump}

where $K^2 = \frac{\mu_0 \rho}{2}\big( \frac{\omega^2 r^2}{M^2}\big)^2$ (maybe the coefficient is wrong) and $O_l$ is the spherical Bessel operator

$$
O_l = \frac{1}{r}\frac{\partial^2}{\partial r^2}r - \frac{l(l+1)}{r^2}
$$

(This is almost out of my control now. If I want to fully understand this, I need to go back to math equations for physics!!!) The special property of Legendre polynomials allows us to write the solution to the wave equation as

$$
\sum_{s = 0,\pm 2} a_{l+s} O_{l+s} f_{l+s} + K^2 f_l = 0
$$ {#eq:poloidal_spherical_sol}

where the constants coefficients are

$$
\begin{aligned}
a_{l+2} &= \frac{3(l+2)(l+3)}{2(2l+3)(2l+5)} \\
a_{l} &= \frac{5l(l+1)-6}{(2l-1)(2l+3)} \\
a_{l-2} &= \frac{3(l-2)(l-1)}{2(2l-3)(2l-1)}
\end{aligned}
$$

From @eq:poloidal_spherical_sol, we know that radial amplitudes of opposite parity do not couple. Since only $l\ge 1$ occurs in @eq:poloidal_spherical_assump, there are two fundamental unknown radial amplitudes: one for odd $l$ and one for even $l$.

We assume perfect reflection at the boundaries so that the transverse components of $E$, i.e. $E_\theta$ and $E_\varphi$, are zeros. The walls are assumed to be rigid so that $u_r = 0$. The normal component of $\mathbf{B}_1$ also vanishes from the governing equations.

The toroidal wave equation seems to be too complicated for me following Radoski's derivations...

### Cylindrical Coordinates

In cylindrical coordinates $(r,\varphi,z)$, assuming perturbations of the form $e^{i(m\varphi - \omega t)}$, we can separate the linearized equations (I HAVEN'T DERIVED THIS!),

$$
\Big[ \omega^2 \mu_0 \rho - \frac{1}{r}(\mathbf{B}_0\cdot\nabla)r^2(\mathbf{B}_0\cdot\nabla) \Big]\frac{u_\varphi}{r} = \omega m \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{r}
$$ {#eq:cylindrical_mhd_toroidal}

$$
\Big[\omega^2 \mu_0 \rho - rB^2 (\mathbf{B}_0\cdot\nabla)\frac{1}{r^2 B^2}(\mathbf{B}_0\cdot\nabla) \Big]rE_\varphi = i\omega B^2 (\mathbf{B}_0\times\nabla)_\varphi \Big( \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{B^2} \Big)
$$ {#eq:cylindrical_mhd_poloidal}

$$
i\omega \mathbf{B}_0\cdot\mathbf{B}_1 = \frac{1}{r}(\mathbf{B}\times\nabla)_\varphi (rE_\phi) - imB^2\frac{u_\varphi}{r}
$$

The first two equations are from the momentum equation. $\mathbf{B}_0\cdot\nabla$ is the derivative along the direction of $\mathbf{B}$. These are wave equations coupled by the terms on the RHS which depend on $\mathbf{B}_0\cdot\mathbf{B}_1$, the compressional part of the magnetic perturbation. The third equation is from Faraday's law and Ohm's law. It shows how $\mathbf{B}_0\cdot\mathbf{B}_1$, $E_\varphi$ and $u_\varphi$ are related and closes the set. Since the transverse dispersion relation depends only on $k_\parallel$, it is tempting to think of the LHS of @eq:cylindrical_mhd_toroidal and @eq:cylindrical_mhd_poloidal as representing pseudo-transverse mode oscillations, and the RHS as representing the coupling due to the fast mode which has a compressional component.

If $m = 0$ the RHS of @eq:cylindrical_mhd_toroidal vanishes. The LHS then describes a mode in which the electric field is purely radial and the magnetic and velocity perturbations are azimuthal. Magnetic L shells decouple and each shell oscillates azimuthally independently of each other. This is the Alfvénic _toroidal_ mode. If $m\rightarrow\infty$, for the RHS to remain finite, $\mathbf{B}_0\cdot\mathbf{B}_1\rightarrow0$ so the RHS of @eq:cylindrical_mhd_poloidal vanishes. @eq:cylindrical_mhd_poloidal then describes a mode in which $\mathbf{E}$ is azimuthal and $\mathbf{u}$ and $\mathbf{b}$ are contained in a meridian plane. This is the compressional _poloidal_ mode.

### Cartesian Box Model

Earliest theories made derivations in the spherical or cylindrical coordinates. Here we show an easier version in the Cartesian coordinates. We simplify the actual dayside magnetosphere, which like a compressed dipole, to something we can solve analytically. Imagine a field line with both footpoints connecting to the conducting ionosphere, we can map this curved field line into a straight line extending along z. In the x direction, the outer boundary is the magnetopause, and the inner boundary is the reflection point (some studies refer to the plasmapause). The y direction represents the azimuthal direction, therefore at the front of the magnetosphere it is more aligned with the y direction in GSE/GSM and at the flanks/sides it is more aligned with the x direction. If the length in y is finite ($b < \infty$), we call it a _cavity_; if the length in y is infinite ($b\rightarrow \infty$), we call it a _waveguide_. The names cavity and waveguide are inherited from electrodynamics. This is shown in the schematic @fig:box_mapping and @fig:box_config.

![From one of Southwood & Kivelson's paper.](images/box_model_mapping.png){#fig:box_mapping}

![From one of Southwood & Kivelson's paper.](images/box_model_config.png){#fig:box_config}

Sometimes it is better to use the plasma displacement $\pmb{\xi}$ instead of $\mathbf{u}$, where $\mathbf{u} = \dot{\pmb{\xi}}$. 

Along the $z$ direction, the wavenumber $k_z$ will have discrete values determined by field line length. In the y direction, we impose periodic boundary conditions. This does not mean that the solution do not have y direction variations; it means that it is like a cavity with given boundaries along y, so that a quantized wavenumber $k_y$ is required to fulfill the boundary condition. In the x direction, the boundaries are provided by the large $V_A$ gradients at both the magnetopause $x_m$ and the plasmapause $x_t$. Waves incident on either of these two boundaries are totally internally reflected, and that wave energy is contained within the box, so we impose $\xi_x = 0 | x = x_t, x_m$. Note that in the model we do not introduce wavenumber $k_x$. Because of the ideal MHD assumption, the electric field along the field lines $E_z = 0$.

With the ansatz

$$
\begin{aligned}
\mathbf{k} &= (0, k_y, k_z) \\
\mathbf{E} &= (E_x(x), E_y(x), 0) e^{i(k_y y + k_z z - \omega t)} \\
\mathbf{B}_1 &= (B_{1x}, B_{1y}, B_{1z}) e^{i(k_y y + k_z z - \omega t)} \\
\mathbf{B}_0 &= B_z \hat{z} = B\hat{z} \\
\rho &= \rho(x) \\
\mathbf{u}_0 &= 0    
\end{aligned}
$$

and assuming cold plasma, the linearized MHD momentum equation gives

$$
\begin{aligned}
\rho\Big(\frac{\partial\mathbf{u}}{\partial t} + \cancel{\mathbf{u}\cdot\nabla\mathbf{u}}\Big) &= \mathbf{j}\times\mathbf{B} \\
\rho\frac{\partial\mathbf{u}}{\partial t} &= \frac{1}{\mu_0}(\nabla\times\mathbf{B})\times\mathbf{B}
\end{aligned}
$$

Separating the two perpendicular $x$ and $y$ directions and applying plane wave decomposition,

$$
\begin{aligned}
-i\omega\rho\mu_0 u_x &= (\nabla\times\mathbf{B}_1)_y B_z - (\nabla\times\mathbf{B}_1)_z \cancel{B_y} \\
&= \Big(\frac{\partial B_{1x}}{\partial z} - \frac{\partial B_{1z}}{\partial x}\Big) B \\
&= -\frac{\partial}{\partial x}\Big( B B_{1z} \Big) + i k_z B B_{1x}
\end{aligned}
$$

$$
\begin{aligned}
-i\omega\rho\mu_0 u_y &= (\nabla\times\mathbf{B}_1)_z \cancel{B_x} - (\nabla\times\mathbf{B}_1)_x B_z \\
&= \Big(\frac{\partial B_{1y}}{\partial z} - \frac{\partial B_{1z}}{\partial y}\Big) B \\
&= k_z B B_{1y} - k_y B B_{1z}
\end{aligned}
$$

From the simplest form of the generalized Ohm's law $\mathbf{E} = -\mathbf{u}_1 \times\mathbf{B}_0$,

$$
\begin{aligned}
E_x &= - u_y B \\
E_y &= - u_x B
\end{aligned}
$$

Inserting into the linearized momentum equation, we have

$$
\begin{aligned}
-i \omega \rho \mu_0 \frac{E_y}{B} &= -\frac{\partial}{\partial x}\Big( B B_{1z} \Big) + i k_z B B_{1x} \\
\omega \rho \mu_0 \frac{E_x}{B} &= - k_y B B_{1z} + k_z B B_{1y}
\end{aligned}
$$ {#eq:flr_momentum}

From linearized Faraday's law $\nabla\times\mathbf{E} = -\dot{\mathbf{B}_1}$,

$$
\begin{aligned}
-\frac{\partial E_y}{\partial z} &= -\dot{B_{1x}} \\
\frac{\partial E_x}{\partial z} &= -\dot{B_{1y}} \\
\frac{\partial E_y}{\partial x} - \frac{\partial E_x}{\partial y} &= -\dot{B_{1z}}
\end{aligned}
$$

$$
\begin{aligned}
B_{1x} &= \frac{1}{\omega}(- k_z E_y) \\
B_{1y} &= \frac{1}{\omega}(k_z E_x) \\
B_{1z} &= \frac{1}{\omega}\Big(-i\frac{\partial E_y}{\partial x} - k_y E_x\Big)
\end{aligned}
$$

Substituting into @eq:flr_momentum gives

$$
\begin{aligned}
-i \omega \rho \mu_0 \frac{E_y}{B} = -\frac{\partial}{\partial x}\Big[ B  \frac{1}{\omega}\Big(-i\frac{\partial E_y}{\partial x} - k_y E_x\Big) \Big] + i k_z B \frac{-k_z}{\omega} E_y \\
-i \big( \omega^2 \rho \mu_0 / B^2 - k_z^2 \big)E_y = k_y \frac{\partial E_x}{\partial x} - i \frac{\partial E_y}{\partial x^2}
\end{aligned}
$$

$$
\begin{aligned}
-i \omega \rho \mu_0 \frac{E_x}{B} = k_z B \frac{k_z}{\omega} E_x - k_y B \frac{1}{\omega}\Big(-i\frac{\partial E_y}{\partial x} - k_y E_x\Big) \\
\big( \omega^2 \rho \mu_0 / B^2 - k_y^2 - k_z^2 \big)E_x + i k_y^2\frac{\partial E_y}{\partial x} = 0
\end{aligned}
$$

Let $R^2 = \mu_0 \rho(x) \omega^2 / B^2 = \omega^2/V_A(x)^2$, we have

$$
\begin{aligned}
-i (R^2 - k_z^2)E_y = k_y \frac{\partial E_x}{\partial x} - i \frac{\partial E_y}{\partial x^2} \\
(R^2 - k_y^2 -k_z^2)E_x + i k_y^2\frac{\partial E_y}{\partial x} = 0
\end{aligned}
$$

Eliminating $E_x$ from the above two equations gives

$$
\frac{\partial^2}{\partial x^2}E_y - k_y^2 \frac{\partial}{\partial x}R^2(x)\frac{1}{(R^2 - k_z^2)(R^2 - k_z^2 - k_y^2)}\frac{\partial E_y}{\partial x} + (R^2 - k_z^2 - k_y^2)E_y = 0
$$ {#eq:flr_Ey}

@eq:flr_Ey can also be written as a second order differential equation of $B_{1z}$, the compressional component of the magnetic field (see @eq:perturb_b), as [Kivelson & Southwood 1985](LINK???) did in proposing the idea of cavity modes:

$$
\frac{\partial^2 B_{1z}}{\partial x^2} - \frac{ \frac{\partial R^2}{\partial x}}{R^2 - k_z^2}\frac{\partial B_{1z}}{\partial x} + ( R^2 - k_y^2 - k_z^2 ) B_{1z} = 0
$$

or equivalently,

$$
\frac{\partial^2 B_{1z}}{\partial x^2} - \frac{\omega^2 \partial V_A^{-2}/\partial x}{\omega^2/V_A^2 - k_z^2}\frac{\partial B_{1z}}{\partial x} + \Big( \frac{\omega^2}{V_A^2} - k_y^2 - k_z^2 \Big) B_{1z} = 0
$$ {#eq:flr_wave_bz}

Note that @eq:flr_wave_bz has a long history, all the way back to 1951, as mentioned in [Kivelson & Southwood 1986](LINK???).
Later studies prefer to use plasma displacement and perturbed magnetic field component $B_{1z}$ to describe the model. We have the governing equations

$$
\begin{aligned}
\frac{1}{V_A^2}\frac{\partial^2 \xi_x}{\partial t^2} - \frac{\partial \xi_x}{\partial z^2} &= -\frac{1}{B_0}\frac{\partial B_{1z}}{\partial x} \\
\frac{1}{V_A^2}\frac{\partial^2 \xi_y}{\partial t^2} - \frac{\partial \xi_y}{\partial z^2} &= -\frac{1}{B_0}\frac{\partial B_{1z}}{\partial y} \\
B_{1z} &= - B_0 \Big( \frac{\partial \xi_x}{\partial x} + \frac{\partial \xi_y}{\partial y} \Big)
\end{aligned}
$$

The first two equations are the $x$ and $y$ component of the momentum equation, and the last equation is the magnetic field advection equation (Faraday's law + Ohm's law). Recall that $B_{1z}$ is the compressional perturbation to the ambient magnetic field. Then on the RHS of the second equation, it is the azimuthal gradient in the fast compressional mode $\partial B_{1z}/\partial y$ that drives the response in the azimuthal place displacement $\xi_y$. It is like the LHS is a simple harmonic oscillator and the RHS is the forcing term. Recall that we are seeking for solutions of the form $e^{i(k_y y + k_z z - \omega t)}$. From here we can see that

* if $k_y=0$ for the fast mode, then there are no azimuthal gradients to drive FLRs and hence you get no wave coupling;
* if $k_y \rightarrow \infty$, then $\xi_y \rightarrow 0$ and $\xi_x$ describes a decoupled poloidal Alfvén wave.
* if $k_y \neq 0$ or $\infty$, the wave modes are coupled together and energy initially in the fast mode may mode convert to Alfvén wave energy on localized field lines.

__Uniform density and background magnetic field__
