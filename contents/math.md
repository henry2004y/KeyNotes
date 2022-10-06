# Math {#sec:math}

## Complex Analysis

In complex analysis, the following statements are equivalent:

1. $f(z)$ is an analytic function of $z$ in some neighbourhood of $z_0$.
2. $\oint_C f(z)dz=0$ for every closed contour $C$ that lies in that neighbourhood of $z_0$.
3. $df(z)/dz$ exists at $z=z_0$.
4. $f(z)$ has a convergent Taylor expansion about $z=z_0$.
5. The $n^{th}$ derivative $d^nf(z)/dz^n$ exists at $z=z_0$ for all $n$.
6. The _Cauchy-Riemann condition_ is satisfied at $z=z_0$. Take $u$ and $v$ to be the real and imaginary parts respectively of a complex-valued function of a single complex variable $z = x + iy$, $f(x + iy) = u(x,y) + iv(x,y)$.

$$
\begin{aligned}
\frac{\partial u}{\partial x}&=\frac{\partial v}{\partial y} \\
\frac{\partial u}{\partial y}&=-\frac{\partial v}{\partial x}
\end{aligned}
$$

An idea of _analytic continuation_ is introduced here. In practice, an analytic function is usually defined by means of some mathematical expression --- such as a polynomial, an infinite series, or an integral. Ordinarily, there is some region within which the expression is meaningful and does yield an analytic function. Outside this region, the expression may cease to be meaningful, and the question then arises as to whether or not there is any way of extending the definition of the function so that this "extended" function is analytic over a larger region. A simple example is given as follows.

_Ex.1_ Polynomial series

$$
f(z)=\sum_{n=0}^{\infty} z^n
$$

which describes an analytic function for $|z|<1$ but which diverges for $|z|>1$. However, the function

$$
g(z)=\frac{1}{1-z}
$$

is analytic over the whole plane (except at $z=1$), and it coincides with $f(z)$ inside the unit circle. 

Such a function $g(z)$, which coincides with a given analytic $f(z)$ over that region for which $f(z)$ is defined by which also is analytic over some extension of that region, is said to be an _analytic continuation_ of $f(z)$. It is useful to think of $f(z)$ and $g(z)$ as being the same function and to consider that the formula defining $f(z)$ failed to provide the values of $f(z)$ in the extended region because of some defect in the mode of description rather than because of some limitation inherent in $f(z)$ itself. [c.f. G.F.Carrier, M.Krook and C.E.Pearson, Functions of a Complex Variable, McGraw-Hill (1966), p.63]

_Ex.2_ Laplace transform

$$
\mathcal{L}[1]= \int_0^\infty dt 1\cdot e^{i\omega t}=-\frac{1}{i\omega},\, \textrm{if } \Im(\omega)>0
$$

If you have a pure real frequency $\omega$, then when you integrate $v$ over the real axis, at $v=\omega/k$ you will encounter a singular point. Actually, this integration is convergent if and only if $\Im(\omega)>0$. $-\frac{1}{i\omega}$ is the _analytic continuation_ of $f(\omega)$ for all complex $\omega$ except $\omega=0$.

To calculate the integral around singular points, we may take advantage of the Cauchy integral formula and the residual theorem.

__Theorem 2.1__ Cauchy integral

Let $C_\epsilon$ be a circular arc of radius $\epsilon$, centered at $\alpha$, with subtended angle $\theta_0$ in counterclockwise direction. 
Let $f(z)$ be an analytic function on $C_\epsilon+$inside $C_\epsilon$. Then

$$
\lim_{\epsilon\rightarrow0}\int_{c_\epsilon}\frac{f(z)dz}{z-\alpha}=i\theta_0 f(\alpha)
$$ 

_Proof:_
On $C_\epsilon$, $z=\alpha+\epsilon e^{i\theta}$, $dz=i\epsilon e^{i\theta}d\theta$.

$$
LHS=\lim_{\epsilon\rightarrow0}\int_{C_\epsilon}\frac{f(\alpha+\epsilon e^{i\theta})i\epsilon e^{i\theta}d\theta}{\epsilon e^{i\theta}}=i\theta_0 f(\alpha).
$$
□

__Theorem 2.2__ Residue

Let $f(z)$ be an analytic function on a closed contour $C+$inside $C$. If point $\alpha$ is inside $C$, we have

$$
f(\alpha)=\frac{1}{2\pi i}\oint_c \frac{f(z)dz}{z-\alpha}
$$ 

_Proof_:

$\frac{f(z)}{z-\alpha}$ is analytic within region bounded by $C+L_1-C_\epsilon+L_2$, where $L_1$ and $L_2$ are two paths that connects/breaks $C$ and $C_\epsilon$. Therefore

$$
\begin{aligned}
\int_{C}+\int_{L_1}-\int_{C_\epsilon}+\int_{L_2}\frac{f(z)}{z-\alpha}dz=0 \\
\Rightarrow \oint_{C}\frac{f(z)}{z-\alpha}dz=\oint_{C_\epsilon}\frac{f(z)}{z-\alpha}dz=2\pi i f(\alpha) \textrm{ as }L_1\rightarrow -L_2,\epsilon\rightarrow0 .
\end{aligned}
$$
□

There is also a purely algebraic proof available.

Note that the value of $f(z)$ on $C$ determines value of $f(\alpha)$ for all $\alpha$ within $C$. This has a close relation to the potential theory. Actually, what Cauchy-Riemann condition says physically is that the potential flow is both irrotational and incompressible!

__Theorem 2.3__ Residual theorem

Let $f(z)$ be an analytic function on $C+$inside $C$. If point $\alpha$ is inside $C$, we have

$$
\oint_c \frac{f(z)dz}{z-\alpha}=2\pi i f(\alpha)\equiv 2\pi i \text{Res}\Big[ \frac{f(z)}{z-x};z=\alpha \Big]
$$ {#eq:residual_thm}
□

Khan Academy has a [nice video](https://youtu.be/YWIseo5LwgQ) on this. Applying this powerful theorem, we can calculate many integrals analytically which contain singular points.

_Ex.3_

$$
f(\omega)=\int_{-\infty}^{\infty}dv \frac{e^{iv}}{v-\omega}=2\pi ie^{i\omega},\,\Im(\omega)>0
$$

Pick a semi-circle contour $C_R$ in the upper plane of complex v. Let $C$ be a closed contour of a line along the real axis $\Re(v)$ and the semi-circle $C_R$. $e^{iv}$ is analytic along and inside $C$, so

$$
f(\omega)=\Big(\oint_C-\int_{C_R}\Big)\frac{dv e^{iv}}{v-\omega}=2\pi i e^{i\omega}-\int_{C_R}\frac{dv e^{iv}}{v-\omega}=2\pi i e^{i\omega} \textrm{ as } R\rightarrow \infty
$$

$$
\Big( e^{iv}=e^{i(v_r+iv_i)}=e^{iv_r}e^{-v_i},v_i>0 ; v-\omega\rightarrow\infty\Big)
$$

$2\pi ie^{i\omega}$ is the _analytic continuation_ of $f(\omega)$ for all $\omega$. Analytic continuation is achieved if we deform the contour integration in the complex $v$ plane.

_Ex.4_

$$
\frac{\epsilon(\omega)}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{k^2}\chi(\omega)
$$

where

$$
\begin{aligned}
\chi(\omega)&=\int_{-\infty}^{\infty}dv \frac{\partial g/\partial v}{v-\omega/k},\ Im(\omega)>0 \\
&=\int_L dv\frac{\partial g(v)/\partial v}{v-\omega/k}, \textrm{for all complex $\omega$, as long as $L$ lies below $\omega$}
\end{aligned}
$$

Landau integral: pick a trajectory _under_ the singular point in the complex plane to achieve the integration.

FIGURE NEEDED!

Let $C_\epsilon$ be a small semi-circle under $\omega/k$. Then

$$
\begin{aligned}
\frac{\epsilon(\omega)}{\epsilon_0}&=1-\frac{{\omega_{pe}}^2}{k^2}\Big[  P\int_{-\infty}^{\infty}dv\frac{\partial g(v)\partial v}{v-\omega/k}+\int_{C_\epsilon}dv\frac{\partial g(v)\partial v}{v-\omega/k} \Big] \notag \\
&=1-\frac{{\omega_{pe}}^2}{k^2}\Big[  P\int_{-\infty}^{\infty}dv\frac{\partial g(v)\partial v}{v-\omega/k}+i\pi\frac{\partial g(v)}{\partial v}\big|_{v=\frac{\omega}{k}} \Big]
\end{aligned}
$$

where $P$ denotes the principle value integral. This is the same as @eq:landau_residue that will be discussed in @sec:landau.

## Helmholtz's Theorem

Helmholtz's theorem, also known as the fundamental theorem of vector calculus, states that any sufficiently smooth, rapidly decaying vector field in three dimensions can be resolved into the sum of an irrotational (curl-free) vector field and a solenoidal (divergence-free) vector field.

Let $\mathbf{F}$ be a vector field on a bounded domain $V \subseteq \mathbf{R}^3$, which is twice continuously differentiable, and let S be the surface that encloses the domain V. Then $\mathbf{F}$ can be decomposed into a curl-free component and a divergence-free component:

$$
\mathbf{F}=\nabla \Phi +\nabla\times\mathbf{A}
$$

where

$$
\begin{aligned}
\Phi(\mathbf{r})&= \frac{1}{4\pi}\int_V\frac{\nabla^\prime\cdot\mathbf{F}^\prime(\mathbf{r}^\prime)}{|\mathbf{r}-\mathbf{r}^\prime|}dV^\prime -\frac{1}{4\pi}\oint_s \widehat{\mathbf{n}}^\prime\cdot\frac{\mathbf{F}(\mathbf{r}^\prime)}{|\mathbf{r}-\mathbf{r}^\prime|}dS^\prime \\
\mathbf{A} &= \frac{1}{4\pi}\int_V\frac{\nabla^\prime\times \mathbf{F}^\prime(\mathbf{r}^\prime)}{|\mathbf{r}-\mathbf{r}^\prime|}dV^\prime -\frac{1}{4\pi}\oint_s \widehat{\mathbf{n}}^\prime\times\frac{\mathbf{F}(\mathbf{r}^\prime)}{|\mathbf{r}-\mathbf{r}^\prime|}dS^\prime 
\end{aligned}
$$

and $\nabla^\prime$ is the nabla operator with respect to $\mathbf{r}^\prime$, not $\mathbf{r}$.

If $V = \mathbf{R}^3$ and is therefore unbounded, and $\mathbf{F}$ vanishes faster than $1/r$ as $r\rightarrow\infty$, then the second component of both scalar and vector potential are zero. That is,

$$
\begin{aligned}
\Phi(\mathbf{r})&= \frac{1}{4\pi}\int_V\frac{\nabla^\prime\cdot\mathbf{F}^\prime(\mathbf{r}^\prime)}{|\mathbf{r}-\mathbf{r}^\prime|}dV^\prime  \\
\mathbf{A} &= \frac{1}{4\pi}\int_V\frac{\nabla^\prime\times \mathbf{F}^\prime(\mathbf{r}^\prime)}{|\mathbf{r}-\mathbf{r}^\prime|}dV^\prime 
\end{aligned}
$$

## Toroidal and Poloidal Decomposition

The earliest use of these terms cited by the Oxford English Dictionary (OED) is by Walter M. Elsasser (1946) in the context of the generation of the Earth's magnetic field by currents in the core, with "toroidal" being parallel to lines of latitude and "poloidal" being in the direction of the magnetic field (i.e. towards the poles).

![Toroidal-Poloidal Decomposition.](images/toroidal_poloidal.png){#fig:toroidal_poloidal}

The OED also records the later usage of these terms in the context of toroidally confined plasmas, as encountered in magnetic confinement fusion. In the plasma context, the toroidal direction is the long way around the torus, the corresponding coordinate being denoted by z in the slab approximation or $\zeta$ or $\phi$  in magnetic coordinates; the poloidal direction is the short way around the torus, the corresponding coordinate being denoted by y in the slab approximation or $\theta$  in magnetic coordinates. (The third direction, normal to the magnetic surfaces, is often called the "radial direction", denoted by x in the slab approximation and variously $\psi$, $\chi$, r, $\rho$, or $s$ in magnetic coordinates.)

In vector calculus, a topic in pure and applied mathematics, a poloidal–toroidal decomposition is a restricted form of the Helmholtz decomposition. It is often used in the spherical coordinates analysis of solenoidal vector fields, for example, magnetic fields and incompressible fluids.

For a three-dimensional vector field $\mathbf{F}$ with zero divergence

$$
\nabla\cdot\mathbf{F}=0
$$

This $\mathbf{F}$ can be expressed as the sum of a toroidal field $\mathbf{T}$ and poloidal vector field $\mathbf{P}$

$$
\mathbf{F} = \mathbf{T}+\mathbf{P}
$$

where $\widehat{r}$ is a radial vector in spherical coordinates $(r,\theta,\phi)$. The toroidal field is obtained from a scalar field, $\psi(r,\theta,\phi)$ as the following curl,

$$
\mathbf{T}=\nabla\times(\widehat{r}\Psi(\mathbf{r}))
$$

and the poloidal field is derived from another scalar field $\phi(r,\theta,\phi)$ as a twice-iterated curl,

$$
\mathbf{P}=\nabla\times\nabla\times(\widehat{r}\Phi(\mathbf{r}))
$$

This decomposition is symmetric in that the curl of a toroidal field is poloidal, and the curl of a poloidal field is toroidal. The poloidal–toroidal decomposition is unique if it is required that the average of the scalar fields $\Psi$ and $\Phi$ vanishes on every sphere of radius $r$.

## Magnetic Dipole Field

If there's no current,

$$
\nabla\times\mathbf{B}=\mu_0 \mathbf{J} = 0 \Rightarrow B=-\nabla V
$$

The divergence free condition for magnetic field then yields a laplace equation

$$
\Delta V = 0
$$

for the Gauss potential $V$. The solution of Laplace equation within a certain volume has been first described by Gauss and reads in complex notation

$$
V(\mathbf{r},t) = Re \sum_{l=0}^{\infty}\sum_{m=0}^{l} \Big\{ R_0 \big( \frac{R_0}{r}\big)^{l+1} G_{lm}^\ast(t)Y_{lm}^\ast(\theta,\phi) + R_0\big( \frac{r}{R_0} \big)^{l} C_{lm}^\ast(t)Y_{lm}^\ast(\theta,\phi) \Big\}
$$

where $R_0$ is a constant coefficient, and the complex internal Gauss coefficients

$$
G_{lm}^\ast(t) = G_{lm}(t) - i H_{lm}(t)
$$

and external coefficients

$$
C_{lm}^\ast(t) = C_{lm}(t) - iD_{lm}(t)
$$

adopting all time variability as well as the complex spherical harmonics

$$
Y_{lm}^\ast(\theta,\phi) = e^{im\phi}_{lm}(\cos{\theta})
$$

with associated Legendre polynomials $P_{lm}(\cos{\theta})$. e.g. $P_{00}(\cos\theta) = 1,\ P_{10} = \cos\theta,\ P_{11} = \sin\theta$. 

_Ex 1._ Planet dipole field

Let the radius of the planet be $R$ (the same as the coefficient). Then the Gauss potential for the dipole reads

$$
V = \frac{R^3}{r^2}\big[ G_{10}\cos\theta + G_{11}\cos\phi\sin\theta + H_{11}\sin\phi\sin\theta \big].
$$

Let dipole moment be $\mathbf{m} = (G_{11},H_{11},G_{10})$ in Cartesian coordinates, we have

$$
\mathbf{B} = -\nabla V = -\nabla \Big[ \frac{R^3\mathbf{m}\cdot\mathbf{r}}{r^3} \Big].
$$

This is why in literature we often see dipole moments in the unit of $[nT]$. One step further, we have

$$
\mathbf{B} = \frac{\mu_0}{4\pi}\frac{3(\mathbf{m}\cdot\widehat{r})\widehat{r}-\mathbf{m}}{r^3}
$$

In Cartesian representation,

$$
\mathbf{B} = \frac{\mu_0}{4\pi}\frac{1}{r^5}
\begin{pmatrix} 
(3x^2-r^2) & 3xy & 3xz \\
3yx & (3y^2-r^2) & 3yz \\
3zx & 3zy & (3z^2-r^2) 
\end{pmatrix}
\mathbf{m}
$$

Note that $(x,y,z)$ and $r$ are all normalized to the radius of the planet $R$.

## Green's Function

The Vlasov theory and the 2-fluid theory only tell us when instability will happen, but neither tell us the severity of instability. To know the magnitude of instability mathematically, we can introduce Green's function

$$
G(x,t)=\frac{1}{2\pi}\int_{-\infty}^{\infty}e^{ikx-i\omega(k) t}dk
$$

where $t$ is the beam's pulse length and $x$ is the propagation distance. At $t=0$, we have

$$
\begin{aligned}
G(x,0)&=\frac{1}{2\pi}\int_{-\infty}^{\infty}e^{ikx}dk=\frac{1}{2i\pi x}e^{ikx}\bigg|_{k=-\infty}^{k=\infty} \\
&=\lim_{k\rightarrow\infty}\frac{1}{2i\pi x}\big[ \cos{kx}+i\sin{kx}-\cos{kx}+i\sin{kx} \big] \\
&=\lim_{k\rightarrow\infty}\frac{1}{\pi}\frac{\sin{kx}}{x}=\delta(x)
\end{aligned}
$$

where $\delta(x)$ is the $\delta$-function.

The integral $\int_0^{\infty}\frac{\sin x}{x}dx$ is called the Dirichlet integral. It is a very famous and important generalized improper integral. Here at least you can see that 

$$
\int_{-\infty}^{\infty}G(x,0)=\frac{1}{\pi}\int_0^\infty \frac{\sin kx}{x}dx=1\quad \textrm{and}\quad G(0,0)=\infty
$$

## Linearization

In linear wave analysis, we need to check how small perturbations evolve in the PDEs. For plasma physics, it is usually very useful to transform into a magnetic field guided coordinates, with the notation $\parallel$ being parallel to the background magnetic field and $\perp$ being perpendicular to the background magnetic field $\mathbf{B}$. Besides the perturbation of plasma moments (i.e. density, velocity, pressure, etc.), we also need the perturbations to the magnitude of the magnetic field B and the unit vector $\hat{\mathbf{b}}$. Linearzing $B^2 = \mathbf{B}\cdot\mathbf{B}$, we find

$$
\delta B = \hat{\mathbf{b}}\cdot\delta\mathbf{B} = \delta B_\parallel
$$ {#eq:perturb_b}

Linearzing $\hat{\mathbf{b}} = \mathbf{B}/B$, we obtain

$$
\begin{aligned}
\delta\hat{\mathbf{b}} = \delta\Big(\frac{\mathbf{B}}{B}\Big) = \frac{\delta\mathbf{B}B - \delta B\mathbf{B}}{B^2} = \frac{\delta\mathbf{B}}{B} - \frac{\delta \mathbf{B}_\parallel}{B} = \frac{\delta \mathbf{B}_\perp}{B}
\end{aligned}
$$ {#eq:perturb_bhat}

The divergence-free of magnetic field gives

$$
\mathbf{k}\cdot\delta\mathbf{B} = k_\parallel \delta B_\parallel + k_\perp \delta B_\perp = 0
$$

Thus

$$
\mathbf{k}\cdot\hat{\mathbf{b}} = \mathbf{k}\cdot\frac{\delta \mathbf{B}_\perp}{B} = \frac{k_\perp \delta B_\perp}{B} = -k_\parallel\frac{\delta B_\parallel}{B} = -k_\parallel\frac{\delta B}{B}
$$ {#eq:perturb_k_bhat}

These seemingly trivial relations have profound implications in physics. @eq:perturb_b tells us that the perturbation of magnetic field magnitude has only contribution from the parallel component, which is why in satellite observations people only look at parallel perturbations for compressional wave modes. @eq:perturb_bhat tells us that the perturbation in the unit vector is only related to the perpendicular fluctuations.

## Wave Equations {#sec:WKB}

The waves in plasma physics is governed by second order ODEs. Here we list some second order ODEs that has been studied mostly in plasma physics.

* Schrödinger Equation:

$$
\frac{d^2\varphi}{dx^2} + \frac{2m}{\hbar^2}\big[ E-U(x)\big]\varphi= 0
$$

Schrödinger Equation appears in the nonlinear wave studies (@sec:nonlinear).

* Shear Alfvén wave:

$$
\frac{d}{dx}\Big\{ \rho_0 \big[ \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A(x))^2 \big]\frac{dE}{dx} \Big\} - k^2\rho_0 \big[ \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A)^2 - g\frac{1}{\rho_0}\frac{d\rho_0}{dx} \big]E = 0
$$

The Shear Alfvén wave equation appears in nonuniform ideal MHD (@eq:mhd_cold_e_wave, @eq:flr_wave_ey).

* EM waves in non-magnetized plasma, O mode:

$$
\frac{d^2 E}{dx^2} + \frac{\omega^2}{c^2} \Big[ 1-\frac{{\omega_{pe}(x)}^2}{\omega^2} \Big]E = 0  
$$ {#eq:ODE_Omode}

* Electron cyclotron resonance heating (ECRH):

$$
\frac{d^2 E}{dx^2} + \frac{\omega^2}{c^2} \Big[ 1-\frac{{\omega_{pe}(x)}^2}{\omega(\omega-\Omega_e(x))} \Big]E = 0
$$

In general, a second order ODE

$$
\frac{d^2 u(x)}{dx^2} + a_1(x)\frac{du(x)}{dx} + a_2(x)u(x) = 0
$$

can be rewritten to get rid of the first derivative. Let

$$
u(x) = E(x) e^{-\frac{1}{2}\int^x a_1(x)dx}
$$

we have

$$
\frac{d^2 E(x)}{dx^2} + k^2(x) E(x) = 0
$$ {#eq:2nd_ODE}

where

$$
k^2(x) = a_2(x) - \frac{{a_1}^2}{4} -\frac{1}{2}\frac{d a_1(x)}{dx}
$$

Note that the lower bound of the integral is left on purpose to account for a constant. We will concentrate at special points, i.e. zeros (cutoff) and poles (resonance) of $k^2(x)\equiv \frac{\omega^2}{c^2}n^2(x)$. 

First, we will introduce _Wentzel–Kramers–Brillouin-Jeffreys_ ([WKBJ](https://en.wikipedia.org/wiki/WKB_approximation)) solution to @eq:2nd_ODE:

$$
E(x) \sim \frac{1}{\sqrt{k(x)}}e^{\pm i\int^x k(x^\prime)dx^\prime}.
$$

_Proof_.

For simplicity, here we use a simple harmonic oscillation analogy. Consider

$$
\frac{d^2 x(t)}{dt^2} + \Omega^2(t)x(t) = 0
$$

Assume $\Omega \gg 1$, and $T$ is the time scale over which $\Omega$ changes appreciably. We would anticipate solutions like

$$
\begin{aligned}
&x(t)\sim e^{\pm i \Phi(t)} \\
&\dot{x}(t) \sim \pm i \dot{\Phi}(t) x(t) \\
&\ddot{x}(t) \sim - \dot{\Phi}^2(t) x(t) \cancel{\pm i \ddot{\Phi}(t)x(t)} \\
\Rightarrow &\dot{\Phi}(t) = \Omega(t),\ \text{or } \Phi(t) = \int^t \Omega(t^\prime) dt^\prime + \text{const.}
\end{aligned}
$$

Write $x(t) = A(t)\sin{[\Phi(t)]}$, where $A(t)$ is slowly varying in time, $\dot{A}(t)\ll \Omega A$, which is almost a periodic motion. From adiabatic theory in classical mechanics, $\oint pdq \simeq \text{const.}$, we have

$$
\begin{aligned}
\oint mv_x d x \simeq \text{const.} \\
\oint m\dot{x}\dot{x}dt \simeq \text{const.}
\end{aligned}
$$

Then in a period $2\pi/\Omega$,

$$
\frac{2\pi}{\Omega}\oint m\dot{x}^2dt =\frac{2\pi}{\Omega}\oint mA^2 \Omega^2\cos^2\Phi dt \simeq \text{const.}
$$

which leads to

$$
mA^2\Omega \simeq \text{const.},\ A\sim\frac{1}{\sqrt{\Omega}}
$$

Thus the general form of solution can be written as

$$
x(t)\sim\frac{1}{\sqrt{\Omega}}e^{\pm i \Phi(t)} \sim\frac{1}{\sqrt{\Omega}} e^{\pm i \int^t \Omega(t^\prime)dt^\prime+\text{const.}}
$$

□

Note:

1. There is no lower limit to the integral, because it is like adding a constant.
2. This solution is valid if $k\cdot L > O(3)$, where $L$ is the length scale over which $k^2(x)$ changes appreciably. (???)Formally the condition should be $kL\gg 1$. Apparently near resonance ($k\rightarrow\infty$), the condition breaks down, then how do we reconcile the solution? There are more discussions coming up and applications in @sec:waves and @sec:flr.

### Airy Function {#sec:airy}

We want to develop a general method for cut-off and resonance. Away from the turning point $x_t$,

$$
E_{\text{WKBJ}}(x) \sim \frac{1}{\sqrt{k(x)}}e^{\pm i\int^x k(x)dx}
$$

Near $x=x_t$, we can use a linear approximation for $k^2(x)$ (first term in the Taylor expansion),

$$
k^2(x) \approx -{k_0}^2 a(x-x_t)
$$

Then

$$
\begin{aligned}
\frac{d^2 E}{dx^2} + k^2(x)E &= 0 \\
\frac{d^2 E}{dx^2} - {k_0}^2 a (x-x_t) E &= 0
\end{aligned}
$$

Let $\frac{x-x_t}{l}=\zeta$, we have

$$
\frac{d^2 E}{d\zeta^2} - l^2 {k_0}^2 a l \zeta E(\zeta) = 0
$$

If we choose $l$ s.t. $l^3 {k_0}^2 a =1$ (non-dimensional treatment), we obtain

$$
\frac{d^2 E}{d\zeta^2} - \zeta E(\zeta) = 0
$$ {#eq:stokes}

which is equivalent to the case where $k^2(\zeta)=-\zeta$ that shows the linear approximation. @eq:stokes, known as the _Airy equation_ or _Stokes equation_, is the simplest second-order linear differential equation with a turning point (a point where the character of the solutions changes from oscillatory to exponential). From the WKBJ theory, we get the solution

$$
E_{\text{WKBJ}} \sim \frac{1}{\sqrt{k(x)}}e^{\pm i\int^x k(x)dx}
= \left\{  
\begin{array}{rl}
\zeta^{-1/4}e^{\mp\frac{2}{3}\zeta^{3/2}} & \text{if } \zeta > 0 \\
(-\zeta)^{-1/4}e^{\pm i \frac{2}{3}(-\zeta)^{3/2}} & \text{if } \zeta < 0
\end{array} \right.
$$

Note that the solution blows up at $\zeta=0$ (turning point) miserably. For $\zeta>0$, one solution is exponentially decay while the other is exponentially growing; for $\zeta<0$, the two solutions are oscillatory. Solutions can also be found as series in ascending powers of $\zeta$ by the standard method. Assume that a solution is $E=a_0+a_1\zeta+a_2\zeta^2+...$ Substitute this in Stokes Equation and equate powers of $\zeta$ will give relations between the constants $a_0,a_1,a_2$,etc., and lead finally to

$$
\begin{aligned}
E = &a_0\Big\{ 1+\frac{\zeta^3}{3\cdot2} +\frac{\zeta^6}{6\cdot5\cdot3\cdot2} + \frac{\zeta^9}{9\cdot8\cdot6\cdot5\cdot3\cdot2} + ... \Big\} \\
&+a_1\Big\{ \zeta+\frac{\zeta^4}{4\cdot3} +\frac{\zeta^7}{7\cdot6\cdot4\cdot3} + \frac{\zeta^{10}}{10\cdot9\cdot7\cdot6\cdot4\cdot3} + ...  \Big\}
\end{aligned}
$$

which contains the two arbitrary constants $a_0$ and $a_1$, and is therefore the most general solution. The series are convergent for all $\zeta$, which confirms that every solution of Stokes Equation is finite, continuous and single valued.

This form is usually not easy to interpret in physical sense. Besides this, we can find a more useful solution to @eq:stokes using the integral representation. An equivalent but maybe more intuitive approach is to solve @eq:stokes with Fourier transform; a coefficient $2\pi$ naturally appears. Both approaches reach the same results.

Write

$$
E(\zeta) = \int_a^b dt e^{t\zeta} f(t)
$$

where the integral represents a path in the complex t plane from $a$ to $b$. Then

$$
\begin{aligned}
\frac{d^2 E}{d\zeta^2} &= \int_a^b dt\ t^2 e^{t\zeta} f(t) \\
\zeta E(\zeta) &= \int_a^b dt \zeta e^{t\zeta} f(t) = \int_a^b dt \frac{d}{dt}(e^{t\zeta}) f(t) \\
&=e^{t\zeta} f(t) \Big|_a^b -\int_a^b dte^{t\zeta} f^\prime(t)
\end{aligned}
$$

The limits $a,b$ are be chosen so that the first term vanishes at both limits. Then @eq:stokes is satisfied if

$$
\left\{
\begin{array}{l}
e^{t\zeta} f(t) \Big|_a^b  = 0\\
t^2 f(t) = -\frac{d f(t)}{dt} \Rightarrow f(t) = Ae^{-\frac{1}{3}t^3}
\end{array} \right.
$$

where $A$ is a constant. The solution is now written as

$$
E(\zeta) = \int_a^b dt Ae^{t\zeta-\frac{1}{3}t^3}
$$

The limits $a$ and $b$ must therefore be chosen so that $e^{t\zeta-\frac{1}{3}t^3}$ is zero for both. (Note that $\zeta$ is a constant.) This is only possible if $t=\infty$ and the real part of $t^3$ is positive:

$$
\begin{aligned}
\Re(t^3) > 0 \Leftrightarrow 2\pi n -\frac{1}{2}\pi < \arg{t^3} < 2\pi n + \frac{1}{2}\pi \\
\Leftrightarrow 2\pi n -\frac{1}{2}\pi < 3 \arg{t} < 2\pi n + \frac{1}{2}\pi
\end{aligned}
$$

where $n$ is an integer. @fig:stokes_sol is a diagram of the complex t-plane, and $a$ and $b$ must each be at $\infty$ in one of the shaded sectors. They cannot both be in the same sector, for then the integral would be zero. Hence the contour may be chosen in three ways, as shown by the three curves $C_1,C_2,C_3$, and the solution would be

$$
E(\zeta) = \int_{C_1,C_2,C_3} dt\ e^{t\zeta-\frac{1}{3}t^3}
$$

This might appear at first to give three independent solutions, but the contour $C_1$ and be distorted so as to coincide with the two contours $C_2+C_3$, so that 

$$
\int_{C_1} = \int_{C_2} + \int_{C_3}
$$

and therefore there are only two independent solutions.

![Solution to Stokes Equation in complex t-plane.](images/Stokes_Sol_In_Complex_Plane.png){#fig:stokes_sol}

_Proof_.

Note that:

1. $e^{A}\neq 0\ \forall |A|<\infty$;
2. $e^{A}=0 \Leftrightarrow\, A\rightarrow \infty\,\text{and}\,\Re(A)<0$.

Therefore we have

$$
e^{-\frac{1}{3}t^3}\rightarrow 0\,\text{as}\, t\rightarrow \infty\,\text{and}\,\Re\Big(\frac{1}{3}t^3\Big)>0
$$
In polar coordinates, let $t=|t|e^{i\theta}$. Then

$$
t^3 = |t|^3 e^{i3\theta} = |t|^3 \big( \cos{3\theta} + i\sin{3\theta} \big)
$$

$$
\Re\Big(\frac{1}{3}t^3\Big)>0 \iff \cos{3\theta}>0 \iff 3\theta \in (-\frac{\pi}{2},\frac{\pi}{2}),\ (\frac{3\pi}{2},\frac{5\pi}{2}),\ (-\frac{3\pi}{2},-\frac{5}{2}\pi)
$$

□

Jeffreys (1956) defines two special [Airy functions](https://en.wikipedia.org/wiki/Airy_function) $Ai(x), Bi(x)$ as follows

$$
\begin{aligned}
Ai(\zeta) &= \frac{1}{2\pi i}\int_{C_1} dt e^{-\frac{1}{3}t^3 + \zeta t} \\
Bi(\zeta) &= \frac{1}{2\pi} \Big[\int_{C_2}+\int_{C_3}\Big]dt e^{-\frac{1}{3}t^3 + \zeta t}
\end{aligned}
$$ {#eq:airy_func}

Obviously he took the Fourier transform such that a coefficient $2\pi$ naturally appears. In @eq:airy_func, the contour $C_1$ can be distorted so as to coincide with the imaginary t-axis for almost its whole length. It must be displaced slightly to the left of this axis at its ends to remain in the shaded region at infinity. Let $t=is$. Then the Airy function of the first kind in @eq:airy_func becomes

$$
\begin{aligned}
Ai(\zeta) &= \frac{1}{2\pi}\int_{-\infty}^{\infty}e^{i(\zeta s+\frac{1}{3}s^3)}ds \\
&=\frac{1}{\pi}\int_{0}^{\infty}\cos\Big(\zeta s+\frac{1}{3}s^3\Big)ds
\end{aligned}
$$

It is known as the Airy integral, which is the solution for $y\rightarrow 0$ as $x\rightarrow\infty$. The other linearly independent solution, the Airy function of the second kind, denoted $Bi(x)$, is defined as the solution with the same amplitude of oscillation as $Ai(x)$ as $x\rightarrow -\infty$ which differs in phase by $\pi/2$: 

$$
Bi(\zeta) = \frac{1}{\pi}\int_{0}^{\infty}\Big[e^{-\frac{s^3}{3}+s\zeta} + \sin\Big(\zeta s+\frac{1}{3}s^3\Big)\Big]ds
$$

$Ai(x)$ and $Bi(x)$ are shown in @fig:airy.

```jl
KeyNotes.plot_airy()
```

As an interesting experiment, we can check if $Ai(x)$ is recovered from solving the second order ODE numerically:

```jl
@sco KeyNotes.plot_airy_ode()
```

Here we start from the right boundary and move towards the left.

Now, to find approximations for Airy functions, we use the method of _steepest descent_. This approximation is based on the assumption that major contribution to the integral is from near the saddle point. As an example of saddle point, consider $e^{-z^2}$, where $z=x+i y$.

* If $z=\text{real} = x$, $e^{-z^2}=e^{-x^2}$;
* If $z=\text{imag}=iy$, $e^{-z^2}=e^{y^2}$.

The procedure goes as follows:

1. Detour path of integral s.t. it passes through the saddle point of the integral, along the direction of steepest descent.
2. Obtain major contribution by integrating the Gaussian function.

$$
I=\int_C dt e^{f(t)},\quad f(t) = f(t_s) + (t-t_s)f^\prime(t_s) + \frac{1}{2}(t-t_s)^2 f^{\prime\prime}(t_s) + ...
$$

where $f^\prime(t_s)=0$ at the saddle point $t=t_s$ simplifies $I$ to the integral of a Gaussian function.

For $Ai(\zeta)$,

$$
\begin{aligned}
f(t) &= t\zeta -\frac{1}{3}t^3 \\
f^\prime(t_s)& = \zeta - {t_s}^2 = 0 \\
f^{\prime\prime}(t_s)& = -2t_s
\end{aligned}
$$

Consider $\zeta>0$ (sol. is either exponentially decay or growing.) Then

$$
\begin{aligned}
t_{s1} = -\sqrt{\zeta},\quad t_{s2} = \sqrt{\zeta} \\
f(t_{s1}) = -\frac{2}{3}\zeta^{3/2},\quad f^{\prime\prime}(t_{s1}) = 2\zeta^{1/2}
\end{aligned}
$$

So

$$
\begin{aligned}
Ai(\zeta) &= \frac{1}{2\pi i} \int_{C_1} dt\ e^{-\frac{2}{3}\zeta^{3/2}+\zeta^{1/2}(t-t_s)^2}+... \\
&\approx\frac{1}{2\pi i} e^{-\frac{2}{3}\zeta^{3/2}}\int_{C_1}dt\ e^{\sqrt{\zeta}(t-t_s)^2}
\end{aligned}
$$

Let $e^{-\rho^2}=e^{\sqrt{\zeta}(t-t_s)^2}$. $\rho=\text{real}$ is the direction of steepest descent, and $\rho=\text{imag}$ is the direction of steepest ascent.

$$
\begin{aligned}
i\rho &= \pm \zeta^{1/4} (t-t_s) \\
dt&=\frac{i d\rho}{\zeta^{1/4}} \Rightarrow\ dt \text{ is purely imaginary along steepest descent.}
\end{aligned}
$$

Then for $\zeta>0$

$$
\begin{aligned}
Ai(\zeta) &= \frac{1}{2\pi i}e^{-\frac{2}{3}\zeta^{3/2}}\int_{-\infty}^{\infty}\frac{id\rho}{\zeta^{1/4}}e^{-\rho^2} \nonumber \\
&=\frac{1}{2\sqrt{\pi}\zeta^{1/4}}e^{-\frac{2}{3}\zeta^{3/2}} \text{ as}\ \zeta\rightarrow \infty
\end{aligned}
$$

The ratio of accuracy is shown in the following table (LABEL???). In practice, it is already a very good approximation when $\zeta>3$. (think of $kL\gg 3$ for WKBJ solution!)

|$\zeta$ | 1 | 2 | 3 | 6 | $\infty$ |
|--------|---|---|---|---|---|
|ratio | 0.934 | 0.972 | 0.983 | 0.993 | 1|

Now, consider $\zeta<0$. When $\zeta\rightarrow-\infty$, we anticipate oscillating behavior of $Ai(\zeta)$. $\zeta=-|\zeta|$,

$$
\begin{aligned}
f(t) &= \zeta t-\frac{1}{3}t^3 = -t|\zeta| - \frac{1}{3}t^3 \\
f^\prime(t) &= -|\zeta| - t^2 \\
f^{\prime\prime} &= -2t \\
\Rightarrow f(t_{s1}) &= i\frac{2}{3}|\zeta|^{3/2} \\
f^{\prime\prime}(t_{s1}) &= 2i\sqrt{|\zeta|}
\end{aligned}
$$

so the contribution from $t_{s1}$ is

$$
\frac{1}{2\pi i}e^{i\frac{2}{3}|\zeta|^{3/2}}\int_{t_{s1}} e^{\frac{1}{2}(2i\sqrt{|\zeta|})(t-t_s)^2+...}
$$

Let $-\rho^2=i\sqrt{|\zeta|}(t-t_{s1})^2$, differentiate on both sides to get

$$
dt = \pm\frac{e^{i\pi/4}}{|\zeta|^{1/4}}d\rho
$$

Again, $\rho=\text{real}$ is the direction of steepest descent at $t=t_{s1}$. Do the same to $t_{s2}$, then by summing them up we have for $\zeta<0$,

$$
\begin{aligned}
Ai(\zeta) &\approx \frac{1}{2\pi i} \Big[ e^{i\frac{2}{3}|\zeta|^{3/2}}\int_{-\infty}^{\infty}\frac{e^{i\pi/4}}{|\zeta|^{1/4}}d\rho e^{-\rho^2} - e^{-i\frac{2}{3}|\zeta|^{3/2}}\int_{-\infty}^{\infty}\frac{e^{-i\pi/4}}{|\zeta|^{1/4}}d\rho e^{-\rho^2} \Big] \\
&= \frac{1}{2\pi i} \Big[ \frac{e^{i\frac{2}{3}|\zeta|^{3/2}+i\pi/4}}{{|\zeta|^{1/4}}} \sqrt{\pi} - \frac{e^{-i\frac{2}{3}|\zeta|^{3/2}-i\pi/4}}{{|\zeta|^{1/4}}} \sqrt{\pi} \Big]
\end{aligned}
$$ {#eq:airy_zeta_ls_0}

Mathematically, we can proof that

$$
n! =\int_0^\infty dt\ e^{-t}t^n = \int_0^\infty dt\ e^{-t+n\ln{t}} \equiv \int_0^\infty dt\ e^{f(t)}
$$

and by following the steepest descent method,

$$
\begin{aligned}
f(t) &= -t +n\ln{t} \\
f^\prime(t) &= -1 + n\frac{1}{t}=0 \\
f^{\prime\prime}(t) &= -n\frac{1}{t^2}
\end{aligned}
$$

we can find the approximation Stirling formula

$$
\begin{aligned}
n! &\approx \int_0^\infty dt\ e^{-n+n\ln{n}-\frac{1}{2n}(t-t_s)^2} \\
&=e^{-n}n^n \int_0^\infty dt\ e^{-\frac{1}{2n}(t-t_s)^2} \\
&=\sqrt{2n\pi}e^{-n}n^n
\end{aligned}
$$

The following table (LABEL???) show the goodness of approximation of Stirling formula. In practice, it is already a very good approximation when $n>3$.

|$\zeta$ | 1 | 2 | 3 | 10 | $\infty$ |
|--------|---|---|---|---|---|
|ratio | 0.922 | 0.9595 | 0.973 | 0.9917 | 1|

See [@budden1961radio] _Chapter 15: The Airy Integral Function, And The Stokes Phenomenon_ for more details.

### Uniformly Valid WKBJ Solution Across the Turning Point

In this section, we present the WKBJ solution that is uniformly valid everywhere, even at the turning point.

Consider the standard equation,

$$
\frac{d^2E(x)}{dx^2}+k^2(x)E(x) = 0
$$

Let $x=0$ be the turning point, i.e. we assume that $k^2(x)$ is a monotonically decreasing function of $x$ with $k(0)=0$. For the region $x>0$, we first identify the exponentially decaying factor of the Airy function, $Ai(\zeta)$, to be the phase integral in the WKBJ solution:

$$
-\frac{2}{3}\zeta^{3/2} = i \int_0^x k(x^\prime)dx^\prime
$$

Note that this yields $\zeta=\zeta(x)$, a known function of x. The branch for $\zeta(x)$ is to be chosen so that for $x>0$, $\zeta$ is real and positive.

We next verify that the uniformly valid solution to the standard equation is simply

$$
E(x) = \frac{1}{\sqrt{\zeta^\prime(x)}}Ai(\zeta)
$$ {#eq:WKBJ_uniform_valid_sol}

where the prime denotes a derivative. For large values of $\zeta$, we can use the asymptotic formula of $Ai(\zeta)\approx \text{const.}\frac{1}{\zeta^{1/4}}e^{-\frac{2}{3}\zeta^{3/2}}$, and notice that

$$
\zeta^\prime(x) = \text{const.}\frac{k(x)}{\zeta^{1/2}}
$$

we can see that @eq:WKBJ_uniform_valid_sol reduces to the standard WKBJ solutions for large values of $\zeta$

$$
E(x)= \frac{1}{\sqrt{\zeta^\prime(x)}}Ai(\zeta) \sim \frac{1}{\sqrt{k(x)}} e^{-\frac{2}{3}\zeta^{3/2}} = \frac{1}{\sqrt{k(x)}}e^{ i \int_0^x k(x^\prime)dx^\prime}
$$

We can also show that @eq:WKBJ_uniform_valid_sol is valid for small values of $\zeta$, i.e. near the turning point at $x=0$. (Hint: Near $x=0$, $k^2(x)$ may be approximated by a linear function of $x$. This linear approximation then yields $\zeta(x)$ as a linear function of $x$ according to @eq:WKBJ_uniform_valid_sol.)

_Ex_ Choose a smooth plasma density profile which monotonically increases with $x$ s.t.

$$
\frac{\omega_{pe}^2(x)}{\omega^2} = 1 + \tanh{x}
$$

and launch a wave of frequency $\omega$ from $x=-\infty$, the vacuum region, toward the positive x-direction with $\frac{\omega^2}{c^2} = 10 m^{-2}$. (This is like launching a wave from low $B$ region into high $B$ region.) Numerically integrate the wave equation @eq:ODE_Omode,

$$
\frac{d^2 E}{dx^2} + \frac{\omega^2}{c^2} \Big[ 1-\frac{{\omega_{pe}(x)}^2}{\omega^2} \Big]E = 0
$$

from some large positive values of $x$, we get the results in @fig:Omode_sol.

![Comparison between the WKBJ solution, uniformly valid solution and numerical integral solution.](images/WKBJ_sol_Omode.png){#fig:Omode_sol}

We know that away from $x_t$, WKBJ solution works. To the left of $x_t$ (with $\zeta<-3$), @eq:airy_zeta_ls_0 gives

$$
Ai(\zeta) = \frac{1}{\sqrt{\pi}|\zeta|^{1/4}}\frac{1}{2i}\Big[ e^{i \frac{2}{3}|\zeta|^{3/2}+i\frac{\pi}{4}} - e^{-\frac{2}{3}|\zeta|^{3/2}-i\frac{\pi}{4}} \Big]
$$

Choose the branch s.t. $\zeta{x}>0$ if $x>x_t$; $\zeta(x)<0$ if $x<x_t$.

$$
\begin{aligned}
E(x) &= \frac{1}{\sqrt{\zeta^\prime(x)}}Ai(\zeta) \\
&= \frac{C_3}{\sqrt{k(x)/|\zeta|^{1/2}}}\frac{1}{|\zeta|^{1/4}}\Big\{ e^{i \frac{2}{3}|\zeta|^{3/2}+i\frac{\pi}{4}} - c.c \Big\} \\
&= \frac{C_3}{\sqrt{k(x)}}\Big\{ e^{i(-\int_{x_t}^x k(x^\prime)dx^\prime)+i\frac{\pi}{4}} - c.c \Big\} \\
&=\frac{C_3}{\sqrt{k(x)}}\Big\{ e^{-i\int_{x_t}^a k(x^\prime)dx^\prime - i\int_a^x k(x^\prime)dx^\prime+i\frac{\pi}{4}} -c.c \Big\} \\
&=\frac{C_4}{\sqrt{k(x)}}\Big\{ e^{-i \int_a^x k(x^\prime)dx^\prime}-e^{i\int_{x_t}^a k(x^\prime)dx^\prime } e^{2i\int_{x_t}^a k(x^\prime)dx^\prime -i\frac{\pi}{2}} \Big\} \\
&=\frac{C_4}{\sqrt{k(x)}}\Big\{ e^{-i\int_a^x k dx^\prime} + R\cdot e^{i\int_a^x k dx^\prime}  \Big\},
\end{aligned}
$$

where

$$
C_4 = C_3 \cdot e^{-i \int_{x_t}^a k dx^\prime + i\frac{\pi}{4}}
$$

and

$$
R = -e^{2i\int_{x_t}^a k dx^\prime - i\frac{\pi}{2}} = i e^{2i\int_{x_t}^a k dx^\prime} = i e^{-2i \int_{a}^{x_t}kdx^\prime}
$$

is the reflection coefficient at $x=a$.

### Stokes Phenomenon

_Ex_

$$
\begin{aligned}
\frac{d^2 E}{dz^2} - E = 0,\ E=e^z,e^{-z},\cosh{z},\sinh{z} \\
E = \cosh{z}=\frac{1}{2}(e^z+e^{-z});\ E\sim\frac{1}{2}e^z, z\rightarrow\infty, E\sim\frac{1}{2}e^{-z},z\rightarrow -\infty \\
E = \sinh{z}=\frac{1}{2}(e^z-e^{-z});\ E\sim\frac{1}{2}e^z, z\rightarrow\infty, E\sim\frac{-1}{2}e^{-z},z\rightarrow -\infty \\
E = \frac{1}{2}e^z;\ E\sim\frac{1}{2}e^z, z\rightarrow\infty, E\sim\frac{1}{2}e^{z},z\rightarrow -\infty
\end{aligned}
$$

Note that if a solution is exponentially growing in one direction, its asymptotic solution can contain an arbitrary amount of the exponentially decaying solution. That is, specifying an asymptotic growing solution in one direction cannot completely specify the solution in the entire complex plane.

The approximate solution to Airy @eq:stokes is the Airy function approximation from WKBJ method:

$$
\begin{aligned}
&\frac{d^2 E}{d\zeta^2} - \zeta E = 0 \\
\Rightarrow E(\zeta) = &Ai(\zeta) \sim \frac{1}{2\sqrt{\pi}\zeta^{1/4}}e^{-\frac{2}{3}\zeta^{3/2}},\quad \zeta>0 \notag\\
&Bi(\zeta)\sim \frac{1}{2\sqrt{\pi}\zeta^{1/4}}e^{\frac{2}{3}\zeta^{3/2}},\quad \zeta>0
\end{aligned}
$$

which is very accurate for $\zeta>3$ (see previous section).

Stokes found that you can add an arbitrary amount of $Ai(\zeta)$ to $Bi(\zeta)$ without changing the behaviour of solution. ($Ai(\zeta)<O(\frac{1}{\zeta})$)

We want to find $\zeta$ s.t. $E_{\text{WKBJ}}$ is purely growing/decaying exponentially:

$$
\begin{aligned}
\zeta^{3/2} \text{is purely real} \iff (|\zeta|e^{i\theta})^{3/2} \text{is purely real} \iff \sin{\frac{3}{2}\theta} = 0,\ \theta=0,\pm\frac{2}{3}\pi,\pm\frac{4}{3}\pi
\end{aligned}
$$

The lines in complex plane on which WKBJ solution is purely growing/decaying exponentially is called _Stokes line_ (@fig:stokes_line). It is accompanied with _anti-Stokes line_ (in the opposite direction to Stokes line), on which WKBJ solution is purely oscillatory. The exponentially growing solution on Stokes line is called the _dominant solution_; the decaying solution on Stokes line is called the _sub-dominant/recessive solution_. The sub-dominant solution will always becomes dominant in neighboring Stokes line. However, the inverse is not true. (It may contain an amount of sub-dominant solution.) Each term changes from dominant to subdominant, or the reverse, when $\zeta$ crosses an anti-Stokes line???

![Stokes lines and anti-Stokes lines for WKBJ solution of Airy Equation.](images/StokesLine.png){#fig:stokes_line}

Even though we say "arbitrary", the analytic solution in the whole complex plane possess a limit on that amount. The next question would be: how much exponentially decaying solution can you add to the exponentially growing solution? (Note that the asympotic series is also a divergent series: more terms don't lead to high resolution accuracy! I have questions on this part???)

For the asymptotic approximation solution of Airy Equation @eq:stokes, we need to define $\arg(\zeta)$ properly to make it single value. Let us choose the branch cut $-\pi\le\arg{\zeta}<\pi$. The complex plane is demonstrated in @fig:stokes_line_Zplane.

![Marked Stokes lines and regions for Airy solution.](images/StokesLine_Zplane.png){#fig:stokes_line_Zplane}

Let us start from region I. The solution in region I is

$$
E_I \sim \zeta^{-1/4}\big[ A_1 e^{-\frac{2}{3}\zeta^{3/2}} + B_1 e^{\frac{2}{3}\zeta^{3/2}}\big]
$$

On $S_1$, $e^{-\frac{2}{3}\zeta^{3/2}}$ is sub-dominant, $e^{\frac{2}{3}\zeta^{3/2}}$ is dominant. (The former would be dominant on neighboring Stokes lines $S_2$ and $S_3$.) Crossing $S_2$ into region $\text{II}_{\text{up}}$, we have

$$
E_{\text{II}_{\text{up}}} \sim \zeta^{-1/4} \Big[ \underbrace{A_1 e^{-\frac{2}{3}\zeta^{3/2}}}_{\text{dominant}} + \underbrace{(\lambda_1 A_1 + B_1)e^{\frac{2}{3}\zeta^{3/2}}}_{\text{sub-dominant}} \Big]
$$

where $\lambda_2$ is the Stokes constant on $S_2$. The constant in the subdominant term has changed by $\lambda_2 A_1$ because the differential equation is linear, and it cannot depend on $B_1$. Otherwise it would be unaltered if we added to the solution in region I any multiple of the solution in which $A_1=0$. (See [@budden1961radio] 15.13.) Crossing the branch cut to region $\text{II}_{\text{down}}$, $\zeta^{\text{up}} = \zeta^{\text{down}}e^{i2\pi}$.

$$
\begin{aligned}
\zeta_{\text{up}}^{-1/4} = \zeta_{\text{down}}^{-1/4}e^{i2\pi(-1/4)} = i\zeta_{\text{down}}^{1/4} \\
\zeta_{\text{up}}^{3/2} = \zeta_{\text{down}}^{3/2}e^{i2\pi(3/2)} = -\zeta_{\text{down}}^{3/2}
\end{aligned}
$$

so

$$
E_{\text{II}_{\text{down}}} = -i \zeta_{\text{II}_{\text{down}}}^{1/4}\Big[ A_1 e^{\frac{2}{3}\zeta_{\text{II}_{\text{down}}}^{3/2}} + (\lambda_2A_1 + B_1)e^{-\frac{2}{3}\zeta_{\text{II}_{\text{down}}}^{3/2}} \Big]
$$

We can also go clockwise from I to III, crossing $S_1$,

$$
E_{III} \sim \zeta^{-1/4} \Big[ \underbrace{B_1 e^{\frac{2}{3}\zeta^{3/2}}}_{\text{dominant}} + \underbrace{(-\lambda_1 B_1 + A_1)e^{-\frac{2}{3}\zeta^{3/2}}}_{\text{sub-dominant}} \Big]
$$

where $\lambda_1$ is the Stokes constant on $S_1$, and the minus sign indicates the clockwise direction.

Crossing $S_3$ from III to $\text{II}_{\text{down}}$,

$$
E_{\text{II}_{\text{down}}} \sim \zeta^{-1/4} \Big[ \underbrace{(-\lambda_1B_1+A_1) e^{-\frac{2}{3}\zeta^{3/2}}}_{\text{dominant}} + \underbrace{ [(-\lambda_3)(-\lambda_1 B_1+A_1)+B_1]e^{\frac{2}{3}\zeta^{3/2}}}_{\text{sub-dominant}} \Big]
$$

where $\lambda_3$ is the Stokes constant on $S_3$, and the minus sign indicates the clockwise direction.

Since the solution to Airy Equation is analytic, the solutions in region $\text{II}_{\text{down}}$ obtained from two directions must be equal. Therefore

$$
\begin{aligned}
-\lambda_1 B_1 + A_1 &= -i(\lambda_2 A_1 + B_1) \\
-\lambda_3 (-\lambda_1 B_1 + A_1) + B_1 &= -i A_1
\end{aligned}
$$

$$
\begin{aligned}
\begin{pmatrix}
i\lambda_2 + 1 & -\lambda_1 + i \\ -\lambda_3 + i & \lambda_3\lambda_1 + 1
\end{pmatrix}
\begin{pmatrix}
A_1 \\ B_1
\end{pmatrix} = 0 \\
\Rightarrow \lambda_1 = \lambda_2 = \lambda_3 = i
\end{aligned}
$$

All three Stokes constants are $i$. For the Airy equation, the amount of exponentially decaying solution you can have going from one Stokes line to another is restricted to $i$ in counter-clockwise direction.

### Application of Stokes Lines {#sec:stokes_application}

## Normalization

In physics we frequently have to deal with unit conversions. A solid understanding of the unit system and normalization methods paves the path for understanding the scales behind systems.

## Theoretical Mechanics

Newtonian mechanics is great, but theoretical mechanics is marvellous. It does not tell you anything new, but let you think of the same thing from a different prospective. Theoretical mechanics takes advantage of a system's constraints to solve problems. The constraints limit the _degrees of freedom_ the system can have, and can be used to reduce the number of coordinates needed to solve for the motion. The formalism is well suited to arbitrary choices of coordinates, known in the context as _generalized coordinates_. The kinetic and potential energies of the system are expressed using these generalized coordinates or momenta, and the equations of motion can be readily set up, thus analytical mechanics allows numerous mechanical problems to be solved with greater efficiency than fully vectorial methods. _It does not always work for non-conservative forces or dissipative forces like friction, in which case one may revert to Newtonian mechanics_.

### Generalized Coordinates

In Newtonian mechanics, one customarily uses all three Cartesian coordinates, or other 3D coordinate system, to refer to a body's position during its motion. In physical systems, however, some structure or other system usually constrains the body's motion from taking certain directions and pathways. So a full set of Cartesian coordinates is often unneeded, as the constraints determine the evolving relations among the coordinates, which relations can be modeled by equations corresponding to the constraints. In the Lagrangian and Hamiltonian formalisms, the constraints are incorporated into the motion's geometry, reducing the number of coordinates to the minimum needed to model the motion. These are known as generalized coordinates, denoted $q_i\, (i = 1, 2, 3...)$.

### D'Alembert's Principle

This principle is the analogy of Newton's second law in theoretical mechanics. It states that infinitesimal virtual work done by a force across reversible displacements is zero, which is the work done by a force consistent with ideal constraints of the system. The idea of a constraint is useful --- since this limits what the system can do, and can provide steps to solving for the motion of the system. The equation for D'Alembert's principle is: 

$$
\delta W = \mathbf{Q}\cdot d\mathbf{q} = 0
$$

where

$$
\mathbf{Q} = (Q_1, Q_2, ..., Q_N)
$$

are the generalized forces (script Q instead of ordinary Q is used here to prevent conflict with canonical transformations below) and $\mathbf{q}$ are the generalized coordinates. This leads to the generalized form of Newton's laws in the language of theoretical mechanics:

$$
\mathbf{Q} = \frac{d}{dt}\Big( \frac{\partial T}{\partial\dot{\mathbf{q}}} \Big) - \frac{\partial T}{\partial\mathbf{q}}
$$

where T is the total kinetic energy of the system, and the notation

$$
\frac{\partial}{\partial\mathbf{q}} = \Big( \frac{\partial}{\partial q_1},\frac{\partial}{\partial q_2}, ..., \frac{\partial}{\partial q_N} \Big)
$$

### Lagrangian Mechanics

**Lagrangian and Euler–Lagrange equations**

The introduction of generalized coordinates and the fundamental Lagrangian function: 

$$
L(\mathbf{q},\dot{\mathbf{q}},t) = T(\mathbf{q},\dot{\mathbf{q}},t) - V(\mathbf{q},\dot{\mathbf{q}},t)
$$

where $T$ is the total kinetic energy and $V$ is the total potential energy of the entire system, then either following the calculus of variations or using the above formula --- lead to the Euler-Lagrange equations; 

$$
\frac{d}{dt}\Big( \frac{\partial L}{\partial\dot{\mathbf{q}}} \Big) = \frac{\partial L}{\partial\mathbf{q}}
$$

which are a set of N second-order ordinary differential equations, one for each $q_i(t)$. This formulation identifies the actual path followed by the motion as a selection of the path over which the time integral of kinetic energy is least, assuming the total energy to be fixed, and imposing no conditions on the time of transit.

### Hamiltonian Mechanics

**Hamiltonian and Hamilton's equations**

The Legendre transformation of the Lagrangian replaces the generalized coordinates and velocities $(\mathbf{q}, \dot{\mathbf{q}})$ with $(\mathbf{q}, \mathbf{p})$; the generalized coordinates and the generalized momenta conjugate to the generalized coordinates: 

$$
\mathbf{p} = \frac{\partial L}{\partial\dot{\mathbf{q}}} = \Big(\frac{\partial L}{\partial\dot{q}_1},\frac{\partial L}{\partial\dot{q}_2},,...,\frac{\partial L}{\partial\dot{q}_N} \Big) = (p_1, p_2, ..., p_N)
$$

and introduces the Hamiltonian (which is in terms of generalized coordinates and momenta):

$$
H(\mathbf{q},\mathbf{p},t) = \mathbf{p}\cdot\dot{\mathbf{q}} - L(\mathbf{q},\dot{\mathbf{q}},t)
$$

This leads to the Hamilton's equations:

$$
\dot{\mathbf{p}} = -\frac{\partial H}{\partial\mathbf{q}},\quad\dot{\mathbf{q}} = \frac{\partial H}{\partial \mathbf{p}}
$$

which are now a set of 2N first-order ordinary differential equations, one for each $q_i(t)$ and $p_i(t)$. Another result from the Legendre transformation relates the time derivatives of the Lagrangian and Hamiltonian: 

$$
\frac{dH}{dt} = -\frac{\partial L}{\partial t}
$$

which is often considered one of Hamilton's equations of motion additionally to the others. The generalized momenta can be written in terms of the generalized forces in the same way as Newton's second law:

$$
\dot{\mathbf{p}} = \mathbf{Q}
$$

One interesting application of the Hamilton's equation in plasma physics is the prove of Vlasov equation (See Giulia's notes)

$$
\frac{df(\mathbf{q},\mathbf{p},t)}{dt} = 0
$$

You may also find the application in deriving the gyrokinetic equations.
