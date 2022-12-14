# Shock {#sec:shock}

Consider a subsonic disturbance moving through a conventional neutral fluid. As is well-known, sound waves propagating ahead of the disturbance give advance warning of its arrival, and, thereby, allow the response of the fluid to be both smooth and adiabatic. Now, consider a supersonic disturbance. In this case, sound waves are unable to propagate ahead of the disturbance, and so there is no advance warning of its arrival, and, consequently, the fluid response is _sharp_ and _non-adiabatic_. This type of response is generally known as a _shock_.

In space, shock is a dissipative structure in which the kinetic and magnetic energy of a directed plasma flow is partly transferred to heating of the plasma. The dissipation does not take place, however, by means of particle collisions for a shock in space. Collisionless shocks can be divided into _super_- and _sub-critical_: the _critical Mach number_ $M_A^\ast$ is defined by equating the normal component of the downstream flow velocity in the shock frame to the sound speed. (In aerodynamics, the critical Mach number $M^\ast$ of an aircraft is the _lowest_ Mach number at which the airflow over some point of the aircraft reaches the speed of sound, but does not exceed it.) Above the critical Mach number, resistivity alone is unable to provide all the dissipation needed for the required _Rankine-Hugoniot_ shock jump. Supercritical shocks are important because they usually produce much greater ion heating than subcritical shocks. In contrast to sub-critical shocks, resistivity in super-critical shocks cannot provide all the necessary dissipation for a shock transition according to the _Rankine–Hugoniot_ relationships. Thus, other processes like wave-particle interactions provide the dissipation required for supercritical shock formation. This is the reason why they are able to accelerate particles to high energies. Note that most of the time we have supercritical bow shock at Earth, i.e. the sound speed in the magnetosheath is larger than the bulk speed.

Let us investigate shocks first in MHD fluids. Since information in such fluids is carried via three different waves -- namely, _fast_ or _compressional-Alfvén waves_, _intermediate_ or _shear-Alfvén waves_, and _slow_ or _magnetosonic waves_ -- we might expect MHD fluids to support three different types of shock, corresponding to disturbances traveling faster than each of the aforementioned waves.

In general, a shock propagating through an MHD fluid produces a significant difference in plasma properties on either side of the shock front. The thickness of the front is determined by a balance between convective and dissipative effects. However, dissipative effects in high temperature plasmas are only comparable to convective effects when the spatial gradients in plasma variables become extremely large. Hence, MHD shocks in such plasmas tend to be _extremely narrow_, and are well-approximated as _discontinuous_ changes in plasma parameters. The MHD equations, and Maxwell's equations, can be integrated across a shock to give a set of jump conditions which relate plasma properties on each side of the shock front. If the shock is sufficiently narrow then these relations become independent of its detailed structure. Let us derive the jump conditions for a narrow, planar, steady-state, MHD shock.

## MHD Theory

The conserved form of MHD equations can be written as:

$$
\begin{aligned}
\nabla\cdot\mathbf{B}=0 \\
\frac{\partial \mathbf{B}}{\partial t} - \nabla\times (\mathbf{V}\times \mathbf{B})=0 \\
\frac{\partial\rho}{\partial t} + \nabla\cdot(\rho\,\mathbf{V})=0 \\
\frac{\partial (\rho\,\mathbf{V})}{\partial t} + \nabla\cdot\mathbf{T}=0 \\
\frac{\partial U}{\partial t} + \nabla\cdot\mathbf{u}=0
\end{aligned}
$$ {#eq:mhd_conservation}

where

$$
\mathbf{T} = \rho\,\mathbf{V}\,\mathbf{V} + \left(p+ \frac{B^2}{2\mu_0}\right)\mathbf{I}- \frac{\mathbf{B}\mathbf{B}}{\mu_0}
$$

is the total (i.e., including electromagnetic, as well as plasma, contributions) stress tensor, $\mathbf{I}$ the identity tensor,

$$
U = \frac{1}{2}\rho V^2 + \frac{p}{\gamma-1} + \frac{B^2}{2\mu_0}
$$

the total energy density, and

$$
\mathbf{u} = \left(\frac{1}{2}\rho V^2+ \frac{\gamma}{\gamma -1}p\right)\mathbf{V} + \frac{\mathbf{B}\times (\mathbf{V}\times \mathbf{B})}{\mu_0}
$$

the total energy flux density.

Let us move into the rest frame of the shock. For a 1D shock, suppose that the shock front coincides with the $y$-$z$ plane. Furthermore, let the regions of the plasma upstream and downstream of the shock, which are termed regions 1 and 2, respectively, be _spatially uniform_ and _time-static_, i.e. $\partial/\partial t = \partial/\partial x = \partial/\partial y = 0$. Moreover, $\partial/\partial x=0$, except in the immediate vicinity of the shock. Finally, let the velocity and magnetic fields upstream and downstream of the shock all lie in the $x$-$y$ plane. The situation under discussion is illustrated in the figure below.

![A planar shock, where the velocity and magnetic fields upstream and downstream of the shock all lie in the $x$-$y$ plane.](https://farside.ph.utexas.edu/teaching/plasma/lectures/img2110.png){#fig:planar_shock}

Here, $\rho_1$, $p_1$, $\mathbf{V}_1$, and $\mathbf{B}_1$ are the downstream mass density, pressure, velocity, and magnetic field, respectively, whereas $\rho_2$, $p_2$, $\mathbf{V}_2$, and $\mathbf{B}_2$ are the corresponding upstream quantities.

The basic RH relations are listed in [MHD shocks](https://en.wikipedia.org/wiki/Shocks_and_discontinuities_(magnetohydrodynamics)). In the immediate vicinity of the planar shock, @eq:mhd_conservation reduce to

$$
\begin{aligned}
\frac{\mathrm{d}B_{x}}{\mathrm{d}x}=0 \\
\frac{\mathrm{d}}{\mathrm{d}x}(V_x\,B_y-V_y\,B_x)=0 \\
\frac{\mathrm{d} (\rho\, V_x)}{\mathrm{d}x}=0 \\
\frac{\mathrm{d} T_{xx}}{\mathrm{d}x}=0 \\
\frac{\mathrm{d} T_{xy}}{\mathrm{d}x}=0 \\
\frac{\mathrm{d} u_x}{\mathrm{d}x}=0
\end{aligned}
$$

Integration across the shock yields the desired jump conditions:

$$
\begin{aligned}
\lfloor B_x\rceil=0 \\
\lfloor V_x\,B_y-V_y\,B_x\rceil=0 \\
\lfloor \rho\,V_x\rceil=0 \\
\lfloor \rho\,V_x^{\,2}+p + B_y^{\,2}/2\mu_0\rceil=0 \\
\lfloor \rho\,V_x\,V_y - B_x\,B_y/\mu_0\rceil=0 \\
\Big\lfloor \frac{1}{2}\,\rho\,V^2\,V_x + \frac{\gamma}{\gamma-1}\,p\,V_x + \frac{B_y\,(V_x\,B_y-V_y\,B_x)}{\mu_0}\Big\rceil=0
\end{aligned}
$$ {#eq:RH_planar_sol}

where $\lfloor A \rceil = A_2 - A_1$ is the difference across the shock. These relations are often called the Rankine-Hugoniot relations for MHD. There are 6 scalar equations and 12 scalar variables all together. Assuming that all of the upstream plasma parameters are known, there are 6 unknown parameters in the problem--namely, $B_{x\,2}$, $B_{y\,2}$, $V_{x\,2}$, $V_{y\,2}$, $\rho_2$, and $p_2$. These 6 unknowns are fully determined by the six jump conditions. If we loose the planar assumption, then we typically write the $x$-component as the normal component ($v_n, B_n$) and the combined $y-$ and $z-components$ as the tangential component ($v_t,B_t$). Luckily this is still deterministic. However, the general case is very complicated!

The categories of the solution of @eq:RH_planar_sol are shown in the following table. The $\pm$ signs denote the changes of the downstream compared with the upstream ($+$ means increase, $-$ means decrease). By definition shocks are transition layers across which there is a transport of particles, whereas discontinuities are transition layers across which there is no particle transport.

|     Type     | Particle Transport | $\rho$ | $\mathbf{v}$ | $p$ | $\mathbf{B}$ | T |
|:------------:|:------------------:|:------:|:------------:|:---:|:------------:|:---:|
| Contact      | No  | $\pm$  | continuous | continuous  | continuous | $\pm$ |
| Tangential   | No  | $\pm$  | continuous | $\pm$  | $B_n$ = 0  | $\pm$ |
| Slow         | Yes | + | - | + | $B_t$ - | + |
| Intermediate | Yes | continuous | $\pm$ | $\pm$  | rotation?  | $\pm$ |
| Fast         | Yes | + | - | + | $B_t$ + | + |

1. The Earth's magnetopause is generally a tangential discontinuity. When there is no flux rope been generated, the magnetopause can be treated as the surface of pressure balance between magnetic pressure, ram pressure and thermal pressure. However, when reconnection triggers flux rope generation, it may become a rotational discontinuity (TO BE CONFIRMED!).

2. A special case is called _rotational discontinuity_. All are isentropic. Their existence are still a matter of debate.

3. The Earth's bow shock is a fast mode shock.

### Coplanarity

Knowing that for the shock $v_n\neq 0$ and $\lfloor v_n \rceil \neq 0$, we can eliminate $\lfloor v_t \rceil$ from the RH relations listed on Wiki and obtain

$$
\lfloor v_n \mathbf{B}_t \rceil = \frac{B_n^2}{\mu_0 (something) }\lfloor \mathbf{B}_t \rceil
$$

Hence the cross product of the left with the right hand side must vanish:

$$
\begin{aligned}
\lfloor \mathbf{B}_t \rceil \times \lfloor v_n\mathbf{B}_t \rceil = 0 \\
(v_{n1} - v_{n2})(\mathbf{B}_{t1}\times\mathbf{B}_{t2}) = 0
\end{aligned}
$$ {#eq:shock_coplanarity}

The resulting coplanarity theorem implies that the magnetic field across the shock has a 2-D geometry: upstream and dowstream tangential fields are parallel to each other and coplanar with the shock normal $\hat{n}$.

### Parallel Shock {#sec:parallel_shock}

The first special case is the so-called parallel shock in which both the upstream and downstream plasma flows are parallel to the magnetic field, as well as perpendicular to the shock front. In other words,

$$
\begin{aligned}
\mathbf{V}_1 = (V_1,\,0,\,0),\quad\mathbf{V}_2 = (V_2,\,0,\,0) \\
\mathbf{B}_1 = (B_1,\,0,\,0),\quad\mathbf{B}_2 = (B_2,\,0,\,0)
\end{aligned}
$$ {#eq:parallel_shock}

Substitution into @eq:RH_planar_sol yields

$$
\begin{aligned}
\frac{B_2}{B_1} &= 1\\
\frac{\rho_2}{\rho_1} &= r \\
\frac{v_2}{v_1} &= r^{-1} \\
\frac{p_2}{p_1} &= R \\
\end{aligned}
$$ {#eq:parallel_shock_relation}

with

$$
\begin{aligned}
r &= \frac{(\gamma + 1)M_1^2}{2+(\gamma-1)M_1^2} \\
R &= 1 + \gamma M_1^2 (1-r^{-1}) = \frac{(\gamma+1)r - (\gamma-1)}{(\gamma+1) - (\gamma-1)r}
\end{aligned}
$$ {#eq:eq:parallel_shock_coef}

Here, $M_1 = v_1/v_{s1}$, where $v_{s1} = \sqrt(\gamma p_1/\rho_1)$ is the upstream sound speed. Thus, the upstream flow is supersonic if $M_1>1$, and subsonic if $M_1<1$. Incidentally, as is clear from the above expressions, a parallel shock is unaffected by the presence of a magnetic field. In fact, this type of shock is identical to that which occurs in neutral fluids, and is, therefore, usually called a _hydrodynamic shock_.

It is easily seen from @eq:parallel_shock that there is no shock (i.e., no jump in plasma parameters across the shock front) when the upstream flow is exactly sonic: i.e., when $M_1=1$. In other words, $r=R=1$ when $M_1=1$. However, if $M_1\neq 1$ then the upstream and downstream plasma parameters become different (i.e., $r\neq 1$, $R\neq 1$) and a true shock develops. In fact, it is easily demonstrated that

$$
\begin{aligned}
\frac{\gamma-1}{\gamma+1} &\leq r \leq \frac{\gamma+1}{\gamma-1} \\
0&\leq R \leq \infty \\
\frac{\gamma-1}{2\,\gamma}&\leq M_1^2\leq \infty
\end{aligned}
$$ {#eq:parallel_shock_coef_range}

Note that the upper and lower limits in the above inequalities are all attained simultaneously.

The previous discussion seems to imply that a parallel shock can be either compressive (i.e., $r>1$) or expansive (i.e., $r<1$). Is there a preferential direction across the shock? In other words, can we tell the upstream and the downstream? Yes, with the additional physics principle of the _second law of thermodynamics_. This law states that the _entropy_ of a closed system can spontaneously increase, but can never spontaneously decrease. Now, in general, the entropy per particle is different on either side of a hydrodynamic shock front. Accordingly, the second law of thermodynamics mandates that the downstream entropy must _exceed_ the upstream entropy, so as to ensure that the shock generates a net increase, rather than a net decrease, in the overall entropy of the system, as the plasma flows through it.

The (suitably normalized) entropy per particle of an ideal plasma takes the form

$$
S = \ln\left(\frac{p}{\rho^\gamma}\right)
$$

Hence, the difference between the upstream and downstream entropies is

$$
\lfloor S\rceil =\ln R - \gamma\,\ln r
$$

Now, using @eq:eq:parallel_shock_coef,

$$
r\frac{\mathrm{d}\lfloor S \rceil}{dr} = \frac{r}{R}\frac{dR}{dr} - \gamma = \frac{\gamma(\gamma^2-1)(r-1)^2}{[(\gamma+1)r - (\gamma-1)][(\gamma+1)-(\gamma-1)r]}
$$

Furthermore, it is easily seen from @eq:parallel_shock_coef_range that $\mathrm{d}\lfloor S \rceil/dr\ge 0$ in all situations of physical interest. However, $\lfloor S \rceil = 0$ when $r=1$, since, in this case, there is no discontinuity in plasma parameters across the shock front. We conclude that $\lfloor S \rceil<0$ for $r<1$, and $\lfloor S \rceil>0$ for $r>1$. It follows that the second law of thermodynamics requires hydrodynamic shocks to be _compressive_: i.e., $r\equiv\rho_2 / \rho_1>1$. In other words, the plasma density must always _increase_ when a shock front is crossed in the direction of the relative plasma flow. It turns out that this is a general rule which applies to all three types of MHD shock. In the shock rest frame, the shock is associated with an irreversible (since the entropy suddenly increases) transition from supersonic to subsonic flow.

The upstream Mach number, $M_1$, is a good measure of shock strength: i.e., if $M_1=1$ then there is no shock, if $M_1-1 \ll 1$ then the shock is weak, and if $M_1\gg 1$ then the shock is strong. We can define an analogous downstream Mach number, $M_2=V_2/(\gamma\,p_2/\rho_2)^{1/2}$. It is easily demonstrated from the jump conditions that if $M_1>1$ then $M_2 < 1$. In other words, in the shock rest frame, the shock is associated with an irreversible (since the entropy suddenly increases) transition from supersonic to subsonic flow. Note that $r\equiv \rho_2/\rho_1\rightarrow (\gamma+1)/(\gamma-1)$, whereas $R\equiv p_2/p_1\rightarrow\infty$, in the limit $M_1\rightarrow \infty$. In other words, as the shock strength increases, the compression ratio, $r$, asymptotes to a finite value, whereas the pressure ratio, $P$, increases without limit. For a conventional plasma with $\gamma=5/3$, the limiting value of the compression ratio is 4: i.e., the downstream density can never be more than four times the upstream density. We conclude that, in the strong shock limit, $M_1\gg 1$, the large jump in the plasma pressure across the shock front must be predominately a consequence of a large jump in the plasma _temperature_, rather than the plasma _density_. In fact, the definitions of $r$ and $R$ imply that

$$
\frac{T_2}{T_1}\equiv \frac{R}{r}\rightarrow \frac{2\gamma(\gamma-1)M_1^2}{(\gamma+1)^2}\gg 1
$$

as $M_1\rightarrow\infty$. Thus, a strong parallel, or hydrodynamic, shock is associated with intense plasma heating.

As we have seen, the condition for the existence of a hydrodynamic shock is $M_1>1$, or $V_1 > V_{S\,1}$. In other words, in the shock frame, the upstream plasma velocity, $V_1$, must be supersonic. However, by Galilean invariance, $V_1$ can also be interpreted as the propagation velocity of the shock through an initially stationary plasma. It follows that, in a stationary plasma, a parallel, or hydrodynamic, shock propagates along the magnetic field with a supersonic velocity.

### Perpendicular Shock {#sec:perp_shock}

The second special case is the so-called _perpendicular shock_ in which both the upstream and downstream plasma flows are perpendicular to the magnetic field, as well as the shock front. In other words,

$$
\begin{aligned}
\mathbf{V}_1 = (V_1,\,0,\,0),\quad\mathbf{V}_2 = (V_2,\,0,\,0) \\
\mathbf{B}_1 = (0,\,B_1,\,0),\quad\mathbf{B}_2 = (0,\,B_2,\,0)
\end{aligned}
$$ {#eq:perp_shock}

Substitution into @eq:RH_planar_sol yields

$$
\begin{aligned}
\frac{B_2}{B_1} &= r\\
\frac{\rho_2}{\rho_1} &= r \\
\frac{v_2}{v_1} &= r^{-1} \\
\frac{p_2}{p_1} &= R \\
\end{aligned}
$$ {#eq:perp_shock_relation}

where

$$
R = 1+ \gamma\,M_1^{\,2}\,(1-r^{-1}) + \beta_1^{-1}\,(1-r^2)
$$ {#eq:perp_shock_coef}

and $r$ is a real positive root of the quadratic

$$
F(r) = 2\,(2-\gamma)\,r^2+ \gamma\,[2\,(1+\beta_1)+ (\gamma-1)\beta_1 M_a^2]r - \gamma\,(\gamma+1)\,\beta_1\,M_1^2=0
$$ {#eq:perp_shock_coef_f}

Here, $\beta_a = 2\mu_0 p_1/B_1^2$.

Now, if $r_1$ and $r_2$ are the two roots of @eq:perp_shock_coef_f then

$$
r_1 r_2 = -\frac{\gamma(\gamma+1)\beta_1 M_1^2}{2(2-\gamma)}
$$

Assuming that $\gamma < 2$, we conclude that one of the roots is negative, and, hence, that @eq:perp_shock_coef_f only possesses one physical solution: i.e., there is only one type of MHD shock which is consistent with @eq:perp_shock. Now, it is easily demonstrated that $F(0)<0$ and $F(\gamma+1/\gamma-1)>0$. Hence, the physical root lies between $r=0$ and $r=(\gamma+1)/(\gamma-1)$.

Using similar analysis to that employed in the previous subsection, it is easily demonstrated that the second law of thermodynamics requires a perpendicular shock to be compressive: i.e., $r>1$. It follows that a physical solution is only obtained when $F(1)<0$, which reduces to

$$
M_1^{\,2} > 1 + \frac{2}{\gamma\,\beta_1}
$$

This condition can also be written

$$
\mathbf{v}_1^2 > \mathbf{v}_{s1}^2 + \mathbf{v}_{A1}^2
$$

where $v_{A1} = B_1/\sqrt(\mu_0 \rho_1)$ is the upstream Alfvén speed. $v_{+\,1} = (v_{S\,1}^{\,2} + v_{A\,1}^{\,2})^{1/2}$ can be recognized as the velocity of a fast wave propagating perpendicular to the magnetic field (@sec:fast_slow). Thus, the condition for the existence of a perpendicular shock is that the relative upstream plasma velocity must be _greater_ than the upstream fast wave velocity. Incidentally, it is easily demonstrated that if this is the case then the downstream plasma velocity is less than the downstream fast wave velocity. We can also deduce that, in a stationary plasma, a perpendicular shock propagates across the magnetic field with a velocity which exceeds the fast wave velocity.

In the strong shock limit, $M_1\gg 1$, @eq:perp_shock_coef and @eq:perp_shock_coef_f become identical to @eq:eq:parallel_shock_coef. Hence, a strong perpendicular shock is very similar to a strong hydrodynamic shock (except that the former shock propagates perpendicular, whereas the latter shock propagates parallel, to the magnetic field). In particular, just like a hydrodynamic shock, a perpendicular shock cannot compress the density by more than a factor $(\gamma+1)/(\gamma-1)$. However, according to @eq:perp_shock_relation, a perpendicular shock compresses the magnetic field by the same factor that it compresses the plasma density. It follows that there is also an upper limit to the factor by which a perpendicular shock can compress the magnetic field.

### Oblique Shock

Let us now consider the general case in which the plasma velocities and the magnetic fields on each side of the shock are neither parallel nor perpendicular to the shock front. It is convenient to transform into the so-called _de Hoffmann-Teller frame_ in which $|\mathbf{v}_1\times \mathbf{B}_1|=0$, or

$$
v_{x1}B_{y1} - v_{y1}B_{x1} = 0
$$ {#eq:HT_frame_up}

In other words, it is convenient to transform to a frame which moves at the local $\mathbf{E}\times\mathbf{B}$ velocity of the plasma.[^HT_frame] It immediately follows from the jump condition of the magnetic convection equation that

[^HT_frame]: for a parallel shock, the HT frame can be just itself; for a perpendicular shock, the HT frame can be chosen by shifting the velocity by $\mathbf{v}_1$ s.t. $\mathbf{v}_1 = 0$.

$$
v_{x2}B_{y2} - v_{y2}B_{x2} = 0
$$ {#eq:HT_frame_down}

or $|\mathbf{v}_2\times \mathbf{B}_2|=0$. Thus, in the de Hoffmann-Teller frame, the upstream plasma flow is parallel to the upstream magnetic field, and the downstream plasma flow is also parallel to the downstream magnetic field. Furthermore, the magnetic contribution to the jump condition @eq:RH_planar_sol (last eq.) becomes identically zero, which is a considerable simplification.

@eq:HT_frame_up and @eq:HT_frame_down can be combined with the general jump conditions @eq:RH_planar_sol to give

$$
\begin{aligned}
\frac{\rho_2}{\rho_1}&=r \\
\frac{B_{x\,2}}{B_{x\,1}} &= 1 \\
\frac{B_{y\,2}}{B_{y\,1}} &= r\left(\frac{v_{1}^{\,2} - \cos^2\theta_1\,v_{A\,1}^{\,2}}{v_{1}^{\,2}-r\,\cos^2\theta_1\,v_{A\,1}^{\,2}}\right) \\
\frac{v_{x\,2}}{v_{x\,1}} &= \frac{1}{r} \\
\frac{v_{y\,2}}{v_{y\,1}} &= \frac{v_{1}^{\,2} -\cos^2\theta_1\, v_{A\,1}^{\,2}}{v_{1}^{\,2}-r\,\cos^2\theta_1\,v_{A\,1}^{\,2}} \\
\frac{p_2}{p_1} &= 1+\frac{\gamma v_1^2(r-1)}{v_{s1}^2 r}\left[1-\frac{r v_{A1}^2 [(r+1)v_1^2 - 2r v_{A1}^2\cos^2\theta_1]}{2(v_1^2 -r v_{A1}^2\cos^2\theta_1)^2} \right]
\end{aligned}
$$ {#eq:oblique_shock_relation}

where $v_1 = v_{x1}=v_1\cos\theta_1$ is the component of the upstream velocity normal to the shock front, and $theta_1$ is the angle subtended between the upstream plasma flow and the shock front normal. Finally, given the compression ratio, $r$, the square of the normal upstream velocity, $v_1^{\,2}$, is a real root of a cubic equation known as the _shock adiabatic_:

$$
\begin{aligned}
0 = & (v_1^2 - r\cos^2\theta_1 v_{A1}^2)^2\{ [(\gamma+1) - (\gamma-1)r]v_1^2 - 2r v_{s1}^2 \} \\
& r\sin^2\theta_1 v_1^2 v_{A1}^2 \{ [\gamma+(2-\gamma)r]v_1^2 - [(\gamma+1) - (\gamma-1)r]r\cos^2\theta_1 v_{A1}^2 \}
\end{aligned}
$$ {#eq:shock_adiabatic}

As before, the second law of thermodynamics mandates that $r>1$.

__Weak shock limit__

Let us first consider the weak shock limit $r\rightarrow 1$. In this case, it is easily seen that the three roots of the shock adiabatic reduce to the slow, intermediate (or Shear-Alfvén), and fast waves, respectively, propagating in the normal direction to the shock front:

$$
\begin{aligned}
v_1^{\,2}&=v_{-\,1}^{\,2}\equiv \frac{v_{A\,1}^{\,2}+v_{S\,1}^{\,2}- [(v_{A\,1}+v_{S\,1})^2 -4\,\cos^2\theta_1\,v_{S\,1}^{\,2}\,v_{A\,1}^{\,2}]^{1/2}}{2} \\
v_1^{\,2}&=\cos^2\theta_1\,v_{A\,1}^{\,2} \\
v_1^{\,2}&=v_{+\,1}^{\,2}\equiv \frac{v_{A\,1}^{\,2}+v_{S\,1}^{\,2} + [(v_{A\,1}+v_{S\,1})^2 -4\,\cos^2\theta_1\,v_{S\,1}^{\,2}\,v_{A\,1}^{\,2}]^{1/2}}{2}
\end{aligned}
$$

We conclude that slow, intermediate, and fast MHD shocks degenerate into the associated MHD waves in the limit of small shock amplitude. Conversely, we can think of the various MHD shocks as _nonlinear_ versions of the associated MHD waves. It is easily demonstrated that

$$
v_{+1} > \cos\theta_1 v_{A1} > v_{-1}
$$

In other words, a fast wave travels faster than an intermediate wave, which travels faster than a slow wave. It is reasonable to suppose that the same is true of the associated MHD shocks, at least at relatively low shock strength. It follows from @eq:oblique_shock_relation that $B_{y2}>B_{y1}$ for a fast shock, whereas $B_{y\,2}<B_{y\,1}$ for a slow shock. For the case of an intermediate shock, we can show, after a little algebra, that $B_{y\,2}\rightarrow -B_{y\,1}$ in the limit $r\rightarrow 1$. We can conclude that (in the de Hoffmann-Teller frame) fast shocks refract the magnetic field and plasma flow (recall that they are parallel in our adopted frame of the reference) _away_ from the normal to the shock front, whereas slow shocks refract these quantities _toward_ the normal. Moreover, the tangential magnetic field and plasma flow generally _reverse_ across an intermediate shock front. This is illustrated in @fig:mhd_shock_rest_frame.

![Characteristic plasma flow patterns across the three different types of MHD shock in the shock rest frame.](https://farside.ph.utexas.edu/teaching/plasma/lectures/img2229.png){#fig:mhd_shock_rest_frame}

When $r$ is slightly larger than unity it is easily demonstrated that the conditions for the existence of a slow, intermediate, and fast shock are $v_1> V_{-\,1}$, $v_1> \cos\theta_1\,V_{A\,1}$, and $v_1> V_{+\,1}$, respectively.

__Strong shock limit__

Let us now consider the strong shock limit, $v_1^{\,2}\gg 1$. In this case, the shock adiabatic yields $r\rightarrow r_m=(\gamma+1)/(\gamma-1)$, and

$$
v_1^{\,2} \simeq \frac{r_m}{\gamma-1}\,\frac{2v_{S1}\sin^2\theta_1\,[\gamma + (2-\gamma)\,r_m]\,v_{A1}^2}{r_m-r}
$$

There are no other real roots. The above root is clearly a type of fast shock. The fact that there is only one real root suggests that there exists a critical shock strength above which the slow and intermediate shock solutions cease to exist. (In fact, they merge and annihilate one another.) In other words, there is a limit to the strength of a slow or an intermediate shock. On the other hand, there is no limit to the strength of a fast shock. Note, however, that the plasma density and tangential magnetic field cannot be compressed by more than a factor $(\gamma+1)/(\gamma-1)$ by any type of MHD shock.

__$\theta_1=0$__

Consider the special case $\theta_1=0$ in which both the plasma flow and the magnetic field are normal to the shock front. In this case, the three roots of the shock adiabatic are

$$
\begin{aligned}
v_1^2&=\frac{2r\,v_{S1}^2}{(\gamma+1)-(\gamma-1)\,r} \\
v_1^2&=r\,v_{A1}^2 \\
v_1^2&=r\,v_{A1}^2
\end{aligned}
$$

We recognize the first of these roots as the hydrodynamic shock discussed in @sec:parallel_shock. This shock is classified as a slow shock when $V_{S\,1}<v_{A\,1}$, and as a fast shock when $V_{S\,1}> v_{A\,1}$. The other two roots are identical, and correspond to shocks which propagate at the velocity $v_1 =\sqrt{r}\, v_{A\,1}$ and "switch-on" the tangential components of the plasma flow and the magnetic field: it can be seen from @eq:oblique_shock_relation that $v_{y\,1}=B_{y\,1} =0$ whilst $v_{y\,2}\neq 0$ and $B_{y\,2}\neq 0$ for these types of shock.

There we have "switch-on" and "switch-off" shocks which refer to the generation and elimination of tangential components of the plasma flow and the magnetic field. Incidentally, it is also possible to have a "switch-off" shock which eliminates the tangential components of the plasma flow and the magnetic field. According to @eq:oblique_shock_relation, such a shock propagates at the velocity $v_1=\cos\theta_1\,v_{A\,1}$. Switch-on and switch-off shocks are illustrated in @fig:shock_switch_on_off.

![Characteristic plasma flow patterns across switch-on and switch-off shocks in the shock rest frame.](https://farside.ph.utexas.edu/teaching/plasma/lectures/img2247.png){#fig:shock_switch_on_off}

__$\theta_1=\pi/2$__

Consider another special case $\theta_1=\pi/2$. As is easily demonstrated, the three roots of the shock adiabatic are

$$
\begin{aligned}
v_1^{\,2}&=r \left(\frac{2v_{S1}^2 + [\gamma+(2-\gamma)\,r]\,v_{A1}^2} {(\gamma+1)-(\gamma-1)\,r}\right)\\
v_1^{\,2}&=0 \\
v_1^{\,2}&=0
\end{aligned}
$$

The first of these roots is clearly a fast shock, and is identical to the perpendicular shock discussed in @sec:perp_shock, except that there is no plasma flow across the shock front in this case. (IS IT BECAUSE OF THE HT FRAME?) The fact that the two other roots are zero indicates that, like the corresponding MHD waves, slow and intermediate MHD shocks do not propagate perpendicular to the magnetic field.

MHD shocks have been observed in a large variety of situations. For instance, shocks are known to be formed by supernova explosions, by strong stellar winds, by solar flares, and by the solar wind upstream of planetary magnetospheres.

## Double Adiabatic Theory

The classical approach by Chew, Goldberger, and Low [@cgl1956] utilizes the MHD framework by assuming isotropic distributions parallel and perpendicular to the magnetic field, which results in scalar pressures on the two sides of the shock. This is now known as the CGL theory.

When we shift to the MHD with anisotropic pressure tensor

$$
P_{ij} = p_\perp \delta_{ij} + (p_\parallel - p_\perp)B_i B_j / B^2
$$

where $p_\perp$ and $p_\parallel$ are the pressures perpendicular and parallel w.r.t. the magnetic field, respectively.
For the strong magnetic field approximation, the two pressures are related to the plasma density and the magnetic field strength by two adiabatic equations,

$$
\begin{aligned}
\frac{\mathrm{d}}{\mathrm{d}t}\Big( \frac{p_\parallel B^2}{\rho^3} \Big) &= 0 \\
\frac{\mathrm{d}}{\mathrm{d}t}\Big( \frac{p_\perp}{\rho B} \Big) &= 0
\end{aligned}
$$

This is also known as the double adiabatic theory, which is also what many people remember to be the key conclusion from the CGL theory. (These are constants at a fixed location in time: it is _not_ correct to apply these across the shock!) Here I want to emphasize the meaning of *adiabatic* again: this assumes zero heat flux. If the system is not adiabatic, the conservation of these two quantities related to the parallel and perpendicular pressure is no longer valid, and additional terms may come into play such as the stochastic heating.

The general jump conditions for discontinuities in a collisionless anisotropic magnetoplasma in the CGL approximation were derived by [@abraham1967shock].

The general jump conditions for an anisotropic plasma are given by [@hudson1970discontinuities]

$$
\begin{aligned}
\lfloor \rho v_n \rceil &= 0 \\
\lfloor v_n\mathbf{B}_t - \mathbf{v}_t B_n \rceil &= 0 \\
\lfloor p_\perp + (p_\parallel - p_\perp)\frac{B_n^2}{B^2} + \frac{B_t^2}{8\pi} + \rho v_n^2 \rceil &= 0 \\
\lfloor \frac{B_n \mathbf{B}_t}{4\pi}\Big( \frac{4\pi(p_\parallel - p_\perp)}{B^2} - 1 \Big) +\rho v_n \mathbf{v}_t \rceil &= 0 \\
\lfloor \rho v_n\Big( \frac{\epsilon}{\rho} + \frac{v^2}{2} + \frac{p_\perp}{\rho} + \frac{B_t^2}{4\pi \rho} \Big) + \frac{B_n^2 v_n}{B^2}&(p_\parallel - p_\perp) \\
- \frac{\mathbf{B}_t\cdot\mathbf{v}_t B_n}{4\pi}\Big( 1 - \frac{4\pi(p_\parallel - p_\perp)}{B^2} \Big) \rceil &= 0 \\
\lfloor B_n \rceil &= 0
\end{aligned}
$$

where $\rho$ is the mass density, $v$ and $B$ are the velocity and magnetic field strength. Subscripts $t$ and $n$ indicate tangential and normal components with respect to the discontinuity. (THIS IS IN CGS UNITS!) Quantities $p_\perp$ and $p_\parallel$ are the elements of the plasma pressure tensor perpendicular and parallel with respect to the magnetic field. Quantity $\epsilon$ is the internal energy, $\epsilon = p_\perp + p_\parallel/2$, and $\lfloor Q \rceil = Q_2 - Q_1$, where subscripts 1 and 2 signify the quantity upstream and downstream of the discontinuity. These equations refer to the conservation of physical quantities, i.e. the mass flux, the tangential component of the electric field, the normal and tangential components of the momentum flux, the energy flux, and, finally, the normal component of the magnetic field. To solve the jump equations for anisotropic plasma conditions upstream and downstream of the shock, one has to use an additional equation, since the set of equations is underdetermined. One common choice is the magnetic field/density jump ratio.

The following derivations follow [@erkaev2000solution].
Let us introduce two dimensionless parameters, $A_s$ and $A_m$, which are determined for upstream conditions as

$$
\begin{aligned}
A_s &= \frac{p_{\perp 1}}{\rho_1 v_1^2} \\
A_m &= \frac{1}{M_A^2}
\end{aligned}
$$

where $M_A$ is the upstream Alfvén Mach number. For common solar wind conditions, both of these parameters are quite small ($\sim 0.01$).

For shocks, the tangential components of the electric and magnetic fields are _coplanar_ (@eq:shock_coplanarity). Thus, the components of the magnetic field upstream of the shock are given as $B_{n1} = B_1 \cos\theta_1$ and $B_{t1} = B_1 \sin\theta_1$, where $\theta_1$ is the angle between the magnetic field vector and the vector $\hat{n}$ normal to the discontinuity. Similarly, the components of the bulk velocity upstream of the shock are chosen as $v_{n1} = v_1 \cos\alpha$ and $v_{t1} = B_1 \sin\alpha$, where α the angle between the bulk velocity and the normal component of the velocity. Furthermore, a parameter $\lambda$ is used to denote the pressure anisotropy

$$
\lambda = p_\perp / p_\parallel
$$

and another parameter $r$ is used to denote the ratio of density

$$
r \equiv \frac{\rho_2}{\rho_1} = \frac{v_{n1}}{v_{n2}}
$$

### Perpendicular Shock

For a perpendicular shock, $B_n = 0$, we have the conservation relations reduce to

$$
\begin{aligned}
\lfloor \rho v_n \rceil &= 0 \\
\lfloor v_n\mathbf{B}_t \rceil &= 0 \\
\lfloor p_\perp + \frac{B_t^2}{8\pi} + \rho v_n^2 \rceil &= 0 \\
\lfloor \rho v_n \mathbf{v}_t \rceil &= 0 \\
\lfloor \rho v_n\big( \frac{\epsilon}{\rho} + \frac{v^2}{2} + \frac{p_\perp}{\rho} + \frac{B_t^2}{4\pi \rho} \big) \rceil &= 0
\end{aligned}
$$

The quantities downstream of the discontinuity are

$$
\begin{aligned}
B_{t2} &= r B_{t1} \\
v_{t2} &= v_{t1} \\
p_{\perp 2} &= p_{\perp 1} + \frac{B_{t1}^2}{8\pi}(1-r^2) + \rho_1 v_{n1}^2\big( 1 - \frac{1}{r} \big)
\end{aligned}
$$

Substituting these into the energy equation leads to

$$
\begin{aligned}
2 \lambda_1(3\lambda_2 +1)\xi^3 − \lambda_1(4\lambda_2 +1)(2A_S + A_M +2)\xi^2 \\
+ \lambda_2[2\lambda_1(4A_S + 1 + 2A_M ) + 2A_S ]\xi + A_M \lambda_1 = 0
\end{aligned}
$$

where $\xi = 1/r$.

Now we can do some simple estimations. Assume we have isotropic upstream solar wind with $n = 2 \textrm{amu/cc}$, $\mathbf{v} = [600, 0, 0] \textrm{km/s}$, $\mathbf{B} = [0, 0, -5] \textrm{nT}$ in GSM coordinates, and $T = 5\times 10^5 \textrm{K}$.
We want to estimate the downstream anisotropy given a density/tangential magnetic field jump of 3.

```jl
KeyNotes.shock_estimation()
```

Another thing to note is that, if you set the jump ratio to 4 (maximum value when $\gamma = 5/3$) in the above calculations, the downstream anisotropy will become 0.6. This indicates that under this set of upstream conditions, the jump ratio shall never be close to 4 if the anisotropy $T_\perp/T_\parallel > 1$!

### Parallel Shock

Parallel shocks are more special in that the magnetic field strength remains unchanged so the equations effectively describe pure gasdynamic solutions.
[@kuznetsov2018parallel] presents a simplified solution in a 1D parallel shock case with parallel and perpendicular thermal energy heat fluxes $S_\parallel$ and $S_\perp$ included. Note again the original CGL theory assumes 0 heat fluxes.

## Location of Shock

In the observation comparison paper [@slavin1981solar] for quasi-perpendicular shocks, they concluded that the variations in shock stand-off distance and shape are ordered by the sonic Mach number $M_s$ and not other Mach numbers involve magnetic field. In other words, they think the bow shock is a gasdynamic structure.

However, even in neutral fluid theory, the determination of shock location as well as shape is still an ongoing research. Imagine the simplest scenario where there is a static ball in the air with infinite mass. Assuming purely homogenous air with known density, velocity and pressure in the upstream, can you tell me the exact location of shock stand-off distance with pen and paper?

On top of that, the introduction of EM field complicates the story. Especially in the case of a parallel shock, the plasmas get "shocked" both upstream and downstream, and the stand-off distance of the shock may not be a single point theoretically. In some sense, normal magnetic field to the boundary "thickens" the shock front.

## Earth Bow Shock

Using data from the AMPTE/IRM spacecraft, [@hill1995plasma] have shown that the double adiabatic equations do not hold in the magnetosheath. Moreover, the thermal behaviour of the magnetosheath is studied by [@phan1996subsolar]
using WIND spacecraft data. They report that most parts of the magnetosheath are marginally mirror unstable: electron observations showed $T_{e\perp} / T_{e\parallel} \sim 1.3$ in the magnetosheath.
