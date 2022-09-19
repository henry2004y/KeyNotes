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
$$ {#eq:kmhd_cylindrical_vspace}

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

We still need the kinetic equation to calculate $f_s$ --- this kinetic equation will need to be somewhat reduced to solve for the lowest-order, gyrotropic PDF $f_s(w_\perp, w_\parallel)$. In pursuit of instant justification, we can postpone doing this and first derive some results that do not need the $f_s$ equation (i.e. the Firehose instability) in @sec:firehose. For mirror modes, let us continue on the kinetic equation

$$
\Omega_s\Big( \frac{\partial f_s}{\partial\theta} \Big)_{w_\perp, w_\parallel} = \frac{d f_s}{dt} + \mathbf{w}\cdot\nabla f_s + \Big[ \frac{q_s}{m_s}\Big( \mathbf{E}+\frac{\mathbf{u}_s\times\mathbf{B}}{c} \Big) - \frac{d\mathbf{u}_s}{dt} \Big]\cdot\frac{\partial f_s}{\partial\mathbf{w}} - C(f_s)
$$

To the lowest order,

$$
\Big( \frac{\partial f_s^0}{\partial\theta} \Big)_{w_\perp, w_\parallel} = 0
$$

To the first order,

$$
\Omega_s\Big( \frac{\partial f_s^1}{\partial\theta} \Big)_{w_\perp, w_\parallel} = \frac{d f_s^0}{dt} + \mathbf{w}\cdot\nabla f_s^0 + \Big[ \frac{q_s^0}{m_s}\Big( \mathbf{E}+\frac{\mathbf{u}_s\times\mathbf{B}}{c} \Big) - \frac{d\mathbf{u}_s}{dt} \Big]\cdot\frac{\partial f_s^0}{\partial\mathbf{w}} - C(f_s^0)
$$

When we integrate over $\theta$, the left-hand side is eliminated (???),

$$
\bigg\lvert \frac{d f_s}{dt} + \mathbf{w}\cdot\nabla f_s + (\mathbf{a}_s - \mathbf{w}\cdot\nabla\mathbf{u}_s)\cdot\frac{\partial f_s}{\partial\mathbf{w}} - C(f_s) \bigg\rvert_\theta = 0
$$

where $f_s = f_s(w_\perp,w_\parallel)$. To do this averaging, tranform variables $(t,\mathbf{r},\mathbf{w}) \rightarrow(t,\mathbf{r},w_\perp,w_\parallel,\theta)$. With

$$
\begin{aligned}
w_\parallel &= \mathbf{w}\cdot\hat{b}(t,\mathbf{r}) \\
w_\perp &= |\mathbf{w} - w_\parallel\hat{b}|
\end{aligned}
$$

and some algebras (to be filled in!!! Check online notes.), we have

$$
\frac{D f_s}{Dt} + \frac{1}{B}\frac{D B}{Dt}\frac{w_\perp}{2}\frac{\partial f_s}{\partial w_\perp} + \Big( \frac{q_s}{m_s}E_\parallel - \frac{D\mathbf{u}_s}{Dt}\cdot\hat{b} - \frac{w_\perp^2}{2}\frac{\nabla_\parallel B}{B} \Big)\frac{\partial f_s}{\partial w_\parallel} = C(f_s)
$$

where

$$
D/Dt = d/dt + w_\parallel \hat{b}\cdot\nabla = \partial/\partial t + \mathbf{u}_s\cdot\nabla + w_\parallel \hat{b}\cdot\nabla
$$

This is not terribly transparent and it is perhaps better to write this equation in different, "more physical" variables. Let

$$
f_s(w_\perp, w_\parallel) = F_s(\mu, \epsilon)
$$

where $\mu = m_sw_\perp^2/2B$ is the magnetic moment of a gyrating particle and $\epsilon=m_sw^2/2 = m_s(w_\perp^2+w_\parallel^2)/2$. Since $\mu$ is conserved when $\omega\ll\Omega_s$, $F_s$ satisfies

$$
\frac{D F_s}{Dt} + \Big[ m_sw_\parallel\Big( \frac{q_s}{m_s}E_\parallel - \frac{D\mathbf{u}_s}{Dt}\cdot\hat{b} \Big) +\mu\frac{dB}{dt} \Big]\frac{\partial F_s}{\partial\epsilon} = C(F_s)
$$ {#eq:kmhd_kinetic_1storder}

The first term is the total derivative in the guiding center coordinates. The second term is the accelaration by parallel electric field. The third term takes account of the fact that $\epsilon$ does not include the bulk velocity. The fourth term is the _betatron acceleration_ due to $\mu$ conservation (???):

$$
\begin{aligned}
\epsilon &= \mu B + \frac{m_sw_\parallel^2}{2} \\
\dot{\epsilon} &= \mu \dot{B}
\end{aligned}
$$

$E_\parallel$ is determined by imposing $\sum_s q_s n_s = 0$.

## Firehose Instability: Linear Theory {#sec:firehose}

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

Note the $p_\perp$ term here: we need kinetic theory to calculate this! Fortunately we have @eq:kmhd_kinetic_1storder ready for calculating

$$
\delta p_\perp = \int d\mathbf{w}\frac{m_sw_\perp^2}{2}\delta f_s(w_\perp, w_\parallel)
$$

$\delta f_s(w_\perp, w_\parallel)$ can be obtained by calculating $F_s(\mu,\epsilon)$ and transforming back to $w_\perp,w_\parallel$.

There is a cute subtlety: our macroscopic scale ???, around which we are expanding the distribution is

$$
F_{os}(\mu,\epsilon) = f_{0,s}(w_\perp,w_\parallel) = f_{0,s}\Big( \sqrt{\frac{2B_0\mu}{m_s}},\sqrt{\frac{2(\epsilon-\mu B_0)}{m_s}} \Big)
$$

which contains $B_0$ the unperturbed magnetic field. $\mu$ in $F_0$ contains $B_0+\delta B$, and this has to be taken into account when transforming to $w_\perp,w_\parallel$. Now when we perturb everything:

$$
\begin{aligned}
F_s(\mu,\epsilon) &= F_{0s}(\mu,\epsilon) + \delta F_s \\
&= f_{0s}(w_\perp,w_\parallel) + \delta f_s \\
&= f_{0s}\Big( \sqrt{\frac{2\mu(B_0+\delta B)}{m_s}},\sqrt{\frac{2[\epsilon-\mu(B_0+\delta B)]}{m_s}} \Big) + \delta f_s \\
&= f_{0s}\Big( \sqrt{\frac{2\mu B_0}{m_s}+\frac{2\mu}{m_s}\delta B},\sqrt{\frac{2(\epsilon-\mu B_0)}{m_s}} -\frac{2\mu}{m_s}\delta B \Big) + \delta f_s \\
&\approx f_{0s}\Big( \sqrt{\frac{2\mu B_0}{m_s}},\sqrt{\frac{2(\epsilon-\mu B_0)}{m_s}} \Big) + \frac{2\mu}{m_s}\delta B\Big(\frac{\partial f_{0s}}{\partial w_\perp^2}-\frac{\partial f_{0s}}{\partial w_\parallel^2} \Big) + \delta f_s
\end{aligned}
$$

Thus

$$
\delta f_s = \delta F_s - w_\perp^2\frac{\delta B}{B}\Big(\frac{\partial f_{0s}}{\partial w_\perp^2}-\frac{\partial f_{0s}}{\partial w_\parallel^2} \Big)
$$

If $f_{0s}$ is a bi-Maxwellian,

$$
f_{0s} = \frac{n_s}{\pi^{3/2}v_{\text{th}\perp s}^3}e^{-\frac{w_\perp^2}{v_{\text{th}\perp s}}-\frac{w_\parallel^2}{v_{\text{th}\parallel s}^2}}
$$

then this can be further written as

$$
\delta f_s = \delta F_s + w_\perp^2\frac{\delta B}{B}\frac{m_sn_s}{2}\Big(\frac{1}{p_{\perp s}} - \frac{1}{p_{\parallel s}} \Big) f_{0s}
$$

This then gives us

$$
\begin{aligned}
\delta p_{\perp s} &= \int d\mathbf{w}\frac{m_s w_\perp^2}{2}\delta f_s \\
&= \int d\mathbf{w}\frac{m_s w_\perp^2}{2}\delta F_s - \int d\mathbf{w}\frac{m_s w_\perp^4}{2}\Big(\frac{\partial f_{0s}}{\partial w_\perp^2}-\frac{\partial f_{0s}}{\partial w_\parallel^2} \Big)\frac{\delta B}{B} \\
&= \int d\mathbf{w}\frac{m_s w_\perp^2}{2}\delta F_s - 2\pi\int dw_\perp w_\perp d w_\parallel \frac{m_s w_\perp^4}{2}\Big(\frac{\partial f_{0s}}{\partial w_\perp^2}-\frac{\partial f_{0s}}{\partial w_\parallel^2} \Big)\frac{\delta B}{B} \\
&= \int d\mathbf{w}\frac{m_s w_\perp^2}{2}\delta F_s - 2 \int d\mathbf{w}\frac{mw_\perp^2}{2}f_{0s}\frac{\delta B}{B} + \int d\mathbf{w}\frac{m_s w_\perp^4}{2}\frac{\partial f_{0s}}{\partial w_\parallel^2}\frac{\delta B}{B} \\
&= \int d\mathbf{w}\frac{m_s w_\perp^2}{2}\delta F_s + \frac{\delta B}{B}\Big( 2p_{\perp s} - \frac{2 p_{\perp s}^2}{p_{\parallel s}} ds )
\end{aligned}
$$ {#eq:kmhd_pperp_perturb}

The $\delta F_s$ can be obtained by ignoring collisions and linearizing and Fourier-transforming @eq:kmhd_kinetic_1storder:

$$
\begin{aligned}
-i(\omega - k_\parallel w_\parallel)\delta F_s = - \Big[ m_sw_\parallel\Big( \frac{q_s}{m_s}E_\parallel - i(\omega-k_\parallel w_\parallel) \delta u_{\parallel s}\Big) -i\omega\mu\delta B \Big]\frac{\partial F_{0s}}{\partial \epsilon} \\
\delta F_s = -i\frac{w_\parallel q_s E_\parallel}{\omega-k_\parallel w_\parallel}\frac{\partial F_{0s}}{\partial \epsilon} - \delta u_{\parallel s}m_sw_\parallel\frac{\partial F_{0s}}{\partial\epsilon} - \frac{\omega}{\omega-k_\parallel w_\parallel}\mu\delta B\frac{\partial F_{0s}}{\partial\epsilon}
\end{aligned}
$$

The first term can be ignored if $\beta\gg 1$; otherwise $E_\parallel$ can be got by imposing $\sum_s q_s n_s = 0$. The second term can be shown (ADD IT!) to be equivalent to $\delta u_{\parallel s}\partial f_{0s}/\partial w_\parallel$, so this will not contribute to $\delta p_\perp$ because it integrates to 0. The third term can be written as

$$
\frac{\omega}{\omega-k_\parallel w_\parallel}\mu\delta B\frac{\partial F_{0s}}{\partial\epsilon} = \frac{\omega}{\omega-k_\parallel w_\parallel}\frac{w_\perp^2}{2}\frac{\delta B}{B}\frac{1}{w_\parallel}\frac{\partial f_{0s}}{\partial w_\parallel} = frac{\omega}{\omega-k_\parallel w_\parallel} w_\perp^2\frac{\delta B}{B}\frac{\partial f_{0s}}{\partial w_\parallel^2}
$$

Thus, the "relevant" part of $\delta F_s$ is

$$
\delta F_s = -frac{\omega}{\omega-k_\parallel w_\parallel} w_\perp^2\frac{\delta B}{B}\frac{\partial f_{0s}}{\partial w_\parallel^2}
$$

and its contribution to $\delta p_{\perp s}$ is

$$
\int d\mathbf{w}\frac{m_sw_\perp^2}{2}\delta F_s = \frac{\delta B}{B}\frac{\omega}{|k_\parallel|}\int\frac{dw_\parallel}{w_\parallel - \frac{\omega}{|k_\parallel|}} \Big[ \frac{\partial}{\partial w_\parallel^2}\int d\mathbf{w}_\perp \frac{m_sw_\perp^4}{2} f_{0s} \Big]
$$

Here we have $|k_\parallel|$ because if $k_\parallel <0$, we can change the variable $w_\parallel \rightarrow -w_\parallel$. This involves the Landau integral, which can be evaluated with the residual theorem @eq:residual_thm:

$$
\frac{1}{w_\parallel - \frac{\omega}{|k_\parallel|}} = P\frac{1}{w_\parallel - \frac{\omega}{|k_\parallel|}} + i\pi\delta\Big(w_\parallel - \frac{\omega}{|k_\parallel|} \Big)
$$

so

$$
\begin{aligned}
\int d\mathbf{w}\frac{m_sw_\perp^2}{2}\delta F_s &= \frac{\delta B}{B}\Big[ \cancel{\frac{\omega}{|k_\parallel|}P\int\frac{dw_\parallel}{w_\parallel - \frac{\omega}{|k_\parallel|}} \big[ ... \big]} + i\pi\frac{\omega}{|k_\parallel}\big[ ... \big]_{w_\parallel} \Big] 
\end{aligned}
$$

The first term is 0 when we assume $\omega\ll k_\parallel v_{\text{th}s\parallel}$; the second term must be kept because it is the lowest-order imaginary part which will lead to instability.

For a bi-Maxwellian,

$$
\Big[ \frac{\partial}{\partial w_\parallel^2}\int d\mathbf{w}_\perp\frac{m_sw_\perp^4}{2}f_{0s} \Big]_{w_\parallel=\omega/|k_\parallel|} = -\frac{2p_{\perp s}^2}{p_{\parallel s}}\frac{e^{-\frac{\omega^2}{k_\parallel^2 v_{\text{th}\parallel}^2}}}{\sqrt{\pi}v_{\text{th}\parallel}}
$$

The exponential term is nearly 1. If it is not a bi_Maxwellian, then we need to multiply by a coefficient $\sigma_s \sim 1$.

@eq:kmhd_pperp_perturb becomes (???)

$$
\delta p_{\perp s} = \frac{\delta B}{B}\Big[ 2p_{\perp s} - \frac{2p_{\perp s}^2}{p_{\parallel s}}\Big( \alpha_s + i\sqrt{\pi}\frac{\omega}{|k_\parallel|v_{\text{th}\parallel s}}\sigma_s \Big) \Big]
$$

This goes into @eq:kmhd_momentum_perturb_perp:

$$
\rho \omega^2 = k_\perp^2\frac{B^2}{4\pi}\Big[ \sum_s(1 - \frac{p_{\perp s}}{p_{\parallel s}}\alpha_s)\beta_{\perp s} - i\sum_s \sigma_s\frac{p_{\perp s}}{p_{\parallel s}}\beta_{\perp s}\sqrt{\pi}\frac{\omega}{|k_\parallel| v_{\text{th} \parallel s}} + 1 \Big] + k_\parallel^2 \frac{B^2}{4\pi}\Big[ \sum_s\frac{\beta_{\perp s}}{2}\big( 1 - \frac{p_{\parallel s}}{p_{\perp s}} \big) + 1 \Big]
$$

The left-hand side can be neglected because $\omega\ll k_\parallel v_{\text{th}\parallel}$. The electron thermal velocity $v_{\text{th}\parallel e}$ in the denominator can be neglected because $v_{\text{th}\parallel e} \gg v_{\text{th}\parallel i}$. The growth rate $\gamma$ is the imaginary part of $\omega$. Reorganize the last equation:

$$
\sigma_i\frac{p_{\perp i}}{p_{\parallel i}}\beta_{\perp i}\sqrt{\pi}\frac{\gamma}{|k_\parallel|v_{\text{th} i \parallel}} = \sum_s \Big(\frac{p_\perp s}{p_\parallel s}\alpha_s - 1 \Big)\beta_{\perp s} - 1 -\frac{k_\parallel^2}{k_\perp^2}\Big[ \sum_s\frac{\beta_{\perp s}}{2}\big( 1-\frac{p_{\parallel s}}{p_{\perp s}}\big) + 1 \Big]
$$ {#eq:kmhd_mirror_growth}

where $\Lambda\equiv \sum_s \Big(\frac{p_\perp s}{p_\parallel s}\alpha_s - 1 \Big)\beta_{\perp s} - 1$ triggers instability if this is positive:

$$
\sum_s \Big(\frac{p_\perp s}{p_\parallel s}\alpha_s - 1 \Big)\beta_{\perp s} > 1
$$

Examining where this comes from, we see that this amounts to $\delta p_\perp$ modifying the magnetic pressure force and turn it from positive to negative:

$$
\delta p_\perp + \frac{B\delta B}{4\pi} = \frac{B\delta B}{4\pi}\Big[ \underbrace{1}_{\text{B pressure}} - \underbrace{\sum_s\Big( \frac{p_{\perp s}}{p_{\parallel s}}\alpha_s - 1 \Big)\beta_{\perp s}}_{\substack{\text{non-resonant} \\ \text{particle pressure}}} + \underbrace{...}_{\substack{\text{resonant particle} \\ \text{pressure}}} \Big]
$$

Thus, fundamentally, pressure anisotropy makes it easier to compress or rarefy magnetic field --- and things become unstable when the sign of the pressure flips and it becomes energetically profitable to create compressions and rarefications. The dispersion relation @eq:kmhd_mirror_growth is basically a statement of pressure balance between the magnetic pressure, the non-resonant particle pressure $\delta p_\perp$ and the resonant particle pressure $\propto\gamma$, which came from the _betatron acceleration_ $\mu dB/dt$ in @eq:kmhd_kinetic_1storder.

The betatron acceleration term refers to what happens in the stable case. When magnetic pressure opposes formation of $\delta B$ perturbations (say, troughs), to compensate it, we must have $\gamma<0$ and energy goes from $\delta B$ to resonant particles, which are accelerated by the mirror force. The corresponding decaying of $\delta B$ is the well-known _Bosues damping_ (landau damping of "mirror field", Bosues 1966, also known as transit-time damping from Stix's book. See more discussion on the physics in Southwood & Kivelson 1993.) 

TO BE CONTINUED...
