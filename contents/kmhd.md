# Kinetic MHD {#sec:kmhd}

This is taken from the hand-written lecture notes from Prof. Alexander Schekochihin.

We start by showing how for magnetized, weakly collisional plasmas ($\nu_\text{colli} \ll \Omega_s$, $r_L\ll \lambda_\text{mfp}$, where $\lambda_\text{mfp}$ is the mean free path), low-frequency ($\omega \ll \Omega_s$), long-wavelength ($kr_L\ll 1$) dynamics can be decided by a set of equations that look almost like the familiar MHD. We will see later on that the ways in which they are not MHD will profoundly affact the dynamics --- indeed we do not fully understand the full implication of this in high-$\beta$ plasmas. This is consequently one of the frontier topics in theoretical plasma astrophysics.

Let us start from first principles. Any plasma that is going to be of interest to us is described by the Vlasov-Maxwell-Landau system of equations:

$$
\frac{\partial f_s}{\partial t} + \mathbf{v}\cdot\nabla f_s + \frac{q_s}{m_s}\Big[\mathbf{E} + \mathbf{u}\times\mathbf{B} \Big]\frac{\partial f_s}{\partial\mathbf{v}} = C(f_s)
$$ {#eq:kmhd_boltzmann}

The Maxwell's equation can be simplified based on our assumptions.

$$
\nabla\cdot\mathbf{E} = \epsilon_0 \sim_s q_s n_s,\, n_s=intd\mathbf{v}f_s
$$

$\nabla\cdot\mathbf{E}$ is small when $k^2\lambda_{De}\ll 1$, and the right-hand side simply gives the quasineutrality condition.

$$
\nabla\cdot\mathbf{B} = 0
$$

$$
\frac{\partial\mathbf{B}}{\partial t} = -\nabla\times\mathbf{E}
$$

$$
\nabla\times\mathbf{B} = \mu_0\mathbf{j} + \cancel{\epsilon_0\mu_0 \frac{\partial\mathbf{E}}{\partial t}},\, \mathbf{j} = \sum_s n_s q_s \mathbf{u}_s, \mathbf{u}_s = \frac{1}{n_s}d\mathbf{v}\mathbf{v} f_s
$$

The second term can be neglected since $\omega\ll kc$ for low frequency waves and non-relativistic motions. 

Intuitively, we tend to think of the plasma as a fluid (or a multi-fluid of several species) with some density $n_s$, velocity $\mathbf{u}_s$ and perhaps pressure, temperature, etc. This is rooted in our experience with collisional gases ($\nu\gg \omega$), which are in local Maxwellian equilibrium:

$$
f_s = \frac{n_s}{(\pi v_{th,s}^2)^{3/2}}e^{-\frac{(\mathbf{v}-\mathbf{v}_s)^2}{v_{th,s}^2}},\, v_{th,s} = \sqrt{\frac{2k_B T_s}{m_s}}
$$

where $n_s, \mathbf{u}_s$ and $T_s$ are governed by fluid equations.

With this desire to think of plasmas as fluid, let us break the motion of the particles into two parts:

$$
\mathbf{v} = \mathbf{u}_s(t,\mathbf{r}) + \mathbf{w}
$$

where $\mathbf{u}_s$ represents the mean velocity of species $s$ (fluid-like description) and $\mathbf{w}$ represents the "peculiar" velocity or internal motion (kinetic description). This amounts to a transformation of variables

$$
(t,\mathbf{r},\mathbf{v}) \rightarrow (t,\mathbf{r},\mathbf{w}),\quad\mathbf{w} = \mathbf{v} - \mathbf{u}_s(t,\mathbf{r})
$$

under which the derivatives in the new basis shall be written as

$$
\begin{aligned}
\frac{\partial}{\partial t}&\rightarrow \frac{\partial}{\partial t} - \frac{\partial\mathbf{u}_s}{\partial t}\cdot\frac{\partial}{\partial\mathbf{w}} \\
\nabla&\rightarrow \nabla-(\nabla\mathbf{u}_s)\cdot\frac{\partial}{\partial\mathbf{w}} \\
\frac{\partial}{\partial\mathbf{v}}&\rightarrow \frac{\partial}{\partial\mathbf{w}}
\end{aligned}
$$ {#eq:kmhd_change_of_var}

This can be derived from the chain rule with

$$
\begin{aligned}
t^\prime &= t \\
\mathbf{r}^\prime &= \mathbf{r} \\
\mathbf{w} &= \mathbf{v} - \mathbf{u}_s(t,\mathbf{r}) 
\end{aligned}
$$

Note that the three variables are independent, for any quantity $f$, we have

$$
\begin{aligned}
\frac{\partial f}{\partial t} &= \frac{\partial f}{\partial t^\prime}\cdot\frac{\partial t^\prime}{\partial t} + \frac{\partial f}{\partial \mathbf{r}^\prime}\cdot\frac{\partial\mathbf{r}^\prime}{\partial t} + \frac{\partial f}{\partial\mathbf{w}}\cdot\frac{\partial\mathbf{w}}{\partial t} \\
&= \frac{\partial f}{\partial t} - \frac{\partial\mathbf{u}_s}{\partial t}\cdot\frac{\mathbf{\partial f}}{\partial \mathbf{w}}
\end{aligned}
$$

Similarly we can derive the other two relations in @eq:kmhd_change_of_var. Then the Boltzmann equation becomes

$$
\Big( \frac{\partial}{\partial t} + \mathbf{u}_s\cdot\nabla\Big)f_s + (\mathbf{w}\cdot\nabla)f_s + \Big(\frac{q_s}{m_s}\mathbf{w}\times\mathbf{B} +\mathbf{a}_s -\mathbf{w}\cdot\nabla\mathbf{u}_s )\cdot\frac{\partial f_s}{\partial\mathbf{w}} = C(f_s)
$$ {#eq:boltzmann_change_of_var}

where 

$$
\mathbf{a}_s = \frac{q_s}{m_s}\Big(\mathbf{E} + \mathbf{u}_s\times\mathbf{B} \Big) - \frac{d\mathbf{u}_s}{dt}
$$

and now we always have $\int d\mathbf{w}\mathbf{w}f_s = 0$ by definition. The strategy now is to take moments of @eq:boltzmann_change_of_var. The zeroth moment ($\int d\mathbf{w}$) gives

$$
\begin{aligned}
\int \frac{df_s}{dt} d\mathbf{w} + \int (\mathbf{w}\cdot\nabla)f_s d\mathbf{w} + \int \Big[... \Big]\cdot\frac{\partial f_s}{\partial\mathbf{w}} d\mathbf{w} = 0 \\
\frac{d}{dt}\int f_s d\mathbf{w} + \nabla\cdot\int \mathbf{w}f_s d\mathbf{w} - \int (\mathbf{w}\cdot\nabla\mathbf{u}_s)\cdot\frac{\partial f_s}{\partial\mathbf{w}} d\mathbf{w} = 0 \\
\frac{dn_s}{dt} + \int f_s \frac{\partial}{\partial\mathbf{w}}\big(\mathbf{w}\cdot\nabla\mathbf{u}_s \big)d\mathbf{w} = 0 \\
\frac{dn_s}{dt} + \int f_s \frac{\partial}{\partial w_j}\big(w_i \frac{\partial}{\partial x_i}u_{sj} \big)dw_j = 0 \\
\frac{dn_s}{dt} + \int f_s \delta_{ij}\frac{\partial}{\partial x_i}u_{sj}dw_j + \int f_s  w_i \cancel{\frac{\partial^2 u_{sj}}{\partial x_i \partial w_j}}dw_j = 0 \\
\frac{dn_s}{dt} + \int f_s \frac{\partial}{\partial x_i}u_{si}dw_i = 0 \\
\frac{dn_s}{dt} + \nabla\cdot\mathbf{u}_s\int f_s d\mathbf{w} = 0 \\
\frac{dn_s}{dt} + (\nabla\cdot\mathbf{u}_s)n_s = 0
\end{aligned}
$$

or

$$
\frac{\partial n_s}{\partial t} + \nabla\cdot(n_s\mathbf{u}_s) = 0
$$

The first order moments give ($\int d\mathbf{w}m_s\mathbf{w}$)

$$
\nabla\cdot\int d\mathbf{w}m_s\mathbf{w} \mathbf{w}f_s - m_sn_s\mathbf{a}_s = \int d\mathbf{w}m_s\mathbf{w}C(f_s) = \mathbf{R}_s
$$

where $\int d\mathbf{w}m_s\mathbf{w} \mathbf{w}f_s = \mathbf{P}_s$ is the pressure tensor and  $\mathbf{R}_s$ is the collisional friction. Unpacking $\mathbf{a}_s$, we have the momentum equation for each species $s$

$$
m_sn_s\frac{d\mathbf{u}_s}{dt} = -\nabla\cdot\mathbf{P}_s + q_s n_s(\mathbf{E} +\mathbf{w}\times\mathbf{B}) + \mathbf{R}_s
$$ {#eq:kmhd_momentum_species}

Summing over all the species,

$$
\begin{aligned}
\sum_s m_sn_s\frac{d\mathbf{u}_s}{dt} = -\nabla\cdot\sum_s\mathbf{P}_s + \cancel{\sum_s q_s n_s\mathbf{E}} + \sum_s q_s n_s\mathbf{u}_s\times\mathbf{B} + \cancel{\sum_s\mathbf{R}_s} \\
\rho\frac{d\mathbf{u}}{dt} = -\nabla\cdot\mathbf{P} + \mathbf{j}\times\mathbf{B} \\
\rho\frac{d\mathbf{u}}{dt} = -\nabla\cdot\mathbf{P} + \mu_0^{-1}(\nabla\times\mathbf{B})\times\mathbf{B} \\
\rho\frac{d\mathbf{u}}{dt} = -\nabla\cdot\Big[\mathbf{P} + \frac{B^2}{2\mu_0}\mathbf{I} - \mathbf{B}\mathbf{B}\Big]
\end{aligned}
$$

We also need an equation for the magnetic field. It is Faraday's law:

$$
\frac{\partial\mathbf{B}}{\partial t} = -\nabla\times\mathbf{E}
$$

From @eq:kmhd_momentum_species,

$$
\mathbf{E} = -\mathbf{u}_s\times\mathbf{B} + \frac{\nabla\cdot\mathbf{P}_s}{q_sn_s} - \frac{\mathbf{R}_s}{q_sn_s} + \frac{m_s}{q_s}\frac{d\mathbf{u}_s}{dt}
$$

The second term is small since $kr_s/M_A \ll 1$(long wave + incompressible plasma???), the third term is small since $\nu_s/\Omega_s\ll 1$, and the fourth term is small since $\omega/\Omega_s\ll 1$. This means that $\mathbf{u}_s = \mathbf{E}\times\mathbf{B}/B^2 = \mathbf{u}_\perp$, the perpendicular component of the velocity is the same for all species. Then we get the induction equation from Faraday's law:

$$
\frac{\partial\mathbf{B}}{\partial t} = \nabla\times(\nabla\times\mathbf{B})
$$ {#eq:kmhd_induction}

The three equations we have so far are very similar to MHD, except for the pressure tensor. Obviously, all the kinetic magic is hidden in $\mathbf{P}$.

Going back to @eq:kmhd_momentum_species, it is key to notice that

$$
\frac{q_s}{m_s}\mathbf{w}\times\mathbf{B}\cdot\frac{\partial f_s}{\partial\mathbf{w}} = -\Omega_s\Big( \frac{\partial f_s}{\partial\mathbf{\theta}}\Big)_{w_\perp,w_\parallel}
$$

where $\theta$ is the gyroangle in the perpendicular plane. This can be proved by changing to cylindrical coordinates

$$
\mathbf{w} = (w_\perp\cos\theta, w_\perp\sin\theta, w_\parallel)
$$

with changing of variables:

$$
\begin{aligned}
\frac{\partial f_s}{\partial \theta} &= \frac{\partial f_s}{\partial w_{\perp 1}}\frac{\partial w_{\perp 1}}{\partial \theta} + \frac{\partial f_s}{\partial w_{\perp 1}}\frac{\partial w_{\perp 1}}{\partial \theta} + \frac{\partial f_s}{\partial w_{\parallel}}\cancel{\frac{\partial w_{\parallel}}{\partial \theta}} \\
&= \frac{\partial f_s}{\partial w_{\perp 1}}\frac{\partial w_\perp \cos\theta}{\partial \theta} + \frac{\partial f_s}{\partial w_{\perp 2}}\frac{\partial w_\perp \sin\theta}{\partial \theta} \\
&= -\frac{\partial f_s}{\partial w_{\perp 1}}w_\perp \sin\theta + \frac{\partial f_s}{\partial w_{\perp 2}}w_\perp \cos\theta \\
&= -w_{\perp 2}\frac{\partial f_s}{\partial w_{\perp 1}} + w_{\perp 2}\frac{\partial f_s}{\partial w_{\perp 2}} \\
&= \mathbf{w}\times\hat{b}\cdot\frac{\partial f_s}{\partial \mathbf{w}}
\end{aligned}
$$

This is why we say the third term in @eq:kmhd_boltzmann represents a rotation in the velocity space, or more exactly, in the perpendicular velocity plane.

From @eq:boltzmann_change_of_var

$$
\Omega_s\Big( \frac{\partial f_s}{\partial\mathbf{\theta}}\Big)_{w_\perp,w_\parallel} = \underbrace{\frac{d f_s}{dt}}_{\substack{\omega/\Omega_s\ll 1 \\ kr_su_s/v_{th,s}\ll 1}} + \underbrace{\mathbf{w}\cdot\nabla f_s}_{kr_s\ll 1} + (\underbrace{\mathbf{a}_s}_{kr_s\ll 1} - \underbrace{\mathbf{w}\cdot\nabla\mathbf{u}_s}_{kr_sM_A\ll 1})\cdot\frac{\partial f_s}{\partial \mathbf{w}} - \underbrace{C(f_s)}_{\nu_s\ll\Omega_s} = 0
$$

which essentially tells us that $f_s=f_s(w_\perp,w_\parallel,\theta) = f_s(w_\perp,w_\parallel)$ is gyrotropic. We can use this fact to simplify the pressure tensor:

$$
\begin{aligned}
\mathbf{P}_s &= \int d\mathbf{w}m_s\left< \mathbf{w}\mathbf{w} \right>f_s(t,\mathbf{r},w_\perp,w_\parallel) \\
&= \int d\mathbf{w}m_s\left< \frac{w_\perp^2}{2}(\mathbf{I} - \hat{b}\hat{b}) + w_\parallel^2\hat{b}\hat{b} \right>f_s(t,\mathbf{r},w_\perp,w_\parallel) \\
&= (\mathbf{I} - \hat{b}\hat{b})\int d\mathbf{w}\frac{m_sw_\perp^2}{2}f_s + \hat{b}\hat{b}\int d\mathbf{w}m_sw_\parallel^2 f_s \\
&= \begin{pmatrix} p_{\perp s} & 0 & 0 \\ 0 & p_{\perp s} & 0 \\ 0 & 0 & p_{\parallel s} \end{pmatrix}
\end{aligned}
$$

where

$$
\begin{aligned}
p_\perp &= \int d\mathbf{w}\frac{m_sw_\perp^2}{2}f_s \\
p_\parallel &= \int d\mathbf{w}m_sw_\parallel^2 f_s
\end{aligned}
$$

@eq:kmhd_momentum_species becomes

$$
\rho\frac{d\mathbf{u}}{dt} = -\nabla\Big( \underbrace{p_\perp + \frac{B^2}{2\mu_0}}_{\text{total scalar pressure}} \Big) + \nabla\cdot\Big[ \hat{b}\hat{b}\big( \underbrace{p_\perp - p_\parallel}_{\text{pressure anisotropy stress}} + \underbrace{\frac{B^2}{\mu_0}}_{\text{Maxwell stress}} \big) \Big]
$$ {#eq:kmhd_momentum_species_gyrotropic}

The pressure anisotropy stress is the key new feature compared to usual MHD. It should be important provided $p_\perp - p_\parallel \gtrsim B^2$, or $(p_\perp - p_\parallel)/p \gtrsim 2/\beta$. Therefore this is more likely to matter in high-$\beta$ plasmas.

To summarize what we have gotten so far: to work out motions and magnetic fields in a plasma, solve @eq:kmhd_momentum_species_gyrotropic for $\mathbf{u}$ and @eq:kmhd_induction for $\mathbf{B}$, where

$$
\begin{aligned}
\rho &= \sum_s m_s \int d\mathbf{w}f_s \\
p_\perp &= \sum_s \int d\mathbf{w}\frac{m_sw_\perp^2}{2}f_s \\
p_\parallel &= \sum_s \int d\mathbf{w}m_sw_\parallel^2 f_s
\end{aligned}
$$

We still need the kinetic equation to calculate $f_s$ --- this kinetic equation will need to be somewhat reduced to solve for the lowest-order, gyrotropic PDF $f_s(w_\perp, w_\parallel)$. In pursuit of instant justification, we will postpone doing this and first derive some results that do not need the $f_s$ equation (i.e. the Firehose instability).

## Firehose Instability: Linear Theory

Suppose we have some "macroscopic" solution of our (yet to be fully derived) equilibrium. We allow high-frequency, short-wavelength perturbations ($\omega\ll u/l, kl \ll 1$ ???) of this solution, and seek solutions in the form

$$
\mathbf{u} + \delta\mathbf{u}, \mathbf{B} +\delta\mathbf{B}, \text{etc.}
$$

with infinitesimal perturbations $\propto e^{i(\mathbf{k}\cdot\mathbf{r}-\omega t)}$.

From @eq:kmhd_induction

$$
\begin{aligned}
-\omega\delta\mathbf{B} &= \mathbf{B}\cdot\mathbf{k}\delta\mathbf{u} - \mathbf{B}\mathbf{k}\cdot\delta\mathbf{u} \\
&= B(k_\parallel\delta\mathbf{u}_\perp - \hat{b}\mathbf{k}_\perp\cdot\delta\mathbf{u}_\perp)
\end{aligned}
$$ {#eq:kmhd_induction_perturb}

From @eq:kmhd_momentum_species_gyrotropic

$$
\begin{aligned}
-\omega\rho\delta\mathbf{u} &= -\mathbf{k}\Big(\delta p_\perp + \frac{B\delta B}{\mu_0}\Big) + \mathbf{k}\cdot\Big[ \Big(\delta\hat{b}\hat{b} + \hat{b}\delta{b}\Big)\Big( p_\perp - p_\parallel + \frac{B^2}{\mu_0} \Big) +\hat{b}\hat{b}\Big( \delta p_\perp - \delta p_\parallel + \frac{B\delta B}{\mu_0} \Big) \Big] \\
&= -\mathbf{k}_\perp \Big(\delta p_\perp + \frac{B\delta B}{\mu_0}\Big) - \hat{b}k_\parallel \Big[ \delta p_\parallel + (p_\perp - p_\parallel)\frac{\delta B}{B} \Big] + \delta\hat{b} k_\parallel \Big( p_\perp - p_\parallel + \frac{B^2}{\mu_0} \Big)
\end{aligned}
$$ {#eq:kmhd_momentum_perturb}

where

$$
\mathbf{k}\cdot\delta\hat{b} = k_\parallel \frac{\delta B}{B}
$$

From @eq:kmhd_induction_perturb, the perturbation of $\hat{b}$, can be written as (this is a bit hard to understand!)

$$
\delta\hat{b} = \frac{\delta\mathbf{B}_\perp}{B} = -\frac{k_\parallel}{\omega}\delta\mathbf{u}_\perp
$$

Isolate the Alfvénic response in @eq:kmhd_momentum_perturb by cross-producting with $\mathbf{k}_\perp$:

$$
\begin{aligned}
-\omega\rho \mathbf{k}_\perp \times\delta\mathbf{u}_\perp = k_\parallel\Big(p_\perp - p_\parallel +\frac{B^2}{\mu_0} \Big) \mathbf{k}_\perp\times\delta\hat{b} \\
\omega\rho \mathbf{k}_\perp \times\delta\mathbf{u}_\perp = k_\parallel\Big(p_\perp - p_\parallel +\frac{B^2}{\mu_0} \Big) \mathbf{k}_\perp\times\frac{k_\parallel}{\omega}\delta\mathbf{u}_\perp \\
\omega^2 = k_\parallel^2 \Big( \frac{B^2}{\mu_0 \rho} + \frac{p_\perp - p_\parallel}{\rho} \Big) = k_\parallel^2 v_{th\parallel}^2 \Big( \frac{p_\perp - p_\parallel}{p_\parallel} + \frac{2}{\beta_\parallel} \Big)
\end{aligned}
$$

Let $A = (p_\perp - p_\parallel)/p_\parallel$. The system will be unstable if $A<-2/\beta_\parallel$, which leads to a growth rate

$$
\gamma = k_\parallel v_{th\parallel}\sqrt{\bigg\lvert A+\frac{2}{\beta_\parallel}\bigg\rvert}
$$

Thus, negative $A$ ($p_\parallel > p_\perp$) locally weakens tention, i.e. slows down Alfvén waves, and makes it energetically easier to bend the field lines. For $A<-2/\beta_\parallel$, the elasticity of field lines is lost and we have the firehose instability. ADD FIGURE!

Along a flux tube, $p_\parallel$ is the destabilizing force, the curvature force is the stabilizing force.

Key points:

* Nothing surprising that $p_\parallel > p_\perp$ leads to an instability: it is a non-equilibrium situation, so a source of free energy.

* $\gamma\propto k_\parallel$ UV catastrophe: so, within KMHD ($\omega\ll\Omega_i, kr_i\ll 1$), the wavenumber of peak $gamma$ is not captured. Including finite larmor radius gives (HOW? AND ARE THE EXPRESSIONS CORRECT?)

$$
\begin{aligned}
\gamma_{\text{peak}}\sim \bigg\lvert A + \frac{2}{\beta_\parallel} \bigg\rvert \Omega_i \\
k_{\parallel\text{peak}}r_i\sim \bigg\lvert A + \frac{2}{\beta_\parallel} \bigg\rvert^1/2
\end{aligned}
$$

so the instability is very fast at microscale. Any high-$\beta$ macroscopic solution with $p_\parallel > p_\perp$ will blow up instantly. (hyzhou: Is it because $\gamma_\text{peak} is very small?$) What happens next is decided by the nonlinear saturation of the firehose. It was a transformative moment when Justin Kasper in 2002 discovered that the firehose stability boundary constrains most observed solar wind states, followed by Hellinger in 2006. Bale in 2009 showed that there is an increased fluctuation level at the boundary.

ADD FIGURE ABOUT THE FIREHOSE STABILITY REGIME FIGURE!

## Mirror Instability: Linear Theory

Let us go back to @eq:kmhd_induction_perturb and @eq:kmhd_momentum_perturb and get apart from Alfvénic what other perturbations there are and when they are stable. We have already looked at $\hat{b}=\delta \mathbf{B}_\perp/B$. Now consider

$$
\frac{\delta B}{B} = \frac{\delta B_\parallel}{B}
$$

From @eq:kmhd_induction_perturb, we have the perpendicular compression increases B:

$$
\omega\frac{\delta B}{B} = \mathbf{k}_\perp\cdot\delta\mathbf{u}_\perp
$$

Take $\mathbf{k}\cdot$ @eq:kmhd_momentum_perturb:

$$
\omega\rho\mathbf{k}_\perp\cdot\delta\mathbf{u}_\perp = \rho\omega^2 \frac{\delta B}{B} = k_\perp^2\Big( \delta p_\perp + \frac{B\delta B}{\mu_0} \Big) + k_\parallel^2\Big( p_\perp - p_\parallel + \frac{B^2}{\mu_0} \Big) \frac{\delta B}{B}
$$ {#eq:kmhd_momentum_perturb_perp}

Note the $p_\perp$ term here: we need kinetic theory to calculate this!

TO BE CONTINUED...
