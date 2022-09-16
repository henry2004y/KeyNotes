# Diffusion and Resisvity {#sec:resisvity}

## Diffusion and Mobility in Weakly Ionized Gases

The infinite, homogeneous plasmas assumed in the previous chapter for the equilibrium conditions are, of course, highly idealized. Any realistic plasma will have a density gradient, and the plasma will tend to diffuse toward regions of low density. For example, the central problem in controlled thermonuclear reactions is to impede the rate of diffusion by using a magnetic field. Before tackling the magnetic field problem, however, we shall consider the case of diffusion in the absence of magnetic fields. A further simplification results if we assume that the plasma is weakly ionized, so that charge particles collide primarily with neutral atoms rather than with one another. The case of a fully ionized plasma is deferred to a later section, since it results in a nonlinear equation for which there are few simple illustrative solutions. In any case,
partially ionized gases are not rare: High-pressure arcs and ionospheric plasmas fall into this category, and most of the early work on gas discharges involved fractional ionizations between $10^3$ and $10^6$, when collisions with neutral atoms are dominant.

The picture, then, is of a nonuniform distribution of ions and electrons in a dense background of neutrals (Fig. 5.1 ADD IT!). As the plasma spreads out as a result of pressure-gradient and electric field forces, the individual particles undergo a random walk, colliding frequently with the neutral atoms. We begin with a brief review of definitions from atomic theory.

## Collision Parameters

When an electron, say, collides with a neutral atom, it may lose any fraction of its initial momentum, depending on the angle at which it rebounds. In a head-on collision with a heavy atom, the electron can lose twice its initial momentum, since its velocity reverses sign after the collision. The probability of momentum loss can be expressed in terms of the equivalent cross section $\sigma$ that the atoms would have if they were perfect absorbers of momentum.

In Fig. 5.2, electrons are incident upon a slab of area $A$ and thickness $dx$ containing $n_n$ neutral atoms per $\text{m}^3$. The atoms are imagined to be opaque spheres of cross-sectional area $\sigma$; that is, every time an electron comes within the area blocked by the atom, the electron loses all of its momentum. The number of atoms in the slab is $n_n A dx$. The fraction of the slab blocked by atoms is $n_n A\sigma dx / A = n_n \sigma dx$. If a flux $\Gamma$ of electrons is incident on the slab, the flux emerging on the other side is $\Gamma^\prime = \Gamma(1-n_n \sigma dx)$. Thus the change of $\Gamma$ with distance is $d\Gamma/dx = -n_n \sigma\Gamma$, or

$$
\Gamma = \Gamma_0 e^{-n_n\sigma x} \equiv \Gamma_0 e^{-x/\lambda_m}
$$

In a distance $\lambda_m$, the flux would be decreased to $1/e$ of its initial value. The quantity $\lambda_m$ is the _mean free path_ for collisions:

$$
\lambda_m = 1/n_n\sigma
$$ {#eq:mean_free_path_collision}

After traveling a distance $\lambda_m$, a particle will have had a good probability of making a collision. The mean time between collisions, for particles of velocity $v$, is given by

$$
\tau = lambda_m/v
$$

and the mean frequency of collisions is

$$
\tau^{-1} = v/\lambda_m = n_n \sigma v
$$ {#eq:mean_freq_collision}

If we now average over particles of all velocities $v$ in a Maxwellian distribution, we have what is generally called the collision frequency $\nu$:

$$
\nu = n_n \overline{\sigma v}
$$ {#eq:collision_freq}

## Diffusion Parameters

The fluid equation of motion including collisions is, for any species $s$,

$$
mn\frac{d\mathbf{v}}{dt} = mn \Big[ \frac{\partial\mathbf{v}}{\partial t} + (\mathbf{v}\cdot\nabla)\mathbf{v} \Big] = q_sn\mathbf{E} - \nabla p - mn\nu\mathbf{v}
$$

The averaging process used to compute $\nu$ is such as to make the last equation correct; we need not be concerned with the
details of this computation. The quantity $\nu$ must, however, be assumed to be a constant in order for the equation to be useful. We shall consider a steady state in which $\partial\mathbf{v}/\partial t$ = 0. If $\mathbf{v}$ is sufficiently small (or $\nu$ sufficiently large), a fluid element will not move into regions of different $\mathbf{E}$ and $\nabla p$ in a collision time, and the convective derivative $d\mathbf{v}/dt$ will also vanish. Setting the left-hand side to zero, we have, for an isothermal plasma,

$$
\mathbf{v} = \frac{1}{mn\nu}(q_sn\mathbf{E} - k_B T \nabla n) = \frac{q_s}{m\nu}\mathbf{E} - \frac{k_B T}{mv}\frac{\nabla n}{n}
$$

The coefficients above are called the _mobility_ and the _diffusion coefficient_:

$$
\mu\equiv |q|/m\nu\quad\text{Mobility}
$$ {#eq:mobility}

$$
D\equiv k_B T/ m\nu\quad\text{Diffusion coefficient}
$$ {#eq:diffusion_coef}

These will be different for each species. Note that $D$ is measured in $\text{m}^2/s$. The transport coefficients $\mu$ and $D$ are connected by the _Einstein relation_:

$$
\mu = |q|D/k_B T
$$ {#eq:einstein_relation}

With the help of these definitions, the flux $\Gamma_s$ of the sth species can be written

$$
\Gamma_s = n\mathbf{v}_s = \pm \mu_s n\mathbf{E} - D_s\nabla n
$$ {#eq:species_flux}

_Fick’s law_ of diffusion is a special case of this, occurring when either $\mathbf{E}=0$ or the particles are uncharged, so that $\mu=0$:

$$
\Gamma = -D\nabla n\quad\text{Fick's law}
$$

This equation merely expresses the fact that diffusion is a random-walk process, in which a net flux from dense regions to less dense regions occurs simply because more particles start in the dense region. This flux is obviously proportional to the
gradient of the density. In plasmas, Fick’s law is not necessarily obeyed. Because of the possibility of organized motions (plasma waves), a plasma may spread out in a manner which is not truly random.

## Decay of a Plasma by Diffusion

### Ambipolar Diffusion

We now consider how a plasma created in a container decays by diffusion to the walls. Once ions and electrons reach the wall, they recombine there. The density near the wall, therefore, is essentially zero. The fluid equations of motion and continuity govern the plasma behavior; but if the decay is slow, we need only keep the time derivative in the continuity equation. The time derivative in the equation of motion, will be negligible if the collision frequency $\nu$ is large. We thus have

$$
\frac{\partial n}{\partial t} + \nabla\cdot\Gamma_s = 0
$$

with $\Gamma_s$ given by @eq:species_flux. It is clear that if $\Gamma_i$ and $\Gamma_e$ were not equal, a serious charge imbalance would soon arise. If the plasma is much larger than a Debye length, it must be quasineutral; and one would expect that the rates of diffusion of ions and electrons would somehow adjust themselves so that the two species leave at the same rate. How this happens is easy to see. The electrons, being lighter, have higher thermal velocities and tend to leave the plasma first. A positive charge is left behind, and an electric field is set up of such a polarity as to retard the loss of
electrons and accelerate the loss of ions. The required $\mathbf{E}$ field is found by setting $\Gamma_i=\Gamma_e=\Gamma$. From @@eq:species_flux, we can write

$$
\Gamma = \mu_i n\mathbf{E} - D_i \nabla n = -\mu_e n\mathbf{E} - D_e\nabla n
$$

$$
\mathbf{E} = \frac{D_i - D_e}{\mu_i + \mu_e}\frac{\nabla n}{n}
$$

The common flux $\Gamma$ is then given by

$$
\begin{aligned}
\Gamma &= \mu_i\frac{D_i - D_e}{\mu_i + \mu_e}\nabla n - D_i \nabla n \\
&=\frac{\mu_iD_i - \mu_iD_e - \mu_iD_i - \mu_eD_i}{\mu_i + \mu_e}\nabla n \\
&=-\frac{\mu_iD_e + \mu_eD_i}{\mu_i+\mu_e}\nabla n
\end{aligned}
$$

This is Fick's law with a new diffusion coefficient

$$
D_a \equiv \frac{\mu_iD_e + \mu_eD_i}{\mu_i+\mu_e}
$$ {#eq:ambipolar_diffusion_coef}

called the _ambipolar diffusion coefficient_. If this is constant, the continuity equation above becomes simply

$$
\frac{\partial n}{\partial t} = D_a \nabla^2 n
$$ {#eq:ambipolar_diffusion}

The magnitude of Da can be estimated if we take $\mu_e\gg\mu_i$. That this is true can be seen from @eq:mobility. Since $\nu$ is proportional to the thermal velocity, which is proportional to $m^{-1/2}$, $\mu$ is proportional to $m^{-1/2}$. @eq:mobility and @eq:ambipolar_diffusion_coef then give

$$
D_a \approx D_i + \frac{\mu_i}{\mu_e}D_e = D_i + \frac{T_e}{T_i}D_i
$$

For $T_e = T_i$, we have

$$
D_a \approx 2D_i
$$

The effect of the ambipolar electric field is to enhance the diffusion of ions by a factor of two, and the diffusion rate of the two species together is primarily controlled by the slower species.

### Diffusion in a Slab

The diffusion @eq:ambipolar_diffusion can easily be solved by the method of separation of variables. We let

$$
n(\mathbf{r}, t) = T(t)S(\mathbf{r})
$$

whereupon @eq:ambipolar_diffusion, with the subscript on $D_a$ understood, becomes

$$
\begin{aligned}
S\frac{dT}{dt} &= DT\nabla^2 S \\
\frac{1}{T}\frac{dT}{dt} &= \frac{D}{S}\nabla^2 S 
\end{aligned}
$$

Since the left side is a function of time alone and the right side a function of space alone, they must both be equal to the same constant, which we shall call $-1/\tau$. The function $T$ then obeys the equation

$$
\frac{dT}{dt} = -\frac{T}{\tau}
$$ {#eq:diffusion_temporal}

with the solution

$$
T = T_0 e^{-t/\tau}
$$

The spatial part $S$ obeys the equation

$$
\nabla^2 S = -\frac{1}{D\tau} S
$$ {#eq:diffusion_spatial}

In slab geometry, this becomes

$$
\frac{d^2 S}{dx^2} = -\frac{1}{D\tau}S
$$ {#eq:diffusion_spatial_slab}

with the solution

$$
S = A\cos\frac{x}{(D\tau)^{1/2}} + B\sin\frac{x}{(D\tau)^{1/2}}
$$ {#eq:slab_sol}

We would expect the density to be nearly zero at the walls (Fig. 5.3 ADD IT!) and to have one or more peaks in between. The simplest solution is that with a single maximum. By symmetry, we can reject the odd (sine) term in @eq:slab_sol. The boundary conditions $S=0$ at $x=\pm L$ then requires

$$
\frac{L}{(D\tau)^{1/2}} = \frac{\pi}{2}
$$

or

$$
\tau = \Big( \frac{2L}{\pi} \Big)^2 \frac{1}{D}
$$

Combining all the equations above, we have

$$
n = n_0 e^{-t/\tau} \cos\frac{\pi x}{2L}
$$

This is called the _lowest diffusion mode_. The density distribution is a cosine, and the peak density decays exponentially with time. The time constant $\tau$ increases with $L$ and varies inversely with $D$, as one would expect.

There are, of course, higher diffusion modes with more than one peak. Suppose the initial density distribution is as shown by the top curve in Fig. 5.4 ADD IT. Such an arbitrary distribution can be expanded in a Fourier series:

$$
n = n_0 \Big( \sum_l a_l\cos\frac{(l+\frac{1}{2})\pi x}{L} \sum_m b_m\sin\frac{m\pi x}{L} \Big)
$$

We have chosen the indices so that the boundary condition at $x=\pm L$ is automatically satisfied. To treat the time dependence, we can try a solution of the form

$$
n = n_0 \Big( \sum_l a_l e^{-t/\tau_l}\cos\frac{(l+\frac{1}{2})\pi x}{L} \sum_m b_m e^{-t/\tau_m}\sin\frac{m\pi x}{L} \Big)
$$

Substituting this into the diffusion @eq:ambipolar_diffusion, we see that each cosine term yields a relation of the form

$$
-\frac{1}{\tau_l} = -D\Big[ \Big(l+\frac{\pi}{2}\Big)\frac{\pi}{L} \Big]^2
$$

and similarly for the sine terms. Thus the decay time constant for the $l$th mode is given by

$$
\tau_l = \Big[ \frac{L}{(l+\frac{1}{2})\pi} \Big]^2 \frac{1}{D}
$$

The fine-grained structure of the density distribution, corresponding to large $l$ numbers, decays faster, with a smaller time constant $\tau_l$. The plasma decay will proceed as indicated in Fig. 5.4 ADD IT. First, the fine structure will be washed out by diffusion. Then the lowest diffusion mode, the simple cosine distribution of Fig. 5.3 ADD IT, will be reached. Finally, the peak density continues to decay while the plasma density profile retains the same shape.

I WANT TO DO A SIMULATION ON THIS! TRY METHODOFLINES.JL?

### Diffusion in a Cylinder

The spatial part of the diffusion equation, eq:diffusion_spatial, reads, in cylindrical geometry,

$$
\frac{d^2 S}{dr^2} + \frac{1}{r}\frac{dS}{dr} + \frac{1}{D\tau}S = 0
$$ {#eq:diffusion_spatial_cylinder}

This differs from @eq:diffusion_spatial_slab by the addition of the middle term, which merely accouts for the change in coordinates. The need for the extra term is illustrated simply in Fig. 5.5 ADD IT. If a slice of plasma in (a) is moved toward larger x without being allowed to expand, the density would remain constant. On the other hand, if a shell of plasma in (b) is moved toward larger $r$ with the shell thickness kept constant, the density would necessarily decrease as $1/r$. Consequently, one would expect the solution to @eq:diffusion_spatial_cylinder to be like a damped cosine (Fig. 5.6 ADD IT). This function is called a _Bessel function of order zero_, and eq:diffusion_spatial_cylinder is called Bessel's equation (of order zero). Instead of the symbol cos, it is given the symbol $J_0$. The function $J0(r/[D\tau]^{1/2})$ is a solution to eq:diffusion_spatial_cylinder, just as $\cos[x/(d\tau)^{1/2}]$ is a solution to eq:diffusion_spatial. Both $\cos kx$ and $J_0(kr)$ are expressible in terms of infinite series.

![Motion of a plasma slab in rectilinear and cylindrical geometry, illustrating the difference between a cosine and a Bessel function.](images/motion_slab_cylindrical.png){#fig:motion_slab_cylindrical}

To satisfy the boundary condition $n=0$ at $r=a$, we must set $a/(D\tau)^{1/2}$ equal to the first zero of $J_0$; namely, 2.4. This yields the decay time constant $\tau$. The plasma
again decays exponentially, since the temporal part of the diffusion equation, @eq:diffusion_temporal, is unchanged. We have described the lowest diffusion mode in a cylinder. Higher diffusion modes, with more than one maximum in the cylinder, will be given in terms of Bessel functions of higher order, in direct analogy to the case of slab geometry.

## Steady State Solutions

In many experiments, a plasma is maintained in a steady state by continuous ionization or injection of plasma to offset the losses. To calculate the density profile in this case, we must add a source term to the equation of continuity:

$$
\frac{\partial n}{\partial t} - D\nabla^2 n = Q(\mathbf{r})
$$

The sign is chosen so that when $Q$ is positive, it represents a source and contributes to positive $\partial n/\partial t$. In steady state, we set $\partial n/\partial t=0$ and are left with a Poisson-type equation for $n(\mathbf{r})$.

### Constant Ionization Function

In many weakly ionized gases, ionization is produced by energetic electrons in the tail of the Maxwellian distribution. In this case, the source term $Q$ is proportional to the electron density $n$. Setting $Q=Zn$, where $Z$ is the "ionization function", we have

$$
\nabla^2 n = -(Z/D)n
$$

This is the same equation as that for S, @eq:diffusion_spatial. Consequently, the density profile
is a cosine or Bessel function, as in the case of a decaying plasma, only in this case the density remains constant. The plasma is maintained against diffusion losses by whatever heat source keeps the electron temperature at its constant value and by a small influx of neutral atoms to replenish those that are ionized.

### Plane Source

We next consider what profile would be obtained in slab geometry if there is a localized source on the plane $x=0$. Such a source might be, for instance, a slit-collimated beam of ultraviolet light strong enough to ionize the neutral gas. The steady state diffusion equation is then

$$
\frac{d^n}{dx^2} = -\frac{Q}{D}\delta(0)
$$

Except at $x=0$, the density must satisfy $\partial^2 n/\partial x^2=0$. This obviously has the solution (Fig. 5.7 ADD IT)

$$
n = n_0 \Big( 1-\frac{|x|}{L} \Big)
$$

The plasma has a linear profile. The discontinuity in slope at the source is characteristic of $\delta$-function sources.

### Line Source

Finally, we consider a cylindrical plasma with a source located on the axis. Such a source might, for instance, be a beam of energetic electrons producing ionization along the axis. Except at $r=0$, the density must satisfy

$$
\frac{1}{r}\frac{\partial}{\partial r}\Big(r\frac{\partial n}{\partial r}\Big) = 0
$$

The solution that vanishes at $r=a$ is

$$
n = n_0 \ln(a/r)
$$

The density becomes infinite at $r=0$ (Fig. 5.8); it is not possible to determine the density near the axis accurately without considering the finite width of the source.

## Recombination

When an ion and an electron collide, particularly at low relative velocity, they have a finite probability of recombining into a neutral atom. To conserve momentum, a third body must be present. If this third body is an emitted photon, the process is called _radiative recombination_. If it is a particle, the process is called _three-body recombination_. The loss of plasma by recombination can be represented by a negative source term in the equation of continuity. It is clear that this term will be proportional to $n_en_i=n^2$. In the absence of the diffusion terms, the equation of continuity then becomes

$$
\frac{\partial n}{\partial t} = -\alpha n^2
$$

The constant of proportionality $\alpha$ is called the recombination coefficient and has units of $\text{m}^3/\text{s}$. This is a nonlinear equation for $n$. This means that the straightforward method for satisfying initial and boundary conditions by linear superposition of solutions is not available. Fortunately, it is such a simple nonlinear equation that the solution can be found by inspection. It is

$$
\frac{1}{n(\mathbf{r},t)} = \frac{1}{n_0(\mathbf{r})} + \alpha t
$$

where $n_0(\mathbf{r})$ is the initial density distribution. After the density has fallen far below its initial value, it decays _reciprocally_ with time, $n\propto 1/\alpha t$. This is a fundamentally different behavior from the case of diffusion, in which the time variation is exponential.

## Diffusion Across a Magnetic Field

### Ambipolar Diffusion Across B

## Collisions in Fully Ionized Plasmas

When the plasma is composed of ions and electrons alone, all collisions are Coulomb collisions between charged particles. However, there is a distinct difference between 

* collisions between like particles (ion–ion or electron–electron collisions) and
* collisions between unlike particles (ion–electron or electron–ion collisions).

Consider two identical particles colliding (Fig. 5.16 ADD IT!). If it is a head-on collision, the particles emerge with their velocities reversed; they simply interchange their orbits, and the two guiding centers remain in the same places. The result is the same as in a glancing collision, in which the trajectories are hardly disturbed. The worst that can happen is a $90^o$ collision, in which the velocities are changed $90^o$ in direction. The orbits after collision will then be the dashed circles, and the guiding centers will have shifted. However, it is clear that the "center of mass" of the two guiding centers
remains stationary. For this reason, collisions between like particles give rise to very little diffusion. This situation is to be contrasted with the case of ions colliding with neutral atoms. In that case, the final velocity of the neutral is of no concern, and the ion random-walks away from its initial position. In the case of ion–ion collisions, however, there is a detailed balance in each collision; for each ion that moves outward, there is another that moves inward as a result of the collision.

When two particles of opposite charge collide, however, the situation is entirely different (Fig. 5.17 ADD IT!). The worst case is now the $180^o$ collision, in which the particles emerge with their velocities reversed. Since they must continue to gyrate about the magnetic field lines in the proper sense, both guiding centers will move in the same direction. _Unlike-particle collisions give rise to diffusion_. The physical picture is somewhat different for ions and electrons because of the disparity in mass. The electrons bounce off the nearly stationary ions and random-walk in the usual fashion. The ions are slightly jostled in each collision and move about as a result of frequent bombardment by electrons. Nonetheless, because of the conservation of momentum in each collision, the rates of diffusion are the same for ions and electrons, as we shall show.

### Plasma Resistivity

### Mechanics of Coulomb Collisions

Pedersen, Hall, and parallel conductivity

### Physical Meaning of η

### Numerical Values of η

### Pulsed Currents

## The Single-Fluid MHD Equations

## Diffusion of Fully Ionized Plasmas

## Solutions of the Diffusion Equation

### Time Dependence

### Time-Independent Solutions

## Bohm Diffusion and Neoclassical Diffusion
