# Magnetosphere {#sec:magnetosphere}

The big picture when considering the interaction of the solar wind and the magnetosphere is as follows:

1. Is there something that can penetrate from the solar wind into the magnetosphere?
2. Is there something that can be triggered from the interaction?
3. Is a physical process internally or externally driven?

## ULF Waves

Ultra-low frequency (ULF) waves refer to waves within frequency range [0.001, 10] Hz. The name does not tell us anything about their physical origin, but simply observational fact. At Earth's magnetosphere, this frequency range overlaps largely with the MHD waves. This is the reason why early pioneers in space physics relied on MHD theory for large spatial and temporal scales to explain the physics behind these waves, albeit some deviations and deficiencies which require more refined models such as the Vlasov description. ULF waves permeate the near-Earth plasma environment and play an important role in its dynamics, for example in transferring energy from the solar wind to the magnetosphere or accelerating electrons in the Earth’s radiation belts.

ULF waves were originally called micropulsations or magnetic pulsations since they were first observed by ground magnetometers. ULF pulsations are classified into two types: *pulsations continuous (Pc)* and *pulsations irregular (Pi)* with several subclasses (Pc1–5 and Pi1–2) according to their frequencies and durations. The division is based on their physical and morphological properties, and the boundaries are not strict.

| Notation | Period Range [s] | Property    |
|----------|------------------|-------------|
| Pc1      | 0.2 - 5          | EMIC        |
| Pc2      | 5 - 10           | EMIC, Mirror|
| Pc3      | 10 - 45          | Foreshock, FLR, Mirror |
| Pc4      | 45 - 150         | FLR         |
| Pc5      | 150 - 600        | SW, FLR     |
|          |                  |          |
| Pi1      | 1 - 40           |          |
| Pi2      | 40 - 150         |          |

With respect to polarization, field line resonant ULF waves can be categorized into three modes: *compressional* ($\Delta B_\parallel,\, \Delta E_\phi$), *poloidal* ($\Delta B_r,\, \Delta E_\phi$), and *toroidal* ($\Delta B_\phi,\, \Delta E_r$). Here, $B_r$ ($E_r$), $B_\parallel$, and $B_\phi$ ($E_\phi$) are the radial, parallel (or compressional), and azimuthal components in the local magnetic field system, respectively. Referring to the basic MHD theory, the compressional modes are fast modes, whereas the poloidal and toriodal modes are Alfvén modes. The perturbed EM fields are related by $\mathbf{B}_1 = \frac{\mathbf{k}}{\omega} \times \mathbf{E}_1$. Think of a closed field line near the equatorial plane inside the magnetosphere: if the wave vector $\mathbf{k}$ is along the field line, i.e. $\mathbf{k} = (0,0,k_z)$, then there will be two cases for the EM field: poloidal where $\mathbf{E}_1$ in $\hat{\phi}$, $\mathbf{B}_1$ in $\hat{r}$ and toroidal where $\mathbf{E}_1$ in $\hat{r}$, $\mathbf{B}_1$ in $\hat{\phi}$. If the wave vector $\mathbf{k}$ is perpendicular to the field line, i.e. $\mathbf{k} = (k_x, 0, 0)$, since there is no $E_\parallel$ in MHD, we only have one option $\mathbf{E}_1$ in $\hat{\phi}$ and $\mathbf{B}_1$ in $\hat{z}$. A phase shift is allowed, and actually in real observations (e.g. THEMIS) it is rare that you can find B and E changing in-phase.

### Pc1 & Pc2

* Usually observed in the noon-afternoon MLT sector, easily detectable when following sudden impulses (SI) produced by sudden changes in the pressure of the solar wind plasma.
* A sudden compression of the magnetosphere by increased solar wind pressure causes maximum distortion of the quiet magnetospheric plasma near noon at high latitudes. It is on the fieldlines which thread this disturbed plasma that one is most likely to witness ULF emissions.
* Conversely, as suggested by Hirasawa (1981) sudden rarefactions of the magnetosphere would be expected to quench ULF wave growth by reducing the anisotropy and $\beta$ of the plasma. (INTERESTING ONE, SHOULD CHECK AT SOMETIME!)
* Delay of 1-3 mins between the occurance of SI and the onset of the ULF emission (ground-based magnetometers)[^growth_rate]
* Drive the trapped proton radiation, greatly enhanced eV energy range protons along the B field, and energization of keV range protons caused by betatron acceleration [@arnoldy2005pc].

At Earth, Electromagnetic ion cyclotron (EMIC) waves are typically observed in Pc1 and Pc2 range. In the outer radiation belt, the frequency typically ranges between 0.1 to 5 Hz. The characteristic fine structure appearance of "pearl" Pc1 waves was attributed to dispersive field-aligned wave packet propagation in the LH ion mode on successive bounces between hemispheres. However, this still lacks observation support. Spacecraft measurements have shown that EMIC wave propagation is almost exclusively away from the equator at latitudes greater than about $11^o$, with minimal reflection at the ionosphere.

The preferential region of occurrence of EMIC waves is known to be the afternoon magnetic local time (MLT) sector from ∼12:00 to ∼18:00 MLT in the region near the plasmapause and the plasmaspheric plume.

__Mirror Instability & Ion Cyclotron Instability__

Already, early observations in the 1970s have shown that the magnetosheath is populated by intense magnetic field fluctuations at time sclaes from 1 s to 10 s of seconds. Later research based primarily on data from ISEE and AMPTE satellites has shown that the mirror mode waves (@sec:mirror) and kinetic Alfvén ion cyclotron (AIC) waves (i.e. EMIC waves) constitute a large majority of magnetosheath ULF waves:

1. AIC/EMIC are found predominantly near the bow shock and in the plasma depletion layer[^PDL] [@song1994identification], [@hubert1998nature].
2. Mirror mode waves dominate in the central and downstream magnetosheath but can occur immediately downstream of quasi-perpendicular shocks too. [@hubert1989observation]
3. ULF waves are generally stronger in the dayside magnetosheath.
4. More frequency EMIC wave occurrence during quasi-parallel shocks.

[^PDL]: The plasma depletion layer (PDL) is a layer on the sunward side of the magnetopause with lower plasma density
and higher magnetic field compared to the corresponding upstream magnetosheath value.

The ion cyclotron instability responsible for the generation of AIC waves often grows under the same conditions as the mirror instability and in the linear approximation should dominate in lower $\beta$ plasmas. The mirror instability, on the other hand, should dominate in high ion $\beta$ plasmas [@lacombe1995waves]. Since the initial confirmation of the existence of mirror modes in the Earth's magnetosheath, they have been observed throughout the heliosphere. A long-standing puzzle in space plasmas is the fact that _mirror modes are often the dominant coherent magnetic structures even for low $\beta$ plasmas_.

![Mirror mode waves vs. EMIC waves in the magnetosphere.](images/mirror_vs_emic_wave.png){#fig:mirror_vs_emic}

People tried to find an answer to this puzzle. A bunch of studies in late 1980s and early 1990s (e.g. [Gary+]) argued that the presence of $\text{He}^{++}$ tends to increase the EMIC threshold while the mirror mode growth is less affected by the presence of $\text{He}^{++}$ ions. Yoshiharu Omura and his student Shoji presented another possibility in 2009 with hybrid PIC simulations that even though EMIC modes have higher linear growth rate, they saturates an an earlier stage than the mirror modes, especially in higher dimensions (by comparing 2D and 3D results), so that mirror mode waves can gain more free energy from temperature anisotropy.

### Pc3 & Pc4

As already noted above, in the beginning when people proposed the ULF wave Pc divisions, many underlying physics are still unclear. The boundaries are chosen based on the observation data back then and does not necessarily contain any physical meaning.

ULF waves in the Pc3 range, with periods between 10-45 s, are a common feature of the dayside magnetosphere, where they are frequently observed both by spacecraft and ground-based observatories. They are thought to originate from the ion foreshock, extending upstream of the Earth’s quasi-parallel bow shock (the angle between IMF and shock normal $\theta_{Bn}\le 45^o$). There, ULF waves in the Pc3 frequency range are produced by _ion beam instabilities_, due to the interaction of shock-reflected suprathermal ions with the incoming solar wind.

For the foreshock-related Pc3/4 waves, we have the following picture. After foreshock waves are generated, they propagate through the magnetosheath (with very few observations) and reach the magnetopause. They enter the dayside magnetopause and travel antisunward into the magnetosphere as compressional Pc3 fluctuations, transporting the wave energy towards the nightside. In the inner magnetosphere, they may couple to Alfvénic field line resonances (FLRs), where their frequency matches the eigenmodes of the Earth’s magnetic field lines. Pc3 FLRs was observed at low latitudes and Pc4 at midlatitudes [Yumoto+, 1985]. The amplitude of the compressional mode decays when moving further into the magnetosphere, yet they can sometimes be observed all the way to the midnight sector. Compressional Pc3 wave power associated with transmitted foreshock waves is confined near the equator. Statistical study also shows that equatorial Pc3 wave power is stronger in the prenoon or noon sector (under various geomagnetic activity levels), consistent with the foreshock extending upstream of the dawn flank bow shock for a Parker-spiral IMF orientation. However, contrary to Pc5 pulsations (150-600 s), Pc3 wave activity does _not_ show a clear correlation with the level of geomagnetic disturbances.

Also, note that not all Pc3 waves are related to foreshock waves, thus we may have different survey results about the distribution of Pc3 waves. This hints the fact that we are far from understanding the whole physical mechanism of wave generation.

There are several mechanisms by which Pc3-4 ULF waves may propagate to high latitudes:

* Harmonics of fundamental mode Pc5 resonances. Such harmonics would be expected to exhibit the same form of amplitude and phase properties that characterize FLRs and should occur at the same time as the fundamental.
* Cavity modes (@sec:flr).
* Fast mode waves propagate without mode conversion through the magnetosphere directly to the ionosphere. Such waves are subject to refraction and diffraction on their passage through the magnetosphere and may be directed to high latitudes via Fermat's Principle (???).
* Transistor model that invokes beams of precipitating _electrons_ [Engebretson+ 1991] (???). The transistor model requires no wave mode coupling or wave propagation across field lines, rather the modulated precipitation of electrons in response to pressure fluctuations in the magnetosheath. The latter are attributed to the upstream ion-cyclotron resonance mechanism. The modulated electron beams convey wave information from the outer magnetosphere region containing the parent population of trapped electrons, to the near-cusp ionosphere. The resultant periodic precipitation would modulate the ionospheric conductivity and hence ionospheric currents equatorward of the cusp. Overhead field lines could then be excited by these modulated currents equatorward of the cusp, with the same frequency as the modulated electrons. Engebretson likened this behavior to that of a [transistor](https://www.youtube.com/watch?v=7ukDKVHnac4), where a small base current modulates a larger flow from collector to emitter. These ULF waves are characterized by noise-like appearance and low coherence lengths.

### Pc5

We learned from ground, ionospheric, and space observations about the existence of *only one or at least a few* resonant field line vibrations (i.e. eigenoscillations) in the Pc5 range in the magnetosphere. As the Alfvén velocity is varying in the radial direction and as most sources of magnetospheric hydromagnetic waves are broadband sources, the resonance condition can be matched at an infinite number of geomagnetic field lines. Thus, every field line should be in resonance for a broad enough energy source. Therefore the observational fact of "magic" frequencies requires a magnetospheric frequency selection rule. [@kivelson1985resonant] suggested that perturbations due to a broadband source at, e.g., the magnetopause first couple to the discrete eigenoscillations of global compressional eigenmodes. These narrow band compressional modes then couple to Alfvénic perturbations due to the field line resonance mechanism. The global modes thus select the frequency components participating in the resonant coupling. An alternative way of selection has been proposed by [Fujita+, 1996], who demonstrated that the K-H instability at the surface of a non-uniform magnetospheric plasma introduces dispersive properties of the unstable waves, which then gives rise to a narrower source spectrum. Thus, the field line resonance concept as outlined in @sec:flr is able to explain the major features of observed resonant ULF pulsations in the terrestrial magnetosphere.

## Bow Shock

Bow shock is the shock (@sec:shock) resulted from the interaction of supersonic, super-Alfvénic solar wind with the magnetosphere of an astrophysical object.

### Foreshock

The word "foreshock" is borrowed from geophysics for an earthquake that occurs before a larger seismic event (the "mainshock") and is related to it in both time and space. In space physics, _foreshock_ is the region upstream from the bow shock that is magnetically connected to the bow shock and contains both solar wind plasma and also charged particles backstreaming from the bow shock. It is typically associated with quasi-parallel shocks, as it is much easier for charged particles to move freely along the normal direction of the shock if it is aligned with $\mathbf{B}$. If their speed relative to the ambient plasma is fast enough, plasma shocks without Coulomb collisions cannot dissipate all the incoming plasmas; some of them have to "return". The counter-streaming between the foreshock plasma and the incoming plasma is very unstable and thus excites many types of waves.

The dominant wave mode in the ion foreshock is produced by the _ion-ion beam right-hand instability_ and has a typical period around 30 s in Earth's foreshock. Their exact period however varies significantly depending on the solar wind conditions, in particular the IMF strength, between 10 and 80 s. One easy way to think about this is by remembering the gyrofrequency $\omega_c=qB/m$: the beam instabilities are associated with the cyclotron resonance, and the gyrofrequency is directly related to $B$. Their wavelength is of the order of $1\,\text{R}_\text{E}$ and they are left-hand polarized in the spacecraft frame. Their intrinsic polarization is however right-handed, indicative of a fast mode. The polarization reversal is due to the waves attempting to propagate sunward, while they are effectively carried earthward by the faster solar wind flow. The fast mode is also consistent with the observed positively correlated magnetic field strength and plasma density fluctuations.

An interesting question arises about the transmission of these fast waves through the bow shock into the downstream. A list of possible mechanisms are summarized in @fig:foreshock_wave_transmission. [@turc2022transmission] argued that the earthward magnetosonic disturbances can then propagate to and disturb the magnetopause, whereas shock reformation and mode conversion play only minor roles.

![Foreshock waves (purple wavy lines) are generated in the region upstream from the bow shock (left black curve) where the interplanetary magnetic field (IMF) lines (dashed lines) are quasi-parallel to the shock normal $\hat{n}$ (shaded blue). Foreshock waves are convected towards the bow shock by the solar wind (red arrow) and transmit through the magnetosheath via mechanisms indicated in the white boxes along the bow shock: mode conversion, shock reformation, and modulation of shock compression. The transmitted waves propagate away from or towards Earth relative to the magnetosheath plasma (indicated by the wave vector $\mathbf{k}$).](https://media.springernature.com/lw685/springer-static/image/art%3A10.1038%2Fs41567-022-01854-y/MediaObjects/41567_2022_1854_Fig1_HTML.png){#fig:foreshock_wave_transmission}

As usual in plasma physics, accompanying the ion foreshock we have electron foreshock at a much smaller scale.

The formation of ion/electron foreshocks requires counter-streaming of ions and electrons, respectively. Since there is only one velocity for each species in the electron/ion two-fluid equations, it is not possible to trigger this instability in a multi-moment model. Theoretically we may have an extremely simplified case where the ion counter-streaming is represented by two ion fluids, but there are very few studies on this topic. The minimum requirement may be gyrokinetics.

## Magnetosheath

### Jets

Magnetosheath jets are regions of high dynamic pressure. Think of jets as raindrops in the magnetosheath falling on the magnetopause. They are widely associated with the quasi-parallel magnetosheath, suggesting that their origin is tied to the interactions between the foreshock and the bow shock.

The formation of magnetosheath jets may be related to both external and internal drivings.

* External
  * Solar wind pressure pulses
  * Rotational discontinuities
* Internal
  * Local ripples from foreshock turbulence could lead to the refraction and funneling of plasma.
  * Short large-amplitude magnetic structures (SLAMS), which are steepened foreshock fluctuations in a short time-scale but large spatial scale.

## Magnetosphere

### Dungey cycle

Dungey (1961) was the first to propose a cycle of magnetospheric convection driven by magnetic reconnection at the dayside magnetosphere. Magnetic field connected on the dayside of Earth is transported by the solar wind to the night side where it forms a long tail behind the Earth. This transfer of flux to the nightside forces the magnetosphere to undergo systematic changes in configuration that eventually lead to nightside magnetic reconnection, which returns flux to the dayside along the flanks of the magnetosphere via the different response modes.

### Vasyliunas cycle

The Jovian equivalent to the Dungey cycle of the Earth's magnetosphere, where the centrifugal force plays a critical role in affecting the plasma convection.
