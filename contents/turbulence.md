# Turbulence {#sec:turbulence}

Small fluctuations in plasmas lead to turbulence, and turbulent eddies can very effectively transport heat from the hot core across confining magnetic field lines out to the cooler plasma edge. Predicting this phenomenon of turbulent-transport is essential for solar wind study and the understanding and development of fusion reactors.

MAKE THE PLOT!!!

## MHD

Nunov highly recommended a review [@schekochihin_2022].

Elsässer variables are used to extract the Alfvénic component from MHD. They are defined as

$$
\begin{aligned}
\mathbf{z}^+ &= \mathbf{v} + \mathbf{b} \\
\mathbf{z}^- &= \mathbf{v} - \mathbf{b}
\end{aligned}
$$

where $\mathbf{b} = \mathbf{B}/\sqrt{\mu_0\rho}$.

The perturbations are written as

$$
\begin{aligned}
\delta\mathbf{z}^+ &= \delta\mathbf{v} + \delta\mathbf{b} \\
\delta\mathbf{z}^- &= \delta\mathbf{v} - \delta\mathbf{b}
\end{aligned}
$$

$\mathbf{z}^\pm$ corresponds to anti-parallel/parallel propagating modes:

* Parallel wave: $\delta\mathbf{v}=-\delta\mathbf{b}\Rightarrow \delta\mathbf{z}^+=0, \delta\mathbf{z}^-=2\delta\mathbf{v}$
* Anti-parallel wave: $\delta\mathbf{v}=\delta\mathbf{b}\Rightarrow \delta\mathbf{z}^+=2\delta\mathbf{v}, \delta\mathbf{z}^-=0$

The incompressible MHD wave equation in fluctuating Elsässer form is:

$$
\frac{\partial\delta\mathbf{z}^\pm}{\partial t} \mp v_A\nabla_\parallel\delta\mathbf{z}^\pm + \delta\mathbf{z}^\mp\cdot\nabla\delta\mathbf{z}^\pm = -\nabla p
$$ {#eq:mhd_elsassar}

$$
\nabla\cdot\delta\mathbf{z}^\pm = 0
$$ {#eq:elsassar_divergence}

The zero divergence means that there are no forcing or dissipation terms. 

@eq:mhd_elsassar unveils the interesting phenonmena in Alfvénic turbulence study. The second term on the left-hand side is a linear term ($v_A$ constant?) that represents propagation of waves parallel to the mean field. The third term represent the non-linear interaction of counter-propagating waves, during which energy is transferred to smaller scales. This is exactly turbulence.

### Critical balance

If we match the Alfvén (linear) timescale, $\tau_A \sim l_\parallel/v_A$, with the nonlinear timescale, $\tau_{nl}\sim l_\perp/\delta z$, we have the so-called _critical balance_

$$
\tau_A = \tau_{nl}
$$

Assume a constant energy cascade rate $\epsilon\sim \delta z^2/\tau_{nl}$, and an energy injection rate at scale L $\epsilon_L\sim v_A^2/\tau_{nl}=v_A^3/L$. When we match the two rates and ... (I have some memory from Nunov's lecture at Nordita), we have $k_\parallel\propto k_\perp^{2/3}$. This means that anisotropy grows with decreasing scale. The power spectra are given as

$$
\begin{aligned}
E(k_\perp) &\propto k_\perp^{-5/3} \\
E(k_\parallel) &\propto k_\parallel^{-2}
\end{aligned}
$$

The critical balance scalings were seen in observations when analysed with local mean field techniques [Chen 2016]. However, why this is the case in nature is still under debate.

### Residual Energy

Residual energy is the difference in energy between magnetic and velocity fluctuations. The normalized residual energy is

$$
\sigma_r = \frac{|\delta\mathbf{v}|^2 - |\delta\mathbf{b}|^2}{|\delta\mathbf{v}|^2 + |\delta\mathbf{b}|^2}
$$ {#eq:residual_energy_normalized}

$\sigma_r$ is zero for an Alfvén wave but is generally negative ($|\delta\mathbf{b}|^2 > |\delta\mathbf{v}|^2$) at MHD scales for solar wind observations, meaning that they are mostly likely turbulence but not waves.

### Normalized Cross Helicity {#sec:turbulence_cross_helicity}

Cross helicity is the difference in energy between $\mathbf{z}^+$ and $\mathbf{z}^-$ fluctuations (@sec:cross_helicity). The normalized cross helicity is

$$
\sigma_c = \frac{|\delta\mathbf{z}^+|^2 - |\delta\mathbf{z}^-|^2}{|\delta\mathbf{z}^+|^2 - |\delta\mathbf{z}^-|^2} = \frac{2\delta\mathbf{v}\cdot\delta\mathbf{b}}{|\delta\mathbf{v}|^2 + |\delta\mathbf{b}|^2}
$$ {#eq:cross_helicity_normalized}

* $|\sigma_c|=1$: unidirectional Alfvén waves (no turbulence)
* $|\sigma_c|\lesssim 1$: imbalanced turbulence
* $|\sigma_c|=0$: balanced turbulence (or non-Alfvénic fluctuations)

The solar wind is typically imbalanced towards the anti-sunward direction. From @eq:residual_energy_normalized and @eq:cross_helicity_normalized we can easily see that

$$
\sqrt{\sigma_r^2 + \sigma_c^2} \le 1
$$

The observed distribution is shown in @fig:turbulence_residual_energy_cross_helicity. Note, however, $\sigma_r$ depends on how you evaluate $\delta{b}$. In the MHD case $\mathbf{b} = \mathbf{B}/\sqrt{\mu_0\rho}$ is used, but in the kinetic case there will be an extra coefficient. The results look pretty different!

![Solar wind normalized residual energy and cross helicity statistics from Chen+ 2013.](images/solarwind_residual_energy_cross_helicity.png){#fig:turbulence_residual_energy_cross_helicity}

## Solar Wind Turbulence

### Taylor's Hypothesis

Solar wind is a supersonic flow ($v_A/v_{\text{SW}}\ll 1$), with advection timescale much shorter than any dynamical timescales in the plasma. This means that for spacecraft observations, the time series represents an instantaneous spatial cut through the solar wind plasma. We can thus relate spacecraft frequency, $f_{\text{sc}}$, to wavenumber in the plasma frame, $k$, in a simple way via

$$
k = \frac{2\pi f_\text{sc}}{v_\text{SW}}
$$

This is often not appropriate in the magnetosheath, and modified Taylor’s hypothesis is required close to the Sun.

![Wave scale from typical L1 satellite solar wind observation.](images/turbulence_par_perp_L1.png){#fig:turbulence_v_b}

The wavenumber $k$ determined from Taylor's hypothesis is really the flow-aligned component of $\mathbf{k}$. For a given angle $\theta_{vb}$, one cannot distinguish $k_\perp$ and $k_\parallel$; these can be possibly measured for small ($\sim 0^o$ for $k_\parallel$) and large ($\sim 90^o$ for $k_\perp$) at different times. In the solar wind, $P(k_\perp) \gg P(k_\parallel)$, where $P$ is the power of perturbation. For a Parker spiral-like magnetic field at 1 AU, the angle between $\mathbf{B}_0$ and $\mathbf{v}_\text{sw}$ is rarely small ($\sim 45^o$), the power spectra are typically dominated by the contribution from the $k_\perp$ fluctuations (@fig:turbulence_v_b).

### Solar Wind Power Spectrum

![Solar wind power spectrum from Kiyoni+, 2015.](images/solarwind_power_spectrum.png){#fig:solarwind_power_spectrum}

When we plot the solar wind power spectrum ($\delta|\mathbf{B}|$), it is usually representative of $k_\perp$. There are three distinct power-law ranges in the spectrum from spacecraft solar wind observations (@fig:solarwind_power_spectrum):

* Injection range:
  * Large amplitude, low frequency Alfvén waves originating from the Sun.
  * The $f^{-1}$ spectrum is known as the "pink noise".
  * Non-interacting
  * Inject energy to the MHD cascade at higher frequencies
* Inertial range:
  * Mostly incompressible Alfvénic turbulence.
  * $\sim f^{-5/3}$ spectrum (Kolmogorov type)
  * a cascade of energy to smaller scales
* Kinetic range:
  * Scales at which particles are heated
  * Typically $f^{-2.8}$ spectrum
  * Possibly KAW (@sec:kaw) or whistler mode (@sec:CPDR) turbulence

When we move to smaller scales, anisotropy increases. This is demonstrated in @fig:turbulence_scale as a result of $k_\perp \gg k_\parallel$, which is also why gyrokinetics is the theory for turbulence.

![Demonstration of parallel and perpendicular length scales of turbulence.](images/turbulence_par_perp_scale.png){#fig:turbulence_scale}

Fluctuation modes in the inertial range consists of 90% incompressible (Alfvén) modes and 10% compressible slow/mirror modes. Alfvénic turbulence is thought to be passive to the compressive modes: compressive modes scatter off Alfvén modes without affecting them significantly (i.e. being decoupled from each other). The compressive modes are expected to damp $\sim k_\parallel v_A$. Since $k_\perp \gg k_\parallel$, the damp is not significant for compressive modes, so they tend to be more anisotropic than the Alfvénic turbulence.
