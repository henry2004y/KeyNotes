# Nonlinear Effects {#sec:nonlinear}

In many experiments waves are no longer describable by the linear theory by the time they are observed. Consider, for instance, the case of drift waves. Because they are unstable, drift waves would, according to linear theory, increase their amplitude exponentially. This period of growth is not normally observed --- since one usually does not know when to start looking --- but instead one observes the waves only after they have grown to a large, steady amplitude. The fact that the waves are no longer growing means that the linear thoery is no longer valid, and some _nonlinear_ effect is limiting the amplitude. Theoretical explanation of this elementary observation has proved to be a surprisingly difficult problem, since the observed amplitude at saturation is rather small.

A wave can undergo a number of changes when its amplitude gets large. It can change its shape --- say, from a sine wave to a lopsided triangular waveform. This is the same as saying that Fourier components at other frequencies (or wave numbers) are generated. Ultimately, the wave can "break", like ocean waves on a beach, converting the wave energy into thermal energy of the particles. A large wave can trap particles in its potential troughs, thus changing the properties of the medium in which it propagates (e.g. nonlinear Landau damping). If a plasma is so strongly excited that a continuous spectrum of frequencies is present, it is in a state of _turbulence_. This state must be described statistically, as in the case of hydrodynamics. An important consequence of plasma turbulence is _anomalous resistivity_, in which electrons are slowed down by collisions with random electric field fluctuations, rather than with ions. This effect is used for ohmic heating of a plasma to temperature so high that ordinary resistivity is insufficient.

Nonlinear phenomena can be grouped into three broad categories:

1. _Basically nonlinearizable problems_.
  * Diffusion in a fully ionized gas, for instance, is intrinsically a nonlinear problem because the diffusion coefficient varies with density.
  * Problems of hydromagnetic equilibrium are nonlinear.
  * Plasma sheath.

2. _Wave-particle interactions_.
  * Particle trapping can lead to nonlinear damping (@sec:landau_damping).
  * A classic example is the quasilinear effect, in which the equilibrium of the plasma is changed by the waves. Consider the case of a plasma with an electron beam (Fig.8-1). Since the distribution function has a region where $df_0/dv$ is positive, the system has inverse Landau damping, and plasma oscillations with $v_\phi$ in the positive-slope region are unstable (@eq:landau). The resonant electrons are the first to be affected by wave-particle interactions, and their distribution function will be changed by the wave electric field. The waves are stabilized when $f_e(v)$ is flattened by the waves, as shown by the dashed line in Fig.8-1 @fig:unstable_f, so tha the new equilibrium distribution no longer has a positive slope.
  * Plasma wave echoes (@sec:echo).

  ![A double-humped, unstable electron distribution.](images/unstable_f.png){#fig:unstable_f}

3. _Wave-wave interactions_.
  * Waves can interact with each other even in the fluid description, in which individual particle effects are neglected. A single wave can decay by first generating harmonics of its fundamental frequency. These harmonics can then interact with each other and with the primary wave to form other waves at the beat frequencies. The beat waves in turn can grow so large that they can interact and form many more beat frequencies, until the spectrum becomes continuous. It is interesting to discuss the direction of energy flow in a turbulent spectrum. In fluid dynamics, long-wavelength modes decay into short-wavelength modes, because the large eddies contain more energy and can decay only by splitting into small eddies, which are each less energetic. The smallest eddies then convert their kinetic motion into heat by viscous damping. In a plasma, usually the opposite occurs. Short wave-length modes tend to coalesce into long-wavelength modes, which are less energetic. This is because the electric field energy $E^2/8\pi$ is of order $k^2\phi^2/8\pi$, so that if $e\phi$ is fixed (usually by $k_B T_e$), the small-$k$, long-$\lambda$ modes have less energy. As a consequence, energy will be transferred to small $k$ by instabilities at large $k$, and some mechanism must be found to dissipate the energy. No such problem exists at large $k$, where Landau damping can occur. For motions along $\mathbf{B}_0$, nonlinear "modulational" instabilities could cause the energy at small $k$ to be coupled to ions and to heat them. For motions perpendicular to $\mathbf{B}_0$, the largest eddies will have wavelengths of the order of the plasma radius and could cause plasma loss to the walls by convection.

Although problems still remain to be solved in the linear theory of waves and instabilities, the mainstream of plasma research has turned to the much less well understood area of nonlinear phenomena. The examples in the following sections will give an idea of some of the effects that have been studied in theory and in experiment.

## The Necessity for Sheaths {#sec:sheath}

In all practical plasma devices, the plasma is contained in a vacuum chamber of finite size. What happens to the plasma at the wall? For simplicity, let us confine our attention to a one-dimensional model with no magnetic field @fig:sheath. Suppose there is no appreciable electric field inside the plasma; we can then let the potential $\phi$ be zero there. When ions and electrons hit the wall, they recombine and are lost. Since electrons have much higher thermal velocities than ions, they are lost faster and leave the plasma with a net positive charge. The plasma must then have potential positive with respect to the wall; i.e., the wall potential $\phi_w$ is negative. This potential cannot be distributed over the entire plasma, since Debye shielding will confine the potential variation to a layer of the order of several Debye lengths in thickness. This layer, which must exist on all cold walls with which the plasma is in contact, is called a sheath. The function of a sheath is to form a potential barrier so that the more mobile species, usually electrons, is confined. electrostatically. The height of the barrier adjusts itself so that the flux of electrons that wave enough energy to go over the barrier to the wall is just equal to the flux of ions reaching the wall.

![The plasma potential $\phi$ forms sheaths near the walls so that electrons are reflected. The Coulomb barrier $e\phi_w$ adjusts itself that equal numbers of ions and electrons reach the walls per second.](images/sheath.png){#fig:sheath}

### The Planar Sheath Equation

![The potential $\phi$ in a planar sheath. Cold ions are assumed to enter the sheath with a uniform velocity $u_0$.](images/sheath_potential.png){#fig:sheath_potential}

Recall that the Debye length is derived from linearing Poisson's equation. To examine the exact behavior of $\phi(x)$ in the sheath, we must treat the nonlinear problem: we shall find that there is not always a solution. @fig:sheath_potential shows the situation near one of the walls. At the plane $x=0$, ions are imagined to enter the sheath region from the main plasma with a drift velocity $u_0$. This drift is needed to accout for the loss of ions to the wall from the region in which they were created by ionization. For simplicity, we assume $T_i=0$, so that all ions have the velocity $u_0$ at $x=0$. We consider the steady state problem in a collisionless sheath region. The potential $\phi$ is assumed to decrease monotonically with $x$. Actually, $\phi$ could have spatial oscillations, and then there would be trapped particles in the steady state. This does not happend in practice because dissipative processes tend to destroy any such highly organized state.

If $u(x)$ is the ion velocity, conservation of energy requires

$$
\begin{aligned}
\frac{1}{2}mu^2 = \frac{1}{2}mu_0^2 - e\phi(x) \\
u = \Big( u_0^2 - \frac{2e\phi}{m_i} \Big)^{1/2}
\end{aligned}
$$ {#eq:sheath_u}

The ion equation of continuity then gives the ion density $n_i$ in terms of the density $n_0$ in the main plasma:

$$
\begin{aligned}
n_0 u_0 &= n_i(x) u(x) \\
n_i(x) &= n_0 \Big( 1 - \frac{2e\phi}{m_i u_0^2} \Big)^{1/2}
\end{aligned}
$$ {#eq:sheath_n}

In steady state, the electrons will follow the Boltzmann relation closely,

$$
n_e(x) = n_0 \exp(e\phi/k_B T_e)
$$

Poisson's equation is then

$$
\epsilon_0\frac{\mathrm{d}^2\phi}{\mathrm{d}x^2} = e(n_e - n_i) = en_0\Big[ \exp\Big( \frac{e\phi}{k_B T_e} \Big) - \Big( 1 - \frac{2e\phi}{m_i u_0^2} \Big)^{1/2} \Big]
$$ {#eq:sheath1}

The structure of this equation can be seen more clearly if we simplify it with the following changes in notation:

$$
\chi\equiv -\frac{e\phi}{k_B T_e}\quad \xi\equiv\frac{x}{\lambda_D} = x\Big( \frac{n_0 e^2}{\epsilon_0 k_B T_e} \Big)^{1/2}\quad \mu\equiv\frac{u_0}{(k_B T_e/m_i)^{1/2}}
$$

Then it can be written as

$$
\chi^{\prime\prime} = \Big( 1+\frac{2\chi}{\mu^2} \Big)^{-1/2} - e^{-\chi}
$$ {#eq:sheath2}

where the prime denotes $\mathrm{d}/\mathrm{d}\xi$. This is the nonlinear equation of a plane sheath, and it has an acceptable solution only if $\mu$ is large enough. The reason for the symbol $\mu$ will become apparent in the following section on shock waves.

### The Bohm Sheath Criterion

@eq:sheath2 can be integrated once by multiplying both sides by $\chi^\prime$:

$$
\int_0^\xi \chi^\prime \chi^{\prime\prime}\mathrm{d}\xi_1 = \int_0^\xi \Big( 1+\frac{2\chi}{\mu^2} \Big)^{-1/2} \chi^\prime \mathrm{d}\xi_1 - \int_0^\xi e^{-\chi} \chi^\prime \mathrm{d}\xi_1
$$

where $\xi_1$ is a dummy variable. Since $\chi=0$ at $\xi=0$, the integration easily yield

$$
\frac{1}{2}({\chi^\prime}^2 - {\chi_0^\prime}^2) = \mu^2 \Big[ \big(1 + \frac{2\chi}{\mu^2} \big)^{1/2} - 1 \Big] + e^{-\chi} -1
$$ {#eq:sheath_int1}

If $\mathbf{E}=0$ in the plasma, we must set $\chi_0^\prime=0$ at $\xi=0$. A second integration to find $\chi$ would have to be done numerically; but whatever the answer is, the right-hand side of @eq:sheath_int1 must be positive for all $\chi$. In particular, for $\chi\ll 1$, we can expand the right-hand terms in Taylor series:

$$
\begin{aligned}
\mu^2 \Big[ 1+\frac{\chi}{\mu^2}-\frac{1}{2}\frac{\chi^2}{\mu^4}+ ... -1 \Big] + 1-\chi+\frac{1}{2}\chi^2+...-1 > 0 \\
\frac{1}{2}\chi^2 \Big( -\frac{1}{\mu^2} + 1\Big) > 0 \\
\mu^2 > 1 \quad\text{or}\quad u_0>(k_BT_e/m_i)^{1/2}
\end{aligned}
$$ {#eq:sheath_bohm}

This inequality is know as the _Bohm sheath criterion_. It says that ions must enter the sheath with a velocity greater than the acoustic velocity $v_s$. To give the ions this directed velocity $u_0$, there must be a finite electric field in the plasma. Our assumption that $\chi^\prime=0$ at $\xi=0$ is therefore only an approximate one, made possible by the fact that the scale of the sheath region is usually much smaller than the scale of the main plasma region in which the ions are accelerated. The value of $u_0$ is somewhat arbitrary, depending on where we choose to put the boundary $x=0$ between the plasma and the sheath. Of course, the ion flux $n_0u_0$ is fixed by the ion production rate, so if $u_0$ is varies, the value of $n_0$ at $x=0$ will vary inversely with $u_0$. If the ions have finite temperature, the critical drift velocity $u_0$ will be somewhat lower.

The physical reason for the Bohm criterion is easily seen from a plot of the ion and electron densities vs. $\chi$ @fig:sheath_n_variation. The electron density $n_e$ falls exponentially with $\chi$, according to the Boltzmann relation. The ion density also falls, since the ions are accelerated by the sheath potential. If the ions start with a large energy, $n_i(\chi)$ falls slowly, since the sheath field causes a relatively minor change in the ions' velocity. If the ions start with a small energy, $n_i(\chi)$ falls fast, and can go belwo the $n_e$ curve. In that case, $n_e-n_i$ is positive near $\chi=0$; and @eq:sheath2 tells us that $\phi(x)$ must curve upward, in contradiction to the requirement that the sheath must repel electrons. In order for this not to happen, the slope of $n_i(\chi)$ at $\chi=0$ must be smaller (in absolute value) than that of $n_e(\chi)$; this condition is identical with the condition $\mu^2>1$.

![Variation of ion and electron density (logarithmic scale) with normalized potential $\chi$ in a sheath. The ion density is dwawn for two caes: $u_0$ greater than and $u_0$ less than the critical velocity.](images/sheath_n_variation.png){#fig:sheath_n_variation}

### The Child-Langmuir Law

Since $n_e(\chi)$ falls exponentially with $\chi$, the electron density can be neglected in the region of large $\chi$ next to the wall (or any negative electrode). Poisson's equation is then approximately

$$
\chi^{\prime\prime} \approx \Big( 1+\frac{2\chi}{\mu^2} \Big)^{-1/2} \approx \frac{\mu}{(2\chi)^{1/2}}
$$

Multiplying by $\chi^\prime$ and integrating from $\xi_1=\xi_s$ to $\xi_1=\xi$, we have

$$
\frac{1}{2}({\chi^\prime}^2 - {\chi_s^\prime}^2) = \sqrt{2}\mu(\chi^{1/2} - \chi_s^{1/2})
$$

where $\xi_s$ is the place where we started neglecting $n_e$. We can redefine the zero of $\chi$ so that $\chi_s=1$ at $\xi=\xi_s$. We shall also neglect $\chi_s^\prime$, since the slope of the potential curve can be expected to be much steeper in the $n_e=0$ region than in the finite-$n_e$ region. Then the above equation becomes

$$
\begin{aligned}
{\chi^\prime}^2 &= 2^{3/2}\mu\chi^{1/2} \\
\chi^\prime &= 2^{3/4}\mu^{1/2}\chi^{1/4} \\
\mathrm{d}\chi/\chi^{1/4} &= 2^{3/4}\mu^{1/2} \mathrm{d}\xi
\end{aligned}
$$

Integrating from $\xi=\xi_s$ to $\xi=\xi_s+\mathrm{d}/\lambda_D = \xi_{\text{wall}}$, we have

$$
\frac{4}{3}\chi_w^{3/4} = 2^{3/4}\mu^{1/2}\mathrm{d}/\lambda_D
$$

or

$$
\mu = \frac{4\sqrt{2}}{9}\frac{\chi_w^{3/2}}{\mathrm{d}^2}\lambda_D^2
$$

Changing back to the variables $u_0$ and $\phi$, and noting that the ion current into the wall is $J=en_0u_0$, we then find

$$
J = \frac{4}{9}\Big( \frac{2e}{m_i} \Big)^{1/2} \frac{\epsilon_0|\phi_w|^{3/2}}{\mathrm{d}^2}
$$ {#eq:child_langmuir}

This is just the well-known Child-Langmuir law of space-charge-limited current in a plane diode.

The potential variation in a plasma-wall system can be divided into three parts. Nearest the wall is an electron-free region whose thickness $\mathrm{d}$ given by @eq:child_langmuir. Here $J$ is determined by the ion production rate, and $\phi_w$ is determined by the equility of electron and ion fluxes. Next comes a region in which $n_e$ is appreciable; as shown in the linear theory from which the scale of Debye length is derived. Finally, there is a region with much larger scale length, the "presheath", in which the ions are accelerated to the required velocity $u_0$ by a potential drop $|\phi|\ge \frac{1}{2}k_B T_E/e$. Depending on the experiment, the scale of the presheath may be set by the plasma radius, the collisional mean free path, or the ionization mechanism. The potential distribution, of course, varies smoothly; the division into three regions is made only for convenience and is made possible by the disparity in scale lengths. In the early days of gas discharges, sheaths could be observed as dark layers where no electrons were present to excite atoms to emission. Subsequently, the potential variation has been measured by the electrostatic deflection of a thin electron beam shot parallel to a wall.

### Electrostatic Probes

The sheath criterion @eq:sheath_bohm can be used to estimate the flux of ions to a negatively biased probe in a plasma. If the probe has a surface area $A$, and if the ions entering the sheath have a drift velocity $u_0\ge (k_B T_e/m_i)^{1/2}$, then the ion current collected is

$$
I = n_s e A(k_B T_e/m_i)^{1/2}
$$

The electron current can be neglected if the probe is sufficiently negative (several times $k_B T_e$) relative to the plasma to repel all but the tail of the Maxwellian electron distribution. The density $n_s$ is the plasma density at the edge of the sheath. Let us define the sheath edge to be the place where $u_0$ is exactly $(k_B T_e/m_i)^{1/2}$. To accelerate ions to this velocity requires a presheath potential $|\phi|\ge\frac{1}{2}k_B T_e/e$, so that the sheath edge has a potential

$$
\phi_s \simeq -\frac{1}{2}k_B T_e/e
$$

relative to the body of the plasma. If the electrons are Maxwellian, this determines $n_s$:

$$
n_s = n_0 e^{e\phi_s/k_BT_e} = n_0 e^{-1/2} \approx 0.61 n_0
$$

For our purposes it is accurate enough to replace 0.61 with a round number like 1/2; thus, the "saturation ion current" to a negative probe is approximately

$$
I_B \simeq \frac{1}{2}n_0 e A (k_B T_e/m_i)^{1/2}
$$

$I_B$, sometimes called the "Bohm current", give the plasma density easily, once the temperature is known.

If the Debye length $\lambda_D$, and hence the sheath thickness, is very small compared to the probe dimensions, the area of the sheath edge is effectively the same as the area $A$ of the probe surface, regardless of its shape. At low densities, however, $\lambda_D$ can become large, so that some ions entering the sheath can orbit the probe and miss it. Calculations of orbits for various probe shapes were first made by I. Langmuir and L. Tonks --- hence the name "__Langmuir probe__" ascribed to this method of measurement. Though tedious, these calculations can give accurate determinations of plasma density because an arbitrary definition of sheath edge does not have to be made. By varying the probe voltage, the Maxwellian electron distribution is sampled, and the current-voltage curve of a Langmuir probe can also yield the electron temperature. The electrostatic probe was the first plasma diagnostic and is still the simplest and the most localized measurement device. Unfortunately, material electrodes can be inserted only in low-density, cool plasma.

More detailed explanation of how to measure the plasma density using a Langmuir probe is given [here](https://youtu.be/u44NH1o6Tp8).

## Ion Acoustic Shock Waves

When a jet travels faster than sound, it creates a shock wave. This is a basically nonlinear phenomenon, since there is no period when the wave is small and growing. The jet is faster than the speed of waves in air, so the undisturbed medium cannot be "warned" by precursor signals before the large shock wave hits it. In hydrodynamic shock waves, collisions are dominant. Shock waves also exist in plasmas, even when there are no collisions. A magnetic shock, the "bow shock", is generated by the earth as it plows through the interplanetary plasma while dragging along a dipole magnetic field. We shall discuss a simpler example: a collisionless, one-dimensional shock wave which develops from a large-amplitude ion wave.

(Normal space plasma textbooks discuss this part starting from R-H relations. I don't like that.)

### The Sagdeev Potential

![Typical potential distribution in an ion acoustic shock wave. The wave moves to the left, so that in the wave frame ions stream into the wave from the left with velocity $u_0$.](images/shock_potential.png){#fig:shock_potential}

@fig:shock_potential shows the idealized potential profile of an ion acoustic shock wave. The reason for this shape will be given presently. The wave is traveling to the left with a velocity $u_0$. If we go to the frame moving with the wave, the function $\phi(x)$ will be constant in time, and we will see a stream of plasma impinging on the wave from the left with a velocity $u_0$. For simplicity, let $T_i$ be zero, so that all the ions are incident with the same velocity $u_0$, and let hte electrons be Maxwellian. Since the shock moves much more slowly than the electron thermal speed, the shift in the center velocity of the Maxwellian can be neglected. The velocity of the ions in the shock wave is, from energy conservation,

$$
u = \Big( u_0^2 - \frac{2e\phi}{m_i} \Big)^{1/2}
$$

If $n_0$ is the density of the undisturbed plasma, the ion density in the shock is

$$
n_i = \frac{n_0 u_0}{u} = n_0 \Big( 1 - \frac{2e\phi}{m_i u_0^2} \Big)^{-1/2}
$$

The electron density is given by the Boltzmann relation. Poisson's equation then gives

$$
\epsilon_0\frac{\mathrm{d}^2\phi}{\mathrm{d}x^2} = e(n_e - n_i) = en_0\Big[ \exp\Big( \frac{e\phi}{k_B T_e} \Big) - \Big( 1 - \frac{2e\phi}{m_i u_0^2} \Big)^{1/2} \Big]
$$

This is, of course, the same @eq:sheath1 as we had for a sheath. A shock wave is no more than a sheath moving through a plasma. We now introduce the dimensionless variables

$$
\chi\equiv \frac{e\phi}{k_B T_e}\quad \xi\equiv\frac{x}{\lambda_D} = x\Big( \frac{n_0 e^2}{\epsilon_0 k_B T_e} \Big)^{1/2}\quad \mu\equiv\frac{u_0}{(k_B T_e/m_i)^{1/2}}
$$

Note that we have changed the sign in the definition of $\chi$ so as to keep $\chi$ positive in this problem. The quantity $\mu$ is called the _Mach number_ of the shock. Poisson's equation can now be written

$$
\chi^{\prime\prime} = e^{\chi} - \Big( 1 - \frac{2\chi}{\mu^2} \Big)^{-1/2} = -\frac{dV(\chi)}{\mathrm{d}\chi}
$$ {#eq:sheath3}

which differs from the sheath @eq:sheath2 only because of the change in sign of $\chi$.

The behavior of the solution of @eq:sheath3 was made clear by R. Z. Sagdeev, who used an analogy to an oscillator in a potential well. The displacement $x$ of an oscillator subjected to a force $-mdV(x)/\mathrm{d}x$ is given by

$$
\ddot{x} = -dV/\mathrm{d}x
$$

If the right-hand side of @eq:sheath3 is defined as $-dV/\mathrm{d}x$, the equation is the same as that of an oscillator, with the potential $\chi$ playing the role of $\chi$, and $\mathrm{d}/\mathrm{d}\xi$ replacing $\mathrm{d}/\mathrm{d}t$. The quasipotential $V(\chi)$ is sometimes called the Sagdeev potential. The function $V(x)$ can be found from @eq:sheath3 by integration with the boundary condition $V(\chi)=0$ at $\chi=0$:

$$
V(\chi) = 1-e^\chi + \mu^2 \Big[ 1 - \Big( 1-\frac{2\chi}{\mu^2} \Big)^{1/2} \Big]
$$ {#eq:sagdeev_potential}

For $\mu$ lying in a certain range, this function has the shape shown in @fig:shock_quasipotential. If this were a real well, a particle entering from the left will go to the right-hand side of the well ($x>0$), reflect, and return to $x=0$, making a single transit. Similarly, a quasiparticle in our analogy will make a single excursion to positive $\chi$ and return to $\chi =0$, as shown in @fig:shock_soliton. Such a pulse is called a _soliton_: it is a potential and density disturbance propagating to the left in @fig:shock_soliton with velocity $u_0$. (I DON'T FULLY UNDERSTAND!!!)

![The Sagdeev potential $V(\chi)$. The upper arrow is the trajectory of a quasiparticle describing a soliton: it is reflected at the right and returns. The lower arrows show the motion of a quasiparticle that has lost energy and is trapped in the potential well. The bouncing back and forth describes the oscillations behind a shock front.](images/shock_quasipotential.png){#fig:shock_quasipotential}

![The potential in a soliton moving to the left.](images/shock_soliton.png){#fig:shock_soliton}

Now, if a particle suffers a loss of energy while in the well, it will never return to $x=0$ but will oscillate (in time) about some positive value of $x$. Similarly, a little dissipation will make the potential of a shock wave oscillate (in space) about some positive value of $\phi$. This is exactly the behavoir depicted in @fig:shock_potential. Actually, dissipation is not needed for this: reflection of ions from the shock front has the same effect. To understand this, imagine that the ions have a small thermal spread in energy and that the height $e\phi$ of the wave front is just large enough to reflect some of the ions back to the left, while the rest go over the potential hill to the right. The reflected ions cause an increase in ion density in the upstream region to the left of the shock front (@fig:shock_potential). This means that the quantity

$$
\chi^\prime = \frac{1}{n_0}\int_0^\xi (n_e - n_i)\mathrm{d}\xi_1
$$

is decreased. Since $\chi^\prime$ is the analog of $\mathrm{d}x/\mathrm{d}t$ in the oscillator problem, our virtual oscillator has lost velocity and is trapped in the potential well of @fig:shock_quasipotential.

### The Critical Mach Numbers

Solutions of either the soliton type or the wave-train type exist only for a range of $\mu$. A lower limit for $\mu$ is given by the condition that $V(\chi)$ be a potential well, rather than a hill. Expanding @eq:sagdeev_potential for $\chi\ll 1$ yields

$$
\mu^2 > 1 \quad u_0>(k_BT_e/m_i)^{1/2}
$$

This is exactly the same, both physically and mathematically, as the Bohm criterion for the existence of a sheath (@eq:sheath_bohm).

An upper limit to $\mu$ is imposed by the condition that the function $V(\chi)$ of @fig:shock_quasipotential must cross the $\chi$ axis for $\chi>0$; otherwise, the virtual particle will not be reflected, and the potential will rise indefinitely. From @eq:sagdeev_potential, we require

$$
e^\chi - 1 < \mu^2 \Big[ 1- \big( 1-\frac{2\chi}{\mu^2} \Big)^{1/2} \Big]
$$

for some $\chi>0$. If the lower critical Mach number is surpassed ($\mu>1$), the left-and side, representing the integral of the electron density from zero to $\chi$, is initially larger than the right-hand side, representing the integral of the ion density. As $\chi$ increases, the right-hand side can catch up with the left-hand side if $\mu^2$ is not too large. However, because of the square root, the largest value $\chi$ can have is $\mu^2/2$. This is because $e\phi$ cannot exceed $\frac{1}{2}m_iu_0^2$; otherwise, ions would be excluded from the plasma in the downstream region. Inserting the largest value of $\chi$ into the above equation, we have

$$
\exp(\mu^2/2) - 1 < \mu \quad\text{or}\quad \mu < 1.6
$$

This is the upper critical Mach number. Shock waves in a cold-ion plasma therefore exist only for $1<\mu<1.6$.

As in the case of sheaths, the physical situation is best explained by a diagram of $n_i$ and $n_e$ vs. $\chi$ (@fig:shock_n). This diagram differs from @fig:sheath_n_variation because of the change of sign of $\phi$. Since the ions are now decelerated rather than accelerated, $n_i$ will appraoch infinity at $\chi=\mu^2/2$. The lowe critical Mach number ensures that the $n_i$ curve lies below the $n_e$ curve at small $\chi$, so that the potential $\phi(x)$ starts off with the right sign for its curvature. When the curve $n_{i1}$ crosses the $n_e$ curve, the soliton (@fig:shock_soliton) has an inflection point. Finally, when $\chi$ is large enough that the areas under the $n_i$ and $n_e$ curves are equal, the soliton reaches a peak, and the $n_{i1}$ and $n_e$ curves are retraced as $\chi$ goes back to zero. The equality of the areas ensures that the net charge in the soliton is zero; therefore, there is no electric field outside. If $\mu$ is larger than 1.6, we have the curve $n_{i2}$, in which the area under the curve is too small even when $\chi$ has reached its maximum value of $\mu^2/2$.

![Variation of ion and electron density (logarithmic scale) with normalized potential $\chi$ in a soliton. The ion density is drawn for two cases: Mach number greater than and less than 1.6.](images/shock_n.png){#fig:shock_n}

### Wave Steepening

If one propagates an ion wave in a cold-ion plasma, it will have the phase velocity given by

$$
v_p = \Big( \frac{k_B T_e + \gamma_i k_B T_i}{m_i} \Big)^{1/2} = \Big( \frac{k_B T_e}{m_i} \Big)^{1/2}
$$

corresponding to $\mu=1$. How, then, can one create shocks with $\mu>1$? One must remember that the above phase velocity was a linear result valid only at small amplitudes. As the amplitude is increased, an ion wave speeds up and also changes from a sine wave to a sawtooth shape with a steep leading edge (@fig:wave_steepening). The reason is that the wave electric field has accelerated the ions. In @fig:wave_steepening, ions at the peak of the potential distribution have a large velocity in the direction of $v_\phi$ than those at the trough, since they have just experienced a period of acceleration as the wave passed by. In linear theory, this difference in velocity is taken into account, but not the displacement resulting from it.  In nonlinear theory, it is easy to see that the ions at the peak are shifted to the right, while those at the trough are shifted to the left, thus steepening the wave shape. Since the density perturbation is in pahse with the potential, more ions are accelerated to the right than to the left, and the wave causes a net mass flow in the direction of propagation. This causes the wave velocity to exceed the acoustic speed in the undisturbed plasma, so that $\mu$ is larger than unity.

![A large-amplitude ion wave steepens so that the leading edge has a large slope than the trailing edge.](images/wave_steepening.png){#fig:wave_steepening}

### Double Layers

A phenomenon related to sheaths and ion acoustic shocks is that of the [double layer](https://en.wikipedia.org/wiki/Double_layer_(plasma_physics)). This is a localized potential jump, believed to occur naturally in the ionosphere, which neither propagates nor is attached to a boundary. The name comes from the successive layers of net positive and net negative charge that are necessary to create a step in $\phi(x)$. Such a step can remain stationary in space only if there is a plasma flow that Doppler shifts a shock front down to zero velocity in the lab frame, or if the distribution functions of the transmitted and reflected electrons and ions on each side of the discontinuity are specially tailored so as to make this possible. In natural situations double layers are likely to arise where there are gradients in the magnetic field $\mathbf{B}$, not where $\mathbf{B}$ is zero or uniform, as in laboratory simulations. In that case, the $\mu\nabla B$ force can play a large role in localizing a double layer away from all boundaries. Indeed, the thermal barrier in tandem mirror reactors is an example of a double layer with strong magnetic trapping.

## The Ponderomotive Force {#sec:ponderomotive}

Light waves exert a radiation pressure which is usually very weak and hard to detect. Even the esoteric example of comet tails, formed by the pressure of sunlight, is tainted by the added effect of particles streaming from the sun. When high-powered microwaves or laser beams are used to heat or confine plasmas, however, the radiation pressure can reach several hundred thousand atmospheres! When applied to a plasma, this force is coupled to the particles in a somewhat subtle way and is called the _ponderomotive force_. Many nonlinear phenomena have a simple explanation in terms of the ponderomotive force.

The easiest way to derive this nonlinear force is to consider the motion of an electron in the oscillating $\mathbf{E}$ and $\mathbf{B}$ fields of a wave. We neglect dc $\mathbf{E}_0$ and $\mathbf{B}_0$ fields. The electron equation of motion is

$$
m\dot{\mathbf{v}} = -e[\mathbf{E}(\mathbf{r}) + \mathbf{v}\times\mathbf{B}(\mathbf{r})] 
$$

This equation is exact if $\mathbf{E}$ and $\mathbf{B}$ are evaluated at the instantaneous position of the electron. The nonlinearity comes partly from the $\mathbf{v}\times\mathbf{B}$, which is second order because both $\mathbf{v}$ and $\mathbf{B}$ vanish in the equilibrium, so that the term is no larger than $\mathbf{v}_1\times\mathbf{B}_1$, where $\mathbf{v}_1$ and $\mathbf{B}_1$ are the linear-theory values. The other part of the nonlinearity, as we shall see, comes from evaluating $\mathbf{E}$ at the actual position of the particle rather than its initial position. Assume a wave electric field of the form

$$
\mathbf{E} = \mathbf{E}_s(\mathbf{r})\cos\omega t
$$

where $\mathbf{E}_s(\mathbf{r})$ contains the spatial dependence. In first order, we may neglect the $\mathbf{v}\times\mathbf{B}$ term in the equation of motion and evaluate $\mathbf{E}$ at the initial position $\mathbf{r}_0$. We have

$$
\begin{aligned}
m\dot{\mathbf{v}}_1 &=  -e\mathbf{E}(\mathbf{r}_0)\\
\mathbf{v}_1 &= -(e/m\omega)\mathbf{E}_s\sin\omega t = \dot{\mathbf{r}}_1 \\
\delta \mathbf{r}_1 &= (e/m\omega^2)\mathbf{E}_s\cos\omega t
\end{aligned}
$$

It is important to note that _in a nonlinear calculation, we cannot write $e^{i\omega t}$ and takes its real part later._ Instead, we write its real part explicitly as $\cos\omega t$. This is because products of oscillating factors appera in nonlinear theory, and the operations of multiplying and taking the real part do not commute.

Going to second order, we expand $\mathbf{E}(\mathbf{r})$ about $\mathbf{r}_0$:

$$
\mathbf{E}(\mathbf{r}) = \mathbf{E}(\mathbf{r}_0) + (\delta\mathbf{r}_0\cdot\nabla)\mathbf{E}|_{r=r_0} + ...
$$

We must now add the term $\mathbf{v}_1\times\mathbf{B}_1$, where $\mathbf{B}_1$ is given by Maxwell's equation:

$$
\begin{aligned}
\nabla\times\mathbf{E} &= -\dot{\mathbf{B}} \\
\mathbf{B}_1 &= -(1/\omega)\nabla\times\mathbf{E}_s|_{r=r_0}\sin\omega t
\end{aligned}
$$

The second-order part of the equation of motion is then

$$
m\dot{\mathbf{v}}_2 = -e[(\delta\mathbf{r}_1\cdot\nabla)\mathbf{E}+\mathbf{v}_1\times\mathbf{B}_1]
$$

Inserting the expressions of $\mathbf{v}_1,\delta\mathbf{r}_1$ and $\mathbf{B}_1$ into the above and averaging over time, we have

$$
m\left< \frac{\mathrm{d}\mathbf{v}_2}{\mathrm{d}t}\right> = -\frac{e^2}{m\omega^2}\frac{1}{2}[(\mathbf{E}_s\cdot\nabla)\mathbf{E}_s + \mathbf{E}_s\times(\nabla\times\mathbf{E}_s)] = \mathbf{f}_{NL}
$$ {#eq:motion_e_2nd}

Here we have used $\left<\sin^2\omega t\right> = \left<\cos^2\omega t\right>=\frac{1}{2}$. The double cross product can be written as the sum of two terms, one of which cancels the $(\mathbf{E}_s\cdot\nabla)\mathbf{E}_s$ term.

What remains is

$$
\mathbf{f}_{NL} = -\frac{1}{4}\frac{e^2}{m\omega^2}\nabla E_s^2
$$

This is the effective nonlinear force on a single electron. The force per $m^3$ is $\mathbf{f}_{NL}$ times the electron density $n_0$, which can be written in terms of $\omega_p^2$. Since $E_s^2 = 2\left<E^2\right>$, we finally have for the ponderomotive force the formula

$$
\mathbf{F}_{NL} = -\frac{\omega_p^2}{\omega^2}\nabla\frac{\left<\epsilon_0 E^2\right>}{2}
$$ {#eq:ponderomotive}

If the wave is electromagnetic, the second term in @eq:motion_e_2nd is dominant, and the physical mechanism for $\mathbf{F}_{NL}$ is as follows. Electrons oscillate in the direction of $\mathbf{E}$, but the wave magnetic field distorts their orbits. That is, the Lorentz force $-e\mathbf{v}\times\mathbf{B}$ pushes the electrons in the direction of $\mathbf{k}$ (since $\mathbf{v}$ is in the direction of $\mathbf{E}$, and $\mathbf{E}\times\mathbf{B}$ is in the direction of $\mathbf{k}$). The phases of $\mathbf{v}$ and $\mathbf{B}$ are such that the motion does not average to zero over an oscillation, but there is a secular drift along $\mathbf{k}$. If the wave has uniform amplitude, no force is needed to maintain this drift; but if the wave amplitude varies, the electrons will pile up in regions of small amplitude, and a force is needed to overcome the space charge. This is why the effective force $\mathbf{F}_{NL}$ is proportional to the _gradient_ of $\left<E^2 \right>$. Since the drift for each electron is the same, $\mathbf{F}_{NL}$ is proportional to the density --- hence the factor $\omega_p^2/\omega^2$.

If the wave is electrostatic, the first term in @eq:motion_e_2nd is dominant. Then the physical mechanism is simply that an electron oscillating along $\mathbf{k}\parallel\mathbf{E}$ moves farther in the half-cycle when it is moving from a strong-field region to a weak-field region than vice versa, so there is a net drift.

Although $\mathbf{F}_{NL}$ acts mainly on the electrons, the force is ultimately transmitted to the ions, since it is a low-frequency or dc effect. When electrons are bunched by $\mathbf{F}_{NL}$, a charge-separation field $\mathbf{E}_{cs}$ is created. The total force felt by the electrons is

$$
\mathbf{F}_e = -e\mathbf{E}_{cs} + \mathbf{F}_{NL}
$$

Since the ponderomotive force on the ions is smaller by $\Omega_p^2/\omega_p^2 = m_e/m_i$, the force on the ion fluid is approximately

$$
\mathbf{F}_i = e\mathbf{E}_{cs}
$$

Summing the last two equations, we find that the force on the plasma is $\mathbf{F}_{NL}$.

A direct effect of $\mathbf{F}_{NL}$ is the [self-focusing of laser light in a plasma](https://en.wikipedia.org/wiki/Self-focusing#Plasma_self-focusing). In @fig:laser_self-focusing we see that a laser beam of finite diameter causes a radially directed ponderomotive force in a plasma. This force moves plasma out of the beam, so that $\omega_p$ is lower and hte dielectric constant $\epsilon$ is higher inside the beam than outside. The plasma then acts as a convex lens, focusing the beam to a smaller diameter.

![Self-focusing of a laser beam is caused by the ponderomotive force.](images/laser_focusing.png){#fig:laser_self-focusing}

## Parametric Instabilities

The most thoroughly investigated nonlinear wave-wave interactions are the "parametric instabilities", so called because of an analogy with parametric amplifiers, well-known devices in electrical engineering. A reason for the relatively advanced state of understanding of this subject is that the theory is basically a linear one, but linear about anoscillating equilibirum.

### Coupled Oscillators

![A mechanical analog of a parametric instability.](images/parametric_amplifier.png){#fig:parametric_amplifier}

Consider the mechanical model of @fig:parametric_amplifier, in which two oscillators M1 and M2 are coupled to a bar resting on a pivot. The pivot P is made to slide back and forth at a frequency $\omega_0$, while the natural frequencies of the oscillators are $\omega_1$ and $\omega_2$. It is clear that, in the absence of friction, the pivot encounters no resistance as long as M1 and M2 are not moving. Furthermore, if P is not moving and M2 is put into motion, M1 will move; but as long as ω2 is not the natural frequency of M1, the amplitude will be small. Suppose now that both P and M2 are set into motion. The displacement of M1 is proportional to the product of the displacement of M2 and the length of the lever arm and, hence, will vary in time as

$$
\cos\omega_2 t \cos\omega_0 t = \frac{1}{2}\cos[(\omega_2 + \omega_0)t] + \frac{1}{2}\cos[(\omega_2 - \omega_0)t]
$$

If $\omega_1$ is equal to either $\omega_2+\omega_0$ or $\omega_2-\omega_0$, M1 will be resonantly excited and will grow to large amplitude. Once M1 starts oscillating, M2 will also gain energy, because one of the beat frequencies of $\omega_1$ with $\omega_0$ is just $\omega_2$. Thus, once either oscillator is started, each will be excited by the other, and the system is unstable. The energy, of course, comes from the “pump” P, which encounters resistance once the rod is slanted. If the pump is strong enough, its oscillation amplitude is unaffected by M1 and M2; the instability can then be treated by a linear theory. In a plasma, the oscillators P, M1, and M2 may be different types of waves.

### Frequency Matching

The equation of motion for a simple harmonic oscillator $x_1$ is

$$
\ddot{x}_1 + \omega_1^2 x_1 = 0
$$ {#eq:oscillator}

where $\omega_1$ is its resonant frequency. If it is driven by a time-dependent force which is proportional to the product of the amplitude $E_0$ of the driver, or pump, and the amplitude $x_2$ of a second oscillator, the equation of motion becomes

$$
\ddot{x}_1 + \omega_1^2 x_1 = c_1x_2E_0
$$ {#eq:oscillator_x1}

where $c_1$ is a constant indicating the strength of the coupling. A similar equation holds for $x_2$:

$$
\ddot{x}_2 + \omega_1^2 x_2 = c_2x_1E_0
$$ {#eq:oscillator_x2}

Let $x_1=\bar{x}_1 \cos\omega t$, $x_2=\bar{x}_2 \cos\omega^\prime t$, and $E_0=\bar{E}_0 \cos\omega_0 t$. @eq:oscillator_x2 becomes

$$
\begin{aligned}
(\omega_2^2 - {\omega^\prime}^2)\bar{x}_2\cos\omega^\prime t &= c_2\bar{E}_0\bar{x}_1\cos\omega_0 t\cos\omega t \\
&= c_2\bar{E}_0\bar{x}_1 \frac{1}{2}\{ \cos[(\omega_0 + \omega)t] + \cos[(\omega_0 - \omega)t]  \}
\end{aligned}
$$

The driving terms on the right can excite oscillators $x_2$ with frequencies

$$
\omega^\prime = \omega_0\pm\omega
$$ {#eq:oscillator_frequency_matching}

In the absence of nonlinear interactions, $x_2$ can only have the frequency $\omega_2$, so we must have $ω^\prime = \omega_2$. However, the driving terms can cause a frequency shift so that $ω^\prime$ is only approximately equal to $\omega_2$. Furthermore, $\omega^\prime$ can be complex, since there is damping (which has been neglected so far for simplicity), or there can be growth (if there is an instability). In either case, $x_2$ is an oscillator with finite Q and can respond to a range of frequencies about $\omega_2$. If $\omega$ is small, one can see from that both choices for $\omega^\prime$ may lie within the bandwidth of $x_2$, and one must allow for the existence of two oscillators, $x_2(\omega_0+\omega)$ and $x_2(\omega_0 - \omega)$.

Now let $x_1 = \bar{x}_1\cos\omega^{\prime\prime}t$ and $x_2 = \bar{x}_2\cos[(\omega_0\pm \omega)t]$ and insert into @eq:oscillator_x1:

$$
\begin{aligned}
&(\omega_1^2 - {\omega^{\prime\prime}}^2)\bar{x}_1\cos\omega^{\prime\prime} t \\
&= c_1\bar{E}_0\bar{x}_2\frac{1}{2}\big(\cos\{[\omega_0 + (\omega_0\pm\omega)]t\} + \cos\{ [\omega_0 - (\omega_0\pm\omega)]t \}  \big)\\
&= c_1\bar{E}_0\bar{x}_2\frac{1}{2}\big(\cos[(2\omega_0 \pm\omega) t] + \cos\omega t  \big)
\end{aligned}
$$ {#eq:oscillator_momentum}

The driving terms can excite not only the original oscillation $x_1(\omega)$, but also new frequencies $\omega^{\prime\prime} = 2\omega_0\pm\omega$. We shall consider the case $|\omega_0| \gg |\omega_1|$, so that $2\omega_0\pm\omega$ lies outside the range of frequencies to which $x_1$ can respond, and $x_1(2\omega_0\pm\omega)$ can be neglected. We therefore have three oscillators, $x_1(\omega)$, $x_2(\omega_0-\omega)$, and $x_2(\omega_0+\omega)$, which are coupled by @eq:oscillator_x1 and @eq:oscillator_x2:

$$
\begin{aligned}
(\omega_1^2 - \omega^2)x_1(\omega) - c_1E_0(\omega_0)[ x_2(\omega_0-\omega) + x_2(\omega_0 + \omega) ] &= 0 \\
[\omega_2^2 - (\omega_0-\omega)^2]x_2(\omega_0-\omega) - c_2E_0(\omega_0)x_1(\omega) &= 0 \\
[\omega_2^2 - (\omega_0+\omega)^2]x_2(\omega_0+\omega) - c_2E_0(\omega_0)x_1(\omega) &= 0
\end{aligned}
$$ {#eq:oscillator_energy}

The dispersion relation is given by setting the determinant of the coefficients equal to zero:

$$
\begin{vmatrix}
\omega^2 - \omega_1^2 & c_1E_0 & c_1 E_0 \\
c_2E_0 & (\omega_0-\omega)^2 - \omega_2^2 & 0 \\
c_2E_0 & 0 & (\omega_0+\omega)^2 - \omega_2^2
\end{vmatrix} = 0
$$ {#eq:oscillator_dispersion}

A solution with $\Im(\omega)>0$ would indicate an instability.

For small frequency shifts and small damping or growth rates, we can set $\omega$ and $\omega^\prime$ approximately equal to the undisturbed frequencies $\omega_1$ and $\omega_2$. @eq:oscillator_frequency_matching then gives a frequency matching condition:

$$
\omega_0 \approx \omega_2 \pm \omega_1
$$ {#eq:oscillator_frequency_matching2}

When the oscillators are waves in a plasma, $\omega t$ must be replaced by $\omega t - \mathbf{k}\cdot\mathbf{r}$. There is then also a wavelength matching condition

$$
\mathbf{k}_0 \approx \mathbf{k}_2 \pm \mathbf{k}_1
$$ {#eq:oscillator_frequency_matching3}

describing spatial beats; that is, the periodicity of points of constructive and destructive interference in space. The two conditions @eq:oscillator_frequency_matching2 and @eq:oscillator_frequency_matching3 are easily understood by analogy with quantum mechanics. Multiplying the former by Planck’s constant $\hbar$, we have

$$
\hbar\omega_0 = \hbar\omega_2 \pm \hbar\omega_1
$$

$E_0$ and $x_2$ may, for instance, be electromagnetic waves, so that $\hbar\omega_0$ and $\hbar\omega_2$ are the photon energies. The oscillator $x_1$ may be a Langmuir wave, or plasmon, with energy $\hbar\omega_1$. @eq:oscillator_energy simply states the conservation of energy. Similarly, @eq:oscillator_momentum states the conservation of momentum $\hbar\mathbf{k}$.

For plasma waves, the simultaneous satisfaction of @eq:oscillator_frequency_matching and @eq:oscillator_momentum in one-dimensional problems is possible only for certain combinations of waves. The required relationships are best seen on an $\omega-k$ diagram @fig:parallelogram_construction. (A) shows the dispersion curves of an electron plasma wave $\omega_2$ (Bohm-Gross wave) and an ion acoustic wave $\omega_1$. A large-amplitude electron wave $(\omega_0, \mathbf{k}_0)$ can decay into a backward moving electron wave $(\omega_2, \mathbf{k}_2)$ and an ion wave $(\omega_1, \mathbf{k}_1)$. The parallelogram construction ensures that $\omega_0 = \omega_1 + \omega_2$ and $\mathbf{k}_0 = \mathbf{k}_1 + \mathbf{k}_2$. The positions of $(\omega_0, \mathbf{k}_0)$ and $(\omega_2, \mathbf{k}_2)$ on the electron curve must be adjusted so that the
difference vector lies on the ion curve. Note that an electron wave cannot decay into two other electron waves, because there is no way to make the difference vector lie on the electron curve.

B shows the parallelogram construction for the “parametric decay” instability. Here, $(\omega_0, \mathbf{k}_0)$ is an incident electromagnetic wave of large phase velocity $(\omega_0/k_0\approx c)$. It excites an electron wave and an ion wave moving in opposite directions. Since $|\mathbf{k}_0|$ is small, we have $|\mathbf{k}_1|\approx -|\mathbf{k}_2|$ and $\omega_0=\omega_1+\omega_2$ for this instability.

C shows the $\omega-k$ diagram for the “parametric backscattering” instability, in which a light wave excites an ion wave and another light wave moving in the opposite direction. This can also happen when the ion wave is replaced by a plasma wave. By analogy with similar phenomena in solid state physics, these processes are called, respectively, “stimulated Brillouin scattering” and “stimulated Raman scattering.”

D represents the two-plasmon decay instability of an electromagnetic wave. Note that the two decay waves are both electron plasma waves, so that frequency matching can occur only if $\omega_0\simeq 2\omega_p$. Expressed in terms of density, this condition is equivalent to $n\simeq n_c/4$, when $n_c$ is the critical density associated with $\omega_0$ ($n_C = m\epsilon_0 \omega_0^2/e^2$). This instability can therefore be expected to occur only near the “quarter-critical” layer of an inhomogeneous plasma.

![Parallelogram constructions showing the $\omega-$ and $k-$maching conditions for four parametrix instabilities: (A) electron decay instability, (B) parametric decay instability, (C) stimulated Brillouin backscattering instability, and (D) two-plasmon decay instability.](images/parallelogram_construction.png){#fig:parallelogram_construction}

### Instability Threshold

Parametric instabilities will occur at any amplitude if there is no damping, but in practice even a small amount of either collisional or Landau damping will prevent the instability unless the pump wave is rather strong. To calculate the threshold, one must introduce the damping rates $\Gamma_1$ and $\Gamma_2$ of the oscillators $x_1$ and $x_2$. @eq:oscillator then becomes

$$
\ddot{x_1} + \omega_1^2 x_1 + 2\Gamma_1 \dot{x_1} = 0
$$

For instance, if $x_1$ is the displacement of a spring damped by friction, the last term represents a force proportional to the velocity. If $x_1$ is the electron density in a plasma wave damped by electron–neutral collisions, $\Gamma_1$ is $v_c/2$ (???) Examination of @eq:oscillator_x1, @eq:oscillator_x2, and @eq:oscillator_dispersion will show that it is all right to use exponential notation and let $\mathrm{d}/\mathrm{d}t \rightarrow i\omega$ for $x_1$ and $x_2$, as long as we keep $E_0$ real and allow $\bar{x}_1$ and $\bar{x}_2$ to be complex. @eq:oscillator_x1 and @eq:oscillator_x2 become

$$
\begin{aligned}
(\omega_1^2 - \omega^2 - 2i\omega\Gamma_1)x_1(\omega) &= c_1 x_2 E_0 \\
[\omega_2^2 - (\omega-\omega_0)^2 2i(\omega-\omega_0)\Gamma_2]x_2(\omega-\omega_0) &= c_2 x_1 E_0
\end{aligned}
$$ {#eq:parametric_damping}

We further restrict ourselves to the simple case of two waves --- that is, when $\omega\simeq\omega_1$ and $\omega_0 - \omega\simeq\omega_2$ but $\omega_0+\omega$ is far enough from $\omega_2$ to be nonresonant --- in which case the third row and column of @eq:oscillator_dispersion can be ignored. If we now express $x_1, x_2$, and $E_0$ in terms of their peak values, as in @eq:oscillator_momentum, a factor of 1/2 appears on the right-hand sides of @eq:parametric_damping. Discarding the nonresonant terms and eliminating $x_1$ and $x_2$ from @eq:parametric_damping, we obtain

$$
(\omega^2 - \omega_1^2 +2i\omega\Gamma_1)[(\omega_0-\omega)^2 - \omega_2^2 - 2i(\omega_0-\omega)\Gamma_2] = \frac{1}{4}c_1c_2\bar{E}_0^2
$$

At threshold, we may set $\Im(\omega)=0$. The lowest threshold will occur at exact frequency matching; i.e., $\omega=\omega_1,\omega_0-\omega=\omega_2$. Then the last equation gives

$$
c_1c_2(\bar{E}_0^2)_{\text{threshold}} = 16\omega_1\omega_2\Gamma_1\Gamma_2
$$

The threshold goes to zero with the damping of _either_ wave.

### Physical Mechanism

The parametric excitation of waves can be understood very simply in terms of the ponderomotive force (@sec:ponderomotive). As an illustration, consider the case of an electromagnetic wave $(\omega_0, \mathbf{k}_0)$ driving an electron plasma wave $(\omega_2, \mathbf{k}_2)$ and a low-frequency ion wave $(\omega_1, \mathbf{k}_1)$ (fig:parallelogram_construction B). Since $\omega_1$ is small, $\omega_0$ must be close to $\omega_p$. However, the behavior is quite different for $\omega_0<\omega_p$ than for $\omega_0>\omega_p$. The former case gives rise to the “oscillating two-stream” instability (which will be treated in detail), and the latter to the “parametric decay” instability.

![Physical mechanism of the oscillating two-stream instability.](images/oscillating_2stream.png){#fig:oscillating_2stream}

Suppose there is a density perturbation in the plasma of the form $n_1\cos k_1 x$; this perturbation can occur spontaneously as one component of the thermal noise. Let the pump wave have an electric field $E_0\cos\omega_0 t$ in the $x$ direction, as shown in @fig:oscillating_2stream. In the absence of a dc field $\mathbf{B}_0$, the pump wave follows the relation $\omega_0^2 = \omega_p^2 + c^2k_0^2$, so that $k_0\approx 0$ for $\omega_0\approx\omega_p$. We may therefore regard $E_0$ as spatially uniform. If $\omega_0$ is less than $\omega_p$ (HOW IS THIS POSSIBLE???), which is the resonant frequency of the cold electron fluid, the electrons will move in the direction opposite to $E_0$, while the ions do not move on the time scale of $\omega_0$. The density ripple then causes a charge separation, as shown in @fig:oscillating_2stream. The electrostatic charges create a field $E_1$, which oscillates at the frequency $\omega_0$. The ponderomotive force due to the total field is given by @eq:ponderomotive:

$$
\mathbf{F}_{NL} = -\frac{\omega_p^2}{\omega^2}\nabla\frac{\left< (E_0 + E_1)^2\right>}{2}\epsilon_0
$$

Since E0 is uniform and much larger than $E_1$, only the cross term is important:

$$
\mathbf{F}_{NL} = -\frac{\omega_p^2}{\omega^2}\frac{\partial}{\partial x}\frac{\left<2E_0E_1\right>}{2}\epsilon_0
$$

This force does not average to zero, since E1 changes sign with E0. As seen in fig:oscillating_2stream, $F_{NL}$ is zero at the peaks and troughs of $n_1$ but is large where $\nabla n_1$ is large. This spatial distribution causes $F_{NL}$ to push electrons from regions of low density to regions of high density. The resulting de electric field drags the ions along also, and the density perturbation grows. The threshold value of $F_{NL}$ is the value just sufficient to overcome the pressure $\nabla n_{i1}(k_BT_i + k_BT_e)$, which tends to smooth the density. The density ripple does not propagate, so that $\Re(\omega_1)=0$. This is called the _oscillating two-stream instability_ because the sloshing electrons have a time-averaged distribution function which is double-peaked, as in the two-stream instability (Sect. ???).

### The Oscillating Two-Stream Instability

I do not understand parametric instability so far. Too hard.

### The Parametric Decay Instability


## Plasma Echoes {#sec:echo}

Echoes in a plasma are the excitement of new waves due to nonlinear interaction. The excitement may happen at an arbitrarily large time, which is the main source of difficulties in understanding Landau damping. Since Landau damping _does not involve collisions or dissipation_, it is a _reversible_ process. That this is true is vividly demonstrated by the remarkable phenomenon of plasma echoes.

## Nonlinear Landau Damping

When the amplitude of an electron or ion wave excited, say, by a grid is followed in space, it is often found that the decay is not exponential, as predicted by linear theory, if the amplitude is large. Instead, one typically finds that the amplitude
decays, grows again, and then oscillates before settling down to a steady value. Although other effects may also be operative, these oscillations in amplitude are exactly what would be expected from the nonlinear effect of particle trapping discussed in @sec:landau_damping.

## Equations of Nonlinear Plasma Physics

### The Korteweg-de Vries Equation

$$
\frac{\partial U}{\partial\tau} + U\frac{\partial U}{\partial\xi}+\frac{1}{2}\frac{\partial^2 U}{\partial\xi^3} = 0
$$

where $U$ is amplitude, and $\tau$ and $\xi$ are timelike and spacelike variables, respectively.

### The Nonlinear Schrödinger Equation

$$
i\frac{\partial\psi}{\partial t} + p\frac{\partial^2\psi}{\partial x^2} + q|\psi|^2\psi = 0
$$ {#eq:nonlinear_schrödinger}

where $\psi$ is the wave amplitude, $i=\sqrt(-1)$, and $p$ and $q$ are coefficients whose physical significance will be explained shortly. @eq:nonlinear_schrödinger differs from the usual Schrödinger equation

$$
i\hbar\frac{\partial\psi}{\partial t} + \frac{\hbar^2}{2m}\frac{\partial^2\psi}{\partial x^2} - V(x,t)\psi = 0
$$

in that the potential $V(x,t)$ depends on $\psi$ itself, making the last term nonlinear.
