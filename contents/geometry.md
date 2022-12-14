# Geometry {#sec:geometry}

This chapter introduces the topology-related concepts in plasma physics, including ropes, knots, boundaries, and null points. Usually, observers and modelers have different views of topology because of the tools at hand: observers have probes which give measurements as a function of both time and space, while modelers have full spatial-temporal information under the given resolution. It always amazes me how observers can deduce the general picture of plasma structures with such limited data. Incorporating observation experience into physics as well as diagnosing numerical simulations with physics are our main goals in studing geometry.

Generally speaking, there are two ways of tackling the geometry problems: physics-based methods and statistical methods (classical and machine learning). We may find harmony when combining these two families and reach optimal results.

## Helicity

In fluid dynamics, helicity is, under appropriate conditions, an invariant of the Euler equations of fluid flow, having a topological interpretation as a measure of _linkage_ and _knottedness_ of vortex lines in the flow (Moffatt 1969).

Let $\mathbf{u}(x,t)$ be the velocity field and $\nabla\times\mathbf{u}$ the corresponding vorticity field. Under the following three conditions, the vortex lines are transported with (or "frozen in") the flow:

1. the fluid is inviscid;
2. either the flow is incompressible ($\nabla\cdot\mathbf{u}=0$), or it is compressible with a barotropic relation $p=p(\rho)$ between pressure $p$ and density $\rho$;
3. any body forces acting on the fluid are conservative. Under these conditions, any closed surface $S$ on which $n\cdot(\nabla\times\mathbf{u})=0$ is, like vorticity, transported with the flow.

Let $V$ be the volume inside such a surface. Then the helicity in $V$ is defined by

$$
H=\int_{{V}}{\mathbf{u}}\cdot\left(\nabla\times\mathbf{u}\right)\,dV
$$ {#eq:helicity}

For a localised vorticity distribution in an unbounded fluid, $V$ can be taken to be the whole space, and $H$ is then the total helicity of the flow. $H$ is invariant precisely because the vortex lines are frozen in the flow and their linkage and/or knottedness is therefore conserved, as recognized by Lord Kelvin (1868). Helicity is a pseudo-scalar quantity: it changes sign under change from a right-handed to a left-handed frame of reference; it can be considered as a measure of the handedness (or chirality) of the flow. Helicity is one of the four known integral invariants of the Euler equations; the other three are energy, momentum and angular momentum.

The invariance of helicity provides an essential cornerstone of the subject topological fluid dynamics and MHD, which is concerned with global properties of flows and their topological characteristics.

## Magnetic Helicity

The helicity of a smooth vector field defined on a domain in 3D space is the standard measure of the extent to which the field lines wrap and coil around one another. As to magnetic helicity, this "vector field" is magnetic field. It is a generalization of the topological concept of [linking number](https://en.wikipedia.org/wiki/Linking_number) to the differential quantities required to describe the magnetic field. As with many quantities in electromagnetism, magnetic helicity (which describes magnetic field lines) is closely related to fluid mechanical helicity (which describes fluid flow lines).

If magnetic field lines follow the strands of a twisted rope, this configuration would have nonzero magnetic helicity; left-handed ropes would have negative values and right-handed ropes would have positive values.

Formally,

$$
H=\int\mathbf{A}\cdot\mathbf{B}\mathrm{d}\mathbf{r}^3
$$ {#eq:magnetic_helicity}

where

* $H$ is the helicity of the entire magnetic field
* $\mathbf{B}$ is the magnetic field strength
* $\mathbf{A}$ is the vector potential of $\mathbf{B}$ and $\mathbf{B}=\nabla\times\mathbf{A}$

Magnetic helicity has units of $\text{Wb}^2$ in SI units and $\text{Mx}^2$ in Gaussian Units. Note that $\mathbf{A}\cdot\mathbf{B}$ should not be considered as "helicity density" because of gauge freedom.

It is a conserved quantity in electromagnetic fields, even when magnetic reconnection dissipates energy. The concept is useful in solar dynamics and in dynamo theory. Helicity is approximately conserved during magnetic reconnection and topology changes. Helicity can be injected into a system such as the solar corona. When too much builds up, it ends up being expelled through coronal mass ejections. The simple proof in ideal MHD can be found on Wikipedia.

Magnetic helicity is a gauge-dependent quantity, because $\mathbf{A}$ can be redefined by adding a gradient to it (gauge transformation):

$$
\mathbf{A}^\prime = \mathbf{A} + \nabla\phi
$$

However, for perfectly conducting boundaries or periodic systems without a net magnetic flux, the magnetic helicity is gauge invariant. A gauge-invariant relative helicity has been defined for volumes with non-zero magnetic flux on their boundary surfaces. If the magnetic field is turbulent and weakly inhomogeneous a magnetic helicity density and its associated flux can be defined in terms of the density of field line linkages.

The topological properties of a magnetic field are interpreted in terms of magnetic helicity. The total helicity of a collection of flux tubes arises from the linking of flux tubes with one another (mutual helicity) and the internal magnetic structure of each flux tube (self-helicity). Reconnection changes the topology and magnetic connectivity of flux tubes. This can also be viewed as a redistribution of self- and mutual helicities. If total magnetic helicity is approximately conserved, it is possible to put quantitative limits upon the changes in self- and mutual helicities. This can be interpreted as the change in magnetic flux tube linkage (due to reconnection) and amount of twist present in the reconnected flux tubes. [Wright & Berger, 1989]

Simple examples:

1. A single untwisted closed flux loop has $H=0$.
2. A single flux rope with a magnetic flux of $\phi$ that twists around itself $T$ times has a helicity of $H = T\phi^2$.
3. Two interlinked untwisted flux loops with fluxes $\phi_1$ and $\phi_2$ have $H=\pm2\phi_1\phi_2$ where the sign depends on the sense of the linkedness.

There are generalizations to allow for gauge-invariant definitions of helicity. [Berger & Field (1984)] defined the relative magnetic helicity to be

$$
H = \int_V \mathbf{A}\cdot\mathbf{B} - \mathbf{A}_0\cdot\mathbf{B}_0 dV
$$ {#eq:relative_magnetic_helicity}

where $\mathbf{B}_0=\nabla\times\mathbf{A}_0$ is the potential field inside $V$ with the same field outside of $V$ (see also Finn & Antonsen 1985).

In toroidal laboratory experiments, it is natural to consider the volume contained within conducting wall boundaries that are coincident with closed flux surfaces (i.e., the magnetic field along the wall is parallel to the boundary).

The time evolution of magnetic helicity is given by

$$
\frac{\mathrm{d}H}{\mathrm{d}t} = -2c\int_V \mathbf{E}\cdot\mathbf{B}dV + 2c\int_S \mathbf{A}_p\times\mathbf{E}\cdot \mathrm{d}\mathbf{S}
$$

where we choose $\nabla\times\mathbf{A}_p=0$ and $\mathbf{A}_p\cdot \mathrm{d}\mathbf{S}=0$ on $S$. The first term represents helicity dissipation when $E_\parallel\neq 0$, which is always zero in ideal MHD. The second term represents helicity fluxes in and out of the system, for example, flux emergence from the solar photosphere corresponds to helicity injection in the corona.

## Cross Helicity {#sec:cross_helicity}

The cross helicity measures the imbalance between interacting waves, which is important in MHD turbulence (@sec:turbulence_cross_helicity). It is given by

$$
H_C = \int_V \mathbf{v}\cdot\mathbf{B} dV
$$ {#eq:cross_helicity}

In ideal MHD, the rate of change of $H_C$ is

$$
\frac{\mathrm{d}H_C}{\mathrm{d}t} = -\oint_S \mathrm{d}\mathbf{S}\cdot \Big[ \Big(\frac{1}{2}v^2 + \frac{\gamma}{\gamma-1} \frac{p}{\rho}\Big)\mathbf{B} - \mathbf{v}\times(\mathbf{v}\times\mathbf{B}) \Big]
$$

This vanishes when $\mathrm{d}\mathbf{S}\cdot\mathbf{B} = d\mathbf{S}\cdot\mathbf{V}=0$ along the boundary $S$ or when the boundary conditions are periodic. Cross helicity is an ideal MHD invariant when this integral vanishes.

There are discretized forms of cross helicity from the observation point of view. Check it out if you want to know more.

## Flux Rope Identification

Using turbulence parameters to find flux ropes [@zhao2020identification]:

$$
\begin{aligned}
\sigma_r &< -0.5 \\
|\sigma_c| &< 0.4 \\
|\sigma_m| &> 0.7
\end{aligned}
$$

where $\sigma_m$ is the _normalized reduced magnetic helicity_, which is a measure of $\mathbf{B}$ rotation. Strictly speaking, the magnetic helicity depends on the spatial properties of the magnetic field topology, and thus cannot be directly evaluated from single spacecraft measurements. However, Matthaeus+ (1982) described a reduced form of magnetic helicity that can be estimated with measurements from a single spacecraft based on the magnetic power spectrum. The normalized reduced magnetic helicity can be estimated by

$$
\sigma_m(\nu, t) = \frac{2\Im[W_T^\ast(\nu, t)\cdot W_N(\nu, t)]}{|W_R(\nu, t)|^2 + |W_T(\nu, t)|^2 + |W_N(\nu, t)|^2}
$$ {#eq:reduced_magnetic_helicity}

where $\nu$ is the frequency associated with the Wavelet function and the sampling period of the measured magnetic field in the radial tangential normal (RTN) coordinate system. The spectra $W_R(\nu, t)$, $W_T(\nu, t)$, and $W_N(\nu, t)$ are the wavelet transforms of time series of $\mathbf{B}_{1R}$, $\mathbf{B}_{1T}$, and $\mathbf{B}_{1N}$, respectively; and $W_T^\ast(\nu,t)$ is the conjugate of $W_T(\nu,t)$. From the resulting spectrogram of the magnetic helicity, $\sigma_m$, one can determine both the magnitude and the handedness (chirality) of underlying fluctuations at a specific scale. A positive value of $\sigma_m$ corresponds to right-handed chirality and a negative value to left-handed chirality.

## Reconnection Identification

Here we present analytical fields for an X-point configuration and an O-point configuration, respectively.

![Example of (a) O-point and (b) X-point.](images/x_o_point.png){#fig:x_o_points}

### 2D

Identification of 2D reconnection sites is easy. Usually we start with a Harris current sheet topology. We can define a flux function, and the null points are simple saddle points and extremas of the flux function.

### 3D

Identification of 3D reconnection sites is not easy.

Implement Lapenta's method.

The four-field junction (FFJ) method is proposed by Finnish researchers (???).

BBF

## Magnetospause Identification

From pressure balance argument, let $\beta^\ast = (p_\text{th}+p_\text{dyn})/p_B$, we can have a simple criterion:

$$
\beta^\ast\simeq 1
$$
