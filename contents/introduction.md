# Introduction {#sec:intro}

* What does MHD study?

solid, liquid, gas, __plasma__

* What is plasma?

Quasi-neutral ionized gases. 

* Where is plasma?
  * Astrophysics \& geophysics
    * Dynamo
    * Shock
    * Reconnection
    * Particle acceleration
  * Engineering \& application
    * Controlled fusion
    * Power conversion
    * Reentry of intercontinental ballistic missiles and spacecrafts
    * Plasma jet as a new propulsion for space vehicles
    * Global warming

* Methodologies applied in plasma physics
  * Kinetic theory
    * Microscopic point of view
    * Positive, negative \& neutral particles
    * EM force, collisions
    * Ordinary gas .vs. Plasma
      * binary collision
      * free between collisions

$$
\begin{aligned}
&nf(\mathbf{x}+d\mathbf{x},\mathbf{p}+d\mathbf{p},t+dt)d\mathbf{x}d\mathbf{p}-nf(\mathbf{x},\mathbf{p},t)d\mathbf{x}d\mathbf{p} \\
=&\frac{\partial (nf(\mathbf{x},\mathbf{p},t))}{\partial t}\Big|_{\text{collision}}d\mathbf{x}d\mathbf{p}dt \nonumber \\
=&\frac{\partial (nf)}{\partial t}+\frac{\partial nf}{\partial \mathbf{x}}\cdot\frac{\mathbf{p}}{m}+\frac{nf}{\partial \mathbf{p}}\cdot\mathbf{F}
\end{aligned}
$$

This is also called the _Fokker-Planck_ term.

* Theory of continuum
  * Macroscopic point of view, bulk motion
  * Fundamental equations from conservation laws
  * Electro-Magneto-Hydro-Dynamics (EMHD)

Definition: Plasma = _ionized gas_

In plasma physics we usually use energy units "eV" instead of temperature. Given Boltzmann constant $k_B=1.38\times10^{-23}J/K$,

$$
1eV=(11600\text{K})\times k_B=1.602\times 10^{-19}\text{J} ([V]=[J]/[C])
$$

There are generally two kinds of plasma:

1. High temperature($>1keV$): fusion plasma
2. Low temperature($\sim 1eV-100eV$): plasma processing, space propulsion

At the beginning, it is important to get the idea of size. Starting from two basic length scales:

* $a_0\equiv \text{atomic scale }$($\sim 10^{-10}\text{m}$)
* n = number density ($\sim 1/cm^3$ to $10^{20}/\text{cm}^3$)

Physically, $n$ represents the number of particles in a unit volume, from which we know $n^{-1/3}$ has unit of length. It means a typical length for a single particle.
Ionized state implies that $k_B T\gg E_i=$ ionization potential energy$\sim \frac{e^2}{4\pi\epsilon_0 a_0}\approx 14eV$). 

Gaseous state implies that $n^{-1/3}\gg a_0$.

$$
\begin{aligned}
n^{-1/3}\gg a_0\sim\frac{e^2}{4\pi\epsilon_0 E_i}\gg \frac{e^2}{4\pi\epsilon_0(k_B T)} \\
4\pi n^{-1/3} n \Big( \frac{\epsilon_0 k_B T}{e^2 n} \Big) \gg 1 \nonumber
\end{aligned}
$$

$n^{2/3}$ has unit of $\text{length}^{-2}$, indicating that the other term should be in the unit of $\text{length}^{2}$. This is derived using dimensional analysis, which gives

$$
\lambda_{D}=\sqrt{\frac{\epsilon_0 k_B T}{e^2 n}}\equiv \textrm{ Debye length}=740(\text{cm})\sqrt{\frac{T(\text{eV})}{n(\text{cm}^{-3})}}
$$

$$
\begin{split}
(4\pi)^{3/2}n{\lambda_{D}}^3 &\gg 1 \\
n{\lambda_D}^3 &\gg 1 \Rightarrow \text{Large number of particles in a sphere}
\end{split}
$$

This is necessarily satisfied for plasma under previous definitions.

Indication from the definition of plasma:

1. There are large number of particles in a Debye sphere. 

$\underline{\text{Ex}.1}$ laboratory plasma $10^{8}\text{cm}^{-3}\rightarrow 10^{20}\text{cm}^{-3}$. Tokamak $n=10^{14}\text{cm}^{-3}$, $k_B T=10\text{keV}=10^4\text{eV}$, $n^{-1/3}=2.15\times10^{-5}\text{cm}$, $\lambda_D=7.4\times10^{-3}\text{cm} \gg n^{-1/3}$, $n{\lambda_{D}}^3\gg 1$.

$L\gg\lambda_{D}\gg n^{-1/3}$, where $L$ is the dimension of the physical system ($\sim 1\text{mm}\text{ to }10\text{m}$).

$\underline{\text{Ex}.2}$ Interstellar plasma $n=1 \text{cm}^{-3}, T=1eV$, $\lambda_D=740\text{cm}\sqrt{\frac{1}{1}}=740\text{cm} \gg n^{-1/3}$, $n{\lambda_D}^3\gg1$.

2. Particle kinetic energy $\gg$ average Coulombic interaction energy.

$$
\begin{split}
KE&\sim k_B T \\
PE&\sim \frac{e^2}{4\pi\epsilon_0(n^{-1/3})}
\end{split}
$$

From the definition we can easily know that

$$
k_B T\gg \frac{e^2}{4\pi\epsilon_0 n^{-1/3}}\Rightarrow KE\gg PE
$$

This implies that particles are hard to be deflected by their neighbours.

3. Particles are scattered mostly by accumulative, multiple small angle collisions rather than by large angle collisions. This naturally follows the above energy discussion, and will be explained in further detail later.

4. Collective interactions (the basics of all instabilities) dominate over Coulombic interactions between individual particles. This has an analogy to economy: one has nearly no effect on the whole, but the whole has huge effect on individuals. EM fields stand as a bridge between particles.

## Plasma Frequency

Besides the length scale, we are also interested in time scale. The plasma frequency,

$$
\omega_p = \sqrt{\frac{n\,e^2}{\epsilon_0\,m}}
$$

is the most fundamental time-scale in plasma physics. Clearly, there is a different plasma frequency for each species. However, the relatively fast electron frequency is, by far, the most important, and references to "the plasma frequency" in most textbooks invariably mean the electron plasma frequency.

It is easily seen that $\omega_p$ corresponds to the typical electrostatic oscillation frequency of a given species in response to a small charge separation. For instance, consider a one-dimensional situation in which a slab consisting entirely of one charge species is displaced from its quasi-neutral position by an infinitesimal distance $\delta x$. The resulting charge density which develops on the leading face of the slab is $\sigma=e\,n\,\delta x$. An equal and opposite charge density develops on the opposite face. The $x$-directed electric field generated inside the slab is of magnitude $E_x= -\sigma/\epsilon_0 =- e\,n\,\delta x/\epsilon_0$. Thus, Newton's law applied to an individual particle inside the slab yields

$$
m\,\frac{d^2 \delta x}{dt^2} = e\,E_x = -m\,\omega_p^{~2}\,\delta x
$$

giving $\delta x = \delta x_0\,\cos\omega_p t$.

Note that plasma oscillations will only be observed if the plasma system is studied over time periods $\tau$ longer than the plasma period $\tau_p\equiv 1/\omega_p$, and if external actions change the system at a rate no faster than $\omega_p$. In the opposite case, one is clearly studying something other than plasma physics (e.g., nuclear reactions), and the system cannot not usefully be considered to be a plasma. Likewise, observations over length-scales $L$ shorter than the distance $v_t\,\tau_p$ traveled by a typical plasma particle during a plasma period will also not detect plasma behaviour. In this case, particles will exit the system before completing a plasma oscillation. This distance, which is the spatial equivalent to $\tau_p$, is called the Debye length, and takes the form

$$
\lambda_D \equiv \sqrt{T/m}\,\,\omega_p^{-1}.
$$

Note that

$$
\lambda_D = \sqrt{\frac{\epsilon_0\,T}{n\,e^2}}
$$

is independent of mass, and therefore generally comparable for different species. Clearly, our idealized system can only usefully be considered to be a plasma provided that

$$
\frac{\lambda_D}{L} \ll 1
$$ {#eq:length_limit}

and

$$
\frac{\tau_p}{\tau}\ll 1
$$

Here, $\tau$ and $L$ represent the typical time-scale and length-scale of the process under investigation.
It should be noted that, despite the conventional requirement \ref{eq:length_limit}, plasma physics is capable of considering structures on the Debye scale. The most important example of this is the Debye sheath: i.e., the boundary layer which surrounds a plasma confined by a material surface.

## Debye Shielding

(Problem 4 on P27 Bellan)

Maxwell distribution: 

$$
f(\mathbf{v})=n_0\Big( \frac{m}{2\pi kT}\Big)^{3/2}\exp\Big( -\frac{mv^2}{2kT}\Big)
$$

Boltzmann distribution (?):
 
$$
f(\mathbf{x},\mathbf{v})=n_0\Big( \frac{m}{2\pi kT}\Big)^{3/2}\exp\Big( -\frac{\frac{1}{2}mv^2+q\phi(\mathbf{x})}{kT}\Big)
$$

Let us put a point charge $q_T$ into a quasi-neutral gas of charged particles. The gas is in _local thermodynamic equilibrium_ (LTE) with ion and electron temperatures $T_e$ and $T_i$ (They are not necessarily the same, and in fact, quite different in nature.). Note that the concept of temperature is valid in LTE. From the Boltzmann equation,

$$
\begin{aligned}
\frac{df}{dt}=\frac{\partial f}{\partial t}+\nabla_x\cdot(f\mathbf{v})+\nabla_v\cdot(f\mathbf{a})=0 \\
\Rightarrow \frac{\partial f}{\partial t}+\mathbf{v}\cdot\nabla_x f+\frac{\mathbf{F}}{m}\cdot\nabla_v f=0
\end{aligned}
$$

If we neglect the time derivatives, we obtain

$$
(\mathbf{v}_j\cdot\nabla)f(\mathbf{r},\mathbf{v}_j)+\big[-\frac{1}{m_j}\nabla(q_j\phi)\cdot\nabla_v\big]f(\mathbf{r},\mathbf{v}_j)=0
$$ {#eq:LTE_Vlasov}

The LTE distribution is in a Maxwellian shape,

$$
f(\mathbf{r},\mathbf{v}_j)=n_j(\mathbf{r})\Big( \frac{m}{2\pi k_BT}\Big)^{3/2}\exp\Big( -\frac{mv^2}{2k_BT}\Big)
$$

Substitute into @eq:LTE_Vlasov, we have

$$
\begin{aligned}
(\mathbf{v}_j\cdot\nabla)n_j +\frac{\mathbf{v}_j\cdot\nabla(q\phi)}{k_BT_j}n_j=0 \\
\Rightarrow n_j(\mathbf{r}) = n_{j0} \exp\Big[ -\frac{q_j\phi_j(\mathbf{r})}{k_BT_j} \Big]
\end{aligned}
$$

Then we get the Boltzmann distribution of each species with a separate temperature for each.

Consider a uniform plasma with $n_i=n_{i0}e^{-e\phi/k_B T_i}$, $n_e=n_{e0}e^{e\phi/k_BT_e}$, and with the quasi-neutral assumption, $n_{e0}=n_{i0}=n_0$. Introduce a point charge $q_T$ in the initially neutralized plasma. Poisson equation gives

$$
\nabla^2 \phi=-\frac{\rho}{\epsilon_0}=-\frac{1}{\epsilon_0}\Big[ e(n_e-n_i) +q_T \delta(\mathbf{r})\Big]
$$

Due to symmetry, $\phi=\phi(r)$. When the temperature is high, $q\phi(r)\ll kT$, the exponent is small and we can expand in a Taylor series and leave only the first order term. In spherical coordinates,

$$
\begin{aligned}
\nabla^2\phi=\frac{1}{r^2}\frac{\partial}{\partial r}\Big( r^2\frac{\partial \phi}{\partial r} \Big)& \nonumber \\
\frac{1}{r^2}\frac{\partial}{\partial r}\Big( r^2\frac{\partial \phi}{\partial r} \Big)+\frac{e}{\epsilon_0}\Big( \underbrace{ n_{e0}e^{e\phi/k_BT_e} - n_{i0}e^{-e\phi/k_B T_i} }_{\approx n_0\big[ e\phi/k_BT_e +e\phi/k_BT_i  \big]}\Big)&= -\frac{q_T}{\epsilon_0}\delta(\mathbf{r}) \\
\frac{1}{r^2}\frac{\partial}{\partial r}\Big( r^2\frac{\partial \phi}{\partial r} \Big) -\underbrace{\frac{e^2n_0}{\epsilon_0}\Big( \frac{1}{k_B T_e}+\frac{1}{k_BT_i}\Big) }_{ \frac{1}{{\lambda_D}^2}\equiv \frac{1}{{\lambda_{Di}}^2}+\frac{1}{{\lambda_{De}}^2}}\phi&=-\frac{q_T}{\epsilon_0}\delta(\mathbf{r}) \\
\frac{1}{r^2}\frac{\partial}{\partial r}\Big( r^2\frac{\partial \phi}{\partial r} \Big) -\frac{1}{{\lambda_D}^2}\phi&=-\frac{q_T}{\epsilon_0}\delta(\mathbf{r})
\end{aligned}
$$

where $\lambda_D=\sqrt{\frac{\epsilon_0 kT^\ast}{n_0e^2}}$ is the Debye length, $T^\ast=\Big( \frac{1}{T_e}+\frac{1}{T_i} \Big)^{-1}$. Larger density indicates better shielding effects.

For $r>0$ (away from the charge),

$$
\frac{1}{r^2}\frac{\partial}{\partial r}\Big( r^2\frac{\partial \phi}{\partial r} \Big) -\frac{1}{{\lambda_D}^2}\phi=0
$$

Let $\phi(r)=\frac{F(r)}{r}$, we have

$$
\begin{aligned}
\frac{d^2F}{dr^2}-\frac{F}{{\lambda_D}^2}&=0 \\
\Rightarrow F&=Ae^{-r/\lambda_D}+\cancel{Be^{r/\lambda_D}} (r>0) \nonumber \\
&=Ae^{-r/\lambda_D}
\end{aligned}
$$

Anticipate when $r\rightarrow 0$, $\phi(r)\rightarrow \frac{q_T}{4\pi\epsilon_0 r}\approx \frac{A}{r}$. So

$$
\phi(r)=\frac{q_t}{4\pi\epsilon_0r}e^{-r/\lambda_D}
$$

![Electric potential.](images/ElectricPotential.png){#fig:electric_potential}

The electric potential drops very quickly (@fig:electric_potential). In other words, if you insert a charge into a neutral plasma, its potential will only effect within a small range. Recall the Gauss`s law,

$$
\oint\mathbf{E}\cdot d\mathbf{A}=\frac{Q_T}{\epsilon_0}\rightarrow\textrm{ as }R\rightarrow \infty, \textrm{ E goes to zero.}
$$

Additional comments:

1. Plasma may be considered neutral over a length scale larger than Debye length.
2. Plasma acts like dielectron.
3. There is a plasma sheath near to where materials contact, inside which charge neutrality is violated. This will be discussed in @sec:sheath.
