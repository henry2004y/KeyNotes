# Gyrokinetics {#sec:gyrokinetics}

This is taken from the slide given by Frank Jenko from Max-Planck-Institut für Plasmaphysik.

Gyrokinetics is a theory for describing plasmas at a much finer level. If kinetic effects (e.g. finite Larmor radius, Landau damping, magnetic trapping etc.) play a role, MHD is not applicable, and one has to use a kinetic description.

Once again we start from the Vlasov-Maxwell equation. Removing the fast gyromotion under the assumption $\omega\ll\Omega$ leads to a dramatic speed-up. Thus we can think the basic element of charged rings as quasiparticles: it is described by gyrocenter coordinates and can keep the kinetic effects.

## A Brief Historical Review

The word "gyrokinetics" appeared in the literature in the late 1960s, first proposed by Rutherford, Frieman, Taylor and Hastie. The goal is to provide an adequate formalism for the linear kinetic drift waves study in general magnetic configurations, including finite Larmor radius effects. The first nonlinear set of equations for the perturbed distribution function $\delta f$ was given by Friemann and Liu Chen in 1982, who also introduced the gyrokinetic ordering. Gyrokinetic theory is based on Hamiltonian methods, which means that from a Lagrangian description, we remove the gyro-angle dependency by the change of coordinate systems to describe the equation of motion.

## The Gyrokinetic Ordering

### From Kinetics to Gyrokinetics

![Charged particle orbit in a magnetic field pointing into the plane with electrostatic potential fluctuations.](images/kinetics2gyrokinetics.png){#fig:kinetics2gk}

@fig:kinetics2gk shows the basic idea of gyrokinetic approximation. There is a strong magnetic field pointing into the plane. The electrostatic potential fluctuations are shown by the colored contours. The particle orbit is composed of two parts: a fast gyromotion and a slow $\mathbf{E}\times\mathbf{B}$ drift. In gyrokinetics we simply remove the fast gyromotion and introduce charged rings as quasiparticles, i.e. go from particle to gyrocenter coordinates.

![Gyrokinetic approximation.](images/gyrokinetic_approximation.png){#fig:gk_approximation}

* Slow time variation as compared to the gyromotion time scale:

$$
\omega/\Omega_i \ll 1
$$

* Spatial equilibirum scale much larger than the Larmor radius:

$$
r_L/L\ll 1
$$

* Strong anisotropy, i.e. only perpendicular components of the fluctuating quantities can be large:

$$
k_\parallel/k_\perp \ll 1
$$

* Small amplitude perturbations, i.e. energy of perturbation much smaller than the thermal energy:

$$
e\phi/k_BT_e \ll 1
$$

Let $\epsilon\ll 1$ denote a small value that we are going to use in the ordering.

$$
\frac{\omega}{\Omega}\sim\frac{r_L}{L}\sim\frac{k_\parallel}{k_\perp}\sim\frac{\delta F}{F_0}\sim\frac{\delta T}{T_0}\sim\frac{\delta n}{n_0}\sim\frac{|\delta \mathbf{B}|}{|\mathbf{B}_0|}\sim\frac{q\delta\phi}{T}\sim\epsilon
$$

$$
k_\perp r_L \sim 1
$$

## A Lagriangian Approach

If the Lagriangian of a dynamical system is known, e.g. for charged particle motion in non-canonical coordinates $(\mathbf{x},\mathbf{v})$:

$$
\begin{aligned}
L &= \Big(\frac{e}{c}\mathbf{A}(\mathbf{x},t) + m\mathbf{v}\Big)\cdot\dot{\mathbf{x}} - H(\mathbf{x},\mathbf{v}) \\
H &= \frac{m}{2}v^2 + e\phi(\mathbf{x},t)
\end{aligned}
$$

with $\mathbf{B} = \nabla\times\mathbf{A}$ and $\mathbf{E} = -\nabla\phi - \partial_t \mathbf{A}/c$. The equation of motion are given by the Lagrange equations (I almost forget everything from theoretical mechanics...): 

$$
\frac{d}{dt}\frac{\partial L}{\partial \dot{q}_i} - \frac{\partial L}{\partial q_i} = 0,\quad i=1,...,6
$$

For charged particles, 

$$
\frac{d}{dt}\frac{\partial L}{\partial\dot{\mathbf{v}}} - \frac{\partial L}{\partial\mathbf{v}} = 0 ?
$$

$$
\begin{aligned}
\dot{\mathbf{x}} &= \mathbf{v} \\
\dot{\mathbf{v}} &= \frac{e}{m}(\mathbf{E} + \mathbf{v}\times\mathbf{B})
\end{aligned}
$$

In gyrokinetics we add low-frequency, anisotropic, small-amplitude fluctuations:

$$
\frac{\omega}{\Omega_i} \sim \frac{k_\parallel}{k_\perp}\sim\frac{e\phi}{T_e} \sim \epsilon
$$

We need a transition from particle coordinates $(\mathbf{x},\mathbf{v})$ to guiding center coordinates $(\mathbf{R},v_\parallel, \mu, \varphi)$. The easy way is to construct a new Lagrangian using Lie transforms (???)

$$
\Gamma = \Big( mv_\parallel\hat{b}_0 + \frac{e}{c}\bar{\mathbf{A}}_{1\parallel}\hat{b}_0 + \frac{e}{c}\mathbf{A}_0 \Big)\cdot d\mathbf{X} + \frac{mc}{e}\mu d\theta - \Big( \frac{m}{2}v_\parallel^2 + \mu B_0 + \mu \bar{B}_{1\parallel} + e\bar{\phi}_1 \Big)dt
$$

where $\mu$ is the magnetic moment, $\theta$ is the gyroangle, and the overbar denotes a gyroaveraging operation. This gives the Euler-Lagrange equations

$$
\begin{aligned}
\dot{\mathbf{X}} &= v_\parallel\hat{b} + \frac{B}{B_\parallel^\ast}\Big[ \frac{v_\perp}{B}\bar{\mathbf{B}}_{1\perp} + \frac{c}{B^2}\bar{\mathbf{E}}_1\times\mathbf{B} + \frac{\mu}{m\Omega}\hat{b}\times\nabla(B+\bar{B}_{1\parallel}) + \frac{v_\parallel^2}{\Omega}(\nabla\times\hat{b})_\perp \Big] \\
\dot{v}_\parallel &= \frac{\dot{\mathbf{X}}}{mv_\parallel}\cdot\big( e\bar{\mathbf{E}}_1 - \mu\nabla(B+\bar{B}_{1\parallel}) \big) \\
\dot{\mu} &= 0
\end{aligned}
$$ {#eq:gk_euler_lagrange}

@eq:gk_euler_lagrange contains all the drifts we have seen in @sec:single.

Applying the gyrokinetic approximation, the effective gyroaveraged potential over one gyroperiod can be written using Fourier transform (???):

$$
\begin{aligned}
\phi^{\text{eff}}(\mathbf{x},r_L) &= \frac{1}{2\pi} \int_0^{2\pi}d\theta \phi(\mathbf{x}+\mathbf{r}_L) \\
&= \frac{1}{(2\pi)^2}\int_{-\infty}^{\infty}d\mathbf{k}e^{i\mathbf{k}\cdot\mathbf{x}}\phi(\mathbf{k})J_0(kr_L)
\end{aligned}
$$

where $J_0$ is the zeroth order Bessel function.

### Nonlinear Gyrokinetic Equations

The idea of deriving the gyrokinetic equations is very similar to the derivation of 5/10-moment equations. For species $\alpha$,

$$
\frac{\partial f_\alpha}{\partial t} + \mathbf{v}\cdot\frac{\partial f_\alpha}{\partial\mathbf{x}} + \frac{q_\alpha}{m_\alpha}\Big( \mathbf{E}+\frac{\mathbf{v}\times\mathbf{B}}{c} \Big)\cdot\frac{\partial f_\alpha}{\partial \mathbf{v}} = \sum_{\alpha^\prime} C_{\alpha\alpha^\prime}(f_\alpha, f_\alpha^\prime)
$$

We expand $f$ in different orders:

$$
f = f_0 + \delta f = f_0 + f_1 + f_2 + ...
$$

and treat the velocity as a first order quantity. For simplicity, we now ignore the species subscript $\alpha$. Separating the equilibrium and perturbation terms, we have

$$
\begin{aligned}
&\frac{\partial f_0}{\partial t} + \frac{\partial \delta f}{\partial t} \\
&+ \mathbf{v}_\perp\cdot\frac{\partial \delta f}{\partial\mathbf{x}} + \mathbf{v}_\parallel\cdot\frac{\partial \delta f}{\partial\mathbf{x}} \\
&+ \frac{q}{m}\Big( \delta\mathbf{E}+\frac{\mathbf{v}\times\mathbf{B}_0}{c} + \frac{\mathbf{v}\times\delta\mathbf{B}_0}{c} \Big)\cdot\frac{\partial f_0}{\partial \mathbf{v}} + \frac{q}{m}\Big( \delta\mathbf{E}+\frac{\mathbf{v}\times\mathbf{B}_0}{c}+\frac{\mathbf{v}\times\delta\mathbf{B}}{c} \Big)\cdot\frac{\partial \delta f}{\partial \mathbf{v}} = \\
&C(f_0, f_0) + C(f_0, \delta f) + C(\delta f, f_0) + C(\delta f, \delta f)
\end{aligned}
$$

Based on the gyrokinetic ordering,

$$
\begin{aligned}
\frac{\partial f_0}{\partial t} \sim \omega_{\text{heat}}f_0 \sim \epsilon^3\Omega f_0 \\
\frac{\partial \delta f}{\partial t}\sim \omega\delta f\sim \epsilon^2\Omega f_0 \\
\mathbf{v}_\perp\cdot\frac{\partial \delta f}{\partial\mathbf{x}}\sim v_{\text{th}}k_\perp\delta f\sim\epsilon\Omega f_0 \\
\mathbf{v}_\parallel\cdot\frac{\partial \delta f}{\partial\mathbf{x}}\sim v_{\text{th}}k_\parallel\delta f\sim\epsilon^2\Omega f_0 \\
\frac{q}{m}\nabla_\perp\delta\phi\cdot\frac{\partial f_0}{\partial \mathbf{v}}\sim \frac{q}{m}k_\perp \delta\phi\frac{f_0}{v_{\text{th}}} \sim \epsilon\Omega f_0 \\
\frac{q}{m}\nabla_\parallel\delta\phi\cdot\frac{\partial f_0}{\partial \mathbf{v}}\sim \frac{q}{m}k_\parallel \delta\phi\frac{f_0}{v_{\text{th}}} \sim \epsilon^2\Omega f_0 \\
\frac{q}{mc}\frac{\partial\delta\mathbf{A}}{\partial t}\cdot\frac{\partial f_0}{\partial\mathbf{v}}\sim\frac{q}{m}\omega\delta A\frac{f_0}{v_{\text{th}}}\sim \epsilon^2\Omega f_0 \\
\frac{q}{mc}(\mathbf{v}\times\mathbf{B}_0)\cdot\frac{\partial f_0}{\partial \mathbf{v}}\sim\frac{q}{mc}v_{\text{th}}B_0 \frac{f_0}{v_{\text{th}}}\sim \Omega f_0 \\
\frac{q}{mc}(\mathbf{v}\times\delta\mathbf{B})\cdot\frac{\partial f_0}{\partial \mathbf{v}}\sim\frac{q}{mc}v_{\text{th}}\delta B \frac{f_0}{v_{\text{th}}}\sim \epsilon\Omega f_0 \\
\frac{q}{m}\nabla_\perp \delta\phi\cdot\frac{\partial\delta f}{\partial\mathbf{v}}\sim\frac{q}{m}k_\perp\delta\phi\frac{\delta f}{v_{\text{th}}}\sim\epsilon^2\Omega f_0 \\
\frac{q}{m}\nabla_\parallel \delta\phi\cdot\frac{\partial\delta f}{\partial\mathbf{v}}\sim\frac{q}{m}k_\parallel\delta\phi\frac{\delta f}{v_{\text{th}}}\sim\epsilon^3\Omega f_0 \\
\frac{q}{mc}\frac{\partial\delta\mathbf{A}}{\partial\mathbf{v}}\sim\frac{q}{m}\omega\delta A\frac{\delta f}{v_{\text{th}}}\sim \epsilon^3\Omega f_0 \\
\frac{q}{mc}(\mathbf{v}\times\mathbf{B}_0)\cdot\frac{\partial \delta f}{\partial\mathbf{v}}\sim\frac{q}{mc}v_{\text{th}}B_0\frac{\delta f}{v_{\text{th}}}\sim\epsilon\Omega f_0 \\
\frac{q}{mc}(\mathbf{v}\times\delta\mathbf{B})\cdot\frac{\partial \delta f}{\partial\mathbf{v}}\sim\frac{q}{mc}v_{\text{th}}\delta B\frac{\delta f}{v_{\text{th}}}\sim\epsilon^2\Omega f_0
\end{aligned}
$$

$\omega_{\text{heat}}$ is ???

The zeroth order equation is

$$
\frac{q}{mc}(\mathbf{v}\times\mathbf{B}_0)\cdot\frac{\partial f_0}{\partial\mathbf{v}} = \Omega(\mathbf{v}_\perp\times\hat{b}_0)\cdot\frac{\partial f_0}{\partial\mathbf{v}} = 0
$$

If we tranform to a cylindrical coordinates in velocity space (@eq:kmhd_cylindrical_vspace), this can be written as

$$
(\mathbf{v}_\perp\times\hat{b}_0)\cdot\frac{\partial f_0}{\partial\mathbf{v}} = -\frac{\partial f_0}{\partial\theta} = 0
$$

This means that the equilibrium distribution function $f_0$ does not depend on the gyrophase, i.e. is gyrotropic.

The first order equation is

$$
\mathbf{v}_\perp\cdot\frac{\partial \delta f_1}{\partial\mathbf{x}} + \frac{q}{m}\Big( -\nabla_\perp\delta\phi+\frac{\mathbf{v}\times\delta\mathbf{B}}{c} \Big)\cdot\frac{\partial f_0}{\partial\mathbf{v}} + \frac{q}{mc}(\mathbf{v}\times\mathbf{B}_0)\cdot\frac{\partial \delta f_1}{\partial\mathbf{v}} = C(f_0, f_0)
$$

Muliplying with $(1+\ln f_0)$ and integrating over phase space, we get

$$
\int \ln(f_0)C(f_0, f_0)d\mathbf{x}d\mathbf{v} = 0
$$

From the proof of Boltzmann's H-theorem, we conclude:

$$
\begin{aligned}
f_0 = f_{0,M}(v) = \frac{n_0}{\pi^{3/2}v_{\text{th}}^3}e^{-v^2/v_{\text{th}}^2} \\
C(f_{0,M}, f_{0,M}) = 0 \\
\frac{\partial f_{0,M}}{\partial\mathbf{v}} = -2f_{0,M}\frac{\mathbf{v}}{v_\text{th}^2} = -f_{0,M}m\frac{\mathbf{v}}{T}
\end{aligned}
$$

The equilibrium distribution is Maxwellian. The first order equation thus becomes (???)

$$
\mathbf{v}_\perp\cdot\frac{\partial \delta f_1}{\partial\mathbf{x}} - \Omega\frac{\partial\delta f_1}{\partial\theta} = -f_{0,M}\mathbf{v}\cdot\nabla_\perp\Big(\frac{q\delta\phi}{T}\Big)
$$

The solution to this is a combination of a homogeneous solution and a particular solution. For the homogeneous part,

$$
\mathbf{v}_\perp\cdot\frac{\partial h}{\partial\mathbf{x}} - \Omega\frac{\partial h}{\partial\theta}\bigg\rvert_\mathbf{x} = 0,\, \mathbf{x} = \mathbf{X} + \mathbf{r}_L,\quad \Omega\frac{\partial h}{\partial\theta}\bigg\rvert_\mathbf{X}=0
$$

For the particular part, the solution is

$$
-q\delta \phi(\mathbf{x},t)f_0(\mathbf{v})/T
$$

Thus the complete solution is

$$
\delta f_1(\mathbf{x},\mathbf{v},t) = h(\mathbf{X},v_\parallel,v_\perp,t) - q\delta\phi(\mathbf{x},t)f_0(\mathbf{v})/T
$$

We still need an equation for $h$ for closure. Therefore we have to go to the second order equation

$$
\begin{aligned}
\frac{\partial\delta f_1}{\partial t}+v_\parallel\hat{b}_0\cdot\nabla\delta f_1 + \frac{q}{m}\Big( -\nabla_\perp \delta\phi + \frac{\mathbf{v}\times\delta\mathbf{B}}{c} \Big)\cdot\frac{\partial\delta f_1}{\partial\mathbf{v}} \\
- \frac{q}{m}(\nabla_\parallel \delta\phi)\frac{\partial f_0}{\partial v_\parallel} - \frac{q}{mc}\frac{\partial\delta\mathbf{A}}{\partial t}\cdot\frac{\partial f_0}{\partial \mathbf{v}} \\
+ \mathbf{v}_\perp\cdot\nabla\delta f_2 + \frac{q}{mc}(\mathbf{v}\times\mathbf{B}_0)\cdot\frac{\partial\delta f_2}{\partial\mathbf{v}} \\
= C(\delta f_1, f_0) + C(f_0,\delta f_1)
\end{aligned}
$$

From particle coordinates to guiding center coordinates

$$
\begin{aligned}
\frac{\partial h}{\partial t} + \frac{d\mathbf{X}}{dt}\cdot\frac{\partial h}{\partial\mathbf{X}} + \frac{q}{m}\Big( -\nabla_\perp\delta\phi + \frac{\mathbf{v}\times\delta\mathbf{B}}{c} \Big)\cdot\frac{\partial h}{\partial\mathbf{v}} = \\
C(h,f_0) + C(f_0, h) + \frac{q}{T}f_0\frac{\partial \chi}{\partial t} + \Omega\frac{\partial\delta f_2}{\partial\theta}\bigg\rvert_\mathbf{X}
\end{aligned}
$$

where $\xi\equiv\delta\phi - \mathbf{v}\cdot\delta\mathbf{A}/c$.

For any quantity $Q$, the gyrophase averaging at fixed guiding center position is

$$
\left< Q(\mathbf{x},\mathbf{v},t) \right>_\mathbf{X} \equiv \frac{1}{2\pi}\int_0^{2\pi}Q\Big( \mathbf{X}-\frac{\mathbf{v}\times\hat{b}_0}{\Omega},\mathbf{v},t \Big)d\theta
$$

We have

$$
\begin{aligned}
\left< h(\mathbf{x},\mathbf{v},t) \right>_\mathbf{X} = h \\
\left< \mathbf{v}_\perp\cdot\nabla Q \right>_\mathbf{X} = -\Omega \left<  \frac{\partial Q}{\partial\theta}\bigg\rvert_\mathbf{X} \right>_\mathbf{X} = 0
\end{aligned}
$$

The equation for the gyrocenter distribution function $h$ is then

$$
\frac{\partial h}{\partial t} + v_\parallel\hat{b}_0\cdot\frac{\partial h}{\partial\mathbf{X}} + \frac{c}{B_0}\Big( \hat{b}_0\times\frac{\partial<\chi>_\mathbf{X}}{\partial \mathbf{X}} \Big)\cdot\frac{\partial h}{\partial\mathbf{X}} = \left< C(h) \right>_\mathbf{X} + \frac{q}{T}f_0\frac{\partial <\chi>_\mathbf{X}}{\partial t}
$$

The quasi-neutrality $\sum_\alpha q_\alpha\delta n_\alpha = 0$ now becomes

$$
\begin{aligned}
\sum_\alpha\Big[ -\frac{q_\alpha^2 n_{0\alpha}}{T_{0\alpha}}\delta\phi(\mathbf{x},t) + q_\alpha\int h_\alpha\Big( \mathbf{x}+\frac{\mathbf{v}\times\hat{b}_0}{\Omega_\alpha},\mathbf{v},t \Big)d\mathbf{v} \Big] = 0 \\
\sum_\alpha\Big( -\frac{q_\alpha^2 n_{0\alpha}}{T_{0\alpha}}\delta\phi(\mathbf{x},t) + q_\alpha \int <h_\alpha>d\mathbf{v}\Big) = 0
\end{aligned}
$$

Last but not least we need the modified Ampère's law:

$$
\nabla\times\delta\mathbf{B}(\mathbf{x},t) = \frac{4\pi}{c}\sum_\alpha q_\alpha
$$


The distribution function now depends on 6 variables, $f = f(\mathbf{X},v_\parallel,\mu;t)$. The Vlasov equation can be written as

$$
\frac{\partial f}{\partial t} + \dot{\mathbf{X}}\cdot\frac{\partial f}{\partial \mathbf{X}} + \dot{v_\parallel}\frac{\partial f}{\partial v_\parallel} = 0 
$$

where $\mathbf{X}$ is the gyrocenter position, $v_\parallel$ is the parallel velocity, and $\mu$ is the magnetic moment. The appropriate field equations are now

$$
\begin{aligned}
\frac{n_1}{n_0} &= \frac{\bar{n}_1}{n_0} - (1- |I_0^2|)\frac{e\phi_1}{T} + |eI_0I_1|\frac{B_{1\parallel}}{B} \\
\nabla_\perp^2 A_{1\parallel} &= -\frac{4\pi}{c}\sum\bar{J}_{1\parallel} \\
\frac{B_{1\parallel}}{B} &= -\sum \epsilon_\beta\Big( \frac{\bar{p}_{1\perp}}{n_0 T} + |xI_0I_1|\frac{e\phi_1}{T} + |x^2I_1^2|\frac{B_{1\parallel}}{B} \Big)
\end{aligned}
$$

These equations remove the irrelevant space-time scales and become nonlinear 5D equations instead 6D.

## Applications

Gyrokinetics has emerged as the standard approach to plasma turbulence.

Some issues under investigation where gyrokinetics may shed light on:

* Role of microturbulence in space physics?
* transport across boundary layers
* fast magnetic reconnection
* coronal and solar wind heating
* How does MHD turbulence dissipate energy?
* How do fast particles interact with turbulence?

## Limitations

What gyrokinetics cannot resolve:

* cyclotron resonance
* gyro-related phenomena

At least the orginal form of gyrokinetic cannot include EMIC waves and whistler waves.
