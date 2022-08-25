# Kinetic Theory {#sec:kinetic}

## The Meaning of f(v)

The fluid theory we have been using so far is the simplest description of a plasma; it is indeed fortunate that this approximation is sufficiently accurate to describe the majority of observed phenomena. There are some phenomena, however, for which a fluid treatment is inadequate. For these, we need to consider the velocity distribution function $f(\mathbf{v})$ for each species; this treatment is called kinetic theory. In fluid theory, the dependent variables are functions of only four independent variables: $x, y, z,$ and $t$. This is possible because the velocity distribution of each species is assumed to be Maxwellian everywhere and can therefore be uniquely specified by only one number, the temperature $T$. Since collisions can be rare in high-temperature plasmas, deviations from thermal equilibrium can be maintained for relatively long times. As an example, consider two velocity distributions $f_1(v_x)$ and $f_2(v_x)$ in a one-dimensional system. (@fig:distributions_1d) These two distributions will have entirely different behaviors, but as long as the areas under the curves are the same, fluid theory does not distinguish between them.

![Examples of non-Maxwellian distribution functions](images/distributions_1d.png){#fig:distributions_1d}

The density is a function of four scalar variables: $n=n(\mathbf{r}, t)$. When we consider velocity distributions, we have seven independent variables: $f = f(\mathbf{r}, \mathbf{v}, t)$.
By $f(\mathbf{r}, \mathbf{v}, t)$, we mean that the number of particles per meter cubed at position $\mathbf{r}$ and time $t$ with velocity components between $v_x$ and $v_x + dv_x$, $v_y and $v_y + dv_y$, and $v_z$ and $v_z + dv_z$ is

$$
f(x, y, z, v_x, v_y, v_z, t) dv_x dv_y dv_z
$$

The integral of this is written in several equivalent ways:

$$
\begin{aligned}
n(\mathbf{r}, t) = \int_{-\infty}^{\infty} dv_x \int_{-\infty}^{\infty} dv_y \int_{-\infty}^{\infty} dv_z f(\mathbf{r}, \mathbf{v}, t) &= \int_{-\infty}^{\infty}f(\mathbf{r}, \mathbf{v}, t)d^3v \\
&= \int_{-\infty}^{\infty} f(\mathbf{r}, \mathbf{v}, t) d\mathbf{v}
\end{aligned}
$$

Note that $d\mathbf{v}$ is not a vector; it stands for a three-dimensional volume element in velocity space. If $f$ is normalized so that

$$
\int_{-\infty}^{\infty} \hat{f}(\mathbf{r}, \mathbf{v}, t) d\mathbf{v} = 1
$$ {#eq:f_normalization}

it is a probability, which we denote by $\hat{f}$. Thus

$$
f(\mathbf{r}, \mathbf{v}, t) = n(\mathbf{r}, t)\hat{f}(\mathbf{r}, \mathbf{v}, t)
$$ {#eq:f_normalization_dimensionless}

Note that $\hat{f}$ is still a function of seven variables, since the shape of the distribution, as well as the density, can change with space and time. From @eq:f_normalization, it is clear that $\hat{f}$ has the dimensions $(\text{m}/\text{s})^{-3}$; and consequently, from @eq:f_normalization_dimensionless, f has the dimensions $\text{s}^3 \text{m}^{-6}$.

A particularly important distribution function is the Maxwellian:

$$
\hat{f}_m = (m/2\pi k_B T)^{3/2}\exp(-v^2/v_{th}^2)
$$

where

$$
v\equiv(v_x^2 + v_y^2 + v_z^2)^{1/2}\quad\text{and}\quad v_{th}\equiv(2k_B T/m)^{1/2}
$$

By using the definite integral

$$
\int_{-\infty}^{\infty}\exp(-x^2)dx = \sqrt{\pi}
$$

one easily verifies that the integral of $\hat{f}_m$ over $dv_x dv_y dv_z$ is unity.

There are several average velocities of a Maxwellian distribution that are commonly used. The root-mean-square velocity is given by

$$
(\overline{v^2})^{1/2} = (3k_B T/m)^{1/2}
$$

The average magnitude of the velocity $|v|$, or simply $\bar{v}$, is found as follows:

$$
\bar{v} = \int_{-\infty}^{\infty}v\hat{f}(\mathbf{v})d^3v
$$

Since $\hat{f}_m$ is isotropic, the integral is most easily done in spherical coordinates in v space. Since the volume element of each spherical shell is $4\pi v^2 dv$, we have

$$
\begin{aligned}
\bar{v} &= (m/2\pi k_B T)^{3/2}\int_0^\infty v[\exp(-v^2/v_{th}^2)]4\pi v^2 dv \\
&= (\pi v_{th}^2)^{-3/2} 4\pi v_{th}^4 \int_0^\infty [\exp(-y^2)]y^3 dy 
\end{aligned}
$$

The definite integral has a value 1/2, found by integration by parts. Thus

$$
\bar{v} = 2\sqrt{\pi}v_{th} = 2(2k_B T/\pi m)^{1/2}
$$

The velocity component in a _single direction_, say $v_x$, has a different average. Of course, $\bar{v}_x$ vanishes for an isotropic distribution; but $|\bar{v}_x|$ does not:

$$
|\bar{v}_x| = \int |v_x|\hat{f}_m(\mathbf{v})d^3 v = \pi^{-1/2}v_{th} = (2k_B T/\pi m)^{1/2}
$$

To summarize: For a Maxwellian,

$$
\begin{aligned}
v_{rms} &= (3k_B T/m)^{1/2} \\
|\bar{v}| &= 2(2k_B T/\pi m)^{1/2} \\
|\bar{v}_x| &= (2k_B T/\pi m)^{1/2} \\
\bar{v}_x &= 0
\end{aligned}
$$

For an isotropic distribution like a Maxwellian, we can define another function $g(v)$ which is a function of the scalar magnitude of $\mathbf{v}$ such that

$$
\int_0^\infty g(v) dv = \int_{-\infty}^{\infty} f(\mathbf{v})d^v
$$

For a Maxwellian, we see that

$$
g(v) = 4\pi n (m/2\pi k_B T)^{3/2} v^2 \exp(-v^2/v_{th}^2)
$$ {#eq:g_dist}

@fig:f_g shows the difference between $g(v)$ and a one-dimensional Maxwellian distribution $f(v_x)$. Although $f(v_x)$ is maximum for $v_x=0$, $g(v)$ is zero for $v=0$.

![One- and three-dimensional Maxwellian velocity distributions.](images/f_g.png){#fig:f_g}

This is just a consequence of the vanishing of the volume in phase space for $v=0$. Sometimes $g(v)$ is carelessly denoted by $f(v)$, as distinct from $f(\mathbf{v})$; but $g(v)$ is a different function of its argument than $f(\mathbf{v})$ is of its argument. From eq:g_dist, it is clear that $g(v)$ has dimensions $\text{s}/\text{m}^4$.

ADD EXAMPLE DISTRIBUTIONS!

* isotropic
* anisotropic
* beam
* crescent shape

### Kappa Distribution

The Maxwellian distribution is probably the most studied one theoretically, but may not be the most commonly observed distribution in a collisionless space plasma system. In recent years, another distribution named [Kappa distribution](https://link.springer.com/article/10.1007/s11214-013-9982-9) has gained more attention.

## Equations of Kinetic Theory

The fundamental equation which $f(\mathbf{r}, \mathbf{v}, t)$ has to satisfy is the Boltzmann equation:

$$
\frac{\partial f}{\partial t} + \mathbf{v}\cdot\nabla f +\frac{\mathbf{F}}{m}\cdot\frac{\partial f}{\partial v} = \Big( \frac{\partial f}{\partial t} \Big)_c
$$ {#eq:boltzmann}

Here $\mathbf{F}$ is the force acting on the particles, and $(\partial f/\partial t)_C$ is the time rate of change of $f$ due to collisions[^numerical_diffusion]. The symbol $\nabla$ stands, as usual, for the gradient in $(x, y, z)$ space. The symbol $\partial/\partial\mathbf{v}$ or $\nabla_v$ stands for the gradient in velocity space:

$$
\frac{\partial}{\partial \mathbf{v}} = \hat{x}\frac{\partial}{\partial v_x} + \hat{y}\frac{\partial}{\partial v_y} + \hat{z}\frac{\partial}{\partial v_z}
$$

[^numerical_diffusion]: For simulations, the effect of numerical diffusion may be treated as one type of "collision".

In a sufficiently hot plasma, collisions can be neglected. If, furthermore, the force $\mathbf{F}$ is entirely electromagnetic, @eq:boltzmann takes the special form

$$
\frac{\partial f}{\partial t} + \mathbf{v}\cdot\nabla f +\frac{\mathbf{F}}{m}\cdot\frac{\partial f}{\partial v} = 0
$$ {#eq:vlasov}

This is called the _Vlasov equation_. Because of its comparative simplicity, this is the equation most commonly studied in kinetic theory. When there are collisions with neutral atoms, the collision term in @eq:boltzmann can be approximated by

$$
\Big( \frac{\partial f}{\partial t} \Big)_c = \frac{f_n - f}{\tau}
$$

where $f_n$ is the distribution function of the neutral atoms, and $\tau$ is a constant collision time. This is called a _Krook collision term_. It is the kinetic generalization of the collision term in Eq. (5.5) in F. F. Chen's book. When there are Coulomb collisions, @eq:boltzmann can be approximated by

$$
\frac{df}{dt} = -\frac{\partial}{\partial\mathbf{v}}\cdot(f\left<\Delta\mathbf{v}\right>)\frac{1}{2}\frac{\partial^2}{\partial\mathbf{v}\partial\mathbf{v}}:(f\left<\Delta\mathbf{v}\Delta\mathbf{v}\right>)
$$ {#eq:fokker_planck}

This is called the _Fokker-Planck equation_; it takes into account binary Coulomb collisions only. Here, $\Delta\mathbf{v}$ is the change of velocity in a collision, and @eq:fokker_planck is a shorthand way of writing a rather complicated expression.
The colon operator $\mathbf{a}\mathbf{b}:\mathbf{c}\mathbf{d} = a_ib_jc_id_j$.

The fact that $df/dt$ is constant in the absence of collisions means that particles follow the contours of constant $f$ as they move around in phase space. As an example of how these contours can be used, consider the beam-plasma instability
of Section ???. In the unperturbed plasma, the electrons all have velocity $v_0$, and the contour of constant $f$ is a straight line. The function $f(x, v_x)$ is a wall rising out of the plane of the paper at $v_x=v_0$. The electrons move along the trajectory shown. When a wave develops, the electric field $\mathbf{E}_1$ causes electrons to suffer changes in $v_x$ as they stream along. The trajectory then develops a sinusoidal ripple (@fig:beam_e_dist_1d B). This ripple travels at the phase velocity, not the particle velocity. Particles stay on the curve as they move relative to the wave. If $\mathbf{E}_1$ becomes very large as the wave grows, and if there are a few collisions, some electrons will be trapped in the electrostatic potential of the wave. In coordinate space, the wave potential appears as in @fig:wave_potential. In phase space, $f(x, v_x)$ will have peaks wherever there is a potential trough (@fig:contour_dist). Since the contours of $f$ are also electron trajectories, one sees that some electrons move in closed orbits in phase space; these are just the trapped electrons.

![(A) Representation in one-dimensional phase space of a beam of electrons all with the same velocity $v_0$. The distribution function $f(x, v_x)$ is infinite along the line and zero elsewhere. The line is also the trajectory of individual electrons, which move in the direction of the arrow. (B) when a plasma wave exists in the electron beam. The entire pattern moves to the right with the phase velocity of the wave. If the observer goes to the frame of the wave, the pattern would stand still, and electrons would be seen to trace the curve with the velocity $v_0-v_\phi$.](images/beam_e_dist_1d.png){#fig:beam_e_dist_1d}

![The potential of a plasma wave, as seen by an electron. The pattern moves with the velocity $v_\phi$. An electron with small velocity relative to the wave would be trapped in a potential trough and be carried along with the wave.](images/wave_potential.png){#fig:wave_potential}

![Electron trajectories, or contours of constant $f$, as seen in the wave frame, in which the pattern is stationary. This type of diagram, appropriate for finite distributions $f(v)$, is easier to understand than the $\delta$-function distribution of @fig:beam_e_dist_1d.](images/contour_dist.png){#fig:contour_dist}

Electron trapping is a nonlinear phenomenon which cannot be treated by straightforward solution of the Vlasov equation. However, electron trajectories can be followed on a computer, and the results are often presented in the form
of a plot like @fig:contour_dist.

ADD A TWO STREAM INSTABILITY PHASE ANIMATION!

## Derivation of the Fluid Equations

This has been repeated multiple times. The energy equation derivation can be found in [An introductory guide to fluid models with anisotropic temperatures](https://arxiv.org/abs/1901.09354).

## Plasma Oscillations and Landau Damping

As an elementary illustration of the use of the Vlasov equation, we shall derive the dispersion relation for electron plasma oscillations, which is originally treated from the fluid point of view. This derivation will require a knowledge of contour integration.

In zeroth order, we assume a uniform plasma with a distribution $f_0(\mathbf{v})$, and we let $\mathbf{B}_0 = \mathbf{E}_0 = 0$. In first order, we denote the perturbation in $f(\mathbf{r},\mathbf{v},t)$ by $f_1(\mathbf{r},\mathbf{v},t)$:

$$
f(\mathbf{r},\mathbf{v},t) = f_0(\mathbf{v}) + f_1(\mathbf{r},\mathbf{v},t)
$$

Since $\mathbf{v}$ is now an independent variable and is not to be linearized, the first-order Vlasov equation for electron is

$$
\frac{\partial f_1}{\partial t} + \mathbf{v}\cdot\nabla f_1 - \frac{e}{m}\mathbf{E}_1\cdot\frac{\partial f_0}{\partial \mathbf{v}} = 0
$$ {#eq:vlasov_1st}

As before, we assume the ions are massive and fixed and that the waves are plane waves in the x direction $f_1 \propto e^{i(kx - \omega t)}$. Then the linearized Vlasov equation becomes

$$
\begin{aligned}
-i\omega f_1 + ikv_x fx &= \frac{e}{m}E_x\frac{\partial f_0}{\partial v_x} \\
f_1 &= \frac{ieE_x}{m}\frac{\partial f_0/\partial v_x}{\omega - kv_x}
\end{aligned}
$$

Poisson's equation gives

$$
\epsilon_0\nabla\cdot\mathbf{E}_1 = ik\epsilon_0 E_x = -en_1 = -e\int\int\int f_1 d^3v
$$

Substituting for $f_1$ and dividing by $ik\epsilon_0 E_x$, we have

$$
1 = -\frac{e^2}{km\epsilon_0}\int\int\int \frac{\partial f_0/\partial v_x}{\omega - k v_x}d^3v
$$

A factor $n_0$ can be factored out if we replace $f_0$ by a normalized function $\hat{f}_0$:

$$
1 = -\frac{\omega_p^2}{k}\int_{-\infty}^{\infty}dv_z\int_{-\infty}^{\infty}dv_y\int_{-\infty}^{\infty}\frac{\partial \hat{f}_0(v_x, v_y, v_z)/\partial v_x}{\omega- k v_x}dv_x
$$

If $f_0$ is a Maxwellian or some other factorable distribution, the integration over $v_y$ and $v_z$ can be carried out easily. What remains is the one-dimensional distribution $\hat{f}_0(v_x)$. For instance, a one-dimensional Maxwellian distribution is

$$
\hat{f}_m(v_x) = \sqrt{\frac{m}{2\pi k_B T}} e^{\frac{-mv_x^2}{2 k_B T}}
$$

Since we are dealing with a one-dimensional problem we may drop the subscript x, begin careful not to confuse $v$ (which is really $v_x$) with the total velocity $v$ used earlier:

$$
1 = \frac{\omega_p^2}{k^2}\int_{-\infty}^{\infty}\frac{\partial \hat{f}_0/\partial v}{v - \omega/k}dv
$$ {#eq:dispersion_0th}

Here, $\hat{f}_0$ is understood to be a one-dimensional distribution function, the integrations over $v_y$ and $v_z$ having been made. This equation holds for any equilibrium distribution $\hat{f}_0(v)$.

The integral in this equation is not straightforward to evaluate because of the singularity at $v=\omega/k$. One might think that the singularity would be of no concern, because in practice $\omega$ is almost always never real; waves are usually slightly damped by collisions or are amplified by some instability mechanisms. Since the velocity $v$ is a real quantity, the denominator never vanishes. Landau was the first to treat this equation properly. He found that even though the singularity lies off the path of integration, its presence introduces an important modification to the plasma wave dispersion relation --- an effect not predicted by the fluid theory.

Consider an initial value problem in which the plasma is given a sinusoidal perturbation, and therefore $k$ is real. If the perturbation grows or decays, $\omega$ will be complex. This integral must be treated as a contour integral in the complex $v$ plane. Possible contours are shown for (a) an unstable wave, with $\Im(\omega) > 0$, and (b) a dampled wave, with $\Im(\omega) < 0$. Normally, one would evaluate the line integral along the real $v$ axis by the residue theorem:

$$
\int_{C_1} G dv + \int_{C_2} G dv = 2\pi i R(\omega/k)
$$

where $G$ is the integrand, $C_1$ is the path along the real axis, $C_2$ is the semicircle at infinity, and $R(\omega/k)$ is the residue at $\omega/k$. This works if the integral over $C_2$ vanishes. Unfortunately, this does not happen for a Maxwellian distribution, which contains the factor

$$
\exp(-v^2/v_{th}^2)
$$

This factor becomes large for $v\rightarrow \pm i \infty$, and the contribution from $C_2$ cannot be neglected. Landau showed that when the problem is properly treated as an initial value problem the correct contour to use is the curve $C_1$ passing below the singularity. This integral must in general be evaluated numerically.

Although an exact analysis of this problem is complicated, we can obtain an approximate dispersion relation for the case of large phase velocity and weak damping. In this case, the pole at $\omega/k$ lies near the real $v$ axis. The contour prescribed by Landau is then a straight line along the $\Re(v)$ axis with a small semicircle around the pole. In going around the pole, one obtains $2\pi i$ time half the residue there. Then @eq:dispersion_0th becomes

$$
1 = \frac{\omega_p^2}{k^2} \Big[ P\int_{-\infty}^{\infty}\frac{\partial\hat{f}_0/\partial v}{v - (\omega/k)}dv + i\pi \frac{\partial\hat{f}_0}{\partial v}\biggr\rvert_{v=\omega/k} \Big]
$$

where $P$ stands for the Cauchy principal value. To evaluate this, we integrate along the real $v$ axis but stop just before encountering the pole. If the phase velocity $v_\phi = \omega/k$ is sufficiently large, as we assume, there will not be much contribution from the neglected part of the contour, since both $\hat{f}_0$ and $\partial\hat{f}_0/\partial v$ are very small there. The integral above can be evaluated by integration by parts:

$$
\int_{-\infty}^{\infty}\frac{\partial\hat{f}_0}{\partial v}\frac{dv}{v - v_\phi} = \Big[ \frac{\hat{f}_0}{v-v_\phi} \Big]_{-\infty}^{\infty} - \int_{-\infty}^{\infty}\frac{-\hat{f}_0 dv}{(v-v_\phi)^2} = \int_{-\infty}^{\infty}\frac{\hat{f}_0 dv}{(v-v_\phi)^2}
$$

Since this is just an average of $(v-v_\phi)^{-2}$ over the distribution, the real part of the dispersion relation can be written

$$
1 = \frac{\omega_p^2}{k^2} \overline{(v-v_\phi)^{-2}}
$$

Since $v_\phi \gg v$ has been assumed, we can expand $(v-v_\phi)^{-2}$:

$$
(v-v_\phi)^{-2} = v_\phi^{-2}\Big( 1 - \frac{v}{v_\phi} \Big)^{-2} = v_\phi^{-2}\Big( 1 + \frac{2v}{v_\phi} + \frac{3v^2}{v_\phi^2} + \frac{4v^3}{v_\phi^3} + ... \Big)
$$

The odd terms vanish upon taking the average, and we have

$$
\overline{(v-v_\phi)^{-2}} \approx v_\phi^{-2} \Big( 1 + \frac{3\overline{v^2}}{v_\phi^2} \Big)
$$

We now let $\hat{f}_0$ be Maxwellian and evaluate $\overline{v^2}$. Remembering that $v$ here is an abbreviation for $v_x$, we can write

$$
\frac{1}{2}m\overline{v_x^2} = \frac{1}{2}k_B T_e
$$

there being only one degree of freedom. The dispersion relation then becomes

$$
\begin{aligned}
1 &= \frac{\omega_p^2}{k^2}\frac{k^2}{\omega^2}\Big( 1+ 3\frac{k^2}{\omega^2}\frac{k_B T_e}{m} \Big) \\
\omega^2 &= \omega_p^2 + \frac{\omega_p^2}{\omega^2}\frac{3k_B T_e}{m}k^2
\end{aligned}
$$

If the thermal correction is small (i.e. the second term on the right-hand side is small, such that $\omega \approx \omega_p$), we may replace $\omega^2$ by $\omega_p^2$ in the second term. We then have

$$
\omega^2 = \omega_p^2 + \frac{3k_B T_e}{m}k^2
$$

which is the same as that been obtained from the fluid equations with $\gamma=3$.

We now return to the imaginary term in the dispersion relation. In evaluating this small term, it will be sufficiently accurate to neglect the thermal correction to the real part of $\omega$ and let $\omega^2\approx \omega_p^2$. From the evaluation of the real part above we see that the principle value of the integral is approximately $k^2/\omega^2$. The dispersion relation now becomes

$$
1 = \frac{\omega_p^2}{\omega^2} + i\pi\frac{\omega_p^2}{k^2}\frac{\partial\hat{f}_0}{\partial v}\biggr\rvert_{v=v_\phi}
$$

$$
\omega^2 \Big( 1 - i\pi\frac{\omega_p^2}{k^2}\frac{\partial\hat{f}_0}{\partial v}\biggr\rvert_{v=v_\phi} \Big) = \omega_p^2
$$

Treating the imaginary term as small, we can bring it to the right-hand side and take the square root by Taylar series expansion. We then obtain

$$
\omega = \omega_p\Big( 1 + i\frac{\pi}{2}\frac{\omega_p^2}{k^2}\frac{\partial\hat{f}_0}{\partial v}\biggr\rvert_{v=v_\phi} \Big)
$$ {#eq:landau}

If $\hat{f}_0$ is a one-dimensional Maxwellian, we have

$$
\frac{\partial\hat{f}_0}{\partial v} = (\pi v_{th}^2)^{-1/2} \Big( \frac{-2v}{v_{th}^2} \Big) \exp\Big( \frac{-v^2}{v_{th}^2} \Big) = -\frac{2v}{\sqrt{\pi}v_{th}}\exp\Big( \frac{-v^2}{v_{th}^2} \Big)
$$

We may approximate $v_\phi$ by $\omega_p/k$ in the coefficient, but in the exponent we must keep the thermal correction in the real part of the dispersion relation. The damping is then given by

$$
\begin{aligned}
\Im(\omega) &= -\frac{\pi}{2}\frac{\omega_p^2}{k^2}\frac{2\omega_p}{k\sqrt{\pi}}\frac{1}{v_{th}^3}\exp\Big( \frac{-\omega^2}{k^2 v_{th}^2} \Big) \\
&= -\sqrt{\pi}\omega_p \Big( \frac{\omega_p}{kv_{th}} \Big)^3 \exp\Big( \frac{-\omega_p^2}{k^2 v_{th}^2}\Big)\exp\Big( \frac{-3}{2} \Big) \\
\Im\Big(\frac{\omega}{\omega_p}\Big) &= -0.22 \sqrt{\pi}\Big( \frac{\omega_p}{kv_{th}} \Big)^3 \exp\Big( \frac{-1}{2k^2\lambda_D^2} \Big)
\end{aligned}
$$

Since $\Im(\omega)$ is negative, there is a collisionless damping of plasma waves; this is called _Landau damping_. As is evident from the expression, this damping is extremely small for small $k\lambda_D$, but becomes important for $k\lambda_D = \mathcal{O}(1)$. This effect is connected with $f_1$, the distortion of the distribution function caused by the wave.

## The Meaning of Landau Damping {#sec:landau_damping}

__The theoretical discovery of wave damping without energy dissipation by collisions is perhaps the most astounding result of plasma physics research__. That this is a real effect has been demonstrated in the laboratory. Although a simple physical explanation for this damping is now available, it is a triumph of applied mathematics that this unexpected effect was first discovered purely mathematically in the course of a careful analysis of a contour integral. Landau damping is a characteristic of collisionless plasmas, but it may also have application in other fields. For instance, in the kinetic treatment of galaxy formation, stars can be considered as atoms of a plasma interacting via gravitational rather than electromagnetic forces. Instabilities of the gas of stars can cause spiral arms to form, but this process is limited by Landau damping.

To see what is responsible for Landau damping, we first notice that $\Im(\omega)$ arises from the pole at $v=v_\phi$. Consequently, the effect is connected with those particles in the distribution that have a velocity nearly equal to the phase velocity --- the "resonant particles". These particles travel along with the wave and do not see a rapidly fluctuating electric field: they can, therefore, exchange energy with the wave effectively. The easiest way to understand this exchange of energy is to picture a surfer trying to catch an ocean wave. (Warning: this picture is only for directing our thinking along the right lines; it does not correctly explain the damping.) If the surfboard is not moving, it merely bobs up and down as the wave goes by and does not gain any energy on the average. Similarly, a boat propelled much faster than the wave cannot exchange much energy with the wave. However, if the surfboard has almost the same velocity as the wave, it can be caught and pushed along by the wave; this is, after all, the main purpose of the exercise. In that case, the surfboard gains energy, and therefore the wave must lose energy and is damped. On the other hand, if the surfboard should be moving slightly faster than the wave, it would push on the wave as it moves uphill; then the wave could gain energy. In a plasma, there are electrons both faster and slower than the wave. A Maxwellian distribution, however, has more slow electrons than fast ones. Consequently, there are more particles taking energy from the wave than vice versa, and the wave is damped. As particles with $v\approx v_\phi$ are trapped in the wave, $f(v)$ is flattened near the phase velocity. This distortion is $f_1(v)$ which we calculated. As seen in Fig (ADD IT!), the perturbed distribution function contains the same number of particles but has gained total energy (at the expense of the wave).

From this discussion, one can surmise that if $f_0(v)$ contained more fast particles than slow particles, a wave can be excited. Indeed, from the expression of $\omega$
above, it is apparent that $\Im(\omega)$ is positive if $\partial\hat{f}_0/\partial v$ is positive at $v=v_\phi$. Such a distribution is shown in Fig.7-19 (ADD IT!). Waves with $v_\phi$ in the region of positive slope will be unstable, gaining energy at the expense of the particles. This is just the finite-temperature analogy of the two stream instability. When there are two cold ($k_B T=0$) electron streams in motion, $f_0(v)$ consists of two $\delta$-functions. This is clearly unstable because $\partial f_0/\partial v$ is infinite; and indeed, we found the instability from fluid theory. When the streams have fnite temperature, kinetic theory tells us that the relative densities and temperatures of the two stream must be such as to have a region of positive $\partial f_0(v)/\partial v$ between them; more precisely, the total distribution function must have a minimum for instability.

__The physical picture of a surfer catching waves is very appealing, but it is not precise enough to give us a real understanding of Landau damping__. There are actually two kinds of Landau damping. Both kinds are independent of dissipative collisional mechanisms. If a particle is caught in the potential well of a wave, the phenomenon is called "trapping". As in the case of a surfer, particles can indeed gain or lose energy in trapping. However, trapping does not lie within the purview of the linear theory. That this is true can be seen from the equation of motion

$$
m\ddot{x} = qE(x)
$$

If one evaluates $E(x)$ by inserting the exact value of $x$, the equation would be nonlinear, since $E(x)$ is somehting like $\sin kx$. What is done in linear theory is to use for $x$ the unperturbed orbit; i.e. $x=x_0 + v_0 t$. Then this becomes linear. This approximation, however, is no longer valid when a particle is trapped. When it encounters a potential hill large enough to reflect it, its velocity and position are, of course, greatly affected by the wave and are not close to their unperturbed values. In fluid theory, the equation of motion is

$$
m\Big[ \frac{\partial\mathbf{v}}{\partial t}+(\mathbf{v}\cdot\nabla)\mathbf{v} \Big] = q\mathbf{E}(x)
$$

Here, $\mathbf{E}(x)$ is to be evaluated in the laboratory frame, which is easy; but to make up for it, there is the $(\mathbf{v}\cdot\nabla)\mathbf{v}$ term. The neglect of $(\mathbf{v}_1\cdot\nabla)\mathbf{v}_1$ in linear theory amounts to the same thing as using unperturbed orbits. In kinetic theory, the nonlinear term that is neglected is, from the first-order Vlasov @eq:vlasov_1st,

$$
\frac{q}{m}E_1\frac{\partial f_1}{\partial v}
$$

When the particles are trapped, they reverse their direction of travel relative to the wave, so the distribution function $f(v)$ is greatly disturbed near $v=\omega/k$. This means that $\partial f_1/\partial v$ is comparable to $\partial f_0/\partial v$, and the term above is not negligible. Hence, trapping is not in the linear theory.

When a wave grows to a large amplitude, collisionless damping with trapping does occur. One then finds that the wave does not decay monotonically; rather, the amplitude fluctuates during the decay as the trapped particles bounce back and forth in the potential wells. This is _nonlinear_ Landau damping. Since the result before was derived from a _linear_ theory, it must arise from a different physical effect. The question is: can untrapped electrons moving close to the phase velocity of the wave exchange energy with the wave? Before giving the answer, let us examine the energy of such electrons.

### The Kinetic Energy of a Beam of Electrons

We may divide the electron distribution $f_0(v)$ into a large number of monoenergetic beams. Consider one of these beams: it has unperturbed velocity $u$ and density $n_u$. The velocity $u$ may lie near $v_\phi$, so that this beam may consist of resonant electrons. We now turn on a plasma oscillation $E(x,t)$ and consider the kinetic energy of the beam as it moves through the crests and troughs of the wave. The wave is caused by a self-consistent motion of all the beams together. If $n_u$ is small enough (the number of beams large enough), the beam being examined has a negligible effect on the wave and may be considered as moving in a given field $E(x,t)$. Let

$$
\begin{aligned}
E &= E_0\sin(kx-\omega t) = -d\phi/dt \\
\phi &= (E_0/k)\cos(kx-\omega t)
\end{aligned}
$$

The linearized fluid equation for the beam is

$$
m\Big(\frac{\partial v_1}{\partial t} + u\frac{\partial v_1}{\partial x} \Big) = -eE_0\sin(kx-\omega t)
$$

A possible solution is

$$
v_1 = -\frac{eE_0}{m}\frac{\cos(kx-\omega t)}{\omega-ku}
$$

This is the velocity modulation caused by the wave as the beam electrons move past. To conserve particle flux, there is a corresponding oscillation in density, given by the linearized continuity equation:

$$
\frac{\partial n_1}{\partial t} + u\frac{\partial n_1}{\partial x} = -n_u\frac{\partial v_1}{\partial x}
$$

Since $v_1$ is proportional to $\cos(kx-\omega t)$, we can try $n_1 = \bar{n}_1 \cos(kx-\omega t)$. Substitution of this into the above yields

$$
n_1 = -n_u\frac{eE_0 k}{m}\frac{\cos(kx-\omega t)}{(\omega-ku)^2}
$$

($n_1$ and $v_1$ can be shown in a series of phase relation plots as in Fig.7-21)(ADD IT!) one wavelength of $E$ and of the potential $-e\phi$ seen by the beam electrons.

We may now compute the kinetic energy $W_k$ of the beam:

$$
\begin{aligned}
W_k &= \frac{1}{2}m(n_u+n_1)(u+v_1)^2 \\
&= \frac{1}{2}m(n_u u^2 + n_uv_1^2 +2un_1v_1 + n_1u^2 + 2n_uuv_1 + n_1v_1^2)
\end{aligned}
$$

The last three terms contain odd powers of oscillating quantites, so they will vanish when we average over a wavelength. The change in $W_k$ due to the wave is found by subtracting the first term, which is the original energy. The average energy change is then

$$
\left<\Delta W_k \right> = \frac{1}{2}m\left<n_uv_1^2 + 2un_1v_1\right>
$$

From the form of $v_1$, we have

$$
n_u\left< v_1^2 \right> = \frac{1}{2}n_u\frac{e^2E_0^2}{m^2(\omega-ku)^2}
$$

the factor $\frac{1}{2}$ representing $\left< \cos^2(kx-\omega t) \right>$. Similarly, from the form of $n_1$,

$$
2u\left< n_1v_1 \right> = n_u\frac{e^2E_0^2 ku}{m^2(\omega - ku)^3}
$$

Consequently,

$$
\begin{aligned}
\left<\Delta W_k \right> &= \frac{1}{4}mn_u \frac{e^2E_0^2}{m^2(\omega - ku)^2}\Big[ 1+\frac{2ku}{\omega-ku} \Big] \\
&= \frac{n_u}{4}\frac{e^2E_0^2}{m}\frac{\omega+ku}{m^2(\omega - ku)^3}
\end{aligned}
$$

This result shows that $\left<\Delta W_k\right>$ depends on the frame of the observer and that it does not change secularly with time. Consider the picture of a frictionless block sliding over a washboard-like surface. (ADD FIGURE!) In the frame of the washboard, $\left<\Delta W_k \right>$ is proportional to $-(ku)^{-2}$, as seen by taking $\omega = 0$. It is intuitively clear that (1) $\left<\Delta W_k \right>$ is negative, since the block spends more time at the peaks than at the valleys, and (2) the block does not gain or lose energy on the average, _once the oscillation is started_ (no time-dependence). Now if one goes into a frame in which the washboard is movign with a steady velocity $\omega/k$ (a velocity unaffected by the motion of the block, since we have assumed that $n_u$ is negligibly small compared with the density of the whole plasma), it is still true that the block does not gain or lose energy on the average, once the oscillation is started. But the above equation tells us that $\left<\Delta W_k\right>$ depends on the velocity $\omega/k$, and hence on the frame of the observer. In particular, it shows that a beam has less energy in the presence of the wave than in its absence if $\omega - ku<0$ or $u>u_\phi$, and it has more energy if $\omega - ku>0$ or $u<u_\phi$. The reason for this can be traced back to the phase relation between $n_1$ and $v_1$. As Fig.7-23 (ADD IT!) shows, $W_k$ is a parabolic function of $v$. As $v$ oscillates between $u-|v_1|$ and $u+|v_1|$, $W_k$ will attain an average value larger than the equilibrium value $W_{k0}$, provided that the particle spends an equal amount of time in each half of the oscillation. This effect is the meaning of the first term $\frac{1}{2}m\left< n_uv_1^2 \right>$, which is positive definite. The second term $\frac{1}{2}m\left< 2un_1v_1 \right>$ is a correction due to the fact that the particle does not distribution its time equally. In Fig.7-21 (ADD IT!), one sees that both electrons a and b spend more time at the top the potential hill than at the bottom, but electron a reaches that point after a period of deceleration, so that $v_1$ is negative there, while electron b reaches that point after a period of acceleration (to the right), so that $v_1$ is positive there. This effect causes $\left<W_k\right>$ to change sign at $u=v_\phi$.

### The Effect of Initial Conditions

The result we have just derived, however, still has nothing to do with linear Landau damping. Damping requires a continuous increase of $W_k$ at the expense of wave energy, but we have found that $\left<\Delta W_k\right>$ for untrapped particles is contant in time. If neither the untrapped particles nor the trapped particles are responsible for linear Landau damping, what is? The answer can be gleaned form the following observation: if $\left<\Delta W_k\right>$ is positive, say, there must have been a time when it was increasing. Indeed, there are particles in the original distribution which have velocities so close to $v_\phi$ that at time $t$ they have not yet gone a half wavelength relative to the wave. For these particles, one cannot take the average $\left<\Delta W_k\right>$. These particles can absorb energy from the wave and are properly called the "resonant" particles. As time goes on, the number of resonant electrons decreases, since an increasing number will have shifted more than $\frac{1}{2}\lambda$ from their orginal positions. The damping rate, however, can stay constant, since the amplitude is now smaller, and it takes fewer electrons to maintain a constant damping rate.

The effect of the initial conditions is most easily seen form a phase-space diagram (Fig.7-24)(ADD IT with Luxor?). 

## A Physical Derivation of Landau Damping

We are now in a position to derive the Landau damping rate recourse to contour integration. Although Landau's derivation of collisionless damping was short and neat, it was not clear that it concerned a physically observable phenomenon until J. M. Dawson gave the longer, intuitive derivation which is paraphrased in this section. As before, we divide the plasma up into beams of velocity $u$ and density $n_u$, and examine their motion in a wave

$$
E = E_1 \sin(kx-\omega t)
$$

From the derivations in the previous section, the velocity of each beam is

$$
v_1 = -\frac{eE_1}{m}\frac{\cos(kx-\omega t)}{\omega-ku}
$$

This solution satisfies the equation of motion, but it does not satisfy the initial condition $v_1 = 0$ at $t = 0$. It is clear that this initial condition must be imposed; otherwise, $v_1$ would be very large in the vicinity of $u=\omega/k$, and the plasma would be in a specially prepared state initially. We can fix up the solution to satisfy the initial condition by adding an arbitrary function of $kx-kut$. The composite solution would still satisfy the equation of motion because the operator on the left-hand side, when applied to $f(kx-kut)$, gives zero. Obviously, to get $v_1 = 0$ at $t=0$, the function $f(kx-kut)$ must be taken to be $-\cos(kx-kut)$. Thus we have, instead of the expression above,

$$
v_1 = \frac{-eE_1}{m}\frac{\cos(kx-\omega t) - \cos(kx-kut)}{\omega-ku}
$$

Next, we must solve the equation of continuity for $n_1$, again subject to the initial condition $n_1=0$ at $t=0$. Since we are now much cleverer than before, we may try a solution of the form

$$
n_1 = \bar{n}_1[\cos(kx-\omega t) - \cos(kx-kut)]
$$

Inserting this into the equation of continuity and using the expression for $v_1$ above, we find

$$
\bar{n}_1 \sin(kx-\omega t) = -n_u\frac{eE_1 k}{m}\frac{\sin(kx-\omega t) - \sin(kx-kut)}{(\omega - ku)^2}
$$

Apparently, we were not clever enough, since the $\sin(kx-\omega t)$ factor does not cancel. To get a term of the form $\sin(kx-kut)$, which came from the added term in $v_1$, we can add a term of the form $At\sin(kx-kut)$ to $n_1$. This term obviously vanishes at $t=0$, and it will give the $\sin(kx-kut)$ term when the operator on the left-hand side of the equation of continuity operates on the $t$ factor. When the operator operates on the $\sin(kx-kut)$ factor, it yields zero. The coefficient $A$ must be proportional to $(\omega-ku)^{-1}$ in order to match the same factor in $\partial v_1/\partial x$. Thus we take

$$
\begin{aligned}
n_1 =& -n_u\frac{eE_1 k}{m}\frac{1}{(\omega-ku)^2} \\
&\times[\cos(kx-\omega t) - \cos(kx-kut) - (\omega - ku)t\sin(kx-kut)]
\end{aligned}
$$

This clearly vanishes at $t=0$, and one can easily verify that it satisfies the equation of continuity.

These expressions for $v_1$ and $n_1$ allow us now to calculate the work done by the wave on each beam. The force acting on a unit volume of each beam is

$$
F_u = -eE_q\sin(kx-\omega t)(n_u+n_1)
$$

and therefore its energy changes at the rate

$$
\frac{dW}{dt} = F_u(u+v_1) = -eE_1\sin(kx-\omega t)(\underbrace{n_u u}_{1} +\underbrace{n_uv_1}_{2} + \underbrace{n_1 u}_{3} + \underbrace{n_1 v_1}_{4})
$$

We now take the spatial average over a wavelength. The first term vanishes because $n_u u$ is a constant. The fourth term can be neglected because it is second order, but in any case it can be shown to have zero average. The second and third terms can be evaluated with the help of identities

$$
\begin{aligned}
\left< \sin(kx-\omega t)\cos(kx-kut) \right> &= -\frac{1}{2}\sin(\omega t-kut) \\
\left< \sin(kx-\omega t)\sin(kx-kut) \right> &= \frac{1}{2}\cos(\omega t-kut)
\end{aligned}
$$

The result is then

$$
\begin{aligned}
\left< \frac{dW}{dt}\right>_u = \frac{e^2E_1^2}{2m}n_u\Big[ &\frac{\sin(\omega t - kut)}{\omega - ku} \\
& + ku\frac{\sin(\omega t-kut) - (\omega-ku)t\cos(\omega t-kut)}{(\omega-ku)^2} \Big]
\end{aligned}
$$

The total work done on the particles is found by summing over all the beams:

$$
\sum_u \left< \frac{dW}{dt}\right>_u = \int \frac{f_0(u)}{n_u}\left< \frac{dW}{dt}\right>_u dy = n_0\int\frac{\hat{f}_0(u)}{n_u}\left< \frac{dW}{dt}\right>_u du
$$

Inserting the expression of $\left< \frac{dW}{dt}\right>_u$ and using the definition of $\omega_p$, we then find for the rate of change of kinetic energy

$$
\begin{aligned}
\left< \frac{dW_k}{dt}\right> =& \frac{\epsilon_0 E_1^2}{2}\omega_p^2 \Big[ \int\hat{f}_0(u)\frac{\sin(\omega t - kut)}{\omega - ku} du \\
& + \int\hat{f}_0(u) \frac{\sin(\omega t-kut) - (\omega-ku)t\cos(\omega t-kut)}{(\omega-ku)^2}ku du \Big] \\
=& \frac{1}{2}\epsilon_0 E_1^2 \omega_p^2 \int_{-\infty}^{\infty}\hat{f}_0(u) du \Big\{ \frac{\sin(\omega t - kut)}{\omega - ku} + u\frac{d}{du}\Big[\frac{\sin(\omega t - kut)}{\omega - ku} \Big] \Big\} \\
=& \frac{1}{2}\epsilon_0 E_1^2 \omega_p^2 \int_{-\infty}^{\infty}\hat{f}_0(u) du \frac{d}{du}\Big[u\frac{\sin(\omega t - kut)}{\omega - ku} \Big]
\end{aligned}
$$

This is to be set equal to the rate of loss of wave energy density $W_w$. The wave energy consists of two parts. The first part is the energy density of the electrostatic field:

$$
\left< W_E \right> = \frac{\epsilon \left< E^2 \right>}{2} = \frac{\epsilon E_1^2}{4}
$$

The second part is the kinetic energy of oscillation of the particles. If we again divide the plasma up into beams, the energy per beam is given as before

$$
\left<\Delta W_k \right>_u = \frac{1}{4}\frac{n_u}{m} \frac{e^2E_1^2}{(\omega - ku)^2}\Big[ 1+\frac{2ku}{\omega-ku} \Big]
$$

In deriving this result, we did not use the correct initial conditions, which are important for the resonant particles; however, the latter contribute very little to the total energy of the wave. Summing over the beams, we have

$$
\left<\Delta W_k \right> = \frac{1}{4}\frac{e^2E_1^2}{m}\int_{-\infty}^{\infty} \frac{f_0(u)}{(\omega - ku)^2}\Big[ 1+\frac{2ku}{\omega-ku} \Big] du
$$

The second term in the brackets can be neglected in the limit $\omega/k \gg v_{th}$, which we shall take in order to compare with our previous results. (???) The dispersion relation is found by Poisson's equation:

$$
k\epsilon_0 E_1\cos(kx-\omega t) = -e\sum_u n_1
$$

Using the expression for $n_1$ in the previous section with the wrong initial conditions, we have

$$
1 = \frac{e^2}{\epsilon_0 m}\sum_u \frac{n_u}{(\omega-ku)^2} = \frac{e^2}{\epsilon_0 m}\int_{-\infty}^{\infty} \frac{f_0(u)du}{(\omega-ku)^2}
$$

Comparing this with the expression of $\left< \Delta W_k \right>$, we find

$$
\left< \Delta W_k \right> = \frac{1}{4}\frac{e^2E_1^2}{m}\frac{\epsilon_0 m}{e^2} = \frac{\epsilon_0 E_1^2}{4} = \left< W_E \right>
$$

Thus

$$
W_w = \frac{\epsilon E_1^2}{2}
$$

The rate of change of wave energy density $W_w$ is given by $-\left< \frac{dW_k}{dt} \right>$:

$$
\frac{dW_w}{dt} = -W_w \omega_p^2 \int_{-\infty}^{\infty}\hat{f}_0(u) du \frac{d}{du}\Big[u\frac{\sin(\omega t - kut)}{\omega - ku} \Big]
$$

Integration by parts gives

$$
\begin{aligned}
\frac{dW_w}{dt} =& W_w \omega_p^2 \Big\{ \Big[ u\hat{f}_0(u)\frac{\sin(\omega-ku)t}{\omega - ku} \Big]_{-\infty}^{\infty} \\
&- \int_{-\infty}^{\infty} u\frac{d\hat{f}_0}{du}\frac{\sin(\omega-ku)t}{\omega-ku} du \Big\}
\end{aligned}
$$

The integrated part vanishes for well-behaved functions $\hat{f}_0(u)$, and we have

$$
\frac{dW_w}{dt} = W_w\frac{\omega}{k}\omega_p^2 \int_{-\infty}^{\infty} \frac{d\hat{f}_0}{du}\Big[\frac{\sin(\omega-ku)t}{\omega-ku}\Big] du
$$

where $u$ has been set equal to $\omega/k$ (a constant), since only velociies very close to this will contirbute to the integral. In fact, for sufficiently large $t$, the square bracket can be approximated by a $\delta$-function:

$$
\delta\Big( u - \frac{\omega}{k}\Big) = \frac{k}{\pi}\lim_{t\rightarrow\infty}\Big[ \frac{\sin(\omega-ku) t}{\omega-ku} \Big]
$$

(The original form is $\delta(x) = \lim_{\epsilon\rightarrow 0}\frac{\sin(x/\epsilon)}{\pi x}$, where the function on the right is called sinc.)

Thus

$$
\frac{dW_w}{dt} = W_w\frac{\omega}{k}\omega_p^2 \frac{\pi}{k}\frac{\omega}{k}\hat{f}_0\Big(\frac{\omega}{k}\Big) = W_w \pi \omega\frac{\omega_p^2}{k^2}\hat{f}_0^\prime\Big(\frac{\omega}{k}\Big)
$$

Since $\Im(\omega)$ is the growth rate of $E_1$, and $W_w$ is proportional to $E_1^2$, we must have

$$
\frac{dW_w}{dt} = 2\Im(\omega)W_w
$$

Hence

$$
\Im(\omega) = \frac{\pi}{2}\omega\frac{\omega_p^2}{k^2}\hat{f}_0^\prime\Big(\frac{\omega}{k}\Big)
$$

in agreement with the previous result for $\omega=\omega_p$.

### The Resonant Particles

We are now in a position to see precisely which are the resonant particles that contribute to linear Landau damping. Fig.7-25(Sinc function, ADD IT!) gives a plot of the factor multiplying $\hat{f}_0^\prime(u)$ in the integrand. We see that the largest contribution comes from particles with $|\omega - ku| < \pi/t$, or $|v-v_\phi| < \pi/k = \lambda/2$; i.e. those particles in the initial distribution that have not yet traveled a half-wavelength relative to the wave. The width of the central peak narrows with time, as expected. The subsidiary peaks in the "diffraction pattern" of Fig.7-25 come form particles that have traveled into neighboring half-wavelengths of the wave potential. These particles rapidly become spread out in phase, so that they contribute little on the average; the initial distribution is forgotten. Note that the width of the central peak is independent of the initial amplitude of the wave; hence, the resonant particles may include both trapped and untrapped particles. This phenomenon is unrelated to particle trapping.

### Two Paradoxes Resolved

Fig.7-25 shows that the integrand sinc function is an even function of $\omega-ku$, so that particles going both faster than the wave and slower than the wave add to Landau damping. This is the physical picture we found in Fig.7-24. On the other hand, the slope of the curve of Fig.7-25, which represents the factor in the integrand of one previous equation (WE NEED NUMBERING!), is an odd function of $\omega-ku$; and one would infer from this that particles traveling faster than the wave give energy to it, while those traveling slower than the wave take energy from it. The two descriptions differ by an integration by parts. Both descriptions are correct; which is to be chosen depends on whether one wishes to have $\hat{f}_0(u)$ or $\hat{f}_0(u)^\prime$ in the integrand.

A second paradox concerns the question of Galilean invariance. If we take the view that damping requires there be fewer particles traveling faster than the wave than slower, there is no problem as long as one is in the frame in which the plasma is at rest. However, if one goes into another frame moving with a velocity $V$, there would appear to be more particles moving faster than the wave than slower, and one would expect the wave to grow instead of decay. This paradox is removed by reinserting the second term in Eq.(???) $\frac{2ku}{\omega-ku}$ which we neglected. As shown in the previous section, this term can make $\left< \Delta W_k \right>$ negative. Indeed, in the moving frame, the second term is not negligible, $\left< \Delta W_k \right>$ is negative, and the wave appears to have negative energy (that is, there is more energy in the quiescent, drifting Maxwellian distribution than in the presence of an oscillation). The wave "grows", but adding energy to a negative energy wave makes its amplitude decrease.

## BGK and Van Kampen Modes

We have seen that Landau damping is directly connected to the requirement that $f_0(v)$ be initially uniform in space. (It tends to make negative slopes to zero.) On the other hand, one can generate undamped electron waves if $f(v, t=0)$ is mode to be constant along the particle trajectories initially. (???) It is easy to from Fig.7-24 that the particles will neither gain nor lose energy, on the average, if the plasma is initially prepared so that the density is constant along each trajectory. Such a wave is called a BGK mode, since it was I. B. Bernstein, J. M. Greene, and M. D. Kruskal who first showed that undamped waves of arbitrary $\omega$, $k$, amplitude, and waveform were possible. The crucial parameter to adjust in tailoring $f(v,t=0)$ to form a BGK mode is the relative number of trapped and untrappped particles. If we take the small-amplitude limit of a BGK mode, we obtain what is called a Van Kampen mode. In this limit, only the particles with $v=v_\phi$ are trapped. We can change the number of trapped particles by adding to $f(v,t=0)$ a term proportional to $\delta(v-v_\phi)$. Examination of Fig.7-24 will show that adding particles along the line $v=v_\phi$ will not cause damping --- at a later time, there are just as many particles gaining energy as losing energy. In fact, by choosing distributions with $\delta$-functions at other values of $v_\phi$, one can generate undamped Van Kampen modes of arbitrary $v_\phi$. Such sungular initial conditions are, however, not physical. To get a smoothly varying $f(v,t=0)$, one must sum over Van Kampen modes with a distribution of $v_\phi s$. Although each mode is undamped, the total perturbation will show Landau damping because the various modes get out of phase with one another. (???)

## Ion Landau Damping

Electrons are not the only resonant particles. If a wave has a slow enough phase velocity to match the thermal velocity of ions, ion Landau damping can occur. The ion acoustic wave, for instance, is greatly affected by Landau damping. Recall from the fluid theory that the dispersion relation for ion waves is

$$
\frac{\omega}{k} = v_s = \Big( \frac{k_BT_e + \gamma_i k_B T_i}{m_i} \Big)^{1/2}
$$

If $T_e \le T_i$, the phase velocity lies in the region where $f_{0i}(v)$ has a negative slope, as shown in Fig.7-30(A)(ADD IT!!!). Consequently, ion waves are heavily Landau-damped if $T_e \le T_i$. Ion waves are observable only if $T_e \gg T_i$(Fig.7-30(B)), so that the phase velocity lies far in the tail of the ion velocity distribution. A clever way to introduce Landau damping in a controlled manner was employed by Alexeff, Jones, and  Montgomery. A weakly damped ion wave was created in a heavy-ion plasma (such as xenon) with $T_e \gg T_i$. A small amount of a light atom (helium) was then added. Since the helium had about the temperature as the xenon but had much smaller mass, its distribution function was much broader, as shown by the dashed curve in Fig.7-30(B). The resonant helium ions then caused the wave to damp.

### The Plasma Dispersion Function

To introduce some of the standard terminlogy of kinetic theory, we now calculate the ion Landau damping of ion acoustic waves in the absence of magnetic fields. Ions and electrons follow the Vlasov equation and have perturbations of the form $f_1\propto\exp(ikx-i\omega t)$ indicating plane waves propagating in the x direction. The solution for $f_1$ is given by the linearized momentum equation with appropriate modifications:

$$
f_{1j} = -\frac{iq_jE}{m_j}\frac{\partial f_{oj}/\partial v_j}{\omega-kv_j}
$$

where $E$ and $v_j$ stand for $E_x, v_{xj}$; and the $j$th species has charge $q_j$, mass $m_j$, and particle velocity $v_j$. The density perturbation of the $j$th species is given by

$$
n_{1j} = \int_{-\infty}^{\infty}f_{1j}(v_j)dv_j = -\frac{iq_jE}{m_j}\int_{-\infty}^{\infty}\frac{\partial f_{oj}/\partial v_j}{\omega-kv_j}dv_j
$$

Let the equilibrium distributions $f_{0j}$ be one-dimensional Maxwellians:

$$
f_{0j} = \frac{n_{0j}}{v_{thj}\pi^{1/2}}e^{-v_j^2/v_{th}^2},\quad v_{thj}\equiv (2k_B T_j/m_j)^{1/2}
$$

Introducing the dummy integration variable $s = v_j/v_{thj}$, we can write $n_{1j}$ as

$$
n_{1j} = \frac{iq_j E n_{0j}}{km_j v_{thj}^2}\frac{1}{\pi^{1/2}}\int_{-\infty}^{\infty}\frac{(d/ds)(e^{-s^2})}{s -\zeta_j}ds
$$

where

$$
\zeta\equiv \omega/k v_{thj}
$$

We now define the _plasma dispersion function_ $Z(\zeta)$:

$$
Z(\zeta) = \frac{1}{\pi^{1/2}}\int_{-\infty}^{\infty}\frac{e^{-s^2}}{s -\zeta}ds\quad \Im(\zeta)>0
$$

(Why positive imaginary part???)This is a contour integral, as explained in previous sections, and analytic continuation to the lower half plane must be used if $\Im(\zeta)<0$. $Z(\zeta)$ is a complex function of a complex argument (since $\omega$ or $k$ usually has an imaginary part). In cases where $Z(\zeta)$ cannot be approximated by an asymptotic formula, one can do it numerically.

To express $n_{1j}$ in terms of $Z(\zeta)$, we take the derivative with respect to $\zeta$:

$$
Z^\prime(\zeta) = \frac{1}{\pi^{1/2}}\int_{-\infty}^{\infty}\frac{e^{-s^2}}{(s -\zeta)^2}ds
$$

Integration by parts yields

$$
Z^\prime(\zeta) = \frac{1}{\pi^{1/2}}\Big[ \frac{-e^{-s^2}}{s-\zeta} \Big]_{-\infty}^{\infty} + \frac{1} {\pi^{1/2}}\int_{-\infty}^{\infty}\frac{(d/ds)(e^{-s^2})}{s -\zeta}ds
$$

The first term vanishes, as it must for any well-behaved distribution function. Now we have

$$
n_{1j} = \frac{iq_j E n_{0j}}{km_j v_{thj}^2}Z^\prime(\zeta_j)
$$

Poisson's equation is

$$
\epsilon\nabla\cdot\mathbf{E} = ik\epsilon_0E = \sum_j q_j n_{1j}
$$

Combining the last two equations, separating out the electron term explicitly, and defining

$$
\Omega_{pj}\equiv(n_{oj}Z_j^2 e^2/\epsilon_0 m_j)^{1/2}
$$

We obtain the dispersion relation

$$
k^2 = \frac{\omega_p^2}{v_{the}^2}Z^\prime(\zeta_e) + \sum_j\frac{\Omega_{pj}^2}{v_{thj}^2}Z^\prime(\zeta_j)
$$

Electron plasma waves can be obtained by setting $\Omega_{pj}=0$ (infinitely massive ions). Defining

$$
k_D^2 = 2\omega_p^2/v_{the}^2 = \lambda_D^{-2}
$$

we then obtain

$$
k/k_D^2 = \frac{1}{2}Z^\prime(\zeta_e)
$$

which is the same as @eq:dispersion_0th when $f_{0e}$ is Maxwellian.

### Ion Waves and Their Damping

To obtain ion waves, go back to the plasma dispersion relation and use the fact that their phase velocity $\omega/k$ is much smaller than $v_{the}$; hence $\zeta_e$ is small, and we can expand $Z(\zeta_e)$ in a power series:

$$
Z(\zeta_e) = i\sqrt{\pi}e^{-\zeta_e^2} - 2\zeta_e(1-\frac{2}{3}\zeta_e^2 + ...)
$$

The imaginary term comes from the residue at a pole lying near the real $s$ axis and represents electron Landau damping. For $\zeta_e \ll 1$, the derivative of the above gives

$$
Z^\prime(\zeta_e) = -2i\sqrt{\pi}\zeta_e e^{-\zeta_e^2} - 2 + ... \simeq -2
$$

Electron Landau damping can usually be neglected in ion waves because the slope of $f_e(v)$ is small near its peak. Replacing $Z^\prime(\zeta_e)$ by -2 in the dispersion relation gives

$$
\lambda_D\sum_j \frac{\Omega_{pj}^2}{v_{thj}^2}Z^\prime(\zeta_j) = 1+k^2\lambda_D^2 \simeq 1
$$

The term $k^2\lambda_D^2$ represents the deviation from quasineutrality. ($1/k\sim L,k^2\lambda_D^2 \sim\lambda_D^2/L^2\ll 1$ where $L$ is the system length scale.)

We now specialize tothe case of a single ion species. Since $n_{0e}=Z_in_{0i}$, the coefficient in the equation above is

$$
\lambda_D\frac{\Omega_{p}^2}{v_{thi}^2}=\frac{\epsilon k_B T_e}{n_{0e}e^2}\frac{n_{0i}Z^2e^2}{\epsilon m_i}\frac{m_i}{2k_B T_i} = \frac{1}{2}\frac{ZT_e}{T_i}
$$

For $k_2\lambda_D^2\ll 1$, the dispersion relation becomes

$$
Z^\prime(\frac{\omega}{kv_{thi}}) = \frac{2T_i}{ZT_e}
$$

Solving this equation is a nontrivial problem. Suppose we take real $k$ and complex $\omega$ to study damping in time. Then the real and imaginary parts of $\omega$ must be adjusted so that $\Im(Z^\prime)=0$ and $\Re(Z^\prime) = 2T_i/ZT_e$. There are in general many possible roots $\omega$ that satisfy this, all of them having $\Im(\omega)<0$. The least damped, dominant root is the one having the smallest $|\Im(\omega)|$. Damping in space is usually treated by taking $\omega$ real and $k$ complex. Again we get a series of roots $k$ with $\Im(k)>0$, representing spatial damping. However, the dominant root does not correspond to the same value of $\zeta_i$ as in the complex $\omega$ case. It turns out that the spatial problem has to be treated with special attention to the excitation mechanism at the boundaries and with more careful treatment of the electron term $Z^\prime(\zeta_e)$.

To obtain an analytic result, we consider the limit $\zeta_i \gg 1$, corresponding to large temperature ratio $\theta\equiv ZT_e/T_i$. (???) The asymptotic expression for $Z^\prime(\zeta_i)$ is

$$
Z^\prime(\zeta_i) = -2i\sqrt{\pi}\zeta_i e^{-\zeta_i^2} + \zeta_i^{-2} + \frac{3}{2}\zeta_i^{-4} + ...
$$

(I think this can be found from the plasma handbook; it can also be found [here](https://farside.ph.utexas.edu/teaching/plasma/lectures/node87.html)) If the damping is small, we cna neglect the Landau term in the first approximation. The equation becomes

$$
\frac{1}{\zeta_i^2}\Big( 1+\frac{3}{2}\frac{1}{\zeta_i^2} \Big) = \frac{2}{\theta}
$$

Since $\theta$ is assumed large, $\zeta_i^2$ is large; and we can approximate $\zeta_i^2$ by $\theta/2$ in the second term. Thus

$$
\frac{1}{\zeta_i^2}\Big( 1+\frac{3}{\theta} \Big) = \frac{2}{\theta},\quad \zeta_i^2 = \frac{3}{2} + \frac{\theta}{2}
$$

or

$$
\frac{\omega^2}{k^2} = \frac{2k_B T_i}{m_i}\Big( \frac{3}{2} + \frac{ZT_e}{2T_i} \Big) = \frac{Zk_B T_e + 3k_B T_i}{m_i}
$$

This is the ion wave dispersion relation with $\gamma_i=3$, generalized to arbitrary $Z$.

We now substitue the above approximations back into the dispersion relation retaining the Landau term:

$$
\begin{aligned}
\frac{1}{\zeta_i^2}\Big( 1+\frac{3}{\theta} \Big) - 2i\sqrt{\pi}\zeta_i e^{-\zeta_i^2} = \frac{2}{\theta} \\
\frac{1}{\zeta_i^2}\Big( 1+\frac{3}{\theta} \Big) = \frac{2}{\theta}(1+i\sqrt{\pi}\theta\zeta_i e^{-\zeta_i^2}) \\
\zeta_i^2 = \Big(\frac{3+\theta}{2}\Big)^{1/2}(1+i\sqrt{\pi}\theta\zeta_i e^{-\zeta_i^2})^{-1}
\end{aligned}
$$

Expanding the square root, we have

$$
\zeta_i \simeq \Big(\frac{3+\theta}{2}\Big)^{1/2}\Big(1-\frac{1}{2}i\sqrt{\pi}\theta\zeta_i e^{-\zeta_i^2}\Big)
$$

The approximate damping rate is found by using the above approximation in the imaginary term:

$$
-\frac{\Im(\zeta_i)}{\Re(\zeta_i)} = \frac{\Im(\omega)}{\Re(\omega)} = \Big(\frac{\pi}{8} \Big)^{1/2}\theta (3+\theta)^{1/2} e^{-(3+\theta)/2}
$$

This asymptotic expression, accurate for large $\theta$, shows an exponential decrease in damping with increasing $\theta$. When $\theta$ falls below 10, this expression becomes inacuurate, and the damping must be computed from the original expression which employs the Z-function. For the experimentally interesting region $1<\theta<10$, the following simple formula is ananalytic fit to the exact solution:

$$
-\Im(\omega)/\Re(\omega) = 1.1\theta^{7/4}\exp(-\theta^2)
$$

What happens when collisions are added to ion Landau damping? Surprisingly little. Ion-electron collisions are weak because the ion and electron fluids move almost in unison, creating little friction between them. Ion-ion collisions (ion viscosity) can damp ion acoustic waves, but we know that sound waves in air can propagate well in spite of the dominance of collisions. Actually, collisions spoil the particle resonances that cause Landau damping, and one finds that the total damping is _less_ than the Landau damping unless the collision rate is extremely large. In summary, ion Landau damping is almost always the dominant process with ion waves, and this varies exponentially with the ratio $ZT_e/T_i$.

## Kinetic Effects in a Magnetic Field

When either the dc magnetic field $\mathbf{B}_0$ or the oscillating magnetic field $\mathbf{B}_1$ is finite, the $\mathbf{v}\times\mathbf{B}$ term in the Vlasov equation for a collisionless plasma must be included. The linearized equation is then replaced by

$$
\frac{\partial f_1}{\partial t} + \mathbf{v}\cdot\nabla f_1 +\frac{q}{m}(\mathbf{v}\times\mathbf{B}_0)\cdot\frac{\partial f_1}{\partial \mathbf{v}} = -\frac{q}{m}(\mathbf{E}_1 + \mathbf{v}\times\mathbf{B}_1)\cdot\frac{\partial f_0}{\partial \mathbf{v}}
$$

Resonant particles moving along $\mathbf{B}_0$ still cause Landau damping if $\omega/k\simeq v_{th}$, but two new kinetic effects now appera which are connected with the velocity component $\mathbf{v}_\perp$ perpendicular to $\mathbf{B}_0$. One of these is cyclotron damping, which will be discussed later; the other is the generation of cyclotron harmonics, leading to the possibility of the oscillation commonly called Bernstein waves.

Harmonics of the cyclotron frequency are generated when the particles' circular Larmor orbits are distorted by the wave fields $\mathbf{E}_1$ and $\mathbf{B}_1$. These finite-$r_L$ effects are neglected in ordinary fluid theory but can be taken into account to order $k^2r_L^2$ by including the viscosity. A kinetic treatment can be accurate even for $k^2r_L^2 = \mathcal{O}(1)$. To understand how harmonics aris, consider the motion of a particle in an electric field:

$$
\mathbf{E} = E_x e^{i(kx-\omega t)}\hat{\mathbf{x}}
$$

The equation of motion is

$$
\ddot{x} + \omega_c^2 x = \frac{1}{m}E_x e^{i(kx-\omega t)}
$$

If $kr_L$ is not small, the exponent varies from one side of the orbit to the other. We can approximate $kx$ by substituting the undisturbed orbit $x=r_L\sin\omega_c t$

$$
\ddot{x} + \omega_c^2 x = \frac{1}{m}E_x e^{i(kr_L\sin\omega_c t-\omega t)}
$$

The generating function for the Bessel function $J_n(z)$ is

$$
e^{z(t-1/t)/2} = \sum_{n=-\infty}^{\infty} t^n J_n(z)
$$

Letting $z=kr_L$ and $t = \exp(i\omega_c t)$, we obtain

$$
e^{ikr_L\sin\omega_c t} = \sum_{n=-\infty}^{\infty} J_n(kr_L) e^{in\omega_c t}
$$

$$
\ddot{x} + \omega_c^2 x = \frac{q}{m}E_x \sum_{n=-\infty}^{\infty}J_n(kr_L) e^{i(\omega-n\omega_c) t}
$$

The following solution can be verified by direct substitution:

$$
x = \frac{q}{m}E_x \sum_{n=-\infty}^{\infty} \frac{J_n(kr_L)e^{i(\omega-n\omega_c) t}}{\omega_c^2 - (\omega - n\omega_c)^2}
$$

This shows that the motion has frequency components differing from the driving frequency by multiples of $\omega_c$, and that the amplitudes of these components are proportional to $J_n(kr_L)/[\omega_c^2 - (\omega - n\omega_c)^2]$. When the denominator vanishes, the amplitude becomes large. This happens when $\omega-n\omega_c = \pm \omega_c$, or $\omega=(n\pm 1)\omega_c,\ n=0,\pm 1, \pm 2, ...$; that is, when the field $\mathbf{E}(x,t)$ resonates with any harmonic of $\omega_c$. In the fluid limit $kr_L\rightarrow 0$, $J_n(kr_L)$ can be approximated by $(kr_L/2)^n/n!$, which approaches 0 for all $n$ except $n=0$. For $n=0$, the coefficient becomes $(\omega_c^2-\omega^2)^{-1}$, which is the fluid result containing only the fundamental cyclotron frequency.

### The Hot Plasma Dielectric Tensor

After Fourier analysis of $f_1(\mathbf{r},\mathbf{v},t)$ in space and time, the linearized Vlasov equation can be solved for a Maxwellian distribution $f_0(\mathbf{v})$, and the resulting expression $f_1(\mathbf{k},\mathbf{v},\omega)$ can be used to calculate the density and current of each species. The result is usually expressed in the form of an equivalent dielectric tensor $\overleftrightarrow{\epsilon}$, such that the dispersion vector $\mathbf{D}=\overleftrightarrow{\epsilon}\cdot\mathbf{E}$ can be used in the Maxwell's equations to calculate dispersion relations for various waves. The algebra is horrendous and therefore omitted. We quote only a restricted result valid for nonrelativistic plasmas with isotropic pressure $T_\perp = T_\parallel$ and no zero-order drifts $\mathbf{v}_{0j}$; these restrictions are easily removed, but he general formulas are too cluttered for our purposes. We further assume $\mathbf{k} = k_x\hat{\mathbf{x}} + k_z\hat{\mathbf{z}}$, with $\hat{\mathbf{z}}$ being the direction of $\mathbf{B}_0$; no generality is lost by setting $k_y$ equal to zero, since the plasma is isotropic in the plane perpendicular to $\mathbf{B}_0$. The elements of $\overleftrightarrow{\epsilon}_R = \overleftrightarrow{\epsilon}/\epsilon_0$ are then

$$
\begin{aligned}
\epsilon_{xx} &= \\
\epsilon_{yy} &= \\
\epsilon_{zz} &= \\
\epsilon_{xz} &= \\
\epsilon_{yz} &= \\
\epsilon_{zx} &=
\end{aligned}
$$

where $Z(\zeta)$ is the plasma dispersion function, $I_n(b)$ is the $n$th order Bessel function of imaginary argument, and the other symbols are defined by

$$
\begin{aligned}
\omega_{ps}^2 &= n_{0s} Z_s^2 e^2 / \epsilon_0 m_s \\
\zeta_s &= (\omega+n\omega_{cs})/k_z v_{ths} \\
\omega_{cs} &= |Z_seB_0/m_s| \\
v_{ths}^2 &= 2k_B T_s/m_s \\
b_s &= \frac{1}{2}k_\perp^2 r_{Ls} = k_x^2 k_B T_s / m_s \omega_{cs}^2
\end{aligned}
$$

The first sum is over species $s$, with the understanding that $\omega_p, b, \zeta_0$, and $\zeta_n$ all depend on $s$, and that the $\pm$ stands for the sign of the charge. The second sum is over the harmonic number $n$. The primes indicate differentiation with respect to the argument.

As foreseen, there appera Bessel functions of finite-$r_L$ parameter $b$. (The change from $J_n(b)$ to $I_n(b)$ occurs in the integration over velocities.) The elements of $\overleftrightarrow{\epsilon}$ involving motion along $\hat{\mathbf{z}}$ contain $Z^\prime(\zeta_n)$, which gives rise to Landau damping when $n=0$ and $\omega/k_z\simeq v_{th}$. The $n\neq 0$ terms now make possible another collisionless damping mechanism, cyclotron damping, which occurs when $(\omega_c \pm n\omega_c)/k_z\simeq v_{th}$.

### Bernstein Waves

Electrostatic waves propagating at right angles to $\mathbf{B}_0$ at harmonics of the cyclotron frequency are called Bernstein waves. The dispersion relation can be found by using the dielectric elements give in the previous section in Poisson's equation $\nabla\cdot\overleftrightarrow{\epsilon}\cdot\mathbf{E}=0$. If we assume electrostatic perturbations such that $\mathbf{E}_1=-\nabla\phi_0$, and consider waves of the form $\phi_1=\phi_1\exp i(\mathbf{k}\cdot\mathbf{r}-\omega t)$, Poisson's equation can be written

$$
k_x^2 \epsilon_{xx} + 2k_x k_z \epsilon_{xz} + k_z^2 \epsilon_{zz} = 0
$$

Note that we have chosen a coordinate system that has $\mathbf{k}$ lying in the x-z plane, so that $k_y=0$. We next substitute for $\epsilon_{xx},\epsilon_{xz}$, and $\epsilon_{zz}$ from the dielectric tensor expression and express $Z^\prime(\zeta_n)$ in terms of $Z(\zeta_n)$ with the identity

$$
Z^\prime(\zeta_n) = -2[1+\zeta Z(\zeta_n)]
$$

via integration by parts. The equation becomes

$$
\begin{aligned}
k_x^2 + &k_z^2 + \sum_s\frac{\omega_p^2}{\omega^2}e^{-b}\zeta_0 \sum_{n=-\infty}^{\infty} I_n(b) \\
&\times \big[ k_x^2\frac{n^2}{b}Z - 2\big(\frac{2}{b}\big)^{1/2}nk_xk_z(1+\zeta_n Z)-2k_z^2 \zeta_n(1+\zeta_n Z) \big] = 0
\end{aligned}
$$

The expression in the square brackets can be simplified in a few algebraic steps to $2k_z^2[\zeta_{-n} + \zeta_0^2 Z(\zeta_n)]$ by using the definitions $b = k_x^2 v_{th}^2/2\omega_c^2$ and $\zeta_n=(\omega+n\omega_c)/k_zv_{th}$. Further noticing that $2k_z^2 \omega_p^2 \zeta_0/\omega^2 = 2\omega_p^2/v_{th}^2\equiv k_D^2$ for each species, we can write the equation as

$$
k_x^2 + k_z^2 + \sum_s k_D^2 e^{-b}\sum_{n=-\infty}^{\infty} I_n(b)[\zeta_{-n}/\zeta_0 + \zeta_0 Z(\zeta_n)] = 0
$$

The term $\zeta_{-n}/\zeta_0=1-n\omega_c/\omega$. Since $I_n(b)=I_{-n}(b)$, the term $I_n(b)n\omega_c/\omega$ sums to zero when $n$ goes from $-\infty$ to $\infty$; hence, $\zeta_{-n}/\zeta_0$ can be replaced by 1. Defining $k^2 = k_x^2 + k_z^2$, we obtain the general dispersion relation for Bernstein waves:

$$
1+ \sum_s\frac{k_D^2}{k_\perp^2}e^{-b}\sum_{n=-\infty}^{\infty} I_n(b)[1 + \zeta_0 Z(\zeta_n)] = 0
$$

(A) _Electron Bernstein Waves_. Let us first consider high-frequency waves in which the ions do not move. These waves are not sensitive to small deviations from perpendicular propagation, and we may set $k_z=0$, so that $\zeta_n\rightarrow\infty$. There is, therefore, no cyclotron damping; the gaps in the spectrum that we shall find are not caused by such damping. For large $\zeta_n$, we may replace $Z(\zeta_n)$ by $-1/\zeta_n$. (???) The $n=0$ term in teh second sum of the above equation then cancels out, and we can divide the sum into two sums, as follows:

$$
k_\perp^2 + \sum_s k_D^2 e^{-b}\Big[ \sum_{n=1}^{\infty} I_n(b)(1 - \zeta_0 /\zeta_n) + \sum_{n=1}^{\infty} I_{-n}(b)(1 - \zeta_0 /\zeta_{-n})\Big] = 0
$$

or

$$
k_\perp^2 + \sum_s k_D^2 e^{-b}\sum_{n=1}^{\infty} I_n(b)\Big[ 2-\frac{\omega}{\omega+n\omega_c} - \frac{\omega}{\omega-n\omega_c} \Big] = 0
$$

The bracket collapses to a single term upon combining over a common denominator:

$$
1 = \sum_s \frac{k_D^2}{k_\perp^2}e^{-b}\sum_{n=1}^\infty I_n(b)\frac{2n^2\omega_c^2}{\omega^2 - n^2\omega_c^2}
$$

Using the definitions of $k_D$ and $b$, one obtains the well-known (NOT TO ME!!!) $k_z=0$ dispersion relation

$$
1 = \sum_s \frac{\omega_p^2}{\omega_c^2}\frac{2}{b}e^{-b}\sum_{n=1}^\infty \frac{I_n(b)}{(\omega/n\omega_c)^2-1}
$$

We now specialize to the case of electron oscillations. Dropping the sum over species, we obtain

$$
\frac{k_\perp^2}{k_D^2} = 2\omega_c^2 \sum_{n=1}^\infty \frac{e^{-b}I_n(b)}{\omega^2 - n\omega_c^2}n^2 \equiv \alpha(\omega, b)
$$

... (ADD fig.7-33!!!)

To obtain the fluid limit, we repalce $I_n(b)$ by its small-$b$ value $(b/2)^n/n!$. Only the $n=1$ term remains in the limit $b\rightarrow 0$, and we obtain

$$
1 = \frac{\omega_p^2}{\omega_c^2}\frac{2}{b}\frac{b}{2}\Big( \frac{\omega^2}{\omega_c^2} - 1\Big)^{-1} = \frac{\omega_p^2}{\omega^2 - \omega_c^2}
$$

or $\omega^2 = \omega_p^2 + \omega_c^2 = \omega_h^2$, which is the upper hybrid oscillation. As $k_\perp\rightarrow 0$, this frequency must be one of the roots. If $\omega_h$ falls between two high harmonics of $\omega_c$, the shape of the $\omega-k$ curves changes near $\omega = \omega_h$ to allow this to occur.
...

(B) _Ion Bernstein Waves_. In the case of waves at ion cyclotron harmonics, one has to distinguish between _pure_ ion Bernstein waves, for which $k_z=0$, and _neutralized_ ion Bernstein waves, for which $k_z$ has a small but finite value. The difference, as we have seen earlier for lower hybrid oscillations, is that finite $k_z$ allows electrons to flow along $\mathbf{B}_0$ to cancel charge separations. Though the $k_z=0$ case has already been treated in ...
