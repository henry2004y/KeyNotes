# Kinetic MHD {#sec:kmhd}

This is taken from the hand-written lecture notes from Prof. Alexander Schekochihin.

We start by showing how for magnetized, weakly collisional plasmas ($\nu_\text{colli} \ll \Omega_s$, $r_L\ll \lambda_\text{mfp}$, where $\lambda_\text{mfp}$ is the mean free path), low-frequency ($\omega \ll \Omega_s$), long-wavelength ($kr_L\ll 1$) dynamics can be decided by a set of equations that look almost like the familiar MHD. We will see later on that the ways in which they are not MHD will profoundly affact the dynamics --- indeed we do not fully understand the full implication of this in high-$\beta$ plasmas. This is consequently one of the frontier topics in theoretical plasma astrophysics.

Let us start from first principles. Any plasma that is going to be of interest to us is described by the Vlasov-Maxwell-Landau system of equations:

$$
\frac{\partial f_s}{\partial t} + \mathbf{v}\cdot\nabla f_s + \frac{q_s}{m_s}\Big[\mathbf{E} + \mathbf{u}\times\mathbf{B} \Big]\frac{\partial f_s}{\partial\mathbf{v}} = C(f_s)
$$

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

The second term is small since $kr_s/M_a \ll 1$(???Ask!), the third term is small since $\nu_s/\Omega_s\ll 1$, and the fourth term is small since $\omega/\Omega_s\ll 1$. This means that $\mathbf{u}_s = \mathbf{E}\times\mathbf{B}/B^2 = \mathbf{u}_\perp$, the perpendicular component of the velocity is the same for all species. Then we get the induction equation from Faraday's law:

$$
\frac{\partial\mathbf{B}}{\partial t} = \nabla\times(\nabla\times\mathbf{B})
$$ {#eq:kmhd_induction}

The three equations we have so far are very similar to MHD, except for the pressure tensor. Obviously, all the kinetic magic is hidden in $\mathbf{P}$.

TO BE CONTINUED...
