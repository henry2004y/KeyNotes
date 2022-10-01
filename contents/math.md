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

## Airy Function {#sec:airy}

[Airy functions](https://en.wikipedia.org/wiki/Airy_function) $Ai(x), Bi(x)$ are special functions to the differential equation

$$
\frac{d^2 y}{dx^2} - xy = 0
$$ {#eq:stokes}

@eq:stokes, known as the _Airy equation_ or _Stokes equation_, is the simplest second-order linear differential equation with a turning point (a point where the character of the solutions changes from oscillatory to exponential). The two linearly independent solutions are shown in @fig:airy.

```jl
KeyNotes.plot_airy()
```

$Ai(x)$ is the solution for $y\rightarrow 0$ as $x\rightarrow\infty$, whereas $Bi(x)$ is the solution for $y\rightarrow\infty$ as $x\rightarrow\infty$. As an interesting experiment, we can check if $Ai(x)$ is recovered from solving the second order ODE numerically:

```jl
@sco KeyNotes.plot_airy_ode()
```

Here we start from the right boundary and move towards the left.

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
