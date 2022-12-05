# Radiation Belt {#sec:radiation_belt}

A [Van Allen radiation belt](https://en.wikipedia.org/wiki/Van_Allen_radiation_belt) is a zone of energetic charged particles, most of which originate from the solar wind, that are captured by and held around a planet by that planet's magnetosphere. Earth possesses an inner belt and an outer belt.

1. the inner belt
  * MeV protons, 100 keV electrons
  * 0.2 - 2 $R_\text{E}$ (L 1 - 3)

2. the outer belt
  * 0.1 - 10 MeV electrons
  * 3 - 10 $R_\text{E}$ (outer boundary is the magnetopause)

Our understanding of the physics mechanisms until 1990s:

1. Low energy electrons get injected into the magnetosphere from the solar wind.
2. Electrons transport towards the planet by reconnections, substorms and associated electric fields.
3. Electrons drift around the planet.
4. Magnetic fluctuations cause inward/outward diffusions.
5. Energy is gained by conservation of the 1st adiabatic invariant.
6. Loss by collisions with the atmosphere, reaching the magnetoapuse, and outward radial diffusion.

During magnetic storms the magnetopause is compressed, so more electrons are lost to the magnetopause. If the mirror point is deep inside the atmosphere, charged particles will precipitate into the atmosphere and lost due to collisions.
There are still many mysteries both due to lack of observations and theories. For example, the classical theory cannot explain the electron variation (intermittent injection, rapid loss) timescales!

In 1998, two new theories came out:

1. Enhanced radial diffusion
  * Solar wind flows past the magnetosphere, drives K-H instability, and in turn triggers ULF waves.
  * The ULF waves trigger FLR (@sec:flr).
  * The outcome is a faster radial diffusion process?

2. Wave acceleration
  * Substorms, convection, plasma instabilities.
  * Waves accelerate electrons to MeV.

The wave acceleration, or more specifically, wave-particle interaction, has been widely explored both theoretically and compared with observation data at Earth, Jupiter, and Saturn.

## Waves in the Radiation Belt

![Schematic diagram showing many of the wave modes that affect energetic electrons in the Earth’s radiation belts. Viewing from the north pole.](https://media.springernature.com/lw685/springer-static/image/art%3A10.1186%2Fs40623-021-01508-y/MediaObjects/40623_2021_1508_Figa_HTML.png){#fig:radiation_belt_waves}

* Lower hybrid waves: ???

* Whistler waves (@sec:CPDR)

* Chorus waves
  * 1-5 kHz
  * highly nonlinear
  * not generated by lightning, but by natural plasma instabilities (same for hiss).

* Hiss waves
  * broadband structureless signal in the plasmasphere and resembles audible hiss

![In-situ observation by the ERG (Arase) spacecraft. The ERG spacecraft observed chorus waves and scattered electrons in the magnetosphere, the origin of pulsation auroras. The scattered electrons precipitated into the atmosphere resulting in auroral illumination. Intermittent occurrence of chorus waves and associated electron scattering lead to auroral pulsation.](https://www.eoportal.org/api/cms/documents/163813/3290385/ERG_Auto6.jpeg){#fig:arase_waves}

Before 1990s, waves in the radiation belts are known for transferring energy from charged particles, which act as a loss process to the particles. Richard Thorne, together with his collegues, proposed that they could also the sources of energetic particles ([Horne & Thorne], 1998, 2003, 2005a,b). If that is the case, _the wave-particle interactions must break the adiabatic invariants_.

The theory of wave-particle interaction starts with hot plasma kinetic theory (@sec:HPDR). When the denominator goes to 0, the resonance condition is fulfilled. From observations, we learned that the wave frequencies are smaller than the gyro-frequencies. How can we have resonance then? The answer is, Doppler shift needs to be taken into account.

### Sources of Waves

resonance can generate current --> this current can generate higher frequency radiations?

Whistler waves can be explained by the linear theory. However, chorus and hiss waves are highly nonlinear and thus cannot be explained by a linear theory. We conjecture that they are caused by natural plasma instabilities, but we still have little idea what exactly these instabilities are.

As a rough physical picture, during the cyclotron resonance:

1. Waves diffuse source electrons into loss cone --> electron loss and wave growth.
2. Waves diffuse trapped electrons --> energy diffusion leads to electron acceleration.

## Modeling

3D Fokker-Planck diffusion model (e.g. [@glauert2014three]) has been built to model the radiation belt electrons. In the Earth's radiation belts, the evolution of the phase-averaged phase-space density $f(p,r,t)$ can be described by a diffusion equation (see also @eq:fokker_planck):

$$
\frac{\partial f}{\partial t} = \sum_{i,j}\frac{\partial}{\partial J_i}\left[ D_{ij}\frac{\partial f}{\partial J_j} \right]
$$ {#eq:fokker_planck_general}

Here $D_{ij}$ are diffusion coefficients and $J_i$ are the action integrals, $J_1 = 2\pi m_e \mu/|q|$, $J_2 = J$, and $J_3 = q|\phi|$, where $\mu,J$, and $\phi$ are the adiabatic invariants of charged particle motion, $m_e$ is the electron mass, and $q$ the charge. The adiabatic invariants are awkward variables to visualize and relate to data so many authors transform to other coordinates. One choice is to use pitch angle, energy, and $L^\ast=2\pi M/(|\phi| R_\text{E})$ (@eq:Lstar), where $M=8.22\times 10^{22}\, \text{A}\,\text{m}^2$ is the magnetic moment of the Earth's dipole field and $R_\text{E}$ is the Earth's radius, as the three independent variables.

Assuming a dipole field, changing coordinates to equatorial pitch angle $\alpha$, kinetic energy $E$, and $L^\ast$, and neglecting some cross derivatives, @eq:fokker_planck can be written as

$$
\begin{aligned}
\frac{\partial f}{\partial t} =& \frac{1}{g(\alpha)}\frac{\partial}{\partial \alpha}\bigg\rvert_{E,L} g(\alpha)\left( D_{\alpha\alpha}\frac{\partial f}{\partial\alpha}\bigg\rvert_{E,L} + D_{\alpha E}\frac{\partial f}{\partial E}\bigg\rvert_{\alpha,L} \right) \\
&+ \frac{1}{A(E)}\frac{\partial}{\partial E}\bigg\rvert_{\alpha,L} A(E) \left( D_{EE}\frac{\partial f}{\partial E}\bigg\rvert_{\alpha,L} + D_{E\alpha}\frac{\partial f}{\partial \alpha}\bigg\rvert_{E,L} \right) \\
&+ L^2 \frac{\partial}{\partial L}\bigg\rvert_{\mu,J}\left( \frac{D_{LL}}{L^2}\frac{\partial f}{\partial L}\bigg\rvert_{\mu,J} \right)
\end{aligned}
$$ {#eq:fokker_planck_convenient}

where

$$
\begin{aligned}
g(\alpha) = T(\alpha)\sin 2\alpha \\
A(E) = (E+E_0)(E(E+2E_0))^{1/2}
\end{aligned}
$$

and $E_0$ is the electron rest mass energy. $T(\alpha)$ is related to the bounce period and in a dipole field can be approximated by

$$
T(\alpha) = \big(1.3802 - 0.3198(\sin\alpha + \sin^{1/2} \alpha) \big)
$$

$D_{\alpha\alpha},\, D_{\alpha E}=D_{E\alpha},\, D_{EE}$, and $D_{LL}$ are the _drift-_ and _bounce-averaged_ pitch angle, mixed pitch angle energy, energy and radial diffusion coefficients, respectively. When we need to clarify the fact that they are drift and bounce averaged, they will be explicitly written as $\left< D_{\alpha\alpha} \right>^d, \left< D_{\alpha E} \right>^d, \left< D_{EE} \right>^d$, and $\left< D_{LL} \right>^d$, respectively.

The bounce-averaged pitch angle and energy diffusion rates are defined by

$$
\begin{aligned}
\left< D_{\alpha\alpha} \right> &\equiv \left< \frac{(\Delta\alpha)^2}{2\Delta t} \right> \\
\left< D_{\alpha E} \right> &\equiv \left< \frac{(\Delta\alpha \Delta E)^2}{2\Delta t} \right> \\
\left< D_{EE} \right> &\equiv \left< \frac{(\Delta E)^2}{2\Delta t} \right>
\end{aligned}
$$

with units of $\text{s}^{-1}, \text{J}\text{s}^{-1}$, and $\text{J}^2\text{s}^{-1}$, respectively.

A loss term of the form $f/\tau_L$ can be added to represent losses to the atmosphere due to collisions. Here, $\tau_L$, the loss timescale, is equal to 1/4 of the bounce time in the loss cone and infinite elsewhere. As a first-order approximation, we can neglect the cross terms and simplify @eq:fokker_planck_convenient as

$$
\begin{aligned}
\frac{\partial f}{\partial t} =& \frac{1}{g(\alpha)}\frac{\partial}{\partial \alpha}\bigg\rvert_{E,L} g(\alpha)\left( D_{\alpha\alpha}\frac{\partial f}{\partial\alpha}\bigg\rvert_{E,L}\right) \\
&+ \frac{1}{A(E)}\frac{\partial}{\partial E}\bigg\rvert_{\alpha,L} A(E) \left( D_{EE}\frac{\partial f}{\partial E}\bigg\rvert_{\alpha,L}\right) \\
&+ L^2 \frac{\partial}{\partial L}\bigg\rvert_{\mu,J}\left( \frac{D_{LL}}{L^2}\frac{\partial f}{\partial L}\bigg\rvert_{\mu,J} \right) \\
&- \frac{f}{\tau_L}
\end{aligned}
$$ {#eq:fokker_planck_nocrossterm}

The first three terms on the right-hand side represent pitch angle, energy, and radial diffusion, respectively. The final term accounts for losses to the atmosphere. Pitch angle diffusion has contributions from wave-particle interactions and Coulomb collisions with the atmosphere, though the latter are only significant inside the loss cone. Energy diffusion is due to wave-particle interactions and radial diffusion to interactions with large-scale fluctuations in the Earth's magnetic and electric fields. The diffusion coefficients are based on statistical wave models derived from data. Depending on the choice of the diffusion coefficients, the Fokker-Planck equation can be linear, quasi-linear, or nonlinear.

Let us make our lives even simpler by considering only the radial diffusion and loss term.
The quasi-linear assumptions are:

* Broadband wave spectrum (with random phase), typically assumed as a Gaussian centered around a single dominant mode
* Low amplitude fluctuations (no nonlinear interactions)
* "Resonance limit" (linear growth rate of instabilities goes to 0)
* ULF wave-particle interactions lumped into the diffusion coefficient

Even when quasi-linear theory works fine, there are multiple sources of uncertainties in the radial diffusion coefficient:

* Background magnetic field model
* Bounce + drift average eliminates MLT dependence
* Azimuthal wave structure (i.e. power distribution over mode numbers)

Given the limited observation data, we want to estimate the unknown parameters $D_{LL}, \tau_L$. This is called an _inverse problem_. In 2000, Brautigam and Albert proposed a dependence of the radial diffusion coefficent on $K_p$ and L:

$$
D_{LL} \approx 10^{-0.506 K_p(t) - 9.325}L^10
$$

The standard statistical approach is to apply a Bayesian parameter estimation, where we are looking for a distribution of parameters and correcting results based on new observations. However, it is difficult to apply in high dimensions, which typically requires the Markov-chain Monte Carlo (MCMC) approach. For example, our assumption is that the parameters can be written in the following forms:

$$
\begin{aligned}
D_{LL}(L, t) &= 10^(a K_p(t) + b)L^c \\
\tau_L(L, t) &= \left\{
\begin{array}{lr}
(a_0 + a_1 L + a_2 L^2) / K_p(t) & \text{for } L\le L_{pp} \\ a_3 / K_p(t) & \text{for } L > L_{pp}
\end{array}
\right.
\end{aligned}
$$

where $L_{pp}$ is the plasmapause location, which can be estimated with some approximations. We introduce a bunch of random variables, and the posterior distributions of these variables after MCMC give us the best fits.

A new trend is to [use physics-informed machine learning to learn the coefficients](https://youtu.be/5C913ApaxUY). First we may need to constrain the forms of the coefficients to avoid an ill-posed inverse problem. Let the physical loss term be described by a drift coefficient $C$:

$$
\frac{\partial f}{\partial t} = L^2 \frac{\partial}{\partial L}\bigg\rvert_{\mu,J}\left( \frac{D_{LL}}{L^2}\frac{\partial f}{\partial L}\bigg\rvert_{\mu,J} \right) - \frac{\partial Cf}{\partial L}
$$

The job of _Physical-Informed Neural Network_ (PINN) is to deduce the optimal $D_{LL}$ and $C$ based on statistics by embedding the expected form of the equation into the loss term in the neural network. As this is statistics, we can build and test any kind of relations between variables without physical interpretation, which has been critizised a lot. For example, one may ask how you can let the phase space distribution $f$ depend only on $t$ and $L$? The information is incomplete from a physics point of view, but datawise it may just "work", in the sense that neural network is essentially a _universal high-dimensional function approximator_.

### Coupling physical processes at different time scales

If we only look at low frequency regime, the high frequency wave-particle interactions behave as a diffusion process to the plasma. Thus the coupling idea is not to simulate everything on the same time scale, but simulate the radiation belt effect by macroscopic diffusion coefficients.