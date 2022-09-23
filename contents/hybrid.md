# Hybrid Methods {#sec:hybrid}

## Classical Hybrid Model

Define the electric charge density $\rho$ and current density $\mathbf{J}$ as

$$
\rho = \sum_s q_s n_s - en_e
$$

$$
\mathbf{J} = \sum_s q_s n_s \mathbf{V}_s - e n_e \mathbf{V}_e
$$

where $q_s, n_s, \mathbf{V}_s$ are the charge, number density and bulk velocity of ion species s calculated by taking moments of the distribution function

$$
n_s = \int d^3 v f_s(\mathbf{r}_s,\mathbf{v}_s,t)
$$

$$
\mathbf{V}_s = \int d^3 v \mathbf{v}_s f_s(\mathbf{r}_s,\mathbf{v}_s,t)
$$

or in the corresponding discrete forms where the distribution function is represented as a group of macro-particles with a specific shape function. In this way it behaves more like a particle cloud.

The crucial assumption in the hybrid model is the _quasi-neutrality_, that is, the electrons move fast enough to cancel any charge-density fluctuations and $\rho=0$ is always satisfied. By assuming quasi-neutrality, we can

* avoid solving the conservation equations for electrons
* avoid solving the Maxwell's equations entirely and instead use the generalized Ohm's law instead

The electron density thus can be written by using ion densities $n_e \approx n_i \equiv \sum_s q_s n_s /e$.
In addition, the electron bulk velocity may also be eliminated using Ampère's law

$$
\mathbf{J} = \mu_0\nabla\times\mathbf{B}
$$

and the relation

$$
\mathbf{v}_e = \mathbf{v}_i - \mathbf{J}/n_e e
$$ {#eq:hybrid_Je}

The basic equations used in the conventional PIC hybrid model first has a particle pusher for individual ions 

$$
\frac{d\mathbf{x}_j}{dt} = \mathbf{v}_j
$$

$$
\frac{d\mathbf{v}_j}{dt} = \frac{q_j}{m_j}\big( \mathbf{E} + \mathbf{v}_j \times \mathbf{B} \big)
$$

where the subscript $j$ and $e$ indicate the indices for individual ions and the electron fluid and other notations are standard. The lowercase velocities are velocities for each macro-particle.

Alternatively, if we rely on a Vlasov system, we directly solve for the distribution function $f(\mathbf{r}_s, \mathbf{v}_s, t)$ from the Vlasov equation

$$
\frac{\partial f_s}{\partial t} + \mathbf{v}_s\frac{\partial f_s}{\partial \mathbf{r}_s} + \mathbf{a}_s\cdot \frac{\partial f_s}{\partial \mathbf{v}_s} = 0
$$

where

$$
\mathbf{a}_s = \frac{q_s}{m_s}(\mathbf{E}+\mathbf{v}_s\times\mathbf{B})
$$

The generalized Ohm's law is used to determine the time evolution of the electric field, derived from the electron momentum equation assuming $m_e \rightarrow 0$,

$$
\mathbf{E} = - \mathbf{V}_i \times \mathbf{B} + \frac{1}{n_i e}(\nabla\times\mathbf{B})\times\mathbf{B} - \frac{1}{n_i e}\nabla\cdot\overleftrightarrow{P}_e + \eta \mathbf{J}
$$

where the current in the Hall term has already been replaced by the curvature of B. The last term can either represent collision/physical resistivity, or artificial resistivity/numerical diffusion.

The magnetic fields evolve according to Faraday's law

$$
\frac{\partial \mathbf{B}}{\partial t} = -\nabla\times\mathbf{E}
$$

Finally, by determining the electron pressure tensor by using an appropriate equation of state, the evolution of the system can be followed in time. For example, let $\overleftrightarrow{P}_e = P_e \overleftrightarrow{I}$ where $P_e$ is the isotropic scalar electron pressure. In the simplest form

$$
P_e = n_e k_B T_e
$$

where $n_e \approx n_i$ and $T_e=T_i$. Note however in a plasma electron pressure is usually higher than ion temperature, so this is a very crude assumption. Another commonly used assumption is an adiabatic process

$$
P_e = n_e^\gamma k_B T_e
$$

where $\gamma=5/3$ is the adiabatic index for a monatomic ideal gas.

## Finite Electron Inertia

The conventional hybrid simulation model dealing with kinetic ions and a massless charge-neutralizing electron fluid is known to be susceptible to numerical instability due to divergence of the whistler-mode wave dispersion, as well as division-by-density operation in regions of low density. The Alfvén wave at short wavelength comparable to ion inertia length has dispersion due to the decoupling between ion and electron dynamics. There thus appears the whistler mode whose frequency diverges as $\omega \propto k^2$. This means that the maximum phase velocity in the system increases rapidly without bound, implying numerical difficulty. The division-by-density issue originates from @eq:hybrid_Je and appears in the Hall and electron pressure gradient terms. Consequently, a pure vacuum region is not allowed to exist in the simulation domain unless some ad hoc technique is used.

The finite electron inertia correction is proposed to solve the whistler-mode wave dispersion issue. The conventional way to include a finite electron inertia correction into the hybrid model is to introduce the following so-called generalized electromagnetic field $\widehat{\mathbf{E}}, \widehat{\mathbf{B}}$, defined as

$$
\widehat{\mathbf{E}} = \mathbf{E} - \frac{\partial}{\partial t}\big( \frac{c}{\omega_{pe}^2}\nabla\times\mathbf{B} \big)
$$

$$
\widehat{\mathbf{B}} = \mathbf{B} + \nabla\times\big( \frac{c^2}{\omega_{pe}^2}\nabla\times\mathbf{B} \big)
$$

in which the terms proportional to $\nabla\times\mathbf{B}$ represent electron inertia correction.

From the equation of motion for the electron fluid, it may be shown that

$$
\widehat{\mathbf{E}} = - \mathbf{V}_i \times \mathbf{B} + \frac{1}{n_i e}(\nabla\times\mathbf{B})\times\mathbf{B} - \frac{1}{n_i e}\nabla\cdot\overleftrightarrow{P}_e - \frac{m_e}{e}(\mathbf{V}_e\cdot\nabla)\mathbf{V}_e
$$

which is similar to the generalized Ohm's law but now with the last term which also represents the correction. $\mathbf{V}_e$ is obtain from @eq:hybrid_Je.

Given the generalized electric field $\widehat{\mathbf{E}}$, one can advance the generalized magnetic field $\widehat{\mathbf{B}}$ by using Faraday's law, which can be easily checked to satisfy

$$
\frac{\partial \widehat{\mathbf{B}}}{\partial t} = -\nabla\times\widehat{\mathbf{E}}
$$

Further simplifications are commonly adopted; for example, the electric field correction term and electron-scale spatial variation of density are often ignored. In this case, the magnetic field may be recovered by solving the equation

$$
\widehat{\mathbf{B}} = \big( 1 - \frac{c^2}{\omega_{pe}^2}\nabla^2 \big)\mathbf{B}
$$

and $\widehat{\mathbf{E}} = \mathbf{E}$ is assumed. The nice feature with this approach is that the correction can be implemented as a post process to the each integration step of a standard procedure.

## Low Density Treatment

Apparently new methods are still being proposed because the inclusion of electron inertia term along cannot solve all the issues. [Amano+, 2014](https://doi.org/10.1016/j.jcp.2014.06.048) suggests another way to solve for the electric field

$$
(\omega_{pe}^2 - c^2\nabla^2)\mathbf{E} = \frac{e}{m_e}\big( \mathbf{J}_e \times\mathbf{B} - \nabla\cdot\overleftrightarrow{P}_e \big) + (\mathbf{V}_e\cdot\nabla)\mathbf{J}_e + \eta\mathbf{J}
$$

which can be reduced to the Laplace equation in near-vacuum region, presenting no numerical difficulty.

Besides, the electron velocity is redefined

$$
\mathbf{V}_e = \frac{\mathbf{J}_e}{\text{max}(\rho_e, \rho_{e,min})}
$$

where the minimum density $\rho_{e,min}$ is an artificially set value.

In a hybrid system, the maximum phase velocity is the electron Alfvén speed, which goes to infinity when $m_e \approx 0$. However, when doing calculations we only have ion Alfvén speed

$$
v_{p,max} \simeq \frac{1}{2}\frac{B}{\sqrt{\mu_0 n_e m_e}} = \frac{1}{2}V_{A,i} \sqrt{\frac{m_i}{m_e}}
$$

To keep the maximum phase velocity always below the CFL condition, one may use a modified electron mass ratio $m_e^\prime$ defined as

$$
\frac{m_e^\prime}{m_i}=\text{max}\Big( \frac{m_e}{m_i}, V_A^2\big( \frac{\Delta t}{2\alpha \Delta x} \big)^2 \Big)
$$

instead of the physical electron mass $m_e$. Here $V_A$ is the Alfvén speed calculated from the local density and magnetic field, and $\alpha$ is the maximum allowed Courant number ($\le 0.5$).
