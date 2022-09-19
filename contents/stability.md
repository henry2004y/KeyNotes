# Stability {#sec:stability}

This chapter discusses plasma equilibrium and stability, or more precisely, instability. We are interested in when, where, and how instabilities arise in plasmas.

Magnetic fields are ubiquitous in cosmological objects. General questions exist about why are they of the form that they are:

* Why does this particular form remain?
* How does it get to this form?

Anything that reorganizes magnetic field is a transport phenomenon therefore instabilities are of great interest. From hydrodynamic instabilities to plasma instabilities, we need to realize the role of magnetic field and kinetic physics in the instability process:

* Existing hydro-instability may be affected by the presence of magnetic field
* Instability may be driven by presence of magnetic fields
* Instability that does not exist in hydrodynamics may arise in the kinetic description.

There exists a massive catalogue of MHD instabilities.

| Type         | Description       |
|--------------|-------------------|
| Beam acoustic instability |  |
| Bump-in-tail instability |  |
| Buneman instability |  |
| Cherenkov instability |  |
| Chute instability |  |
| Coalescence instability |  |
| Collapse instability |  |
| Counter-streaming instability |  |
| Cyclotron instabilities | Alfvén, electron, electrostatic, ion, magnetoacoustic |
| Disruptive instability |  |
| Double mission instability |  |
| Drift instability | |
| Electrothermal instability |  |
| Fan instability |  |
| Filamentation instability |  |
| Firehose instability | Hose |
| Free electron maser instability |  |
| Gyrotron instability |  |
| Helical instability | Helix |
| Interchange instability | Rayleigh-Taylor, flute, ballooning, kink, sausage |
| Ion beam instability |  |
| Lower hybrid drift instability |  |
| Magnetic drift instability |  |
| Modulation instability |  |
| Non-Abelian instability | Chromo-Weibel |
| Pair instability |  |
| Parker instability | Magnetic buoyancy |
| Peratt instability |  |
| Pinch instability |  |
| Tearing mode instability |  |
| Two stream instability | Kelvin-Helmholtz |
| Weak beam instability |  |
| Weibel instability |  |
| Z-pinch instability | Bennett pinck |

The basic methodology of examining instabilities

* Take the equations
* Linearize about an equilibrium solution
* Add some perturbations and see what happens
  * Look for _normal mode_ solutions $e^{i(\mathbf{k}\cdot\mathbf{x}-\omega t)}$ and find a relationship between the growth rate $\Im(\omega)$ and the wavenumbers of the disturbance $\mathbf{k}$ and the parameters of the problem (i.e. dispersion relation).
  * Use the _MHD energy principle_: calculate $\delta W$, the change in potential energy associated wit the disturbance, and look for disturbances with $\delta W<0$ (the existence of any one means unstable; need $\delta W>0 \forall$ types of disturbances).

## Analogy of the Energy Principle

First, let us have an intuitive inspection from the energy principle. In classical mechanics, we learn that motion acts to lower the energy in the system. For the simplest Rayleigh-Taylor instability between two fluids with different density, we can easily decide if there is an instability by checking the total potential energy change. In a current-carrying plasma, similar motions can be developed. The energy can be expressed as

$$
W=\frac{1}{2}LI^2
$$

where $L$ is the inductance and $I$ is the current. The magnetic flux can be written as

$$
\Phi = LI
$$

so the energy can also be written as

$$
W=\frac{\Phi^2}{2L}
$$

The relation between magnetic flux and current is similar to charge and voltage, $Q=CV$, where $C$ is the electric capacity. In a system where magnetic flux $\Phi$ is conserved (e.g. ideal MHD), plasma lowers its potential by increasing its inductance $L$. Check [@bellan2008fundamentals] P315.

1. current loop, hoop force, increase area;
2. sausage mode;
3. current wire into helix.

## Implication of Single Particle Motion on Instabilities {#sec:particle_motion_instability}

This section provides some qualitative understanding of instabilities in plasma. Thinking of instabilities from the prospective of single particle motion provides us the physical intuition of the causes and development of instabilities from a very basic level.

### Equilibrium stability of a plasma from drifts

A key problem in nuclear fusion is to confine plasma. In the first stage, we need current loops around a torus tube (ADD FIGURE!) to provide a toroidal magnetic field $\mathbf{B}_t$ along the torus. Let us take a look at a torus cut. (ADD FIGURE!) $\nabla B_0$ is pointing towards the inside. $\mathbf{B}_0$ points outside the plane, so the gradient-curvature drift will lead electrons upward and ions downward, which in turn creates a E field pointing upwards. $\mathbf{E}\times\mathbf{B}$ drift then will lead both electrons and ions towards the outer boundary. Eventually we will lose the plasma. One way to fix this is to add $\mathbf{J}_t$, an internal plasma current in the toroidal direction to generate a poloidal $\mathbf{B}_p$, so that the magnetic field is stronger on the boundary than that at the center.  In this way the total magnetic field becomes a helix.

Consider the poloidal magnetic field generated by $\mathbf{J}_t$. One step further, our question is: will the plasma tube be stable under infinitesimal perturbations to the ideal cylinder configuration? The answer is no. Imagine a small perturbation shown as in @fig:kink_sausage b. $\nabla B$ points from weak B to strong B regions. On the convex side, the gradient-curvature drift will lead ions to the left and electrons to the right, which in turn generates an electric field pointing left to right. Thereafter the $\mathbf{E}\times\mathbf{B}$ drift will further drag the plasma to the convex region, and the whole system can never return to equilibrium. This the current-carrying plasma instability is called _kink instability_. The situation described here is sometimes referred to as _linear kink instability_. The kink mode can carry currents. Another similar mode is the _sausage instability_ as shown in @fig:kink_sausage. Also note that a sufficiently strong $B_z$ (not poloidal/toroidal component) can stabilize these instabilities.

![Sausage and kink modes.](images/kink_sausage_modes.png){#fig:kink_sausage}

Another famous instability is the Rayleigh-Taylor instability. In fluid dynamics, Rayleigh-Taylor instability happens due to gravity. Here in plasma physics, the role of gravity force is replaced by the electromagnetic force. Imagine a situation where plasma are located at $z>0$ region, below which is a vacuum space. There is a B field pointing outside the plane while $\nabla B$ is pointing upwards ($B_{\text{up}}>B_{\text{down}}$). Due to gradient drift on the boundary, ions will move to the left while electrons will move to the right, where a E field pointing left to right is created. Thus the $\mathbf{E}\times\mathbf{B}$ drift will lead plasma from upper region to lower region, and eventually breaks the interface. (Actually I have some questions for this figure: it seems to me that it is impossible to decide which part of the interface is changing first?)

### Stability of magnetic mirror in the scope of single particle motion {#sec:single_particle_instability}

We can deduce the stability of magnetic mirror by assuming a initial small perturbation along the boundary. In the center cross-section cut, first there is a centrifugal force pointing outward, which will cause electrons drifting to one way and ions drifting to the other way. The charge separation will generate an electric field. The $\mathbf{E}\times\mathbf{B}$ drift will then pull the plasma further out if there's a ripple, which will lead to instability. Several names describe the same thing: flute instability, R-T instability, interchangeable instability, gravitational instability and so on. This instability propagates at Alfvén speed. 

![Basic magnetic mirror configuration.](images/magnetic_mirror.png){#fig:magnetic_mirror}

In general, we can define two configuration categories: the unstable situation, where $\mathbf{B}$ has a "bad" unfavorable curvature, and the stable situation, where $\mathbf{B}$ has a "good" favorable curvature. This depends on whether or not the magnetic pressure in the vacuum is stronger than that inside the plasma. In a basic magnetic mirror, the plasma on the center boundaries are unstable, while those around the coil curvature are stable.

A famous Russian scientist Ioffe introduced conducting bars around the mirror to create an _absolute minimum B-geometry_, where in any point away from the center the B field is stronger. This indeed supresses the R-T instability, but the whole system is, unfortunately, still unstable due to micro-instabilities caused by lost cone distribution. The inverted population (more high speed particles than low speed ones) will lead to instabilities. Later scientists came up with the idea of adding cold gas to modify the distribution, but the cold gas injection procedure eventually kills the mirror configuration.

### Stability in the Tokamak

In a classical Tokamak geometry, the poloidal and toroidal magnetic field together created a spiral around the torus.

$$
\begin{aligned}
\mathbf{B}=\mathbf{B}_T+\mathbf{B}_P \\
B=\sqrt{{B_T}^2+{B_P}^2}\approx B_T
\end{aligned}
$$

The field strength goes down as $R$ increases, which implies that the inner semi-tube is in good curvature and the outer semi-tube is in bad curvature. By plotting mechanical potential=$\mu B$ along the B-line as a function of $\theta$, we can see that there are bumps and valleys. Particles with low $v_\parallel$ are trapped, and those with large $v_\parallel$ are transit particles. Tokamak is an _average minimum B geometry_, because particles spend longer time on hills (stable region) and less time in valleys (unstable region). This geometry is not as robust as Ioffe bar magnetic mirror, since some particles with small $v_\parallel$ are always trapped in bad curvature region.

See more in [@chen2016introduction], Third Edition, Chapter Application of Plasmas.

## Rayleigh-Taylor Instability

The Rayleigh-Taylor instability is probably the most important MHD instability. It is also called _gravitational instability_ , _flute instability_ or more generally, _interchange instability_. In ordinary hydrodynamics, a Rayleigh-Taylor
instability arises when one attempts to support a heavy fluid on top of a light fluid: the interface becomes "rippled", allowing the heavy fluid to fall through the light fluid. In plasmas, a Rayleigh-Taylor instability can occur when a dense
plasma is supported against gravity by the pressure of a magnetic field.

The situation would not be of much interest or relevance in its own right, since actual gravitational forces are rarely of much importance in plasmas. However, in curved magnetic fields, the centrifugal force on the plasma due to particle motion along the curved field-lines acts like a "gravitational" force (@sec:gravity_field). For this reason, the analysis of the Rayleigh-Taylor instability provides useful insight as to the stability properties of plasmas in curved magnetic fields.
Rayleigh-Taylor-like instabilities driven by actual field curvature are the most virulent type of MHD instability in non-uniform plasmas.

Here we use a 2-fluid model and a so-called "diffuse boundary" model [@chen2016introduction] to describe it mathematically. Recall the structure of magnetic mirror: we have curved magnetic field lines and high density plasma at the center. From the discussion in @sec:single_particle_instability, we know that the central part of magnetic mirror is unstable for Rayleigh-Taylor instability because of centrifugal force. Let us simplify the scenario and study the problem in Cartesian coordinates. The centrifugal force is irrelevant to particle charge and proportional to particle mass, so both ions and electrons have the same acceleration due to it. Let us replace the centrifugal force with gravity $\mathbf{g}$. In @fig:RT_instability, there are high density plasma on top and low density plasma on the bottom, with a distribution $\partial n_o/\partial x<0$.

![Simultaion of Rayleigh-Taylor instability [@rahman2019relaxation].](images/Rayleigh_Taylor_Instability.png){#fig:RT_instability}

### 2-Fluid Diffuse Boundary Model

This section is similar to Section 6.7 in [@chen2016introduction].

The continuity and momentum equations are:

$$
\begin{aligned}
\frac{\partial n_j}{\partial t}+\nabla\cdot(n_j \mathbf{v_j})&=0 \\
\frac{\partial \mathbf{v_j}}{\partial t}+\mathbf{v_j}\cdot\nabla\mathbf{v_j}&=\frac{q_j}{m_j}\big( \mathbf{E}+\mathbf{v_j}\times\mathbf{B} \big)-\frac{\nabla P_j}{n_j m_j} + \mathbf{g}
\end{aligned}
$$

where $j=e^-, i^+$ for electrons and ions.

Assume an one-dimensional case

$$
\begin{aligned}
T_e = T_i = 0 \Rightarrow P_e=n_ek_BT_e = 0,\ P_i = n_ik_BT_i = 0 \\
n_0 = n_0(x), \frac{\partial n_0}{\partial x}<0\ (\textrm{nonuniform plasma}) \\
\mathbf{g}=g\hat{x}, g=\textrm{const.}>0 \\
\mathbf{B}_0=B_0\hat{z},\ B_0=\textrm{const.},\ \mathbf{E}_0=0\ (\textrm{no gradient/curvature drift})
\end{aligned}
$$

Note that there is no diamagnetic current if $P_e=P_i=0$ (no electric field so no current along $\mathbf{B}_0$ ?):

$$
\begin{aligned}
&\mathbf{J}_{de}\times\mathbf{B}_0=-\nabla P_e=0 \\
&\mathbf{J}_{di}\times\mathbf{B}_0=-\nabla P_i=0 \\
\Rightarrow & \mathbf{J}_{de}=\mathbf{J}_{di}=0
\end{aligned}
$$

Instability arises when an equilibrium state is violated. What is the force that balances the gravity? It turns out to be the Lorentz force $\mathbf{v}\times\mathbf{B}$ term: the separation of electrons and ions creates currents, and currents lead to force.

ADD FIGURE!

In equilibrium, $\frac{\partial}{\partial t}=0$, $\frac{\partial}{\partial y}\big[ n_{0j}(x)v_{0j} \big]=0,$ $v_{0j}=\text{const.}$,

$$
\begin{aligned}
&\frac{\partial{n_{oj}}}{{\partial t}}+\nabla\cdot(n_{oj}\mathbf{v}_{oj})=0 \\
&\frac{q_j}{m_j}\mathbf{v}_j\times\mathbf{B}_0+\mathbf{g}=0 \\
\Rightarrow & 
\begin{cases}
\mathbf{v}_i=\frac{gm_i}{q_iB_0}(-\hat{y})=-\frac{g}{\Omega_i}\hat{y}=-\hat{y}v_{0i} \\
\mathbf{v}_e=\frac{gm_e}{q_eB_0}(\hat{y})=\frac{g}{\Omega_e}\hat{y}=\hat{y}v_{0e}\approx 0 (v_{0e}\ll v_{0i})
\end{cases}
\end{aligned}
$$

where $\Omega_i,\ \Omega_e$ are the gyro-frequency for ions and electrons respectively.

Now, we introduce an electrostatic perturbation on this equilibrium state ($\mathbf{B}_1(\mathbf{x},t)=0$, $\nabla\times\mathbf{E}_1=-\frac{\partial \mathbf{B}_1}{\partial t}=i\omega\mathbf{B}_1=0$, $\mathbf{E}_1$ can be written as a gradient of a scalar potential)

$$
\mathbf{E}_1(\mathbf{x},t)=-\nabla\Phi_1 = -\nabla\big[ \phi_1(x)e^{ik_y y-i\omega t} \big]
$$

In addition, we adopt the so-called "local approximation", i.e. we assume $\partial \phi_1/\partial x=0$, $\frac{\partial}{\partial x}\big[ E_1,\mathbf{v}_1,n_1 \big]=0$. This is a very drastic assumption that greatly simplifies the problem but cannot be justified. This assumption is commonly used in many textbooks, both explicitly and implicitly (e.g. [@bellan2008fundamentals] used this to treat universal instability. Remember in solving the Vlasov equations, we integrate along the unperturbed orbits, which also requires this assumption.)

In this case,

$$
\mathbf{E}_1=0\hat{x}+E_{1y}\hat{y}=\hat{y}\widetilde{E}_{1y}e^{ik_y y-i\omega t}
$$

where $\widetilde{E}_{1y}=-i k_y \phi_1$ is a constant. 

Linearization:

$$
\begin{aligned}
\frac{\partial}{\partial t}(n_0+n_1) +\nabla\cdot\big[ (n_0+n_1)(\mathbf{v}_0+\mathbf{v}_1) \big]&=0 \\
\frac{\partial}{\partial t}(\mathbf{v}_0+\mathbf{v}_1)+(\mathbf{v}_0+\mathbf{v}_1)\cdot\nabla(\mathbf{v}_0+\mathbf{v}_1)&=\frac{q}{m}\big[ \mathbf{E}_0+\mathbf{E}_1+(\mathbf{v}_0+\mathbf{v}_1)\times(\mathbf{B}_0+\mathbf{B}_1)\big]+\mathbf{g}
\end{aligned}
$$

Getting rid of the equilibrium and high-order terms, we have (Notice that $\mathbf{g}$ does not even appear here! In MHD, it does, in a very explicit way.)

$$
\begin{aligned}
i(k_yv_{0y}-\omega)n_1=-n_0 ik_y v_{1y} - v_{1x}\frac{\partial n_0}{\partial x} \\
\frac{d}{dt}\mathbf{v}_1=i(k_yv_{0y}-\omega)\mathbf{v}_1=\frac{q}{m}\big( \mathbf{E}_1+\mathbf{v}_1\times\mathbf{B}_0 \big)
\end{aligned}
$$

Now, from the linearized momentum equation, we can get the x and y components of perturbed velocity; intuitively, you can guess the expression:

$$
\begin{aligned}
&v_{1,ix}=\frac{E_{1y}}{B_0},\ v_{1,ex}=\frac{E_{1y}}{B_0}\\
&v_{1,iy}=\frac{1}{\Omega_i}\frac{d}{dt}\Big(\frac{E_{1y}}{B_0} \Big)=\frac{i(k_yv_{0i}-\omega)}{\Omega_i}\Big( \frac{E_{1y}}{B_0}\Big),\ v_{1,ey}=\frac{1}{\Omega_e}\frac{d}{dt}\Big(\frac{E_{1y}}{B_0} \Big)\approx0
\end{aligned}
$$

where in the x direction, it is the $\mathbf{E}\times\mathbf{B}$ drift, and in the y direction, it is the polarization drift.

From the linearized continuity equation

$$
\begin{aligned}
i(k_y v_{0,yi}-\omega)n_{1i} &= -n_0 ik_y v_{1,yi} - v_{1,xi}\frac{\partial n_0}{\partial x} \\
-i\omega n_{1e} &= - v_{1,xe}\frac{\partial n_0}{\partial x}
\end{aligned}
$$

Then we can get $n_{1e}=n_{1e}(E_{1y}),\ n_{1i}=n_{1i}(E_{1y})$. Setting $n_{1e}=n_{1i}$, we have the dispersion relation

$$
\omega(\omega-k_y v_{0i})=g\frac{1}{n_0}\frac{\partial n_0}{\partial x}
$$

When $k_y\rightarrow0$,

$$
\omega^2=g\frac{1}{n_0}\frac{\partial n_0}{\partial x}<0 \Rightarrow\ \text{instability!}
$$

Let's think about this 2-fluid approach for a while. Apparently, we cannot treat a sharp boundary, namely $\frac{\partial n_0}{\partial x}=\delta(x)$, with exactly the same equations. However, it's quite a surprise that MHD approach can easily do that, as we will see in the next section.

### Single fluid MHD method

In equilibrium, $\mathbf{g}=\hat{x}g,\ \mathbf{B}_0=\hat{z}B_0(x),\ \mathbf{U}_0=0,\ \mathbf{E}_0=0,\ \rho_0(x),\ p_0(x)$.

$$
\begin{aligned}
\frac{\partial \rho_0}{\partial t}+\nabla\cdot(\rho_0 \mathbf{U}_0)=0 \\
0=\frac{1}{\mu_0}\Big[ -\frac{1}{2}\frac{\partial}{\partial x}({B_0}^2)\Big] -\frac{\partial}{\partial x}p_0(x)+\rho_0(x)g
\end{aligned}
$$

Note that there's a difference between cases where different pressure is dominant. For example, in z-pinch the magnetic pressure is dominant, while in a laser pulse, the thermal pressure is usually dominant.

Assume perturbations of the form

$$
\begin{aligned}
p_1(\mathbf{x},t) &= p_1(x) e^{ik_y y-i\omega t} \\
\rho_1(\mathbf{x},t) &= \rho_1(x) e^{i k_y y-i\omega t} \\
\mathbf{U}_1 &=\frac{\partial \pmb{\xi}_1}{\partial t}=-i\omega\pmb{\xi}_1
\end{aligned}
$$

where $\pmb{\xi}_1$ is the displacement.

We can calculate each linear term:

$$
\begin{aligned}
\big[(\mathbf{B}_0+\mathbf{B}_1)\cdot\nabla \big](\mathbf{B}_0+\mathbf{B}_1) \approx (\mathbf{B}_0\cdot\nabla)\mathbf{B}_1 + (\mathbf{B}_1\cdot\nabla)\mathbf{B}_0 = \big( B_0(x)\frac{\partial}{\partial z}\big)\mathbf{B}_1 \\
B^2 = (\mathbf{B}_0+\mathbf{B}_1)\cdot(\mathbf{B}_1+\mathbf{B}_1)\approx 2\mathbf{B}_0\cdot\mathbf{B}_1 \\
\mathbf{U} = \mathbf{U}_0+\mathbf{U}_1 = \mathbf{U}_1
\end{aligned}
$$

The tension term has no x or y component, so we can just ignore it. Then the linearized momentum equation can be written as

$$
\rho_0\frac{\partial \mathbf{u}_1}{\partial t}=\rho_0\frac{\partial^2\pmb{\xi}_1}{\partial t^2}=-\nabla\Big( \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{\mu_0}\Big) - \nabla p_1 +\rho_1\mathbf{g}
$$

which can be separated into two scalar equations

$$
\begin{aligned}
-\rho_0 \omega^2 \xi_{1x} &= -\frac{\partial}{\partial x}\Big( \frac{\mathbf{B}_1\cdot\mathbf{B}_1}{\mu_0}+p_1 \Big) +\rho_1 g \\
-\rho_0 \omega^2 \xi_{1y} &= -ik_y\Big( \frac{\mathbf{B}_1\cdot\mathbf{B}_1}{\mu_0}+p_1\Big)
\end{aligned}
$$

Assume incompressibility

$$
\nabla\cdot\mathbf{u}=0\Rightarrow \nabla\cdot\mathbf{u}_1=0,\ \nabla\cdot\pmb{\xi}_1=\frac{\partial \xi_{1x}}{\partial x}+ik_y \xi_{1y}=0
$$

The linearized continuity equation (@sec:es_wave_magnetized) yields

$$
\rho_1=-\nabla\cdot(\rho_0\pmb{\xi}_1)=\xi_{1x}\frac{\partial}{\partial x}\rho_0
$$

Combining the last four equations, we have

$$
-\rho_0\omega^2 \xi_{1x} = -\frac{\partial}{\partial x}\Big[ \rho_0\omega^2 \frac{1}{{k_y}^2}\frac{\partial \xi_{1x}}{\partial x}\Big] - g\xi_{1x}\frac{\partial \rho_0}{\partial x}
$$ {#eq:RT_MHD_linear}

This is the governing equation for the Rayleigh-Taylor instability, which is the same as Eq.(10.15) in [@bellan2008fundamentals]. Note that here we have no assumption on the x-dependence; if we simply use the local approximation as before, this immediately gives you the identical result.

To treat the sharp boundary problem, we assume

$$
\begin{aligned}
\rho_0= \left\{
\begin{array}{rl}
\textrm{const.} & \text{if } x<0 \\
0 & \text{if } x>0
\end{array} \right.
\end{aligned}
$$

Then for $x<0$,

$$
\begin{aligned}
\frac{\partial^2 \xi_{1x}}{\partial x^2} -{k_y}^2 \xi_{1x} = 0 \\
\Rightarrow\ \xi_{1x}=Ae^{k_y x} + Be^{-k_y x}
\end{aligned}
$$

and for $x>0$,

$$
\begin{aligned}
\frac{\partial^2 \xi_{1x}}{\partial x^2} -{k_y}^2 \xi_{1x} = 0 \\
\Rightarrow\ \xi_{1x}=Ce^{k_y x} + De^{-k_y x}
\end{aligned}
$$

The coefficient $B$ and $C$ must be zero because of infinite field requirement. Due to continuity at $x=0$, we set

$$
A = D = \xi_0
$$

The density profile obeys

$$
\frac{\partial \rho_0}{\partial x}=-\rho_0\delta(x)
$$

Integrating the governing @eq:RT_MHD_linear from $x=0^-$ to $x=0^+$ yields

$$
\begin{aligned}
&-\frac{\rho_0 \omega^2}{{k_y}^2}\frac{\xi_{1x}}{\partial x}\bigg|_{x=0^-}^{x=0^+} - g\xi_{1x}(-\rho_0)=0 \\
\Rightarrow &\omega^2=k_y g
\end{aligned}
$$

Therefore the growth rate is $\gamma=\Im(\omega)=\sqrt{k_y g}$. You may realize that $\mathbf{k}\cdot\mathbf{B}_0=0$ here, so this magnetic stablizing term vanishes in the dispersion relation.

### 2-fluid sharp boundary model

Now let's go back and see if we can treat the sharp boundary problem with 2-fluid model. This is actually not easy: it is first solved by S.Chandraserkhar in the view of particle orbit theory. I believe there is a more `modern' way of doing exactly the same thing, but here I just list the original derivation.

We consider a plasma at uniform temperature lying above a horizontal plane in a uniform gravitational field directed vertically downwards. There is a horizontal magnetic field in x direction uniform in each half volumn with a jump in field strength produced by a uniform horizontal current sheet at the boundary plane $z=0$.  The gravitational force is balanced by a pressure gradient in the plasma and by the jump in the magnetic pressure at $z=0$.

We now suppose the boundary of the plasam at $z=0$ to be rippled by a sinusoidal disturbance as shown in fig:RT_perturb. We may write for the displacement of the interface (ADD FIGURE!)

$$
\Delta z = a \sin ky
$$ {#eq:RT_displacement_z}

where $a$, the amplitude of the disturbance, is considered small and $k(=2\pi/\lambda)$ is the wave number of the disturbance in the y-direction. The drift resulting from gravity is given by

$$
\mathbf{V}_g = \frac{m}{q}\frac{\mathbf{g}\times\mathbf{B}}{B^2}
$$

Since the magnetic field is in the x-direction, the electrons will drift to the right and the positive ions will drift to the left. The gravity drift, therefore, causes a charge separation in the plasma and the resulting boundary has the form shown in fig:RT_displacement. The surface charge $\delta\sigma$ due to the separation ($\delta\Delta z$) of ions and electrons is given by

$$
\begin{aligned}
\delta\sigma&=Ne\delta\Delta z \\
&=Ne\frac{\partial \Delta z}{\partial y}\delta y \\
&=e\frac{\partial \Delta z}{\partial y}V_g \delta t
\end{aligned}
$$

Therefore, the time rate of change of the surface charge density is given by

$$
\begin{aligned} 
\frac{\partial \sigma}{\partial t}&=NeV_g\frac{\partial}{\partial y}\Delta z \\
&=-Ne\frac{Mg}{eB}ak\cos ky \\
&=-\frac{NMeg}{B}ak\cos ky
\end{aligned}
$$ {#eq:RT_time_rate_surface_charge}

where in writing these expressions, we have neglected the electron drift, as being small in the ratio $m/M$ compared to the ion drift. The electric field resulting from the surface charge can be computed in a straight-forward manner. In the region away from the boundary, we must have

$$
\nabla\cdot(\epsilon\mathbf{E})=0
$$ {#eq:RT_dielectric}

where $\epsilon=\epsilon_0\big( 1+\frac{{\omega_{pi}}^2}{{\Omega_i}^2}\big)=...$ is the dielectric constant of the plasma. At the interface the electric field is determined by

$$
\nabla\cdot(\epsilon\mathbf{E})=\frac{1}{\mu_0}\frac{\sigma}{dz}
$$

where $\sigma$ is the surface charge density and $\mathrm{d}z$ is the infinitesimal thickness of the layer. We now integrate this equation over an element of volumn $\mathrm{d}S\mathrm{d}z$. The right-hand side gives the charge within the column element ($\sigma\mathrm{d}S$). Making use of Gauss`s theorem to transform the left-hand side, we obtain

$$
\epsilon E_z dS = \frac{1}{\mu_0}\sigma dS = \frac{1}{\mu_0}\sigma_0 \cos ky dS
$$

Thus the electric field at the interface is given by

$$
\epsilon E_z = \frac{\sigma_0}{\mu_0}\cos ky
$$ {#eq:RT_surface_bc}

The electric field which satisfies @eq:RT_dielectric within the plasma and the boundary condition @eq:RT_surface_bc at $z=0$ has the components

$$
\begin{aligned}
E_y &= \frac{\sigma_0}{\mu_0\epsilon}\sin ky\, e^{-kz} \\
E_z &= \frac{\sigma_0}{\mu_0\epsilon}\cos ky\, e^{-kz}
\end{aligned}
$$

with $E_x=0$. These electric fields give rise to the drifts which can be computed from the equation

$$
\mathbf{V}=\frac{\mathbf{E}\times\mathbf{B}}{B^2}
$$

Remembering that $\mathbf{B}$ is in the x-direction, we obtain

$$
V_y = \frac{E_z}{B},\quad V_z = -\frac{E_y}{B}
$$

From the foregoing equations we obtain

$$
\begin{aligned}
V_y &= \frac{\sigma_0}{\mu_0 B}\cos ky\, e^{-kz} \\
V_z &=-\frac{\sigma_0}{\mu_0 B}\sin ky\, e^{-kz}
\end{aligned}
$$

It is clear from the solutions that the velocity field is divergence free and, therefore, does not cause any change in the density of the plasma except at the boundary. We have

$$ 
\frac{\partial}{\partial t}\Delta z(z=0)=V_z(z=0) = -\frac{\sigma}{\mu_0 B}\sin ky
$$ {#eq:RT_vel_boundary}

From @eq:RT_displacement_z and @eq:RT_vel_boundary, we obtain the equation of motion for the amplitude $a$:

$$
\frac{\mathrm{d}a}{dt}=-\frac{\sigma_0}{\mu_0 B}
$$

@eq:RT_time_rate_surface_charge and @eq:RT_surface_bc yield

$$
\frac{d\sigma_0}{dt}=-\frac{NMg}{\mu_0B}ak
$$

From the above two equations, we obtain

$$
\begin{aligned}
\frac{d^2 a}{dt^2} &= \frac{1}{\mu_0\epsilon B}\frac{NMg}{B}ka \\
&\approx gka, \quad(\text{for } \epsilon \gg 1)
\end{aligned}
$$

($g=...$ from equilibrium). The solution of this equation is given by

$$
a(t) = a_0e^{\pm\sqrt{gk} t}
$$

It is interesting to note that the rate of growth of the instability is exactly the same as in the Rayleigh-Taylor instability of a fluid supported against gravity by a second fluid which is weightless. The charge separation is able to overcome exactly the restraining influence of the magnetic field. This exact compensation occurs only in the limit of $\epsilon\gg1$.

The same result can also be obtained using the rigorous formulation of the Boltzmann transport equation. However, in more complicated cases, the first order orbit theory gives results which agree with those obtained from the Boltzmann equation only in some special cases.

The essential mechanism which gives rise to the instability is the charge separation resulting from the gravity drift --- drift arising from a force which does not depend upon the sign of the charge. If we consider a plasma configuration in a torus, the particles experience the centrifugal force $m{v_\parallel}^2/R$ and the gradient B force $m{v_\perp}^2/R$ which are both independent of the sign of the charge. Therefore, we should expect instabilities in a plasma confined to a torus.

## Kelvin-Helmholtz instability

Kelvin-Helmholtz (KH) instability happens due to velocity shear. Typical examples are:

* plane crash
* flapping of flags
* diocotron instability in an electron sheet
* water wave, nonlinear phase
* laser ablation of metal

To understand why shear flow can lead to instability, we'll first introduce the Bernoulli theorem in fluid mechanics. From the MHD momentum equation, take $\partial/\partial t=0,\ \mathbf{J}=0,\ \mathbf{g}=0$, we obtain

$$
\begin{aligned}
\rho\mathbf{v}\cdot\nabla\mathbf{v}=-\nabla p
\end{aligned}
$$

Using the natural coordinates, let $\hat{t}$ be the unit tangent vector on a streamline, $\hat{n}$ be the unit normal vector pointing from concave to convex side, and $ds$ be the infinitisimal distance along streamline, we have

$$
\begin{aligned}
\rho\mathbf{v}\cdot\nabla\mathbf{v} &= (\rho v\frac{\partial }{\partial s})\mathbf{v} =\rho v_s \frac{\partial }{\partial s}(\hat{t} v) =\rho v \Big( \frac{\partial v}{\partial s}\hat{t} + \frac{\partial \hat{t}}{\partial s}v\Big) \\
&=-\frac{\partial p}{\partial s}\hat{t}-\nabla_\perp p\\
\Rightarrow \hat{t}:\ pv\frac{\partial v}{\partial s}+\frac{\partial p}{\partial s}&=\frac{\partial}{\partial s}\Big( \frac{1}{2}\rho v^2 + p \Big) = 0
\end{aligned}
$$

Therefore, $\frac{1}{2}\rho v^2 + p = \text{const.}$ along a streamline for an incompressible flow. This is the classical Bernoulli equation.

Now, consider two flow layer with velocity shear at the plane interface in fig:two_layer (ADD FIGURE!). Imaging there's a ripple on the layer interface pointing upward at $Q$. If we examine the cross section at $P$ and $Q$ for the lower layer respectively, we find

$$
\begin{aligned}
\text{flux at P} = \rho v A|_P = \text{flux at Q} = \rho v A|_Q
\end{aligned}
$$

Since density along field lines are constant (incompressible) and area $A_P<A_Q$, we have $v_P>v_Q$. From the Bernoulli equation, $p_P<p_Q$. Similar for the upper layer, we get the pressure at $P$ is larger than that at $Q$. Therefore, the total pressure is pointing away from interface, which let the ripple grow.

![Two layers of flow with a velocity shear at the plane interface.](images/electron_sheet.png){#fig:two_layer_flow}

Now we are ready to do more careful derivations. The governing equations are

$$
\begin{aligned}
\nabla\cdot\mathbf{v}&=0 \\
\rho\Big( \frac{\partial\mathbf{v}}{\partial t}+\mathbf{v}\cdot\nabla\mathbf{v}\Big) &= -\nabla p \\
\end{aligned}
$$

In equilibrium, suppose there is a velocity shear in the x direction, and the interface lies along the y direction,

$$
\begin{aligned}
\rho_0 &= \text{const.} \\
p_0 &= \text{const.} \\
\mathbf{v}_0 &= \hat{y}v_{0y}(x)
\end{aligned}
$$

Assume linear perturbations of the form

$$
\begin{aligned}
v_{1x}(\mathbf{x},t) &= v_{1x}(x)e^{i k_y y-i\omega t} \\
p_1(\mathbf{x},t) &= p_1(x)e^{i k_y y-i\omega t}
\end{aligned}
$$

so the linearized momentum equation is

$$
\rho_0\big( \frac{\partial \mathbf{v}_1}{\partial t}+\mathbf{v}_0\cdot\nabla\mathbf{v}_1 +\mathbf{v}_1\cdot\nabla\mathbf{v}_0 \big) = -\nabla p_1
$$

where

$$
\begin{aligned}
\mathbf{v}_0\cdot\nabla\mathbf{v}_1 &= i k_y v_{0y} \mathbf{v}_1 \\
\mathbf{v}_1\cdot\nabla\mathbf{v}_0 &= v_{1x}\frac{\partial}{\partial x}v_{0y}(x)\hat{y}
\end{aligned}
$$

Then the x and y components of the linearized momentum equation give

$$
\begin{aligned}
-i\omega \rho_0 v_{1x} +\rho_0 i k_y v_{0y}v_{1x} &= -\frac{\partial p_1}{\partial x} \\
-i\omega \rho_0 v_{1y} + \rho_0 i k_y v_{0y}v_{1y} + \rho_0 v_{1x}\frac{\partial}{\partial x}v_{0y}(x) &= -ik_y p_1
\end{aligned}
$$

Together with the linearized incompressibility condition

$$
\frac{\partial v_{1x}}{\partial x} + ik_y v_{1y}  = 0
$$

by eliminating $p_1$ and $v_{1y}$ we get

$$ 
\frac{\partial^2 v_{1x}}{\partial x^2} - \Big[ {k_y}^2 - \frac{k_y {v_{0y}}^{\prime\prime}(x)}{\omega-k_y v_{0y}(x)} \Big]v_{1x} = 0
$$ {#eq:KH_governing}

Now we are half way from obtaining the dispersion relation. For simplicity, let us assume three layer regions with Region I on the left ($x<0$), Region II in the middle ($x\in(0,\tau)$), and Region III on the right ($x>\tau$). Let the shear layer II thickness be $\tau$. Set the velocity on the two sides $v_1 = 0,\ v_2 = v_1+\Delta v \equiv v$, and $k_y=k$. Then

$$
v_{0y}^{\prime\prime}(x) = \Big(\frac{v}{\tau}\Big)\big[ \delta(x) - \delta(x-\tau)\big]
$$

except at $x=0$ and $x=\tau$. @eq:KH_governing can be simplified to

$$
\frac{d^2 v_{1x}}{dx^2}-k^2 v_{1x} = 0
$$

In region I ($x<0$),

$$
\begin{aligned}
v_{1x} &= \xi_0 e^{kx},\quad x<0 \\
\frac{\partial v_{1x}}{\partial x}\big|_{x=0_-} &= k\xi_0
\end{aligned}
$$

In region III ($x>\tau$),

$$
\begin{aligned}
v_{1x} &= \xi_\tau e^{-k(x-\tau)},\quad x>\tau \\
\frac{\partial v_{1x}}{\partial x}\big|_{x=\tau^+} &= -k\xi_\tau
\end{aligned}
$$

In region II ($x\in(0,\tau)$), we are looking for a solution which is a superposition of the solutions from both sides and is continuous at the boundaries

$$
\begin{aligned}
v_{1x} &=\xi_\tau \frac{\sinh{kx}}{\sinh{k\tau}} + \xi_0\frac{\sinh{k(x-\tau)}}{\sinh{-k\tau}},\quad 0<x<\tau \\
\frac{\partial v_{1x}}{\partial x}\big|_{x=\tau^-} &= k\xi_\tau \frac{\cosh{k\tau}}{\sinh{k\tau}} - k\xi_0\frac{1}{\sinh{k\tau}} \\
 \frac{\partial v_{1x}}{\partial x}\big|_{x=0^+} &= k\xi_\tau \frac{1}{\sinh{k\tau}} - k\xi_0\frac{\cosh{k\tau}}{\sinh{k\tau}} 
\end{aligned}
$$

The continuity at $x = 0$ requires $V_{0y}=0, V_{1x}=\xi_0$. Integrating the governing @eq:KH_governing from $x=0^-$ to $x=0^+$ yields

$$
-\xi_0 k\frac{\cosh{k\tau}}{\sinh{k\tau}} + \xi_\tau k\frac{1}{\sinh{k\tau}} - k\xi_0 + \frac{kv}{\omega\tau}\xi_0 = 0
$$

Integrating the governing @eq:KH_governing from $x=\tau^-$ to $x=\tau^+$ yields

$$
-\xi_\tau k +\xi_0 k\frac{1}{\sinh{k\tau}} - \xi_\tau k\frac{\cosh{k\tau}}{\sinh{k\tau}} - \frac{kv}{\omega\tau}\xi_\tau = 0
$$

Combining the last two equations, we obtain

$$
1 = \Big[ \sinh{k\tau} + \cosh{k\tau} + \frac{kv}{\omega-kv}\frac{\sinh{k\tau}}{k\tau}\Big] \Big[ \cosh{k\tau}+\sinh{k\tau} - \frac{kv}{\omega}\frac{\sinh{k\tau}}{k\tau}\Big]
$$

which is the dispersion relation.

With the identity $\sinh{k\tau} + \cosh{k\tau} = e^{k\tau}$, the dispersion relation can be simplified to

$$
\begin{aligned}
1 &= \Big[ e^{k\tau} + \frac{kv}{\omega-kv}\frac{\sinh{k\tau}}{k\tau}\Big] \Big[ e^{k\tau} - \frac{kv}{\omega}\frac{\sinh{k\tau}}{k\tau}\Big] \\
1 &= e^{2k\tau} +e^{k\tau}\frac{(k\tau)^2}{\omega(\omega-kv)}\frac{\sinh{k\tau}}{k\tau} - \frac{(k\tau)^2}{\omega(\omega-k\tau)}\Big(\frac{\sinh{k\tau}}{k\tau}\Big)^2 \\
1 &= e^{2k\tau} + \frac{(k\tau)^2}{\omega(\omega-kv)} \frac{\sinh{k\tau}}{k\tau} \Big[ e^{k\tau} - \frac{\sinh{k\tau}}{k\tau}\Big]
\end{aligned}
$$

Multiplying both sides by $\omega(\omega-kv)$, we get

$$
\omega(\omega-k\tau)(1-e^{2k\tau}) = (kv)^2  \frac{\sinh{k\tau}}{k\tau} \Big[ e^{k\tau} - \frac{\sinh{k\tau}}{k\tau}\Big]
$$

Assuming $k\tau\ll 1$ (long wavelength approximation), $e^{k\tau}\approx 1+k\tau$, we obtain

$$
\omega(\omega-kv) + \frac{(kv)^2}{2} \approx 0
$$

the solution of which is

$$
\omega=\frac{1}{2}kv(1\pm i),\quad k\tau \ll 1
$$

In general, the growth rate of KH is

$$
\omega_i = \frac{1}{2}|k_y \Delta v|,\quad k_y\tau\ll 1
$$

### Diocotron instability on electron sheet

HAVEN'T CHECKED!

A diocotron instability is a plasma instability created by two sheets of charge slipping past each other. Energy is dissipated in the form of two surface waves propagating in opposite directions, with one flowing over the other. This instability is the plasma analog of the Kelvin-Helmholtz instability in fluid mechanics.

For the simplest case, we have a uniform electron sheet and a parallel constant magnetic field in the plane of the sheet, as illustrated in fig:electron_sheet. Due to space charge of electron sheet, there is electric field pointing towards the sheet in the upper and lower region. Consider a small perturbation (sinusoidal ripple) on an electron sheet. The coulomb force expels electrons outward, so the electrons will drift, according to the right-hand rule, to the left. The deficit of electrons is equivalent to some positive charge distribution, and thus created an electric field. The $\mathbf{E}\times\mathbf{B}$ drift is pointing outward, so the perturbation is growing. Note that even though this problem looks innocent, but it is actually not easy. People, even the giants in plasma physics, made a lot of mistakes in the derivation!

If there is also a magnetic field inside the sheet, the $\mathbf{E}\times\mathbf{B}$ drift will form a velocity gradient within the sheet, and lead to K-H instability. Denote $\sigma_0$ as the surface charge density and $\rho_0$ as charge density, we have
$$
\sigma_0 = \rho_0 \tau = en_0\tau,
$$
and the velocity shear across the sheet
$$
\Delta v = \frac{E_2}{B_0} + \frac{E_1}{B_0} = -\frac{1}{B_0}\frac{\sigma_0}{\epsilon_0}=-\frac{en_0\tau}{B_0 \epsilon_0}.
$$
Then from the dispersion relation of K-H mode, we have the growth rate
$$
\omega_i = \frac{1}{2}k_y|\Delta v|=\frac{1}{2}k_y\Big|\frac{en_0\tau}{B_0 \epsilon_0}\Big|=\frac{1}{2}k_y \tau\frac{{\omega_{pe}}^2}{|\Omega_e|},
$$
which is valid as long as $k_y\tau\ll1$,i.e., long wave length limit.

![Illustration of an electron sheet with surface charge density $\sigma_0$, charge density $\rho_0$ and thickness $\tau$. The electric field is generated by electron charge in the sheet, and the $\mathbf{E}\times\mathbf{B}$ drift will cause a velocity shear through the sheet. This velocity shear will lead to K-H instability.](images/electron_sheet.png){#fig:electron_sheet}

[@bellan2008fundamentals] P537. 

FIGURE NEEDED from H.W.3.4
Consider the diocotron instabity on a MELBA-like annular electron beam which propagates inside a metallic drift tube. Let $V = $ beam voltage, $I =$ beam current, $a =$ beam radius, $\tau=$ annular beam thickness ($\tau\ll 1$)m $L=$ length of drift tube, $T = $ beam's pulselength, $B=$ axial magnetic field. Note that the combined self-electric and self-magnetic field of the beam produces a slow rotational $\mathbf{E}\times\mathbf{B}$ drift in the $\theta-$direction. This azimuthal drift velocity, $v_{0\theta}$, is much less than the axial velocity of the beam, but it is sheared. 

In equilibrium,

$$
\begin{aligned}
0&=q(\mathbf{v}\times\mathbf{B}+\mathbf{E}) \\
\mathbf{v}&=v_{0\theta}\hat{\theta} + v_{0z}\hat{z} \\
\mathbf{B}&=B_{0\theta}\hat{\theta} + B_{0z}\hat{z} \\
\Rightarrow & v_\theta - v_z B_\theta + E_r = 0
\end{aligned}
$$

From Ampère's law,

$$
\begin{aligned}
B_{0\theta}\cdot 2\pi (a+\tau) \approx B_\theta \cdot 2\pi a = \mu_0 2\pi a \tau J_z \\
\Rightarrow J_z = \frac{1}{\mu_0\tau} B_{0\theta} = -en_0 V_{0z}
\end{aligned}
$$

From Gauss's law,

$$
\begin{aligned}
\nabla\cdot\mathbf{E} = \frac{\rho}{\epsilon_0} = \frac{-en_0}{\epsilon_0} \\
E_r\cdot 2\pi a \Delta = \frac{-en_0}{\epsilon_0}\cdot 2\pi a\tau \Delta \\
\Rightarrow E_r = \frac{1}{\epsilon_0}\tau(-e)n_0
\end{aligned}
$$

Substituing $E_r$ and $J_z$ into the radial force balance equation, we obtain

$$
\begin{aligned}
V_{\theta}\big|_{r=a+\tau} &= \frac{1}{B_{z}}[V_{0z}B_\theta - E_r]\big|_{r=a+\tau}\\
&=\frac{1}{\gamma^2}\frac{E_r}{B_z}
\end{aligned}
$$

where $\gamma=(1-\beta)^{-1/2}=1+V/(511keV)$, and $\beta= V_{0z}/c$.

Let $\nu=\frac{I}{\beta I_A}$ be the Budker parameter, $I_A=4\pi\epsilon_0 mc^2/e=17kA$ be the Alfvén-Lawson current, and $\Omega=\frac{eB_{0z}}{m_e}$ be the nonrelativistic cyclotron frequency associated with the axial B field, we have

$$
V_\theta\big|_{r=a+\tau} = \frac{2c^2\nu}{\Omega a\gamma^2}
$$

At $r=a$, $V_\theta=0$ because there's no E field. Therefore the velocity shear in $\hat{\theta}$ is

$$
\Delta V_{\theta} = V_\theta\big|_{r=a+\tau} - V_\theta\big|_{r=a} =\frac{2c^2\nu}{\Omega a \gamma^2}
$$

Then from the analysis of K-H instability, the temporal growth rate $\omega_i$ is given by

$$
\begin{aligned}
\omega_i &= \frac{1}{2}|k_\theta \Delta V_{0\theta}| \\
&=\frac{1}{2}\frac{m}{a}\frac{2c^2\nu}{\Omega a \gamma^2}
\end{aligned}
$$

For long wavelength limit, let $m=1$.

For MELBA-like beam with the following parameters, $V=700\text{keV},\ I=1\text{kA},\ a = 5\text{cm},\ \tau=0.5\text{cm},\ T=500\text{ns},\ L=1\text{m},\ B=2\text{kG}$,

$$
\omega_i =1.18\times 10^7 \text{s}^{-1}
$$

The total number of e-folds of the instability growth during the pulse time T is

$$
\omega_i T \approx 5.9
$$ 

Even though this is large, K-H instability will not stay at the initial position and grow in time; instead it will be transported. It is more meaningful to estimate the spatial growth by evaluating the total number of e-folds experienced by a signal of some frequency as it propagates along the machine length L:

$$
k_i L =\frac{\omega_i}{V_{0z}}L = \omega_i \frac{L}{\beta c}\approx 0.04
$$

Therefore we don't need to worry too much about this instability.

## MHD Modes

A simple but representative dispersion relation writes

$$
\omega^2=(\mathbf{k}\cdot\mathbf{V}_A)^2-\mathbf{k}\cdot\mathbf{g},\quad \text{where }\mathbf{V}_A=\frac{\mathbf{B}_0}{B_0}\cdot V_A
$$

If we treat plasma as a single magnetized fluid,

$$
\rho\Big( \frac{\partial\mathbf{u}}{\partial t}+\underbrace{\mathbf{u}\cdot\nabla \mathbf{u}}_{\textrm{K-H inst.}} \Big)=\underbrace{-\nabla p}_{\text{ballooning inst.}} + \underbrace{\mathbf{j}\times\mathbf{B}}_{\text{kink, sausage inst.}}+\underbrace{\rho\mathbf{g}}_{\text{R-T inst.}}
$$

Qualitatively, we can identify the source for each kind of instability in plasma. We will discuss them separately and in a set of combination below.

### Kink Mode

A kink instability, is a _current-driven_ plasma instability characterized by transverse displacements of a plasma column's cross-section from its center of mass without any change in the characteristics of the plasma. It typically develops in a thin plasma column carrying a strong axial current which exceeds the [Kruskal–Shafranov limit](https://en.wikipedia.org/wiki/Safety_factor_(plasma_physics)) and is sometimes known as the Kruskal–Shafranov (kink) instability.

The kink instability was first widely explored in fusion power machines with Z-pinch configurations in the 1950s. It is one of the common magnetohydrodynamic instability modes which can develop in a pinch plasma and is sometimes referred to as the $m=1$ mode.

If a "kink" begins to develop in a column the magnetic forces on the inside of the kink become larger than those on the outside, which leads to growth of the perturbation. As it develops at fixed areas in the plasma, kinks belong to the class of "absolute plasma instabilities", as opposed to convective processes. 

```jl
KeyNotes.plot_kink()
```

The kink instability is the most dangerous instability in Tokamak. We have discussed this kind of micro-instability from the view of single particle motion in @sec:particle_motion_instability; here, we will explore this a little bit further.

__String model__

First, image a current-carrying plasma column, shown in the x-z plane in fig:kink_column. The metallic wire carries current under tension $T$, and $\mu=$mass/length is the mass per length. From the basic mechanics, $C_s=\sqrt{T/\mu}$ is the acoustic velocity in the system. Let the background field $\mathbf{B}_0=\hat{z}B_0$ and the displacement $\pmb{\xi}=\pmb{\xi}(\mathbf{x},t)$. We can show that, if the current $\mathbf{I}$ is sufficiently strong, there will be kink instability.

ADD PLASMA KINK COLUMN FIGURE!

Assume the displacement in x-y plane has the form

$$
\pmb{\xi} = (\xi_x,\xi_y)e^{ik_z z-i\omega t}
$$

The force law gives (i.e. the basic string model in mechanics textbooks)

$$
\mu\frac{\partial^2\pmb{\xi}}{\partial t^2}=T\frac{\partial^2\pmb{\xi}}{\partial z^2}+ \text{force per unit length}
$$

Here, the external force _per length_ is the Lorentz force (which is why we say the R-T instability is current-driven), 

$$
\begin{aligned}
\mathbf{I}\times\mathbf{B}&=\Big( \hat{x}I\frac{\partial \xi_x}{\partial z}+\hat{y}I\frac{\partial\xi_y}{\partial z}+\hat{z}0 \Big)\times B_0\hat{z} \\
&=IB_0 \Big( \hat{x}\frac{\partial\xi_y}{\partial z}-\hat{y}\frac{\partial \xi_x}{\partial z}\Big)
\end{aligned}
$$

In scalar forms, the force law gives

$$
\begin{aligned}
\hat{x}:\ -\mu\omega^2 \xi_x &= T(-{k_z}^2)\xi_x + IB_0 \frac{\partial \xi_y}{\partial z}\\
\hat{y}:\ -\mu\omega^2\xi_y &= T(-{k_z}^2)\xi_y - IB_0 \frac{\partial \xi_x}{\partial z}
\end{aligned}
$$

Combining these two equations, we can easily get the dispersion relation

$$
\omega^2 = {k_z}^2{C_s}^2 \pm \frac{IB_0}{\mu_0 \mu}k_z
$$

The dispersion relation is a representation of the force-law. The first term on the right-hand side is a stabilizing term due to tension; the second term with a minus sign is a destabilizing term due to Lorentz force. Note that the expression is very similar to R-T instability. (Which one?)

We can immediately estimate the scenario in a Tokamak. Take the radius of the column cut as $a$, wave number $k_z\sim 1/R$ (i.e. wave length is on the order of tokamak radius), ${C_s}^2={V_A}^2={B_{0z}}^2/(\mu_0\rho_0)$ (i.e. tension in plasma give rises to Alfvén wave), then the current is

$$
I=J_z(\pi a^2)=\frac{B_\theta 2\pi a}{\mu_0} \sim \frac{B_\theta a}{\mu_0}
$$

and the mass per unit length is

$$
\mu =\rho_0(\pi a^2) \sim \rho_0 a^2
$$

The criterion for stability then becomes

$$
\begin{aligned}
&{k_z}^2{C_s}^2 >\frac{IB_0}{\mu_0}k_z\Rightarrow \frac{1}{R}\frac{{B_0z}^2}{\mu_0\rho_0}>\frac{B_\theta a}{\mu_0}\frac{B_{0z}}{\rho_0 a^2} \\
\Rightarrow &\frac{a}{R}\frac{B_{0z}}{B_{0\theta}}>1
\end{aligned}
$$

which is called the _Kruskal-Shafranov stability criterion_. Usually we define

$$
q\equiv\frac{a}{R}\frac{B_{0z}}{B_{0\theta}}=\frac{a}{R}\frac{B_t}{B_p}
$$

as the safety factor. A real value for $q$ is about 2 to 3.

__Ideal MHD Approach__

Now we use a more standard way to treat the kink mode. (Section 10.9 [@bellan2008fundamentals]) Assume we have a plasma column with radius $a$. Inside the column, we assume infinite conductivity, $\sigma=\infty$; outside the column, we assume vacuum so that we can only have current flow on surface $r=a$. Thus, besides the universal background magnetic field in the z direction, we also have an azimuthal field due to surface current. (You will see later that the decay in $\theta$ actually drives the kink instability.) 

In equilibrium,

$$
\begin{aligned}
r<a:\ &\mathbf{B}_0 = \hat{z}B_0 = \text{const.} \\
& p_0 = \text{const.},\ \mathbf{v}_0 = \text{const.},\ \mathbf{J}_0 = 0,\ \rho_0=\text{const.} \\
r>a:\ & \mathbf{B}_0 = B_0\hat{z} + B_{0\theta}\frac{a}{r}\hat{\theta} \\
& p_0=0,\ \rho_0 = 0 
\end{aligned}
$$

The force equation in equilibrium

$$
\nabla p_0 = \mathbf{J}\times\mathbf{B}_0
$$

is satisfied automatically both for $r>a$ and $r<a$.

Let us introduce a small perturbation

$$
\pmb{\xi}_{1r}(\mathbf{x},t) = \widetilde{\xi}_{1r}(r)e^{ikz + im\theta-i\omega t}
$$

such that at $r=a$,

$$
\pmb{\xi}_{1r}(\mathbf{x},t)\big|_{r=a} = \widetilde{\xi}_{1a}(r)e^{ikz + im\theta-i\omega t}
$$

Before running into linearized equations, we can first take a look at different wave modes. That is, what will the perturbation looks like at a fixed time $t$ with different $m$? For simplicity, let us assume $t=0$. (You can always make a time shift.) The actual displacement is the real part of $\pmb{\xi}$,

$$
\xi_{1r} = \xi_{1a}\cos(k_z z+m\theta)
$$

For $m=0$,

$$
\xi_{1r} = \xi_{1a}\cos(k_z z)
$$

which is the sausage mode.

For $m=1$,

$$
\xi_{1r} = \xi_{1a}\cos(k_z z+\theta)
$$

If we draw the displacement down for $k_z z=0,\frac{\pi}{2},\pi,\frac{3}{2}\pi$, you can see one rotation in a $2\pi$ period, which indicates a shape of helix. This is often called the kink mode.

For higher $m$,

$$
\xi_{1r} = \xi_{1a}\cos(k_z z+m\theta)
$$

which looks like $m$ intertwine helixes in one axial wavelength.

Now let's return to the perturbed equations. Here we will assume incompressibility as the equation of state,

$$
\nabla\cdot\mathbf{v}=0
$$

The procedure to get the dispersion relation goes as follows:

1. Express the perturbed magnetic field as a function of displacement inside and outside the surface.
2. Relate the two regions by total force balance.

(I) $r<a$

$$
\mathbf{v}_1=\frac{\partial \pmb{\xi}_1}{\partial t} \Rightarrow \nabla\cdot\pmb{\xi_1}=0
$$

The linearized continuity equation gives

$$
\rho_1 = -\nabla\cdot(\rho_0\pmb{\xi}_1)=-\pmb{\xi}_1 \cdot\nabla\rho_0 - \rho_0\nabla\cdot\pmb{\xi}_1 =0
$$

The linearized force law gives

$$
\rho_0\frac{\partial^2\pmb{\xi}_1}{\partial t^2} = -\nabla p_1 +\frac{(\nabla\times\mathbf{B}_1)\times\mathbf{B}_0}{\mu_0} +\cancel{\mathbf{J}_0}\times\mathbf{B}_1
$$

And the Ohm's law gives

$$
\begin{aligned}
-\frac{\partial \mathbf{B}_1}{\partial t} &= \nabla\times\mathbf{E}_1 = \nabla\times(-\mathbf{v}_1\times\mathbf{B}_0) \\
\mathbf{B}_1 &= \nabla\times(\pmb{\xi}_1\times\mathbf{B}_0)=B_0 \nabla\times(\pmb{\xi}_1\times\hat{z})=ik_z B_0\pmb{\xi}_1
\end{aligned}
$$

The last equivalence is obtained from the expansion of the second term into four terms and cancellation of zero terms.

In cylindrical coordinates,

$$
(\nabla\times\mathbf{B}_1)\times\mathbf{B}_0 = ik{B_0}^2 (\nabla\times\pmb{\xi}_1)\times\hat{z}
$$

and 

$$
\nabla\times\pmb{\xi}_1=\frac{1}{r}
\begin{bmatrix}
\hat{r} & r\hat{\theta} &\hat{z} \\
\partial_r & \partial_\theta & \partial z \\
\xi_{1\theta} & r\xi_{1\theta} & \xi_{1z}
\end{bmatrix}
$$

so the linearized force law gives

$$
\begin{aligned}
-\omega^2 \xi_{1r} &= -\frac{1}{\rho_0}\frac{\partial p_1}{\partial r} +ik{v_A}^2 \big[ ik\xi_{1r} - \frac{\partial \xi_{1z}}{\partial r}\big] \\
-\omega^2 \xi_{1\theta} &= -\frac{im}{\rho_0 r}p_1 + k{v_A}^2 \big[ -\frac{im}{r}\xi_{1z} + ik\xi_{1\theta} \big] \\
-\omega^2 \xi_{1z}&= -ik_z p_0/\rho_0
\end{aligned}
$$

Substituting the expression of $\xi_{1z}$ into the other two equations, we can get

$$
\pmb{\xi}_1 = \frac{1}{\omega^2}\nabla\big( \frac{p_1}{\rho_0} \big)
$$

From the incompressibility condition, we have

$$
\nabla\cdot\pmb{\xi}_1=0\Rightarrow \nabla^2 p_1 =0
$$

or in cylindrical coordinates,

$$
\frac{1}{r}\frac{\partial}{\partial r}\big( r\frac{\partial p_1}{\partial r} \big) - \frac{m^2 p_1}{r^2} - k^2 p_1 = 0
$$

Assume long wavelength limit and $m=1$ (kink mode),

$$
kr<ka\ll 1
$$

we have

$$
\frac{1}{r}\frac{\partial}{\partial r}\big( r\frac{\partial p_1}{\partial r} \big) - \frac{p_1}{r^2} = 0
$$

the solution of which from Legendre polynomials (I need to check) is

$$
p_1 = Ar + \frac{B}{r} = Ar
$$

because $p_1$ is finite at $r=0$.

So we have

$$
\begin{aligned}
\pmb{\xi}_1 &= \frac{1}{\omega^2}\nabla\big( \frac{p_1}{\rho_0} \big)=\hat{r}\frac{A}{\rho_0\omega}e^{-i\omega t +i\theta+ikz} \\
\Rightarrow\ \xi_{1ra} &= \frac{A}{\rho_0\omega^2}
\end{aligned}
$$

Then the perturbed kinetic pressure on the surface is

$$
p_1(r=a^-) = Aa = \rho_0 \omega^2 \xi_{1ra} a,
$$

and the perturbed magnetic field is

$$
\mathbf{B}_1=ikB_0\pmb{\xi}_1 \Rightarrow B_{1z}(r=a^-)=ikB_0 \xi_{1z}=-k^2 B_0\xi_{1ra}
$$

(II) $r>a$

$$
\nabla\cdot\mathbf{B}_1=0,\ \nabla\times\mathbf{B}_1=0\Rightarrow \mathbf{B}_1 = \nabla\Psi_1,\ \nabla^2\Psi_1 = 0
$$

The solution of Laplace equation in cylindrical coordinates is

$$
\Psi = \big( \frac{C}{r}+\cancel{D}r\big)e^{-i\omega t+i\theta+ikz}
$$

where $D=0$ because $\Psi <\infty$ when $r\rightarrow\infty$.

The perturbed magnetic field is then

$$
\mathbf{B}_1=\mathbf{B}_{1e}\nabla\Psi = C\big[ -\frac{\hat{r}}{r^2}+i\frac{\hat{\theta}}{r^2}+ik\frac{\hat{z}}{r} \big]e^{-i\omega t+i\theta+ikz}
$$

and at $r=a$,

$$
\mathbf{B}_{1e}(r=a)=B_{1ra}[\hat{r}-i\hat{\theta}-ika\hat{z}]e^{i\theta+ikz}.
$$

Now, we want to relate $\xi_{1ra}$ and $B_{1ra}$ by the "frozen-in" law. To first-order approximation, let $\hat{n}$ be the direction normal to the perturbed boundary, we have

$$
(\hat{n}\cdot\mathbf{B})_1=0
$$

The equation for the perturbed boundary (Eq.(10.146) of [@bellan2008fundamentals]) gives

$$
r-\xi_r-a =0
$$

so

$$
\begin{aligned}
\hat{n}&=\frac{\nabla(r-\xi_r-a)}{|\nabla(r-\xi_r-a)|} \\
&=\frac{\hat{r}-\frac{i}{r}\xi_{1ra}\hat{\theta}-ik\xi_{1ra}\hat{z}}{|\hat{r}-\frac{i}{r}\xi_{1ra}\hat{\theta}-ik\xi_{1ra}\hat{z}|} \\
&=\hat{r}-\frac{i}{r}\xi_{1ra}\hat{\theta}-ik\xi_{1ra}\hat{z}
\end{aligned}
$$

where the last equivalence holds because $\xi_{1ra}/r$ and $k\xi_{1ra}$ are both second-order in magnitude.

Therefore we get

$$
\begin{aligned}
(\hat{n}\cdot\mathbf{B})_1 = ( \hat{r}-\frac{i}{r}\xi_{1ra}\hat{\theta}-ik\xi_{1ra}\hat{z} )\cdot (B_{1r}\hat{r}+B_{0\theta}\hat{\theta}+B_{0z}\hat{z})=0 \\
B_{1r} = B_{0\theta}\frac{i\xi_{1ra}}{a}+ik_z\xi_{1ra}B_{0z}=  B_{1ra} = \frac{i\xi_{1ra}}{a}[B_{0\theta}+k_z a B_{0z}] = i\xi_{1ra}(\mathbf{k}\cdot\mathbf{B})
\end{aligned}
$$

where $\mathbf{k}=k_\theta \hat{\theta}+k_z\hat{z}=\frac{m}{r}\hat{\theta}+k_z\hat{z}=\frac{m}{a}\hat{\theta}+k_z\hat{z}$.

Finally, $p+B^2/2\mu_0$ is continuous across perturbed boundary,

$$
\begin{aligned}
\Big( p+\frac{B^2}{2\mu_0}\Big)_{1,interior} &= p_{1i} + \frac{2\mathbf{B}_{oi}\cdot\mathbf{B}_{1i}}{2\mu_0}=\rho_0\omega^2 a\xi_{1ra} - \frac{1}{\mu_0}k^2{B_0}^2a\xi_{1ra}=a\rho_0\xi_{1ra}(\omega^2-k^2{v_A}^2) \\
\Big( p+\frac{B^2}{2\mu_0}\Big)_{1,exterior}&=0+\frac{1}{2\mu_0}[{B_{0e}}^2+2\mathbf{B}_{oe}\cdot\mathbf{B}_1e]_{1,r=a+\xi_r} \\
&=\frac{1}{2\mu_0}\Big[ \cancel{{B_{0ze}}^2}+{B_{0\theta a}}^2\big( \frac{a}{a+\xi_{1r}}\big)^2+2(B_{0\theta}B_{1e\theta}+B_{0z}B_{1ez})\Big]_1 \\
&=\frac{1}{2\mu_0}\Big[ -\frac{2\xi_{1ra}{B_{0\theta a}}^2}{a}+2\big[ B_{0\theta}(-iB_{1ra})+B_{0z}(-ikaB_{1ra})\big]\Big]\\
&=\frac{1}{2\mu_0}\Big[ -\frac{2\xi_{1ra}{B_{0\theta a}}^2}{a}+\frac{2\xi_{1ra}}{a}\big[ B_{0\theta}+kaB_{0z}\big]^2\Big]
\end{aligned}
$$

where in one of the equivalence $\frac{\xi_{1ra}}{a}\rightarrow0$,

$$
\Big( \frac{1}{1+\frac{\xi_{1r}}{a}}\Big)^2 \approx -2\frac{\xi_{1ra}}{a}
$$

$$
\begin{aligned}
\Big( p+\frac{B^2}{2\mu_0}\Big)_{1,interior} &= \Big( p+\frac{B^2}{2\mu_0}\Big)_{1,exterior} \\
\omega^2&=k^2{v_A}^2 + \frac{1}{a\mu_0 a^2 \rho_0}\big[ k^2 a^2{B_{0z}}^2+2kaB_{0\theta}B_{0z} \big]\\
\omega^2&= \frac{1}{a\mu_0 a^2 \rho_0}\big[2 k^2 a^2{B_{0z}}^2+2kaB_{0\theta}B_{0z} \big]
=\frac{2k^2{B_{0z}}^2}{\mu_0\rho_0}\Big[ 1+\frac{B_{0\theta}}{kaB_{0z}}\Big]
\end{aligned}
$$

For stability, $1>\big| \frac{B_{0\theta}}{ka B_{0z}}\big|\Rightarrow |ka|>\frac{B_{0\theta}}{B_{0z}}$. Take $|k|=R^{-1}$, where $R$ is the major radius,  the stability condition becomes

$$
q\equiv \frac{a}{R}\frac{B_{0z}}{B_{0\theta}}>1
$$

and the $q$ the called the safety factor. This is again the Kruskal-Shafranov limit for $m=1$ kink mode. For sausage mode $m=0$, the same approach as above can get 

$$
B_{0\theta}< \sqrt{2} B_{0z}
$$

for stability.

Note:

1. This 2-region model can be generalized to 3-region model, which is more realistic compared to experiments. In the liner inertial fusion experiment, there is a mixture of R-T, sausage, kink and many high order modes.
2. In general, the dispersion relation can be written as

$$
\omega^2 = (\mathbf{k}\cdot\mathbf{v_A})^2 - \text{destablizing term}
$$

where the destablizing term can be gravity $\mathbf{k}\cdot\mathbf{g}$, current $I/I_{crit}$, tearing mode due to resistivity, etc.

3. If we do the same analysis in Cartesian coordinates (x,y,z), there will be no sausage or kink mode! See HW3.

__3-Region Problem__

In 572 HW3.1, we have shown that a Cartesian liner is always stable for kink and sausage mode while a cylindrical liner isn't. However, if you also consider the gravity (or equivalently, centrifugal forc, etc.) then you can have magnetic Rayleigh-Taylor (MRT) instability. 

Here we show the derivation of dispersion relation in a 3-region problem in Cartesian liner. This method can be found in Chandrasekhar`s book on instability, P429. Consider Fig.1 shown in Prof.Lau's paper "Anisotropy and feedthrough in magneto-Rayleigh-Taylor instability". The interface of the regions are $x=\alpha,\ x=\beta$. The governing equation including gravity is

$$
\frac{d}{dx}\Big\{ \rho_0\big[ \omega^2-(\mathbf{k}\cdot\mathbf{v}_A)^2\big] \frac{\partial \xi_{1x}}{\partial x} \Big\} 
- k^2 \big[ \rho_0\big( \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A)^2\big)+g\frac{\partial \rho_0}{\partial x}\big] \xi_{1x} = 0
$$

If $\rho_0=\text{const.}\Rightarrow g\frac{\partial \rho_0}{\partial x}=0$. Within region I, II, and III, the governing equation can be simplified to

$$
\frac{d^2 \xi_{1x}}{dx^2} - k^2\xi_{1x} = 0
$$

the general solution of which reads

$$
\xi_{1x} = Ae^{-kx} + Be^{kx} = C\sinh{k(x-\alpha)} + D\sinh{k(x-\beta)}
$$

where $A,B,C,D$ are coefficients. Cancelling out the unphysical solutions in each region, we have

$$
\begin{aligned}
\text{I: }& \xi_{1x} = \xi_\beta e^{k(x-\beta)} \\
\text{II: }& \xi_{1x} = \xi_\alpha \frac{\sinh{k(x-\beta)}}{\sinh{k(\alpha-\beta)}} + \xi_\beta \frac{\sinh{k(x-\alpha)}}{\sinh{k(\beta-\alpha)}} \\
\text{III: }& \xi_{1x} = \xi_\alpha e^{-k(x-\alpha)}
\end{aligned}
$$

Note that there's a jump for $\rho_0(x)$ at $x=\alpha,\beta$. Now we can integrate the governing equation across the boundaries,

$$
\begin{aligned}
\int_{x=\alpha^-}^{x=\alpha^+} dx \Big[ \frac{d}{dx}\Big\{ \rho_0\big[ \omega^2-(\mathbf{k}\cdot\mathbf{v}_A)^2\big] \frac{\partial \xi_{1x}}{\partial x} \Big\} 
- k^2 \big[ \rho_0\big( \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A)^2\big)+g\frac{\partial \rho_0}{\partial x}\big] \xi_{1x}  \Big]= 0 \\ 
\Rightarrow F_1(\xi_\alpha,\xi_\beta) = 0 \\
\int_{x=\beta^-}^{x=\beta^+} dx \Big[ \frac{d}{dx}\Big\{ \rho_0\big[ \omega^2-(\mathbf{k}\cdot\mathbf{v}_A)^2\big] \frac{\partial \xi_{1x}}{\partial x} \Big\} 
- k^2 \big[ \rho_0\big( \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A)^2\big)+g\frac{\partial \rho_0}{\partial x}\big] \xi_{1x}  \Big]= 0 \\
\Rightarrow F_2(\xi_\alpha,\xi_\beta) = 0
\end{aligned}
$$

Finally, from $F_1$ and $F_2$, we can get the dispersion relation

$$
\omega^4 - R\omega^2  + S = 0
$$

where $R$ and $S$ are functions of $B_{01},B_{02},B_{03},\rho_{01},\rho_{02},\rho_{03},g,\Delta,k_y$ and $k_z$.

Next, we can examine the temporal evolution of sinusoidal ripples at interfaces in the form

$$
\xi_{\alpha,\beta}(t) = A_1 e^{i\omega_1 t}+A_2 e^{-i\omega_3 t}+A_3e^{i\omega_3 t}  + A_4 e^{-i\omega_3 t}
$$

where $\omega_1$ and $\omega_3$ are two eigen mode from the dispersion relation. See the details in the paper. The details of dispersion relation is given in M.Weis, et. al., Phys. Plasmas 21, 122708 (2014), and the coulping of MRT, sausage and kink mode in a cyclindrical liner is given by M.Weis, et. al., Phys. Plasma 22, 032706 (2015).

Note: for RT/MRT, 

$$
\xi_{RT}(t) \sim\xi_0 e^{\gamma t} < \xi_0 e^{\sqrt{gk}t}
$$

the growth rate

$$
\gamma_{\max} = \sqrt{gk}
$$

If we use $s=\frac{1}{2}gt^2\Rightarrow \sqrt{2s}=\sqrt{|g|}t$,

$$
\xi_{RT}(t)<\xi_0 e^{\sqrt{2ks}}
$$

which only depends on wavenumber and distance.

### Sausage Mode

The $m=0$ mode is known as the sausage instability. There is no $B_z$ so we have purely toroidal field. The initial equilibrium is established with radially inward Lorentz force and outward pressure gradient. But it is unstable to interchange due to curvature. When a perturbation that causes the rings to shrink, magnetic field in the plasma increases so that the $\mathbf{J}\times\mathbf{B}$ Lorentz force increases. There is nothing to counter this radially inward force increase, which leads to instability.

The dispersion relation is

$$
\omega^2 = -2\frac{p_0}{\rho_0}\frac{k}{R_c^2}
$$

Adding $B_z$ to the interior plasma stabilizes sausage instability: the magnetic pressure caused by $B_z$ pushes back to oppose squeezing. The pressure balance at the interface gives

$$
p_0 + \frac{B_{0z}^2}{2\mu_0} = \frac{B_\phi^2}{2\mu_0}
$$

With the modified dispersion relation

$$
\omega^2 = -2\frac{p_0}{\rho_0 a^2} + \frac{B_{0z}^2}{\mu_0\rho_0 a^2}
$$

we have the condition for stability

$$
B_{0z}^2 > \frac{1}{2}B_\phi^2
$$

THIS IS PROBABLY DUPLICATE WITH THE PREVIOUS SECTION.

### Kink Mode

However, even when the sausage mode is suppressed, the configuration is still unstable to the kink mode. This $m=1$ mode retains circular cross-section of the tube and the perturbation is a kink of the tube into a helix. Without $B_z$, the system is unstable for all $k$; with $B_z$, it is unstable for wavelengths long enough such that the pitch of the perturbation follows the pitch of the helix, i.e. the crests/troughs of the perturbations follow the fieldlines of tube

$$
B_\phi/R + k B_Z \ge 0
$$

In terms of a twist $\Phi = 2LB_\phi/RB_z$, this criterion is equivalent to

$$
k\ge-\frac{\Phi}{2L}
$$

The perturbation Lorentz force $\mathbf{j}_1\times\mathbf{B}_0$ is zero. (???)

### Ballooning Mode

The ballooning instability is a type of internal pressure-driven plasma instability usually seen in tokamak fusion power reactors or in space plasmas [@hameiri1991ballooning]. It is important in fusion research as it determines a set of criteria for the maximum achievable plasma beta. The name refers to the shape and action of the instability, which acts like the elongations formed in a long balloon when it is squeezed. In literature, the structure of these elongations are commonly referred to as "fingers".

The narrow fingers of plasma produced by the instability are capable of accelerating and pushing aside the surrounding magnetic field in order to cause a sudden, explosive release of energy. Thus, the instability is also known as the explosive instability.

The interchange instability can be derived from the equations of the ballooning instability as a special case in which the ballooning mode does not perturb the equilibrium magnetic field.[@hameiri1991ballooning] This special limit is known as the Mercier criterion.

```jl
KeyNotes.plot_balloon()
```

### Tearing Mode

```jl
KeyNotes.plot_tearing()
```

## Kinetic Mode