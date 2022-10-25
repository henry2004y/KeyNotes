# Waves {#sec:waves}

## Plasma Oscillations {#sec:oscillations}

If the electrons in a plasma are displaced from a uniform background of ions, electric fields will be built up in such a direction as to restore the neutrality of the plasma by pulling the electrons back to their original positions. Because of their inertia, the electrons will overshoot and oscillate around their equilibrium positions with a characteristic frequency known as the _plasma frequency_. This oscillation is so fast that the massive ions do not have time to respond to the oscillating field and may be considered as fixed. In Fig. 4.2 (ADD IT!), the open rectangles represent typical elements of the ion fluid, and the darkened rectangles the alternately displaced elements of the electron fluid. The resulting charge bunching causes a spatially periodic $\mathbf{E}$ field, which tends to restore the electrons to their neutral positions.

![Plasma oscillation, also known as Langmuir wave.](https://s8.gifyu.com/images/plasma.gif){#fig:langmuir_wave}

We shall derive an expression for the plasma frequency $\omega_p$ in the simplest case, making the following assumptions:

1. There is no magnetic field;
2. there are no thermal motions ($k_B T=0$);
3. the ions are fixed in space in a uniform distribution;
4. the plasma is infinite in extent; and
5. the electron motions occur only in the x direction. As a consequence of the last assumption, we have

$$
\nabla = \hat{x}\partial/\partial,\, \mathbf{E} = E\hat{x},\, \nabla\times\mathbf{E} =0,\, \mathbf{E}=-\nabla\phi
$$

There is, therefore, no fluctuating magnetic field; this is an electrostatic oscillation.

The electron equations of continuity and motion are

$$
\begin{aligned}
\frac{\partial n_e}{\partial t} + \nabla\cdot(n_e\mathbf{u}_e) = 0 \\
mn_e\Big[ \frac{\partial \mathbf{u}_e}{\partial t} + (\mathbf{u}_e\cdot\nabla)\mathbf{u}_e \Big] = -en_e\mathbf{E}
\end{aligned}
$$

The only Maxwell equation we shall need is the one that does not involve $\mathbf{B}$: Poisson's equation. This case is an exception to the general rule of @sec:plasma_approximation that Poisson's equation cannot be used to find $\mathbf{E}$. This is a high-frequency oscillation; electron inertia is important, and the deviation from neutrality is the main effect in this particular case. Consequently, we write

$$
\epsilon_0\nabla\cdot\mathbf{E} = \epsilon_0 \partial \mathbf{E}/\partial x = e(n_i - n_e)
$$

The last three equations together can be easily solved by the procedure of _linearization_. By this we mean that the amplitude of oscillation is small, and terms containing higher powers of amplitude factors can be neglected. We first separate the dependent variables into two parts: an "equilibrium" part indicated by a subscript 0, and a "perturbation" part indicated by a subscript 1:

$$
n_e = n_0 + n_1\quad \mathbf{u}_e = \mathbf{u}_0 + \mathbf{u}_1\quad \mathbf{E}_e = \mathbf{E}_0 + \mathbf{E}_1
$$

The equilibrium quantities express the state of the plasma in the absence of the oscillation. Since we have assumed a uniform neutral plasma at rest before the electrons are displaced, we have

$$
\begin{aligned}
\nabla n_0 = \mathbf{u}_0 = \mathbf{E}_0 = 0 \\
\frac{\partial n_0}{\partial t} = \frac{\partial\mathbf{u}_0}{\partial t} =  \frac{\partial\mathbf{E}_0}{\partial t} = 0
\end{aligned}
$$

The momentum equation now becomes

$$
m\frac{\partial \mathbf{u}_1}{\partial t} = -e\mathbf{E}
$$

The term $(\mathbf{u}_1\cdot\nabla)\mathbf{u}_1$ is seen to be quadratic in an amplitude quantity, and we shall
linearize by neglecting it. The _linear theory_ is valid as long as $|u_1|$ is small enough that such quadratic terms are indeed negligible. Similarly, the continuity equation becomes

$$
\frac{\partial n_1}{\partial t} + n_0 \nabla\cdot\mathbf{u}_1 = 0
$$

In Poisson's equation, we note that $n_{i0}=n_{e0}$ in equilibrium and that $n_{i1}=0$ by the assumption of fixed ions, so we have

$$
\epsilon_0 \partial \mathbf{E}/\partial x = -en_1
$$

The oscillating quantities are assumed to behave sinusoidally:

$$
\begin{aligned}
\mathbf{n}_1 &= n_1 e^{i(kx-\omega t)} \\
\mathbf{u}_1 &= \mathbf{u}_1 e^{i(kx-\omega t)}\hat{x} \\
\mathbf{E}_1 &= \mathbf{E}_1 e^{i(kx-\omega t)}\hat{x}
\end{aligned}
$$

The time derivative $\partial/\partial t$ can therefore be replaced by $-i\omega$, and the gradient $\nabla$ by $ik\hat{x}$. Now the linearized equations become

$$
\begin{aligned}
-im\omega n_1 &= -n_0 ik u_1 \\
-i\omega u_1 &= -eE_1 \\
-ik\epsilon_0 E_1 &= -en_1
\end{aligned}
$$

Eliminating $n_1$ and $E_1$, we have

$$
-m\omega u_1 = -i\frac{n_0e^2}{\epsilon_0 \omega}u_1
$$

If $u_1$ does not vanish, we must have

$$
\omega^2 = \frac{n_0 e^2}{\epsilon_0 m}
$$

The _plasma frequency_ is therefore

$$
\omega_p = \sqrt{\frac{n_0 e^2}{\epsilon_0 m}} \quad \text{rad/s}
$$ {#eq:plasma_frequency}

Numerically, one can use the approximate formula

$$
\omega_p / 2\pi = f_p \approx 9\sqrt{n}\quad \text{m}^{-3}
$$

This frequency, depending only on the plasma density, is one of the fundamental parameters of a plasma. Because of the smallness of $m$, the plasma frequency is usually very high. For instance, in a plasma of density $n=10^{18}\,\text{m}^{-3}$, we have

$$
f_p\approx 9(10^{18})^{1/2} = 9\times 10^9\,\text{s}^{-1} = 9\,\text{GHz}
$$

Radiation at $f_p$ normally lies in the microwave range. We can compare this with another electron frequency: $\omega_c$. A useful numerical formula is

$$
f_{ce}\simeq 28\,\text{GHz/T}
$$

Thus if $B=0.32$ T and $n=10^{18}\,\text{m}^{-3}$, the cyclotron frequency is approximately equal to the plasma frequency for electrons.

@eq:plasma_frequency tells us that if a plasma oscillation is to occur at all, it must have a frequency depending only on $n$. In particular, $\omega$ does not depend on $k$, so the group velocity $d\omega/dk$ is zero. The disturbance does not propagate. How this can happen can be made clear with a mechanical analogy (Fig. 4.3 @fig:independent_springs). Imagine a number of heavy balls suspended by springs equally spaced in a line. If all the springs are identical, each ball will oscillate vertically with the same frequency. If the balls are started in the proper phases relative to one another, they can be made to form a wave propagating in either direction. The frequency will be fixed by the springs, but the wavelength can be chosen arbitrarily. The two undisturbed balls at the ends will not be affected, and the initial disturbance does not propagate. Either traveling waves or standing waves can be created, as in the case of a stretched rope. Waves on a rope, however, must propagate because each segment is connected to neighboring segments.

![Synthesis of a wave from an assembly of independent oscillators.](images/independent_springs.png){#fig:independent_springs}

This analogy is not quite accurate, because plasma oscillations have motions in the direction of $\mathbf{k}$ rather than transverse to $\mathbf{k}$. However, as long as electrons do not collide with ions or with each other, they can still be pictured as independent oscillators moving horizontally (in @fig:independent_springs). But what about the electric field? Won't that extend past the region of initial disturbance and set neighboring layers of plasma into oscillation? In our simple example, it will not, because the electric field due to equal numbers of positive and negative infinite plane charge sheets is zero. In any finite system, however, plasma oscillations will propagate. In Fig. 4.4 ADD IT!, the positive and negative (shaded) regions of a plane plasma oscillation are confined in a cylindrical tube. The fringing electric field causes a coupling of the disturbance to adjacent layers, and the oscillation does not stay localized.

## Dielectric Function

Usually when the permittivity of a material is function of space or frequency, it is call dielectric function.
The dielectric constant $\epsilon$ is a quantity which appears in electrostatic when people describe how a material screens an external time-independent electric field. When they begin to study how a material screens an external time-dependent electric field $\mathbf{E}\propto e^{-i\omega t}$ in electrodynamic sense they found that the number $\epsilon$ depends on frequency, so one gets $\epsilon(\omega)$. It would be stupid to call a quantity, which essentially depends on frequency, just "dielectric constant", therefore one calls it "dielectric function". Further studies showed that $\epsilon$ depends not only on the frequency but also on the wave-vector of the field, $\mathbf{E}\propto e^{-i\omega t +ikx}$, so one gets the dielectric function $\epsilon=\epsilon(k,\omega)$.

## Classification of EM Waves in Uniform Plasma

$$
\begin{aligned}
&\left\{
\begin{array}{ll}
\mathbf{k}\parallel \mathbf{B}_0 & \text{Parallel Propagation}, \\
\mathbf{k}\perp\mathbf{B}_0 & \text{Perpendicular Propagation}
\end{array} \right. \\
&\left\{
\begin{array}{ll}
\mathbf{k}\parallel \mathbf{E}_1 & \text{Longitudinal Waves}, \\
\mathbf{k}\perp\mathbf{E}_1 & \text{Transverse Waves}
\end{array} \right. \\
&\left\{
\begin{array}{ll}
\mathbf{B}_1 = 0 & \text{Electrostatic Waves}, \\
\mathbf{B}_1 \neq 0 & \text{Electromagnetic Waves}
\end{array} \right.
\end{aligned}
$$

Note:

1. Wave is longitudinal $\Longleftrightarrow$ Wave is electrostatic
2. Wave is transverse $\implies$ Wave is electromagnetic
3. Wave is electromagnetic $\centernot\implies$ Wave is transverse. You can always add a component of $\mathbf{E}_1$ parallel to $\mathbf{k}$ without changing $\mathbf{B}_1$.

## ES vs. EM Waves

As we will see in @sec:CPDR, the dielectric function is defined in @eq:d_e_relation. From other perspectives, the dielectric function shows up in the Ampère's law as well as the Poisson's equation

$$
\begin{aligned}
\nabla\times\mathbf{B}=\mu_0\mathbf{j}+\mu_0\epsilon_0\frac{\partial\mathbf{E}}{\partial t}&\equiv\mu_0\pmb{\epsilon}\cdot\frac{\partial \mathbf{E}}{\partial t} \\
\nabla\cdot(\mathbf{\epsilon_0 \mathbf{E}_1}) + q_j n_j \equiv\nabla\cdot(\pmb{\epsilon}\cdot\mathbf{E}_1) &= 0
\end{aligned}
$$

Let us consider waves in an _isotropic_ plasma. For isotropic plasmas, the dielectric tensor $\pmb{\epsilon}$ shrinks to a scalar $\epsilon$. For cold plasma (static ion background), the dielectric function is

$$
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2}
$$

For electrostatic (ES) waves, let $\epsilon=0$, we have

$$
\omega=\pm\omega_{pe}
$$

For electromagnetic (EM) waves, from Maxwell's equations we have

$$
\begin{aligned}
\nabla\times\mathbf{E}&=-\frac{\partial \mathbf{B}}{\partial t}, \\
\nabla\times\mathbf{B}&=\mu_0\mathbf{j}+\mu_0\epsilon_0\frac{\partial\mathbf{E}}{\partial t}\equiv\mu_0\epsilon\frac{\partial \mathbf{E}}{\partial t}.
\end{aligned}
$$

With $\nabla\rightarrow i\mathbf{k},\ \partial/\partial t\rightarrow -i\omega$, we can get the dispersion relation

$$
\begin{aligned}
i\mathbf{k}\times\mathbf{E}&=i\omega \mathbf{B} \\
i\mathbf{k}\times\mathbf{B}&=-i\mu_0\epsilon\omega\mathbf{E} \\
\Rightarrow k^2\mathbf{E}-\cancel{(\mathbf{k}\cdot\mathbf{E})\mathbf{k}}&=\omega^2 \mu_0\epsilon \mathbf{E}.
\end{aligned}
$$

If $\mathbf{k}\perp\mathbf{E}$, by substituting the dielectric function inside we have

$$
\begin{aligned}
k^2=\omega^2 \epsilon\mu_0=\omega^2\epsilon_0\mu_0\Big[ 1-\frac{{\omega_{pe}}^2}{\omega^2}\Big] \nonumber \\
\Rightarrow \omega^2=k^2c^2+{\omega_{pe}}^2.
\end{aligned}
$$

For both waves, $\nabla\cdot(\epsilon\mathbf{E}_1)=0\Rightarrow i\epsilon(\mathbf{k}\cdot\mathbf{E}_1)=0$ is always valid. However, for electrostatic wave, $\mathbf{E}_1=-\nabla\phi_1=-i\mathbf{k}\phi_1\Rightarrow \mathbf{k}\parallel \mathbf{E}_1\Rightarrow \epsilon=0$, while for EM wave, usually $\mathbf{k}\perp\mathbf{E}_1$ ($\mathbf{k}\perp\mathbf{E}_1 \Rightarrow$ EM wave, but EM waves do not necessarily need to be transverse. You can always add a component of $\mathbf{E}_1$ parallel to $\mathbf{k}$ without changing $\mathbf{B}_1$), $\epsilon$ does not need to be zero. Therefore, _getting the dispersion relation by setting $\epsilon$ to 0 is only valid for isotropic ES waves_. For EM waves, there's a systematic way to get all the dispersion relations starting from dielectric function, explained in detail in @sec:CPDR. Here we just have a simple summary of the steps.

From Maxwell's equation for the perturbed field,

$$
\begin{aligned}
\nabla\times\mathbf{E}_1 &= -\mu_0\frac{\partial \mathbf{H}_1}{\partial t} \\
\nabla\times\mathbf{H}_1 &= \mathbf{J}_1 +\epsilon_0\frac{\partial \mathbf{E}_1}{\partial t}
\end{aligned}
$$

where we have assumed

$$
\begin{Bmatrix}
\mathbf{E}_1(\mathbf{x},t) \\ \mathbf{H}_1(\mathbf{x},t)
\end{Bmatrix}  = \Re
\begin{Bmatrix}
\tilde{\mathbf{E}_1}e^{i\mathbf{k}\cdot\mathbf{x}-i\omega t} \\
\tilde{\mathbf{H}_1}e^{i\mathbf{k}\cdot\mathbf{x}-i\omega t}
\end{Bmatrix}
$$

It quickly follows that

$$
\begin{aligned}
\mathbf{k}\times\mathbf{E}_1 &= \mu_0 \omega \mathbf{H}_1 \\
i\mathbf{k}\times\mathbf{H}_1 &= i\mathbf{k}\times\Big( \frac{\mathbf{k}\times\mathbf{E}_1}{\mu_0 \omega}\Big) = \mathbf{J}_1 - \epsilon_0 i\omega\mathbf{E}_1
\end{aligned}
$$

Then there comes the wave equation

$$
\mathbf{k}\times(\mathbf{k}\times\mathbf{E}_1) = \mathbf{k}(\mathbf{k}\cdot\mathbf{E}_1) - k^2\mathbf{E}_1 =  -i\omega \mu_0 \mathbf{J}_1 -\frac{\omega^2}{c^2}\mathbf{E}_1 \equiv -\frac{\omega^2}{c^2}\frac{\epsilon}{\epsilon_0}\mathbf{E}_1
$$

If we can express the total current density as a function of perturbed electric field, $\mathbf{J}_1 = \mathbf{J}_1(\mathbf{E}_1)$, from MHD, 2-fluid, or Vlasov model combining with the property of the media, we can obtain the expression for the dielectric function $\epsilon$. With some effort, we get

$$
\mathbf{A}
\begin{pmatrix}
E_{1x} \\ E_{1y} \\ E_{1z}
\end{pmatrix} = 0
$$

from which the condition for non-trivial solutions leads to

$$
\det{A} = 0 \Rightarrow
\begin{cases}
\text{eigenvalue for } \omega = \omega(\mathbf{k}) \\
\text{eigenvectors} \Rightarrow \text{polarization of E field}
\end{cases}
$$

## Cold Uniform Plasma {#sec:CPDR}

As long as $T_e = T_i = 0$, the linear plasma waves can easily be generalized to an arbitrary number of charged particle species and an arbitrary angle of propagation $\theta$ relative to the magnetic field. Waves that depend on finite $T$, such as ion acoustic waves, are not included in this treatment. The derivations go back to late 1920s when Appleton and Wilhelm Altar first calculated the cold plasma dispersion relation (CPDR).

First, we define the dielectric tensor of a plasma as follows. The fourth Maxwell equation is

$$
\nabla\times\mathbf{B} = \mu_0(\mathbf{j} + \epsilon_0\dot{\mathbf{E}})
$$

where $\mathbf{j}$ is the plasma current due to the motion of the various charged particle species $s$, with density $n_s$, charge $q_s$, and velocity $\mathbf{v}_s$:

$$
\mathbf{j} = \sum_s n_s q_s\mathbf{v}_s
$$ {#eq:ampere}

Considering the plasma to be a dielectric with internal currents $\mathbf{j}$, we may write @eq:ampere as

$$
\nabla\times\mathbf{B} = \mu_0\dot{\mathbf{D}}
$$

where

$$
\mathbf{D} = \epsilon_0 \mathbf{E} + \frac{i}{\omega}\mathbf{j}
$$ {#eq:electric_displacement_field}

is the __electric displacement field__ or __electric induction__.  It accounts for the effects of _bound charge within materials_ (i.e. plasma).
Here we have assumed an $\exp(-i\omega t)$ dependence for all plasma motions. Let the current $\mathbf{j}$ be proportional to $\mathbf{E}$ but not necessarily in the same direction (because of the magnetic field $B_0\hat{\mathbf{z}}$); we may then define a conductivity tensor $\pmb{\sigma}$ by the relation

$$
\mathbf{j} = \pmb{\sigma}\cdot\mathbf{E}
$$

@eq:electric_displacement_field becomes

$$
\mathbf{D} = \epsilon\Big( \mathbf{I} + \frac{i}{\epsilon_0\omega}\pmb{\sigma} \Big)\cdot\mathbf{E} = \pmb{\epsilon}\cdot\mathbf{E}
$$ {#eq:d_e_relation}

Thus the effective dielectric constant of the plasma is the tensor

$$
\pmb{\epsilon} = \epsilon_0 (\mathbf{I} + i\pmb{\sigma}/\epsilon_0\omega)
$$

where $\mathbf{I}$ is the unit tensor. In electromagnetism, a __dielectric__ is an electrical insulator that can be polarised by an applied electric field. When a dielectric material is placed in an electric field, electric charges do not flow through the material as they do in an electrical conductor, because they have no loosely bound, or free, electrons that may drift through the material, but instead they shift, only slightly, from their average equilibrium positions, causing dielectric polarisation.

To evaluate $\pmb{\sigma}$, we use the linearized fluid equation of motion for species $s$, neglecting the collision and pressure terms:

$$
m_s\frac{\partial \mathbf{v}_s}{\partial t} = q_s(\mathbf{E}+\mathbf{v}_s\times\mathbf{B}_0)
$$ {#eq:motion_linear}

Defining the cyclotron and plasma frequencies for each species as

$$
\omega_{cs}\equiv\bigg\lvert\frac{q_s B_0}{m_s}\bigg\rvert, \quad \omega_{ps}^2\equiv\bigg\lvert\frac{n_0 q_s^2}{\epsilon_0m_s}\bigg\rvert
$$

we can separate @eq:motion_linear into x, y, and z components and solve for $\mathbf{v}_s$, obtaining

$$
\begin{aligned}
v_{xs} &= \frac{iq_s}{m_s\omega} \frac{E_x\pm i(\omega_{cs}/\omega)E_y}{1-(\omega_{cs}/\omega)^2} \\
v_{ys} &= \frac{iq_s}{m_s\omega} \frac{E_y\mp i(\omega_{cs}/\omega)E_x}{1-(\omega_{cs}/\omega)^2} \\
v_{zs} &= \frac{iq_s}{m_s\omega} E_z
\end{aligned}
$$ {#eq:v}

where $\pm$ stands for the sign of $q_s$. The plasma current is

$$
\mathbf{j} = \sum_s n_{0s}q_s\mathbf{v}_s
$$

so that

$$
\begin{aligned}
\frac{i}{\epsilon_0\omega}j_x &= \sum_s \frac{in_{0s}}{\epsilon_0 \omega}\frac{iq_s^2}{m_s\omega}\frac{E_x\pm i(\omega_{cs}/\omega)E_y}{1-(\omega_{cs}/\omega)} \\
&=\sum_s -\frac{\omega_{ps}^2}{\omega^2}\frac{E_x\pm i(\omega_{cs}/\omega)E_y}{1-(\omega_{cs}/\omega)}
\end{aligned}
$$ {#eq:current_jx}

Using the identities

$$
\begin{aligned}
\frac{1}{1-(\omega_{cs}/\omega)^2} &= \frac{1}{2}\Big[ \frac{\omega}{\omega\mp\omega_{cs}} + \frac{\omega}{\omega\pm\omega_{cs}} \Big] \\
\pm\frac{\omega_{cs}/\omega}{1-(\omega_{cs}/\omega)^2} &= \frac{1}{2}\Big[ \frac{\omega}{\omega\mp\omega_{cs}} - \frac{\omega}{\omega\pm\omega_{cs}} \Big],
\end{aligned}
$$

we can write @eq:current_jx as follows:

$$
\begin{aligned}
\frac{1}{\epsilon_0\omega}j_x &= -\frac{1}{2}\sum_s \frac{\omega_{ps}^2}{\omega^2}\Big[ \Big( \frac{\omega}{\omega\pm\omega_{cs}} + \frac{\omega}{\omega\mp\omega_{cs}} \Big)E_x \\
&+ \Big( \frac{\omega}{\omega\mp\omega_{cs}} + \frac{\omega}{\omega\pm\omega_{cs}} \Big)iE_y \Big]
\end{aligned}
$$ {#eq:jx}

Similarly, the $y$ and $z$ components are

$$
\begin{aligned}
\frac{1}{\epsilon_0\omega}j_y &= -\frac{1}{2}\sum_s \frac{\omega_{ps}^2}{\omega^2}\Big[ \Big( \frac{\omega}{\omega\pm\omega_{cs}} + \frac{\omega}{\omega\mp\omega_{cs}} \Big)iE_x \\
&+ \Big( \frac{\omega}{\omega\mp\omega_{cs}} + \frac{\omega}{\omega\pm\omega_{cs}} \Big)E_y \Big]
\end{aligned}
$$ {#eq:jy}

$$
\frac{i}{\epsilon_0\omega}j_z = -\sum_s\frac{\omega_{ps}^2}{\omega^2}E_z
$$ {#eq:jz}

Use of @eq:jx in @eq:electric_displacement_field gives

$$
\begin{aligned}
\frac{1}{\epsilon_0}D_x &= E_x -\frac{1}{2}\sum_s \frac{\omega_{ps}^2}{\omega^2}\Big[ \Big( \frac{\omega}{\omega\pm\omega_{cs}} + \frac{\omega}{\omega\mp\omega_{cs}} )E_x \\
&+ \Big( \frac{\omega}{\omega\mp\omega_{cs}} + \frac{\omega}{\omega\pm\omega_{cs}} )iE_y \Big] \\
\end{aligned}
$$ {#eq:dx}

We define the convenient abbreviations

$$
\begin{aligned}
R &\equiv 1 - \sum_s\frac{\omega_{ps}^2}{\omega^2}\Big( \frac{\omega}{\omega\pm\omega_{cs}} \Big)\\
L &\equiv 1 - \sum_s\frac{\omega_{ps}^2}{\omega^2}\Big( \frac{\omega}{\omega\mp\omega_{cs}} \Big)\\
S &\equiv \frac{1}{2}(R+L)\quad D\equiv \frac{1}{2}(R-L)^\ast \\
P &\equiv 1-\sum_s\frac{\omega_{ps}^2}{\omega^2}
\end{aligned}
$$ {#eq:stix_notation}

where "R" stands for right, "L" stands for left, "S" stands for sum, "D" stands for difference, and "P" stands for plasma. Do not confuse D with the electric displacement field $\mathbf{D}$. Using these in @eq:dx and proceeding similarly with the $y$ and $z$ components, we obtain

$$
\begin{aligned}
\epsilon_0^{-1}D_x &= SE_x -iDE_y \\
\epsilon_0^{-1}D_y &= iDE_x + SE_y \\
\epsilon_0^{-1}D_z &= PE_z
\end{aligned}
$$

Comparing with @eq:d_e_relation, we see that

$$
\pmb{\epsilon} = \epsilon_0\begin{pmatrix}
S & -iD & 0 \\
iD & S & 0 \\
0 & 0 & P
\end{pmatrix} \equiv \epsilon_0\pmb{\epsilon}_R
$$ {#eq:dielectric_matrix}

We next derive the wave equation by taking the curl of the equation $\nabla\times\mathbf{E} = -\dot{\mathbf{B}}$ and substituting $\nabla\times\mathbf{B}=\mu_0\pmb{\epsilon}\cdot\dot{\mathbf{E}}$, obtaining

$$
\nabla\times\nabla\times\mathbf{E} = -\mu_0\epsilon_0( \pmb{\epsilon}_R \cdot\ddot{\mathbf{E}} ) = -\frac{1}{c^2}\pmb{\epsilon}_R\cdot\ddot{\mathbf{E}}
$$ {#eq:wave1}

Assuming an $\exp(i\mathbf{k}\cdot\mathbf{r})$ spatial dependence of $\mathbf{E}$ and defining a vector index of refraction

$$
\mathbf{n}=\frac{c}{\omega}\mathbf{k}
$$

we can write @eq:wave1 as

$$
\mathbf{n}\times(\mathbf{n}\times\mathbf{E})+\pmb{\epsilon}_R\cdot\mathbf{E} = 0
$$ {#eq:wave2}

The uniform plasma is isotropic in the $x-y$ plane, so we may choose the $y$ axis so that $k_y = 0$, without loss of generality. If $\theta$ is the angle between $\mathbf{k}$ and $\mathbf{B}_0$, we then have

$$
n_x = n\sin\theta\quad n_z=n\cos\theta\quad n_y = 0
$$

The next step is to separate @eq:wave2 into components, using the elements of $\pmb{\epsilon}_R$ given in @eq:dielectric_matrix. This procedure readily yields

$$
\mathbf{R}\cdot\mathbf{E}\equiv\begin{pmatrix}
S - n^2\cos\theta & -iD & n^2\sin\theta\cos\theta \\
iD & S-n^2 & 0 \\
n^2\sin\theta\cos\theta & 0 & P-n^2\sin^2\theta
\end{pmatrix}
\begin{pmatrix}
E_x \\ E_y \\ E_z
\end{pmatrix} = 0
$$ {#eq:dielectric}

From this it is clear that the $E_x$, $E_y$ components are coupled to $E_z$ only if one deviates from the principal angles $\theta = 0, 90^o$.

@eq:dielectric is a set of three simultaneous, homogeneous equations; the condition for the existence of a solution is that the determinant of $\mathbf{R}$ vanish: $||\mathbf{R}||=0$. We then obtain

$$
\begin{aligned}
(iD)^2&(P-n^2\sin^2\theta) + (S - n^2)  \\
&\times [(S-n^2\cos^2\theta)(P-n^2\sin^2\theta)-n^4\sin^2\theta\cos^2\theta] = 0
\end{aligned}
$$ {#eq:dispersion_2ndcol}

By replacing $\cos^2\theta$ by $1-\sin^2\theta$, we can solve for $\sin^2\theta$, obtaining

$$
\sin^2\theta = \frac{-P(n^4-2Sn^2+RL)}{n^4(S-P)+n^2(PS-RL)}
$$

We have used the identity $S^2 -  D^2 = RL$. Similarly,

$$
\cos^2\theta = \frac{Sn^4 - (PS + RL)n^2 + PRL}{n^4(S-P)+n^2(PS-RL)}
$$

Dividing the last two equations, we obtain

$$
\tan^2\theta = \frac{-P(n^4-2Sn^2+RL)}{Sn^4-(PS+RL)n^2+PRL}
$$

Since $2S = R + L$, the numerator and denominator can be factored to give the cold-plasma dispersion relation

$$
\tan^2\theta = \frac{-P(n^2-R)(n^2-L)}{(Sn^2-RL)(n^2-P)}
$$ {#eq:cold_plasma_dispersion}

### Wave Modes

The principal modes of cold plasma waves can be recovered by setting $\theta = 0^0$ and $90^o$. When $\theta = 0^o$,

$$
P(n^2-R)(n^2-L) = 0
$$

There are three roots:

* $P=0$ (Langmuir wave)
* $n^2=R$ (R wave)
* $n^2=L$ (L wave)

When $\theta = 90^o$,

$$
(Sn^2-RL)(n^2-P) = 0
$$
 
There are two roots:

* $n^2=RL/S$ (extraordinary wave)
* $n^2=P$ (ordinary wave)

By inserting the definitions of @eq:stix_notation, one can verify that these are identical to the dispersion relations given in separate derivations, with the addition of corrections due to ion motions.

### Resonances

The resonances can be found by letting $n$ go to $\infty$. We then have

$$
\tan^2\theta_{res} = -P/S
$$

This shows that the resonance frequencies depend on angle $\theta$.

* If $\theta=0^o$, the possible solutions are $P = 0$ and $S = \infty$. The former is the plasma resonance $\omega=\omega_p$, while the latter occurs when either $R = \infty$ (i.e. $\omega=\omega_{ce}$, electron cyclotron resonance) or $L =\infty$ (i.e. $\omega=\omega_{ci}$, ion cyclotron resonance).
* If $θ = 90^o$, the possible solutions are $P =\infty$ or $S = 0$. The former cannot occur for finite $\omega_p$ and $\omega$, and the latter yields the upper and lower hybrid frequencies, as well as the two-ion hybrid frequency when there is more than one ion species.

### Cutoffs

The cutoffs can be found by setting $n = 0$ in @eq:cold_plasma_dispersion. Again using $S^2-D^2 = RL$, we find that the condition for cutoff is independent of $\theta$:

$$
PRL = 0
$$

* The conditions $R = 0$ and $L = 0$ yield the $\omega_R$ and $\omega_L$ cutoff frequencies, with the addition of ion corrections.

For R-waves, since $\omega_{pi}^2\ll\omega_{pe}^2,\omega_{ci}\ll\omega_{ce}$, the cutoff frequency can be approximated by

$$
\begin{aligned}
1-\frac{\omega_{pe}^2}{\omega(\omega-\omega_{ce})} - \frac{\omega_{pi}^2}{\omega(\omega+\omega_{ci})} = 0 \\
1 = \frac{\omega_{pe}^2\Big[ \omega\Big(1+\cancel{\frac{\omega_{pi}^2}{\omega_{pe}^2}}\Big)+\omega_{ci}-\cancel{\frac{\omega_{pi}^2}{\omega_{pe}^2}}\omega_{ce}\Big]}{\omega_{ce}\omega(\omega-\omega_{ce})\Big( \frac{\omega}{\omega_{ce}}+\cancel{\frac{\omega_{ci}}{\omega_{ce}}}\Big)} \\
1 = \frac{\omega_{pe}^2(\omega+\omega_{ci})}{\omega^2(\omega-\omega_{ce})} \\
\omega^3 - \omega_{ce}\omega^2 - \omega_{pe}^2\omega - \omega_{pe}^2\omega_{ci} = 0
\end{aligned}
$$

Here somehow we can ignore $\omega_{pe}^2\omega_{ci}$ (I DON'T KNOW WHY???) and obtain the positive solution

$$
\omega_{R=0} \approx \frac{\omega_{ce}}{2}\Big[ 1 + \sqrt{1+4\omega_{pe}^2/\omega_{ce}^2}\Big]
$$

In the low density limit, $\omega_p\ll\omega_c$, $(1+x)^{1/2}\approx 1+x/2$ when $x\rightarrow 0$,

$$
\omega_{R=0} \approx \omega_{ce}(1+\omega_{pe}^2/\omega_{ce}^2)
$$

In the high density limit, $\omega_p\gg\omega_c$,

$$
\omega_{R=0} \approx \omega_{pe} + \omega_{ce}/2
$$

Similarly for L-waves, the cutoff frequency can be approximated by

$$
\omega_{L=0} \approx \frac{\omega_{ce}}{2}\Big[ -1 + \sqrt{1+4\omega_{pe}^2/\omega_{ce}^2}\Big]
$$

In the low density limit, $\omega_p\ll\omega_c$,

$$
\omega_{L=0} \approx \omega_{pe}^2/\omega_{ce}
$$

In the high density limit, $\omega_p\gg\omega_c$,

$$
\omega_{L=0} \approx \omega_{pe} - \omega_{ce}/2
$$

* The condition $P = 0$ is seen to correspond to cutoff as well as to resonance. This degeneracy is due to our neglect of thermal motions. Actually, $P = 0$ (or $\omega = \omega_p$) is a resonance for longitudinal waves and a cutoff for transverse waves.

### Polarizations

The information contained in @eq:cold_plasma_dispersion is summarized in the Clemmow–Mullaly–Allis (CMA) diagram. One further result, not in the diagram, can be obtained easily from this formulation. The middle line of @eq:dielectric reads

$$
iDE_x + (S-n^2)E_y = 0
$$

Thus the polarization in the plane perpendicular to $\mathbf{B}_0$ is given by

$$
\frac{iE_x}{E_y} = \frac{n^2 - S}{D}
$$

From this it is easily seen that waves are linearly polarized at resonance ($n^2=\infty$) and circularly polarized at cutoff ($n^2 = 0$, $R = 0$ or $L = 0$; thus $S = \pm D$).

### Low Frequency Limit

It is very useful to obtain the circularly polarized wave dispersion relation in the MHD regime.

The R-wave corresponds to electron. When $\omega\ll\omega_{ce}$,

$$
\begin{aligned}
n^2 = R - 1 - \frac{\omega_{pi}^2}{\omega(\omega+\omega_{ci})} - \frac{\omega_{pe}^2}{\omega(\omega-\omega_{ce})} \\
k^2 c^2 = \omega^2\Big( 1+\frac{\omega_{pe}^2}{\omega\omega_{ce}}-\frac{\omega_{pi}^2}{\omega\omega_{ci}}\frac{\omega_{ci}}{\omega_{ci}+\omega} \Big) = \omega^2 \Big[ 1+\frac{\omega_{pe}^2}{\omega_{ce}(\omega_{ci}+\omega)}\Big] \\
k^2 c^2 = \omega^2\Big( 1+\frac{c^2}{v_A^2}\frac{\omega_{ci}}{\omega_{ci}+\omega}\Big)
\end{aligned}
$$

For $\omega_{ci}\ll\omega\ll\omega_{ce}$, we can make further simplification:

$$
k^2c^2 = \omega^2\Big(1+\frac{\omega_{pe}^2}{\omega\omega_{ce}} \Big)
$$

This is the whistler wave, with group velocity $v_g=\partial\omega/\partial k\propto\sqrt{\omega}$. It means that high frequency waves transpose energy faster than low frequency waves. In other words, one will hear high frequency components earlier than low frequency components, creating a "whistler effect". This was discovered during the first world war, and the theoretical explanation came out in the 1950s. Also note that since whistler wave travels along the field line, in near-Earth space we have signals traveling from the south hemisphere to the north hemisphere within this frequency regime. [Here](https://en.wikipedia.org/wiki/Whistler_(radio)) is an observation example from Palmer station, Antarctica. For $\omega\ll\omega_{ci}$, Alfvén wave is recovered.

![Whistler wave.](https://s8.gifyu.com/images/whistler.gif){#fig:whistler_wave}

Another way to derive the whistler mode dispersion relation, which is probably easier, is to include the Hall term from the generalized Ohm's law:

$$
\mathbf{E} = -\mathbf{U}\times\mathbf{B} + \frac{1}{ne}\mathbf{J}\times\mathbf{B}
$$

Using Ampère’s law and retaining only the Hall term leads to the equation

$$
\dot{\mathbf{B}} = -\frac{1}{\mu_0 ne}\nabla\times[(\nabla\times\mathbf{B})\times\mathbf{B}]
$$

Performing linearization and assuming that the magnetic field is parallel to the z axis and its perturbation is only in x and y, the last equation becomes

$$
\begin{aligned}
\omega B_{1x} &= -i\frac{k_z^2 B_0}{\mu_0 ne} B_{1y} \\
\omega B_{1y} &=  i\frac{k_z^2 B_0}{\mu_0 ne} B_{1x}
\end{aligned}
$$

which easily yields

$$
\omega = \frac{B_0}{\mu_0 ne} k_z^2
$$

Whistler mode is excited by the electron temperature anisotropy (???).

The dispersion property of whistler waves makes it a problem for hybrid simulations (@sec:finite_e_mass).

The L-wave corresponds to ion. When $\omega<\omega_{ci}$,

$$
\begin{aligned}
k^2c^2 &= \omega^2\Big[1+\frac{\omega_{pi}^2}{\omega_{ci}(\omega_{ci}-\omega)} \Big] \\
&= \omega^2\Big( 1+\frac{c^2}{v_A^2}\frac{\omega_{ci}}{\omega_{ci}-\omega} \Big)
\end{aligned}
$$

For $\omega\lesssim\omega_{ci}$, we get the ion-cyclotron wave; for $\omega\ll\omega_{ci}$, Alfvén wave is recovered.

@fig:dispersion_parallel shows the dispersion relation in a rough scale. Above the cut-off frequencies ($\omega_{R=0}$ and $\omega_{L=0}$) the solution to the wave dispersion equation is called the _free-space mode_. Below electron and ion cyclotron frequencies the waves are called the _cyclotron modes_. At low frequencies ($\omega\rightarrow 0$) L- and R-modes merge and the dispersion becomes that of the shear Alfvén wave $n^2\rightarrow c^2/v_A^2$.

```jl
KeyNotes.plot_dispersion_parallel()
```

### Faraday Rotation

A linearly polarized plane wave can be expressed as a sum of left- and right-hand circularly polarized waves (R- and L-modes having equal amplitudes, $E_0$). If we assume that at $z=0$, the wave is linearly polarized along the x axis, and that the wave vector $\mathbf{k}$ and the background magnetic field $\mathbf{B}_0$ are along the $z$-axis, we can write

$$
\mathbf{E} = E_0 [(e^{ik_Rz}+e^{ik_Lz})\hat{x} + (e^{ik_Rz}-e^{ik_Lz})\hat{y}] e^{-i\omega t}
$$

The ratio of the $E_x$ and $E_y$ components is

$$
\frac{E_x}{E_y} = \cot\Big( \frac{k_L-k_R}{2}z\Big)
$$

Hence, due to different phase speeds of R- and L-modes the linrealy polarized wave that is travelling along a magnetic field will experience the rotation of its plane of polarization. This is called _Faraday rotation_. The magnitude of the rotation depends on the density and magnetic field of the plasma. Considering frequencies above the plasma frequency one can show that the rate of change in the rotation angle $\phi$ with the distance travelled (assumed here to be in the $z$-direction) is

$$
\frac{d\phi}{dz} = \frac{-e^3}{2m_e^2\epsilon_0 c\omega^2}n_e B_0
$$

and the total rotation from the source to the observer is

$$
\phi=\frac{-e^3}{2m_e^2\epsilon_0 c\omega^2}\int_0^d n_e\mathbf{B}\cdot d\mathbf{s}
$$

where $d\mathbf{s}$ is along the wave propagation path. The total rotation thus depends on both the dnesity and magnetic field of the medium.

Faraday rotation is an important diagnostic tool both in laboratories and in astronomy. It can be used to obtain information of the magnetic field of the cosmic plasma. Note that density has to be known using other methods. On the other hand, if the magnetic field is known, Faraday rotation can give information of the density.

## MHD Waves

### Cold MHD

By ignoring pressure, gravity, viscosity and rotation, we have

$$
\begin{aligned}
\rho \frac{\partial \mathbf{u}}{\partial t} = \mathbf{j}\times\mathbf{B}_0 \\
\mathbf{E} = -\mathbf{u}\times\mathbf{B}_0 \\
\nabla\times\mathbf{E} = -\frac{\partial \mathbf{B}_1}{\partial t} \\
\nabla\cdot\mathbf{B}_1 = 0 \\
\nabla\times\mathbf{B}_1 = \mu_0\mathbf{j}
\end{aligned}
$$ {#eq:mhd_cold}

As usual in wave analysis, $\mathbf{u},\mathbf{j},\mathbf{E}$ are treated as perturbations. The MHD wave equation for the electric field can then be obtained,

$$
\begin{aligned}
\dot{\mathbf{E}} &= -\dot{\mathbf{u}}\times\mathbf{B}_0 = -\frac{1}{\rho}(\mathbf{j}\times\mathbf{B})\times\mathbf{B}_0 = -\frac{1}{\mu_0\rho}[(\nabla\times\mathbf{B}_1)\times\mathbf{B}_0]\times\mathbf{B}_0 \\
\ddot{\mathbf{E}} &= [(\nabla\times(\nabla\times\mathbf{E}))\times\mathbf{V}_A]\times\mathbf{V}_A
\end{aligned}
$$

where $\mathbf{V}_A = \mathbf{B}_0 /\sqrt{\mu_0 \rho}$ is the Alfvén velocity, or if we mutate the triad cross terms,

$$
\ddot{\mathbf{E}} = \mathbf{V}_A \times [\mathbf{V}_A\times\nabla\times(\nabla\times\mathbf{E})]
$$ {#eq:mhd_cold_e_wave}

Alternatively, we can also get the MHD wave equation for the magnetic field:

$$
\begin{aligned}
\left\{ \begin{aligned}
\dot{\mathbf{B}_1} = \nabla\times(\mathbf{u}\times\mathbf{B}_0) \\
(\nabla\times\mathbf{B}_1)\times\mathbf{B}_0 = \mu_0\mathbf{j}\times\mathbf{B}_0 = \mu_0\rho\dot{\mathbf{u}}
\end{aligned} \right. \\
\Rightarrow \ddot{\mathbf{B}_1} = \nabla\times \Big[ \big( \frac{1}{\mu_0\rho}(\nabla\times\mathbf{B}_1)\times\mathbf{B}_0 \big)\times\mathbf{B}_0 \Big]
\end{aligned}
$$

or

$$
\ddot{\mathbf{B}_1} = \nabla\times \Big[ \big( (\nabla\times\mathbf{B}_1)\times\mathbf{V}_A \big)\times\mathbf{V}_A \Big]
$$ {#eq:mhd_cold_b_wave}

We will see soon that in cold MHD the slow mode ceases to exist, and the fast mode moves at Alfvén speed, such that along the magnetic field line, we only have a single wave mode.

### Hot MHD

$$
\begin{aligned}
\frac{\partial\rho}{\partial t}+\nabla\cdot(\rho\mathbf{v})=0 \\
\rho\frac{d\mathbf{v}}{dt}=-\nabla p+\mathbf{j}\times\mathbf{B} \\
\mathbf{j}=\frac{1}{\mu_0}\nabla\times\mathbf{B} \\
\frac{d}{dt}\Big( p\rho^{-\gamma} \Big)=0 \\
\frac{\partial\mathbf{B}}{\partial t}=-\nabla\times\mathbf{E} \\
\mathbf{E}=-\mathbf{v}\times\mathbf{B}
\end{aligned}
$$

$\dot{\mathbf{E}}$ is ignored because we only consider low frequency waves. We assume no background flow, $\mathbf{u}_0=0$, so the current is purely caused by perturbed velocity $\mathbf{u}_1$. Performing linearization and plane wave decomposition:

$$
\begin{aligned}
-i\omega\rho_1+i\rho_0\mathbf{k}\cdot\mathbf{v}=0 \\
-i\omega\rho_0\mathbf{v}=-i\mathbf{k}p_1+\mathbf{j}\times\mathbf{B}_0 \\
\mathbf{j}=\frac{1}{\mu_0}i\mathbf{k}\times\mathbf{B}_1 \\
p_1/p_0 -\gamma\rho_1/\rho_0 = 0 \\
-i\omega\mathbf{B}_1=i\mathbf{k}\times(\mathbf{v}\times\mathbf{B}_0)
\end{aligned}
$$

Let $\mathbf{B}_0 = B_0\hat{z}$. The linearized equations can be further simplified:

$$
\begin{aligned}
-i\omega\rho_0\mathbf{v}=-i\mathbf{k}\big( \gamma p_0\frac{\mathbf{k}\cdot\mathbf{v}}{\omega} \big) +\Big[ \frac{1}{\mu_0}i\mathbf{k}\times\big( -\frac{\mathbf{k}\times(\mathbf{v}\times\mathbf{B}_0)}{\omega} \big) \Big]\times\mathbf{B}_0 \\
\omega^2 \mathbf{v}-{V_s}^2 \mathbf{k}(\mathbf{k}\cdot\mathbf{v})-{V_A}^2\big[ \mathbf{k}\times\big( \mathbf{k}\times(\mathbf{v}\times\hat{z})\big) \big]\times\hat{z}=0
\end{aligned}
$$

where $V_s=\sqrt{\frac{\gamma p_0}{\rho_0}}$ is the sound speed, and $V_A=\sqrt{\frac{{B_0}^2}{\mu_0\rho_0}}$ is the Alfvén speed. If we write $\mathbf{V}_A = \mathbf{B}_0 / \sqrt{\mu_0 \rho_0}$, this can also be written as

$$
\omega^2 \mathbf{v} - {V_s}^2 \mathbf{k}(\mathbf{k}\cdot\mathbf{v}) - \mathbf{k}\times \mathbf{k}\times (\mathbf{v}\times\mathbf{V}_A) \times\mathbf{V}_A = 0
$$

Due to the symmetry in the perpendicular x-y plane, for simplicity, we assume the wave vector $\mathbf{k}$ lies in the x-z plane with an angle w.r.t. the $z$ axis $\theta$:

$$
\mathbf{k} = k_x\hat{x} + k_z\hat{z} = k_x\hat{x} + k_\parallel\hat{z} = k\sin\theta\hat{x} + k\cos\theta\hat{z}
$$

Now it can be written as

$$
\begin{pmatrix}
-\omega^2/k^2 + v_A^2 + v_s^2\sin^2\theta & 0 & v_s^2\sin\theta\cos\theta \\
0 & -\omega^2/k^2+v_A^2\cos^2\theta & 0 \\
v_s^2\sin\theta\cos\theta & 0 & -\omega^2/k^2+v_s^2\cos^2\theta
\end{pmatrix}
\begin{pmatrix}
v_x \\ v_y \\ v_z
\end{pmatrix} = 0
$$ {#eq:mhd_v_perturbation}

### Alfvén Wave

For any nonzero $v_y$, the $y$-component of @eq:mhd_v_perturbation gives

$$
\omega^2 = k^2v_A^2\cos^2\theta = k_\parallel^2 v_A^2 
$$

which is known as the _Alfvén wave_, in a uniform plasma immersed in a uniform background magnetic field with phase speed

$$
v_p = v_A\cos\theta
$$

The group velocity and hence energy propagation is always parallel to $\mathbf{B}$ regardless of the direction of $\mathbf{k}$, and for this reason this mode is also know as the _guided_ mode. This property, of course, has the direct bearing on the feature of Alfvén wave resonant absorption.

Given the velocity perturbation $\mathbf{v}_1 = (0, v_y, 0)$, $-i\omega\rho_1 + \rho_0 \mathbf{k}\cdot\mathbf{v} = 0$, $\omega\mathbf{B}_1 + \mathbf{k}\times(\mathbf{v}\times\mathbf{B}_0) = 0$, the other perturbations are given as

$$
\begin{aligned}
\rho_1 &= 0 \\
\mathbf{j} &= m n_0\mathbf{v} = mn_0 v_y \hat{y} \\
p_1 &= 0 \\
\mathbf{E} &= -B_0 v_y\hat{x} \\
\mathbf{B}_1 &= \frac{\mathbf{k}}{\omega}\times\mathbf{E} = -\frac{k_zB_0v_y}{\omega}\hat{y} = -\frac{\mathbf{v}}{\omega/k_\parallel}B_0
\end{aligned}
$$

$\mathbf{E}$ (or $\mathbf{B}_1$) shows that the Alfvén wave in a uniform plasma is a linearly polarized wave mode. Correlated $\mathbf{B}$ and $\mathbf{v}$ corresponds to waves propagating anti-parallel to the $\mathbf{B}_0$, and anti-correlated $\mathbf{B}$ and $\mathbf{v}$ corresponds to waves propagating parallel to the $\mathbf{B}_0$. The resultant magnetic field then exhibits shear, thus the Alfvén wave is called the _shear Alfvén wave_ (SAW). An animation of SAW is shown in @fig:alfven_wave. It is useful to remember that the magnetic perturbation is always parallel to the velocity perturbation.

![Alfvén wave.](https://s8.gifyu.com/images/alfven.gif){#fig:alfven_wave}

In a non-uniform plasma, SAW attains the interesting property of a continuous specturm. To illustrate this feature, let us consider the simplified slab model of a cold plasma with a non-uniform density, $\rho=\rho(x)$, and a uniform $\mathbf{B}_0 = B_0\hat{z}$. Assuming at $t=0$ a localized initial perturbation $\mathbf{B}_{1y}(x,t=0) = \exp(-x^2/\Delta x^2)$, $|k_y\Delta_x|\ll1$, and $\partial\mathbf{B}_{1y}/\partial t=0$, the perturbation then evolves according to the following wave equation (@eq:mhd_cold_b_wave, $B_{1z}=0$ so no coupling between the fast mode and Alfvén mode):

$$
[\partial_t^2 + \omega_A^2(x)]B_{1y}(x,t) = 0
$$

Here $\omega_A^2(x) = k_z^2v_A^2(x)$ and the solution is

$$
B_{1y}(x,t) = \hat{B}_{1y}(x,0)\cos[\omega_A(x)t]
$$ {#eq:mhd_alfven_slab_by}

@eq:mhd_alfven_slab_by shows that every point in $x$ oscillates at a different frequency, $\omega_A(x)$. With a continuously varying $\omega_A(x)$; the wave frequency, thus, constitutes a continuous spectrum. While the above result is based on a model with a 1D non-uniformity in x, this general feature of SAW continuous spectrum also holds in magnetized plasmas with 2D or 3D non-uniformities. A good example is geomagnetic pulsations in the Earth's magnetosphere observed by Engebretson shown in Figure 1 of [@chen2021physics].

@eq:mhd_alfven_slab_by also indicates an unique and important property of SAW continuous spectrum: the spatial structure evolves with time. Specifically, the wave number in the non-uniformity direction is, time asymptotically, given by:

$$
|k_x| = \bigg\lvert\frac{\partial \ln B_{1y}}{\partial x}\bigg\rvert \simeq \bigg\lvert\frac{d \omega_A(x)}{d x}\bigg\rvert t
$$ {#eq:mhd_alfven_wavenumber_nonuniform}

That $|k_x|$ increases with $t$ is significant, since it implies that any initially long-scale perturbations will evolve into short scales. This point is illustrated in Figure ??? (CAN I PERFORM THE SIMULATION?); showing the evolution of a smooth $B_{1y}$ at $t=0$ to a spatially fast varying $B_{1y}$ at a later $t$.

Another consequence of $|k_x|$ increasing with $t$ is the temporal decay of $B_{1x}$. From $\nabla\cdot\mathbf{B}_1 \simeq \nabla_\perp\cdot\mathbf{B}_{1\perp}=0$, we can readily derive that, for $|\omega_A^\prime t|\gg |k_y|$:

$$
B_{1x}(x, t)\simeq \frac{k_y}{\omega_A^\prime(x)t}\hat{B}_{1y}(x,0)e^{-i\omega_A(x)t}\Big[ 1+\mathcal{O}\Big( \frac{k_y}{|\omega_A^\prime t|+ ...} \Big) \Big]
$$

That is, $B_{1x}$ decays temporally due to the phase mixing of increasingly more rapidly varying neighboring perturbations.

Noting that, as $t\rightarrow\infty$, $|k_x|\rightarrow\infty$, it thus suggests that the perturbation will develop singular structures toward the steady state. As we will see in the field line resonance @sec:flr, the singularity is reached at the Alfvén resonant point $x_r$, where $\omega^2=\omega_A^2(x_r)$ along with a finite resonant wave-energy absorption rate. Note that at the isolated extrema of the SAW continuum, $|\omega_A^\prime|=0$, phase mixing vanishes; consequently, perturbation remains regular and experiences no damping via resonant absorption. This feature has important implications to Alfvén instabilities in laboratory plasmas.

Space plasmas support a variety of waves, but for heating the plasma and accelerating the electrons and ions, Alfvén waves are a predominant source. Near the Sun, Alfvén waves are excited and propagate outward. They exchange their energy with particles to accelerate them in the form of solar wind and heat the electrons. When parallel wavelength of the wave becomes comparable to the ion gyro-radius or inertial length in the case of kinetic Alfvén waves (KAWs, @sec:kaw) or inertial Alfvén waves (IAWs), respectively, then the wave in both the limits has a nonzero parallel electric field component which is responsible for the acceleration of the particles via the Landau mechanism. KAWs and IAWs have significance not only in space plasmas but also in laboratory plasma such as in fusion reactors.

In the generalized Ohm's law, KAW relates to $\frac{\nabla P}{ne}$ term, while IAW relates to $\frac{\partial \mathbf{j}}{\partial t}$ term. The key interest is in $E_\parallel$.

Alfvén wave has very high saturation level, meaning that it takes a long time for the wave to reach the nonlinear phase. (???)

__SAW in a Slab__

We now look deeper into the properties of Alfvén waves in a nonuniform magnetized plasma slab that carries a current flowing along an externally imposed magnetic field $B_{0z}\hat{z}$, where $B_{0z}$ is assumed to be a constant. First, we formulate the governing equation for the slab geometry, under the ideal MHD condition. Then we show that Alfvén waves are always neutrally stable, with important indication at the end.

The presence of an equilibrium current density $\mathbf{J}_0 = \widehat{z}J_0(x)$ produces a local magnetic field of the form

$$
\mathbf{B}_0 = \hat{z}B_{0z} + \hat{y}B_{0y}(x)
$$

The Ampère's law gives

$$
\nabla\times\mathbf{B}_0 = \mu_0 \mathbf{J}_0 \Rightarrow \frac{\partial B_{0y}}{\partial x}-\frac{\partial B_{0x}}{\partial y} = \frac{\partial B_{0y}}{\partial x} = \mu_0 J_0(x)
$$ {#eq:ampere_slab}

From the force balance equation,

$$
\mathbf{J}_0\times\mathbf{B}_0 = \nabla P_0
$$ {#eq:force_balance_slab}

Substituting @eq:ampere_slab into @eq:force_balance_slab, we get

$$
\frac{{B_{0y}(x)}^2}{2\mu_0} + P_0(x) = \text{const.}
$$

Designate all perturbation quantities with a subscript 1, and assume $e^{-i\omega t+ik_y y+ i k_z z}$ dependence for all perturbations (nonuniform in the $x$-direction, thus no sinuisoidal wave assumption). From linearized Faraday's law and Ohm's law in ideal MHD,

$$
\begin{aligned}
-\nabla\times\mathbf{E}_1 = \nabla\times(\mathbf{v}_1\times\mathbf{B}_0) = \frac{\partial\mathbf{B}_1}{\partial t} \\
-i\omega\mathbf{B}_1 = \mathbf{v}_1\cancel{(\nabla\cdot\mathbf{B}_0)}-\mathbf{B}_0\cancel{(\nabla\cdot\mathbf{v}_1)}+(\mathbf{B}_0\cdot\nabla)
\mathbf{v}_1 - (\mathbf{v}_1\cdot\nabla)\mathbf{B}_0
\end{aligned}
$$

where we have assumed the plasma is incompressible. Replace $\nabla$ with $i\mathbf{k}$, $\mathbf{v}_1=i\omega \pmb{\xi}_1$ and take the $x$-component, we get

$$
B_{1x} = i(\mathbf{k}\cdot\mathbf{B}_0)\xi_{1x}
$$ {#eq:mhd_slab_b1x}

where $\mathbf{k}=\hat{y}k_y+\hat{z}k_z$.

The MHD force law can be linearized to

$$
\rho_0 \frac{\partial \mathbf{v}_1}{\partial t} = -\nabla\Big( p_1 + \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{\mu_0}\Big) + \frac{1}{\mu_0}\big[ (\mathbf{B}_0\cdot\nabla)\mathbf{B}_1 + (\mathbf{B}_1\cdot\nabla)\mathbf{B}_0\big]
$$ {#eq:mhd_momentum_linearized_slab}

Since the plasma is incompressible, $\nabla\cdot\pmb{v}_1=0,\ \dot{\pmb{\xi}}=\mathbf{v}_1\Rightarrow \nabla\cdot\pmb{\xi}=0$. In addition, $\nabla\cdot\mathbf{B}_1=0$. We then have

$$
\begin{aligned}
\mathbf{k}\cdot\pmb{\xi}_{1yz}&=i\frac{\partial \xi_{1x}}{\partial x} \\
\mathbf{k}\cdot\pmb{B}_{1yz}&=i\frac{\partial B_{1x}}{\partial x}
\end{aligned}
$$

where $\pmb{\xi}_{1yz} = (0,\xi_{1y},\xi_{1z})$, $\mathbf{B}_{1yz}=(0,B_{1y},B_{1z})$. The $x$-component of @eq:mhd_momentum_linearized_slab gives

$$
-\rho_0\omega^2 \xi_{1x} = -\frac{\partial}{\partial x}\Big( p_1 + \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{\mu_0}\Big) +\frac{1}{\mu_0} \big[ (\mathbf{B}_0\cdot\nabla)B_{1x} \big]
$$ {#eq:mhd_momentum_linearized_slab_x}

The dot product of @eq:mhd_momentum_linearized_slab with $\mathbf{k}$ gives

$$
\begin{aligned}
-\rho_0 \omega^2 \mathbf{k}\cdot\pmb{\xi}_{1yz} &= ik^2 \Big( p_1 + \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{\mu_0}\Big) + \frac{1}{\mu_0}\big[ i(\mathbf{k}\cdot\mathbf{B}_0)(\mathbf{k}\cdot\mathbf{B}_{1yz}) + B_{1x}\frac{\partial }{\partial x}(\mathbf{k}\cdot\mathbf{B}_0)\big]\\
-\rho_0 \omega^2 i\frac{\partial \xi_{1x}}{\partial x} &= ik^2 \Big( p_1 + \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{\mu_0}\Big) + \frac{1}{\mu_0}\big[ i(\mathbf{k}\cdot\mathbf{B}_0)(i\frac{\partial B_{1x}}{\partial x}) + B_{1x}\frac{\partial }{\partial x}(\mathbf{k}\cdot\mathbf{B}_0)\big]
\end{aligned}
$$ {#eq:mhd_momentum_linearized_slab_k}

Finally, canceling $p_1 + \frac{\mathbf{B}_0\cdot\mathbf{B}_1}{\mu_0}$ from @eq:mhd_momentum_linearized_slab_x and @eq:mhd_momentum_linearized_slab_k and substituting $B_{1x}$ from @eq:mhd_slab_b1x, we obtain the governing equation

$$
\frac{\partial}{\partial x}\Big\{ \rho_0 \big[ \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A)^2\big]\frac{\partial \xi_{1x}}{\partial x}\Big\} -k^2\rho_0 \big[ \omega^2 - (\mathbf{k}\cdot\mathbf{v}_A)^2\big]\xi_{1x}=0
$$ {#eq:mhd_slab_governing}

where $k^2={k_y}^2+ {k_z}^2$, $\mathbf{v}_A = v_A \mathbf{B}_0/B_0$, and $v_A=B_0/\sqrt{\mu_0 \rho_0}$ is the local Alfvén speed. This is the governing equation of shear Alfvén waves in a slab geometry derived by Hasegawa and Liu Chen in the 1970s, which is readily compared with Eq.(10.33) in [@bellan2008fundamentals].

It is easy to show that this governing equation always yields _neutrally stable_ solutions of SAWs, i.e. $\omega_i=\Im(\omega)=0$. Multiply it by $\xi_{1x}^\ast$, and integrate the resultant equation to get

$$
\int_{-\infty}^{\infty}dx \rho_0 \big[ \omega^2-(\mathbf{k}\cdot\mathbf{v}_A)^2\big] \Big[ \bigg\lvert \frac{d\xi_{1x}}{dx}\bigg\rvert^2 + k^2\lvert\xi_{1x}\rvert^2 \Big] = 0
$$

where we have assumed that $\xi_{1x}$ vanishes on the boundary. This gives

$$
\omega^2 = \frac{\int_{-\infty}^{\infty}dx \rho_0 (\mathbf{k}\cdot\mathbf{v}_A)^2\Big[ \bigg\lvert \frac{d\xi_{1x}}{dx}\bigg\rvert^2 + k^2\lvert \xi_{1x}\rvert^2 \Big]}{\int_{-\infty}^{\infty}\rho_0[ \lvert \frac{d\xi_{1x}}{dx}\rvert^2 + k^2\lvert \xi_{1x}\rvert^2]dx} \ge 0
$$

SAWs are the dominant low frequency waves in a current carrying plasma. The neutrally stable modes studies above can be destabilized by unfavorable curvature, and such modes are called _ballooning modes_ (@sec:ballooning). They may also be destabilized by a finite electrical resistivity, and these are _tearing modes_ (@sec:tearing). Their interaction with fusion-generated alpha particles are a major issue in all magnetic fusion schemes. Finally, since the governing equation exhibits a singularity when $\omega=\mathbf{k}\cdot\mathbf{v}_A$, this singularity represents resonance absorption, which forms the basis of _Alfvén wave heating_ (i.e. field line resonance, @sec:flr). This singularity also give rise to the so called "Alfvén continuum spectrum" mentioned above.

Note that the governing equation is valid even if $B_{0z}$ is an arbitrary function of $x$. If in addition, an external gravity $\mathbf{g}=\hat{x}g$ in the x-direction is present, the governing equation is modified simply by inserting the term $-(g/\rho_0)d\rho_0/dx$ in the second square bracket, and the equation is identical to Eq.(10.33) of Bellan. This is the most general equation which describes the _magneto-Rayleigh-Taylor instability_ (MRT) in Cartesian geometry using the incompressible, ideal MHD model.

### Fast and Slow Wave

The $x$-$z$ components of @eq:mhd_v_perturbation give

$$
\begin{aligned}
(\omega^2-k^2{v_A}^2-{k_x}^2{v_s}^2)v_x -k_x k_z{v_x}^2v_z = 0 \\
(\omega^2-{k_z}^2{v_s}^2)v_z -k_x k_z{v_s}^2v_x=0
\end{aligned}
$$

The dispersion relation is given by the determinant being 0,

$$
\begin{aligned}
\omega^4-k^2({v_A}^2+{v_s}^2)\omega^2+{k_z}^2{v_s}^2k^2{v_A}^2=0 \\
\frac{\omega^2}{k^2}=\frac{1}{2}({v_A}^2+{v_s}^2)\pm\frac{1}{2}\sqrt{({v_A}^2+{v_s}^2)^2-4{v_s}^2{v_A}^2\cos^2\theta}
\end{aligned}
$$ {#eq:mhd_fast_slow}

"+" corresponds to the fast mode, or magnetosonic mode, and "-" corresponds to the slow mode.
The Friedrich graph is very useful in interpreting @eq:mhd_fast_slow.

Given the velocity perturbation $\mathbf{v}_1 = (v_x, 0, v_z)$, the other perturbations are given as

$$
\begin{aligned}
\rho_1 &= \frac{\rho_0}{i\omega}\mathbf{k}\cdot\mathbf{v} \\
\mathbf{j} &= m n_0\mathbf{v} \\
p_1 &= \rho_1 k_B T/m \\
\mathbf{E} &= B_0 v_x\hat{y} \\
\mathbf{B}_1 &= \frac{\mathbf{k}}{\omega}\times\mathbf{E} = -\frac{B_0v_xk_z}{\omega}\hat{x} - \frac{B_0v_zk_x}{\omega}\hat{z}
\end{aligned}
$$

$\mathbf{E}$ shows that the fast/slow modes in a uniform plasma are also linearly polarized. When we have $\theta=90^o$ (@fig:fast_wave), the magnetic perturbation can be simplified to

$$
\mathbf{B}_1 = \frac{v}{\omega/k_\perp}\mathbf{B}_0
$$

which means that the perturbed magnetic field is always aligned with the background magnetic field.

In the case $v_A\gg v_s$ (e.g. cold, strong B), the phase speed of the fast mode becomes $v_p \approx v_A$. This is often called the _compressional Alfvén wave_. It is also clear that in the cold plasma limit the slow mode ceases to exit.

![Fast wave.](https://s8.gifyu.com/images/fast.gif){#fig:fast_wave}

## Kinetic Alfvén Wave {#sec:kaw}

The solution of @eq:mhd_alfven_wavenumber_nonuniform exhibits singularities as $t\rightarrow\infty$ naturally suggests that the microscopic length-scale physics neglected in the ideal MHD fluid description should be included in the long-time-scale dynamics of SAWs. For low-frequency SAWs, one can readily recognize the relevant perpendicular (to $\mathbf{B}_0$) microscopic scales are either the ion Larmor radius, $r_{iL}=v_{ti}/\omega_{ci}$ with $v_{ti}$ and $\omega_{ci}$ being, respectively, the ion thermal speed and ion cyclotron frequency, and/or $r_{eL}=v_{te}/\omega_{ce}$ with $v_{te}$ being the electron thermal speed. Including the effects of finite $r_{iL}$ and/or $r_{eL}$ in the SAW dynamics then led to the discovery of the so-called _kinetic Alfvén wave_ (KAW) [Hasegawa and Chen].

In KAWs, parallel electric field $E_\parallel$ can be developed and facilitate particle heating, acceleration, and transport.
It has been found in the plasma sheet, at the plasma sheet boundary layer (PSBL), and in the inner magnetosphere.

KAW differ from SAW because the short wavelength requires a significant $E_\parallel$ to maintain charge neutrality due to ion density perturbations caused by the ion polarization drift. When $v_{te}>v_A$, the parallel electric field counteracts electron pressure that would push the electrons away from the ion density perturbations. When $v_{te}<v_A$, the electric field must overcome the electron inertia that prevents the electrons from responding rapidly to the ion density perturbations. $E_\parallel$ associated with small-scale KAWs may efficiently accelerate particles on the magnetic field lines. (Chaston+ 2009) presented observations in the magnetotail from the Cluster spacecraft showing that KAWs radiate outward from the X-line with outward energy fluxes equivalent to that contained in the outstreaming ions. Wave-particle energy exchange between KAWs and plasmas near the dayside magnetopause has been confirmed by MMS observations (Gershman+ 2017).

Almost half a century later, [@chen2021physics] demonstrated that the proper treatment of KAW requires gyrokinetics (@sec:gyrokinetics).

While SAW satisfy $\omega=k_\parallel v_A$, the dispersion relation of KAW can be written as (Johnson & Cheng, 1997)

$$
\omega^2 = k_\parallel^2 v_A^2 \Big[ \frac{1}{1-I_0(k_\perp^2 r_{iL}^2)e^{-k_\perp^2 r_{iL}^2}} + \frac{T_e}{T_i} \Big]k_\perp^2 r_{iL}^2
$$ {#eq:kaw_dispersion}

where $I_0$ is the modified Bessel function. Using a Padé approximation $I_0(x)e^{-x}\approx 1/(1+x)$ when $x=k_\perp^2r_{iL}^2\sim\mathcal{O}(1)$, the relation can be simplified to

$$
\omega^2 = k_\parallel^2 v_A^2\Big[1+\Big(1+\frac{T_e}{T_i}k_\perp^2r_{iL}^2\Big) \Big] =  k_\parallel^2 v_A^2 [1+k_\perp^2(r_{iL}^2+r_{sL}^2)]
$$ {#eq:kaw_dispersion_ion_approxi}

where $r_{sL}=\sqrt{T_e/m_i}/\omega_{ci}$. This term is kind of strange, because it looks like a Larmor radius for ion with electron temperature. We can see from @eq:kaw_dispersion_ion_approxi that the phase speed for KAW is larger than $v_A$.

While SAWs do not have ion density perturbations, KAWs do (???).

The polarizations of KAW can be expressed as

$$
\bigg\lvert \frac{\delta \mathbf{E}_\perp}{\delta \mathbf{B}_\perp} \bigg\rvert = v_A(1+k_\perp^2r_{iL}^2)[1+k_\perp^2(r_{iL}^2+r_{sL}^2)]^{-1/2}
$$

where $\delta\mathbf{E}_\perp \perp \delta\mathbf{B}_\perp$. The parallel electric field is

$$
\bigg\lvert \frac{\delta E_\parallel}{\delta E_\perp} \bigg\rvert = k_\parallel k_\perp\frac{r_{sL}^2}{1+k_\perp^2r_{iL}^2} 
$$

It has been shown that KAWs can be generated via magnetic reconnection, mode conversion, and phase mixing.

[@gurram2021shear] used a 2D VPIC simulation to show a transition from KAWs to SAWs from the immediate vicinity of the reconnection region to the exhaust. They checked two important quantities we have seen above:

* the transition in wave speeds from super Alfvénic near the X-point to order of the Alfvén speed deeper into the exhaust ($\sim 60 d_i$ from the X-point);
* the transition of $k_\perp d_i$ from larger than unity to smaller than unity.

It would be very intuitive to compare animations between [MHD Alfvén waves](https://youtu.be/7RB_kD9aSqo) and [kinetic Alfvén waves](https://youtu.be/aRLXQRvwCas). In a typical MHD Alfvén wave, the particles (yellow) move freely along the magnetic field lines (blue). In a kinetic Alfvén wave, some particles become trapped in the weak spots of the wave's magnetic field and ride along with the wave as it moves through space.

<iframe width="560" height="315" src="https://www.youtube.com/embed/aRLXQRvwCas" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/7RB_kD9aSqo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Particle Motions

In Fourier transform space, integrating the velocity equations to obtain the coordinates is done by simply dividing by $-i\omega$. For a simple case where $E_y = E_z = 0$ so that E has only an x-component, we find from @eq:v

$$
\begin{aligned}
x_s &= -\frac{q_sE_x}{m_s(\omega^2 - \omega_j^2)} \\
y_s &= \frac{\pm\omega_{cs}}{i\omega}x_s
\end{aligned}
$$

so that in general, the trajectory is elliptical. For $\omega\ll \omega_{cs}$, we find $x_s \ll y_s$, so the motion is principally across both the $\mathbf{E}$ and $\mathbf{B}_0$ directions. However, for $\omega\gg\omega_{cj},x_j\gg y_j$ the motion is principally parallel to the electric field. In this latter case, we would call the particles _unmagnetized_, since the magnetic influence is small. Since it is possible for the wave frequency to be well above the ion cyclotron frequency at the same time it is well below the electron cyclotron frequency, it is possible for ions to be effectively unmagnetized while electrons are magnetized. From the discussion here, it is also clear that in the MHD low frequency regime the $\mathbf{E}\times\mathbf{B}$ drift is important, whereas for high frequency regimes (i.e. unmagnetized), the electric field influence is more important.

When $\omega\simeq\omega_{cs}$, then the linear solutions exhibit resonance effects with large amplitudes, and at resonance, the radius increases uniformly in time and no steady-state solution exists. In this vicinity, we expect the cold plasma approximation to fail and either thermal, inhomogeneous, or nonlinear effects to dominate the dynamics.

## Cold Nonuniform Plasma

Waves and dispersion relations in a uniform plasma is generally nice and easy. However, more interesting and realistic waves shall be found in nonuniform plasmas.

### Simple EM Wave

Let us start off by examining a very simple case. Consider a plane electromagnetic wave, of frequency $\omega$, propagating along the $z$-axis in an unmagnetized plasma whose refractive index, $n$, is a function of $z$. We assume that the wave normal is initially aligned along the $z$-axis, and, furthermore, that the wave starts off polarized in the $y$-direction. It is easily demonstrated that the wave normal subsequently remains aligned along the $z$-axis, and also that the polarization state of the wave does not change. Thus, the wave is fully described by

$$
E_y(z,t) \equiv E_y(z)\,\exp(-i\omega t)
$$

and

$$
B_x(z,t) \equiv B_x(z)\,\exp(-i\omega t)
$$

It can easily be shown (???) that $E_y(z)$ and $B_x(z)$ satisfy the differential equations

$$
\frac{d^2 E_y}{dz^2} + k_0^{~2}\,n^2\,E_y = 0
$$ {#eq:wave_nonuniform_e}

and

$$
\frac{d\,cB_x}{dz} = -{\rm i}\,k_0\,n^2\,E_y
$$ {#eq:wave_nonuniform_b}

respectively. Here, $k_0=\omega/c$ is the wave-number in free space. Of course, the actual wave-number is $k=k_0\,n$. 

The solution to @eq:wave_nonuniform_e for the case of a homogeneous plasma, for which $n$ is constant, is straightforward:

$$
E_y = A\,{\rm e}^{\,{\rm i}\,\phi(z)}
$$ {#eq:wave_uniform_sol}

where $A$ is a constant, and

$$
\phi = \pm k_0\,n\,z
$$ {#eq:wave_uniform_phase}

The solution @eq:wave_uniform_sol represents a wave of constant amplitude, $A$, and phase, $\phi(z)$. According to @eq:wave_uniform_phase, there are, in fact, two independent waves which can propagate through the plasma. The upper sign corresponds to a wave which propagates in the $+z$-direction, whereas the lower sign corresponds to a wave which propagates in the $-z$-direction. Both waves propagate with the constant phase velocity $c/n$. 

In general, if $n=n(z)$ then the solution of @eq:wave_nonuniform_e does not remotely resemble the wave-like solution @eq:wave_uniform_sol. However, in the limit in which $n(z)$ is a "slowly varying" function of $z$ (exactly how slowly varying is something which will be established later on), we expect to recover wave-like solutions. Let us suppose that $n(z)$ is indeed a "slowly varying" function, and let us try substituting the wave solution @eq:wave_uniform_sol into @eq:wave_nonuniform_e. We obtain

$$
\left(\frac{d\phi}{dz}\right)^2 = k_0^{~2} n^2 +i\,\frac{d^2\phi} {dz^2}
$$ {#eq:wave_nonuniform_phase}

This is a non-linear differential equation which, in general, is very difficult to solve. However, we note that if $n$ is a constant then $d^2\phi/dz^2=0$. It is, therefore, reasonable to suppose that if $n(z)$ is a "slowly varying" function then the last term on the right-hand side of the above equation can be regarded as being small. Thus, to a first approximation @eq:wave_nonuniform_phase yields

$$
\frac{d\phi}{dz} \simeq \pm k_0\,n
$$

and

$$
\frac{d^2 \phi}{dz^2} \simeq \pm k_0\frac{dn}{dz}
$$ {#eq:wave_nonuniform_phase_approxi}

It is clear from a comparison of @eq:wave_nonuniform_phase and @eq:wave_nonuniform_phase_approxi that $n(z)$ can be regarded as a "slowly varying" function of $z$ as long as its variation length-scale is far longer than the wavelength of the wave. In other words, provided that $(dn/dz)/(k_0\,n^2)\ll 1$.

The second approximation to the solution is obtained by substituting @eq:wave_nonuniform_phase_approxi into the right-hand side of @eq:wave_nonuniform_phase: 

$$
\frac{d\phi}{dz} \simeq \pm \Big(k_0^{~2} n^2 \pm i\,k_0 \frac{dn}{dz}\Big)^{1/2}
$$

This gives

$$
\frac{d\phi}{dz} \simeq \pm k_0\,n\Big(1\pm \frac{i}{k_0 n}\Big)^{1/2}\simeq \pm k_0\,n + \frac{i}{2n}\frac{dn}{dz}
$$

where a binomial expansion has been used. The above expression can be integrated to give 

$$
\phi \sim \pm k_0\! \int^z \!n\,dz +i\,\log(n^{1/2})
$$ {#eq:wave_phase_approxi}

Substitution of @eq:wave_phase_approxi into @eq:wave_uniform_sol yields the final result

$$
E_y \simeq A\,n^{-1/2}\,\exp (\pm i\, k_0\! \int^z \!n\,dz )
$$ {#eq:wave_nonuniform_sol_e}

It follows from @eq:wave_nonuniform_b that

$$
cB_x\simeq \mp A\, n^{1/2}\exp\Big(\pm i\,k_0 \int^z n dz\Big) - \frac{iA}{2k_0 n^{3/2}}\frac{dn}{dz}\exp\Big(\pm i\,k_0 \int^z n dz\Big)
$$ {#eq:wave_nonuniform_sol_b}

Note that the second term is small compared to the first, and can usually be neglected.

Let us test to what extent @eq:wave_nonuniform_sol_e is a good solution of @eq:wave_nonuniform_e by substituting this expression into the left-hand side of the equation. The result is

$$
\frac{A}{n^{1/2}}\Big[ \frac{3}{4}\Big(\frac{1}{n}\frac{dn}{dz}\Big)^2 - \frac{1}{2n}\frac{d^2n}{dz^2} \Big]\exp\Big( \pm i\,k_0\int^z n\,dz\Big)
$$

This must be small compared with either term on the left-hand side of @eq:wave_nonuniform_e. Hence, the condition for @eq:wave_nonuniform_sol_e to be a good solution of @eq:wave_nonuniform_e becomes

$$
\frac{1}{k_0^2}\bigg\lvert \frac{3}{4}\Big(\frac{1}{n^2} \frac{dn}{dz}\Big)^2 -\frac{1}{2n^3}\frac{d^2 n}{dz^2}\bigg\rvert \ll 1
$$ {#eq:wave_wkb_condition}

The solutions @eq:wave_nonuniform_sol_e and @eq:wave_nonuniform_sol_b (without the second term) are most commonly referred to as the _WKB_ solutions, in honour of G. Wentzel, H.A. Kramers, and L. Brillouin, who are credited with independently discovering these solutions (in a quantum mechanical context) in 1926. Actually, H. Jeffries wrote a paper on the WKB solutions (in a wave propagation context) in 1923. Hence, some people call them the WKBJ solutions (or even the JWKB solutions). To be strictly accurate, the WKB solutions were first discussed by Liouville and Green in 1837, and again by Rayleigh in 1912. The advance in science discovery is always a collective achievement.

Recall, that when a propagating wave is normally incident on an interface, where the refractive index suddenly changes (for instance, when a light wave propagating through air is normally incident on a glass slab), there is generally significant reflection of the wave. However, according to the WKB solutions, when a propagating wave is normally incident on a medium in which the refractive index changes slowly along the direction of propagation of the wave then the wave is not reflected at all. This is true even if the refractive index varies very substantially along the path of propagation of the wave, as long as it varies slowly. The WKB solutions imply that as the wave propagates through the medium its wave-length gradually changes. In fact, the wave-length at position $z$ is approximately $\lambda(z)= 2\pi/ k_0\,n(z)$. The WKB solutions also imply that the amplitude of the wave gradually changes as it propagates. The amplitude of the electric field component is inversely proportional to $n^{1/2}$, whereas the amplitude of the magnetic field component is directly proportional to $n^{1/2}$. Note, however, that the energy flux in the $z$-direction, given by the the Poynting vector $-(E_y B_x^\ast +E_y^\ast B_x)/(4\mu_0)$, remains constant (assuming that $n$ is predominately real). 

Of course, the WKB solutions are only approximations. In reality, a wave propagating into a medium in which the refractive index is a slowly varying function of position is subject to a small amount of reflection. However, it is easily demonstrated that the ratio of the reflected amplitude to the incident amplitude is of order $(dn/dz)/(k_0\,n^2)$. Thus, as long as the refractive index varies on a much longer length-scale than the wavelength of the radiation, the reflected wave is negligibly small. This conclusion remains valid as long as the inequality @eq:wave_wkb_condition is satisfied. This inequality obviously breaks down in the vicinity of a point where $n^2=0$. We would, therefore, expect strong reflection of the incident wave from such a point. Furthermore, the WKB solutions also break down at a point where $n^2\rightarrow\infty$, since the amplitude of $B_x$ becomes infinite. 

### Electron Cyclotron Resonance Heating

Let us look at the problem of electron cyclotron resonance heating. The resonance condition is $R=\infty$; the governing equation has the form

$$
\frac{d^2 E}{dz^2} + \frac{\omega^2}{c^2} \Big[ 1-\frac{{\omega_{pe}(z)}^2}{\omega(\omega-\omega_{ce}(z))} \Big]E = 0
$$

![Plasma frequency and wave number as functions of $z$ in a non-uniform plasma for the electron cyclotron resonance mode.](images/ECRH.png){#fig:ECRH}

We use $z$ here to remind ourselves of the fact that the wave property changes along the field line. Imagine a wave $\sim e^{i(kz -\omega t)}$ incident into a plasma with fixed density $n_0$ and varying magnetic field $B_0(z)$ as shown in @fig:ECRH(a). At $z=z_R$, $\omega_{ce}(z) = \omega_{ce}(z_R) = \omega$. Then we can draw $k^2(z)$ as a function of $z$ as in @fig:ECRH(b). There is a pole at $z=z_R$, which indicates resonance since $k^2\rightarrow\infty$. There is also a zero on the right of $z_R$.

Close to $z=z_R$, we have $k^2(z)\sim \frac{\text{const}.}{z-z_R}$. If we write

$$
\Omega_e(z)=-A^\prime (z-z_R)+\omega,\quad \zeta = z-z_R
$$

then (ignore the constants)

$$
\frac{d^2 E}{dz^2} - \frac{\text{const.}}{z-z_R}E = 0 \Rightarrow \frac{d^2 E}{d\zeta^2} - \frac{1}{\zeta}E = 0
$$

Now let's stare at @fig:ECRH(b) for a few seconds. If there is a wave from left to right, there will be a resonance at $z=z_R$; but if there is a wave from right to left, then the wave will be attenuated before it reaches $z=z_R$ because there is a zero ahead. This means that waves from different origin will have different behaviors!

### O-mode

Next consider EM waves in non-magnetized plasma of ordinary O-mode:

$$
k^2(x) = \frac{\omega^2}{c^2}n^2 = \frac{\omega^2}{c^2}\Big[ 1-\frac{{\omega_{pe}(x)}^2}{\omega^2}\Big] \quad \text{if } n \text{ is non-uniform}
$$

![Plasma frequency and wave number as functions of $x$ in a non-uniform plasma for O mode.](images/Omode.png){#fig:Omode}

Note that there is no energy dissipation, because it is collisionless. Imagine a wave $\sim e^{i(kx-\omega t)}$ incident into a plasma with density $n_0(x)$ shown in @fig:Omode. We encounter a cutoff at $x=x_t$, $\omega_{pe}(x_t) = \omega$. Therefore we can draw $k^2(x)$ as a function of x as in @fig:Omode. Then the properties of the wave can be categorized into two regimes:

$$
\begin{aligned}
k^2 < 0 \Rightarrow\ E\sim e^{\pm ikx}\ \text{propagating}\\
k^2 > 0 \Rightarrow\ E\sim e^{\pm|k| x}\ \text{attenuating}
\end{aligned}
$$

A natural question comes up from this picture: _how does the propagating wave transform into attentuating wave_? Stokes solved this during his honey moon, which is now known as the Stokes phenomenon (@sec:stokes_phenomenon).

## Warm Uniform Plasma

Taking one step forward, we can no longer neglect the kinetic effects, i.e. the cold assumption is no longer valid. For the sake of simplicity, we only consider the 1D case. The approach is very similar to cold plasma situation, except that we have _pressure_ included in the equation, and we also need to specify the relation of pressure and temperature through the equation of state.

__2-fluid approach__

Equilibrium:

$$
\begin{aligned}
&m_i=\infty,\ T_i=0,\ v_{i,0}=0,\ n_{e0}=n_{i0}=n_0,\ E_0=0,\ B_0=0 \\
&P_0=const.,\ v_{e0}=0
\end{aligned}
$$

The equation of motion for electron is

$$
\frac{\partial \mathbf{v}}{\partial t}+\mathbf{v}\cdot\nabla\mathbf{v}=-\frac{e}{m_e}\mathbf{E}-\frac{\nabla P}{\rho}
$$

Assume

$$
\begin{aligned}
&P=P_0 \Big( \frac{n}{n_0}\Big)^\gamma  &\text{adiabatic}\\
&P=nk_B T_e  &\text{isothermal}(\gamma=1)
\end{aligned}
$$

Define $P_1=\Big( \partial P/\partial \rho\Big)\rho_1\equiv {v_{th}}^2\rho_1={v_{th}}^2 n_1 m=k_BTn_1$. Decompose the primitive variables into equilibrium and perturbation components:

$$
\begin{aligned}
&n= n_0+n_1=n_0+\tilde{n}_1e^{-i\omega t+ikx} \\
&v=\cancel{v_0}+v_1=\tilde{v}_1 e^{-i\omega t+ikx} \\
&P=P_0+P_1=P_0+\tilde{P}_1e^{-i\omega t+ikx}
\end{aligned}
$$

Substituting into the equation of motion and keeping only first order terms, we get

$$
\begin{aligned}
\frac{\partial v_1}{\partial t}&=-\frac{e}{m_e}(E_1)-\frac{\nabla (P_1)}{n_0m_e} \\
-i\omega v_1&=-\frac{e}{m_e}E_1-\frac{ik{v_{th}}^2 n_1}{n_0}
\end{aligned}
$$

The continuity equation gives

$$
\begin{aligned}
\frac{\partial n}{\partial t}+\frac{\partial}{\partial x}\Big( nv\Big)=0 \\
\Rightarrow v_1=\frac{\omega n_1}{kn_0}
\end{aligned}
$$

Substituting this into the linearized equation of motion, we get

$$
n_1=\frac{kn_0eE_1}{im_e(\omega^2-k^2{v_{th}}^2)}
$$

which is the density perturbation in response to $E_1$. Following the same approach as before, we can easily get the dielectric function:

$$
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2-k^2{v_{th}}^2}
$$

Let $\epsilon=0$, we get the dispersion relation for warm plasma

$$
\omega^2=k^2{v_{th}}^2+{\omega_{pe}}^2
$$

This is called the \emph{Bohm-Gross dispersion relation}.

__Vlasov approach__

Assume Maxwellian distribution for electrons:

$$
g_e(v)=\frac{1}{\sqrt{2\pi}}\frac{1}{v_{th,e}}e^{-v^2/2{v_{th,e}}^2}
$$

Assuming $\frac{\omega}{k}\gg v_{th,e}$, i.e. the phase speed is much larger than the characteristic thermal speed, we can do Taylor series expansion

$$
\frac{1}{(v-\omega/k)^2}=\frac{1}{(\omega/k)^2}\frac{1}{(1-kv/\omega)^2}\approx \frac{k^2}{\omega^2}\Big[ 1+\frac{2kv}{\omega}+\frac{3k^2v^2}{\omega^2}+...\Big]
$$

Then the dielectric function is

$$
\begin{aligned}
\frac{\epsilon}{\epsilon_0}&=1-\frac{{\omega_{pe}}^2}{k^2}\int_{-\infty}^{\infty}dv g(v)\frac{k^2}{\omega^2}\Big[ 1+\frac{2kv}{\omega}+\frac{3k^2v^2}{\omega^2}+...\Big] \\
&\doteq 1-\frac{{\omega_{pe}}^2}{\omega^2}\Big[ 1+\frac{3k^2{v_{th}}^2}{\omega^2} \Big] .
\end{aligned}
$$

Let $\epsilon=0$, we can get the dispersion relation for warm plasma,

$$
\begin{aligned}
&\text{lowest order: } \omega=\pm \omega_{pe} \\
&\text{first order:} 1-\frac{{\omega_{pe}}^2}{\omega^2}\Big( 1+\frac{3k^2{v_{th}}^2}{{\omega_{pe}}^2}\Big)=0\Rightarrow \omega^2={\omega_{pe}}^2+3k^2{v_{th,e}}^2
\end{aligned}
$$

Note here we insert $0^{th}$ order solution to $1^{st}$ order equation to get the next level approximation. Comparing with the results from 2-fluid theory, we see that the expression is very similar except a discrepancy in the coefficient. This is owing to the fact that we do not specify $\gamma$ in the equation of state. Actually, there are still ambiguities and debates about the exact equation of state. I wonder if I can get the exact coefficient under some assumption.

The opposite limit case: $\frac{\omega}{k}\ll v_{th}$. From 2-fluid theory,

$$
\frac{\epsilon}{\epsilon_0}\approxeq1+\frac{{\omega_{pe}}^2}{k^2{v_{th,e}}^2}
$$

From Vlasov theory,

$$
\begin{aligned}
\frac{\epsilon}{\epsilon_0}&=1-\frac{{\omega_{pe}}^2}{k^2}\int_{-\infty}^{\infty}dv\frac{\partial g/\partial v}{v-\omega/k}=
1-\frac{{\omega_{pe}}^2}{k^2}\int_{-\infty}^{\infty}\frac{1}{v-\cancel{\omega/k}}\frac{1}{\sqrt{2\pi}}\frac{1}{v_{th,e}}\Big(\frac{-v}{{v_{th,e}}^2} \Big) e^{-v^2/2{v_{th,e}}^2}dv  \\
&=1+\frac{{\omega_{pe}}^2}{k^2}\int_{-\infty}^{\infty}\frac{1}{v_{th,e}^2}\frac{1}{\sqrt{2\pi}} e^{-v^2/2{v_{th,e}}^2}dv \\
&=1+\frac{{\omega_{pe}}^2}{k^2{v_{th,e}}^2}
\end{aligned}
$$

So we can see in the two limit cases that they "almost" give the same results!

If we include ion motion in the 2-fluid theory ($n_{1i}\neq0, T_i\neq0,m_i\neq\infty$), applying the linear superposition property, we have

$$
\frac{\epsilon}{\epsilon_0}=\underbrace{1}_{\nabla\cdot(\epsilon_0\mathbf{E}_1)}-\underbrace{\frac{{\omega_{pe}}^2}{\omega^2-k^2{v_{th,e}}^2}}_{en_{1e}}-\underbrace{\frac{{\omega_{pi}}^2}{\omega^2-k^2{v_{th,i}}^2}}_{en_{1i}}
$$

__Ion-acoustic wave__

Assume $v_{th,e}\gg \frac{\omega}{k}\gg v_{th,i}$, we have the simplified dielectric function

$$
\frac{\epsilon}{\epsilon_0}=1+\frac{{\omega_{pe}}^2}{k^2{v_{th,e}}^2}-\frac{{\omega_{pi}}^2}{\omega^2}
$$

Assume quasi-neutrality condition: $n_{1e}\approx n_{1i}$, s.t.

$$
\nabla\cdot(\epsilon_0\mathbf{E}_1)=e(n_{1e}-n_{1i})\approx 0
$$

so we can ignore the "1" in the dielectric function. Let $\epsilon=0$, we get

$$
\begin{aligned}
\frac{{\omega_{pe}}^2}{k^2{v_{th,e}}^2}-\frac{{\omega_{pi}}^2}{\omega^2}=0 \\
\Rightarrow \omega^2=k^2{v_{th,e}}^2\frac{m_e}{m_i},\ \frac{\omega}{k}=\sqrt{\frac{k_BT_e}{m_i}}\equiv c_s
\end{aligned}
$$

Physically, electron sees the electric field created by ions due to ion plasma oscillation. Since electrons move much faster than ions, this electric field is nearly electrostatic for electrons. As a result, electron just follows the ion motion.

There are some other ways to get the ion-acoustic wave. If $\omega\ll \omega_{pe}$, we can treat this wave as electrostatic wave for electron. The distribution for electron number density is

$$
\begin{aligned}
&n_{e}=n_0e^{e\phi/k_B T_e}\approxeq n_{0e}+n_{1e} \approxeq n_0[1+\frac{e\phi}{k_BT_e}+...] \\
\Rightarrow &n_{1e}=n_0\frac{e\phi}{k_BT_e}=\frac{n_0eE_1}{-ikm_e{v_{th,e}}^2}
\end{aligned}
$$

Note that here the tilde signs $\sim$ of the variables are neglected for convenience without ambiguity. 

Do we need to calculate $n_{1i}$??? Yes. MORE to do here!

Also, from the linearized equation of motion for electron,

$$
\begin{aligned}
\frac{\partial v_{e1}}{\partial t}=-\frac{e}{m_e}E_1-\frac{\nabla P_1}{n_0m_e} \\
-i\omega v_{e1}=-\frac{e}{m_e}E_1-\frac{ik P_1}{n_0m_e}=-\frac{e}{m_e}E_1-\frac{ik n_{1e}k_BT_e}{n_0m_e}
\end{aligned}
$$

In the $\omega\rightarrow 0$ limit, $LHS\doteq0$, we get

$$
n_{1e}= \frac{n_0eE_1}{-ikm_e{v_{th,e}}^2}
$$

Then again we get the dielectric function through Poisson's equation.

## Electrostatic Wave in a Magnetized Plasma {#sec:es_wave_magnetized}

Now we continue to discuss the property of electrostatic waves with background magnetic field.

First let us introduce a useful result for continuity equation. Assuming $n_0=n_0(\mathbf{x}),\ \mathbf{v}_0=\mathbf{v}_0(\mathbf{x})$ in equilibrium, $\mathbf{x}_1=\mathbf{x}_1(\mathbf{x},t)$ is the perturbation in displacement. We can show that the linearized continuity equation has an equivalent form:

$$
\frac{\partial n_1(\mathbf{x},t)}{\partial t}+\nabla\cdot[ n_0(\mathbf{x})\mathbf{v}_1(\mathbf{x},t)+n_1(\mathbf{x},t)\mathbf{v}_0(\mathbf{x},t)]=0
\Leftrightarrow n_1(\mathbf{x},t)=-\nabla\cdot[n_0(\mathbf{x})\mathbf{x}_1(\mathbf{x},t)]
$$

The proof is related to mass conservation shown as follows. Intuitively, you can think of this as the degree of condensation only depends on displacement, not on how you get there (speed).

In 1D,

$$
\begin{aligned}
n_0=n_0(x_0)=\text{unperturbed density} \\
x= x_0+x_1(x_0,t)=\text{instantanenous position} \\
n(x_0,t)=n_0(x_0)+n_1(x_0,t)=\text{total density}
\end{aligned}
$$

At time $t$, $[x_0,x_0+dx]\rightarrow[x_0+x_1(x_0,t),x_0+dx+x_1(x_0+dx,t)]$. Due to mass conservation, we have (This looks like the derivation of deformation in fluid dynamics.)

$$
\begin{aligned}
n_0(x_0)dx&=[n_0(x_0+x_1)+n_1(x_0+x_1,t)]\cdot[x_0+dx+x_1(x_0+dx,t)-(x_0+x_1(x_0,t))] \\
&\approx \Big[n_0(x_0)+x_1\frac{\partial n_0(x_0)}{\partial x_0}+n_1(x_0,t)\Big]dx\Big[1+\frac{\partial x_1(x_0,t)}{\partial x_0}\Big] 
\end{aligned}
$$

$$
\begin{aligned}
&\Rightarrow n_0(x_0)=n_0(x_0)+n_0(x_0)\frac{\partial x_1(x_0,t)}{\partial x_0}+x_1\frac{\partial n_0(x_0)}{\partial x_0}+n_1(x_0,t) \\
&\Rightarrow n_1(x_0,t)=-n_0(x_0)\frac{\partial x_1(x_0,t)}{\partial x_0}-x_1\frac{\partial n_0}{\partial x_0}=-\frac{\partial}{\partial x_0}\big[ n_0(x_0)x_1(x_0,t) \big] \\
&\Rightarrow n_1(x,t)=-\frac{\partial}{\partial x}\big[ n_0(x)x_1(x,t)\big]
\end{aligned}
$$

The simplest equilibrium state in a constant magnetized plasma is

$$
\begin{aligned}
&n_{i0}=n_{e0}=n_0,\ \mathbf{E}_0=0,\ \mathbf{B}_0=B_0\widehat{z} \\
&\mathbf{v}_{e0}=\mathbf{v}_{i0}=0,\ T_e=0,\ T_i=0,\ m_i=\infty
\end{aligned}
$$

Now introduce an electrostatic perturbation ($\mathbf{E}_1=-\nabla\phi_1$)

$$
\begin{aligned}
\mathbf{E}_1=\tilde{\mathbf{E}_1}e^{-i\omega t+i\mathbf{k}\cdot\mathbf{x}}=-i\mathbf{k}\tilde{\phi}_1 e^{-i\omega t+i\mathbf{k}\cdot\mathbf{x}}
\end{aligned}
$$

we can confirm that this is indeed an electrostatic perturbation since $\mathbf{E}_1\parallel \mathbf{k}$ and $\mathbf{B}_1=0$.

_Case 1_: $\mathbf{k}=k_z\widehat{z}\parallel \mathbf{B}_0$, i.e. parallel propagation. Then $\mathbf{E}_1=\widehat{z}E_{1z}e^{-i\omega t+ik_z z}$. This is the same as if there is no magnetic field, so the dielectric function is

$$
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2}
$$

_Case 2_: $\mathbf{k}\perp \mathbf{B}_0$, i.e. perpendicular propagation. Without loss of generality, let $\mathbf{k}=k_x\widehat{x}$. Then

$$
\mathbf{E}_1=\widehat{x}\tilde{E}_{1x}e^{-i\omega t+ik_x x}
$$

The equations of motion (cold plasma) in the $x$ and $y$ direction are

$$
\begin{aligned}
\ddot{x}_1 &= -\frac{e}{m_e}[E_{1x}+\dot{y}_1B_0] \\
\ddot{y}_1 &= -\frac{e}{m_e}[-\dot{x}_1B_0] \\
\Rightarrow \dot{y}_1&=\frac{eB_0}{m_e}x_1=|\Omega_e| x_1  \\
\ddot{x}_1&=-\frac{e}{m_e}[E_{1x}+|\Omega_e|\cdot{y_1}B_0]=-\frac{e}{m_e}E_{1x}-{\Omega_e}^2 x_1,  \\
\Rightarrow x_1&=\frac{-\frac{e}{m_e}E_{1x}}{-\omega^2+{\Omega_e}^2}
\end{aligned}
$$

Then we have the perturbed density in response to the perturbed electric field $E_{1x}$:

$$
\begin{aligned}
n_1=-n_0\nabla\cdot\mathbf{x}_1=-n_0ik_x x_1=-n_0ik_x\frac{-\frac{e}{m_e}E_{1x}}{-\omega^2+{\Omega_e}^2}
\end{aligned}
$$

From Poisson's equation, we get the dielectric function (the same method as before):

$$
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2-{\Omega_e}^2}
$$

Let $\epsilon=0$, we have

$$
\omega=\sqrt{{\omega_{pe}}^2+{\Omega_e}^2}\equiv \omega_{UH}
$$

which is called the \emph{upper hybrid} frequency. This is the highest characteristic frequency in plasma. This upper hybrid wave is a havoc to some beam generator devices as it appears near the electron collector. 

What if ions are included? Similar to previous derivations and notice that we are still within the range of linear theory, we have

$$
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2-{\Omega_e}^2}-\frac{{\omega_{pi}}^2}{\omega^2-{\Omega_i}^2}
$$

For $\Omega_i\ll \omega\ll \Omega_e$ with quasi-neutrality condition $n_{1e}\approx n_{1i}$, we can have a simplified dispersion relation by letting $\epsilon=0$:

$$
\begin{aligned}
&\frac{{\omega_{pe}}^2}{{\Omega_{e}}^2}=\frac{{\omega_{pi}}^2}{\omega^2}\\
\Rightarrow& \omega=\sqrt{{\omega_{pi}}^2\frac{{\Omega_e}^2}{{\omega_{pe}}^2}}=\sqrt{|\Omega_e \Omega_i|}\equiv \omega_{LH}
\end{aligned}
$$

which gives us the _low hybrid wave_ frequency. It equals to the geometric mean of the two cyclotron frequencies. Actually, this can be obtained from pure plasma motion argument. Recall that $\Omega_i \ll \omega \ll \Omega_e$ means that for electrons the plasma seems to be nonmagnetized, so they moves only under the electric field,

$$
v_{1ex}=\frac{-eE_{1x}}{m_e(-i\omega)}
$$

On the other hand, for ions the magnetic field is strong while electric field still exists, so it experiences polarization drift along the direction of perturbed electric field,

$$
v_{1ix}=\frac{1}{\Omega_i}\frac{\partial}{\partial t}\Big( \frac{E_{1x}}{B_0}\Big)
$$

Under quasi-neutrality condition, $v_{1ix}=v_{1ex}$, so we have

$$
\frac{-eE_{1x}}{m_e(-i\omega)}=\frac{1}{\Omega_i}\frac{\partial}{\partial t}\Big( \frac{E_{1x}}{B_0}\Big) \Rightarrow \omega=\sqrt{|\Omega_e \Omega_i|}
$$

If we consider warm plasma for 1D, there is an additional pressure term in the momentum equation. The continuity equation together with Poisson's equation give the relation of perturbed displacement and electric field:

$$
\begin{aligned}
&n_1=-\nabla\cdot(n_0\mathbf{x}_1)=-ik_xn_0x_1 \\
&\nabla\cdot(\epsilon_0\mathbf{E}_1)=ik_x\epsilon_0E_{1}=-en_{1e}=eik_xn_0x_1 \\
\Rightarrow& E_{1}=\frac{en_0x_1}{\epsilon_0}
\end{aligned}
$$

Substituting into the momentum equation, we get

$$
\begin{aligned}
\ddot{x}_1+{\Omega_e}^2x_1&=-\frac{e}{m_e}E_{1}-\frac{\nabla P_1}{n_0m_e}  \\
&=-{\omega_{pe}}^2 x_1-{k_x}^2{v_{th,e}}^2x_1
\end{aligned}
$$

where $v_{th,e}=\sqrt{k_BT_e/m_e}$. This gives us (You can gain a sense of the equivalent force law from the dispersion relation.)

$$
\omega^2={\omega_{pe}}^2+{\Omega_e}^2+{k_x}^2{v_{th,e}}^2
$$

This is also equivalent to the dielectric function

$$
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2-{\Omega_{e}}^2-{k_x}^2{v_{th,e}}^2}
$$

## Animation of Waves

![Lower hybrid wave.](https://s8.gifyu.com/images/lowerhybrid.gif){#fig:lowerhybrid_wave}

## CMA Diagram

The Clemmow-Mullaly-Allis (CMA) diagram classifies all EM + ES waves (including ions) in a cold magnetized plasma. However it is no longer useful in hot plasma waves.

* Resonances and cutoffs
* Mode conversions
