# Waves {#sec:waves}

## Plasma Oscillations {#sec:oscillations}

If the electrons in a plasma are displaced from a uniform background of ions, electric fields will be built up in such a direction as to restore the neutrality of the plasma by pulling the electrons back to their original positions. Because of their inertia, the electrons will overshoot and oscillate around their equilibrium positions with a characteristic frequency known as the _plasma frequency_. This oscillation is so fast that the massive ions do not have time to respond to the oscillating field and may be considered as fixed. In Fig. 4.2 (ADD IT!), the open rectangles represent typical elements of the ion fluid, and the darkened rectangles the alternately displaced elements of the electron fluid. The resulting charge bunching causes a spatially periodic $\mathbf{E}$ field, which tends to restore the electrons to their neutral positions.

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

For both waves, $\nabla\cdot(\epsilon\mathbf{E}_1)=0\Rightarrow i\epsilon(\mathbf{k}\cdot\mathbf{E}_1)=0$ is always valid. However, for electrostatic wave, $\mathbf{E}_1=-\nabla\phi_1=-i\mathbf{k}\phi_1\Rightarrow \mathbf{k}\parallel \mathbf{E}_1\Rightarrow \epsilon=0$, while for EM wave, usually $\mathbf{k}\perp\mathbf{E}_1 ($\mathbf{k}\perp\mathbf{E}_1 \implies $ EM wave, but EM waves do not necessarily need to be transverse. You can always add a component of $\mathbf{E}_1$ parallel to $\mathbf{k}$ without changing $\mathbf{B}_1$), $\epsilon$ does not need to be zero. Therefore, _getting the dispersion relation by setting $\epsilon$ to 0 is only valid for isotropic ES waves_. For EM waves, there's a systematic way to get all the dispersion relations starting from dielectric function, explained in detail in @sec:CPDR. Here we just have a simple summary of the steps.

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

## Waves in a Cold Uniform Plasma {#sec:CPDR}

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

is the __electric displacement field__ or __electric induction__.  It accounts for the effects of _free and bound charge within materials_ (i.e. plasma).
Here we have assumed an $\exp(-i\omega t)$ dependence for all plasma motions. Let the current $\mathbf{j}$ be proportional to $\mathbf{E}$ but not necessarily in the same direction (because of the magnetic field $B_0\hat{\mathbf{z}}$); we may then define a conductivity tensor $\pmb{\sigma}$ by the relation

$$
\mathbf{j} = \pmb{\sigma}\cdot\mathbf{E}
$$

@eq:electric_displacement_field becomes

$$
\mathbf{D} = \epsilon\big( \mathbf{I} + \frac{i}{\epsilon_0\omega} \Big)\cdot\mathbf{E} = \pmb{\epsilon}\cdot\mathbf{E}
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
\omega_{cs}\equiv\bigg\lvert\frac{q_s B_0}{m_s}\bigg\rvert \quad \omega_{ps}^2\equiv\bigg\lvert\frac{n_0 q_s^2}{\epsilon_0m_s}\bigg\rvert,
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
&+ \Big( \frac{\omega}{\omega\mp\omega_{cs}} + \frac{\omega}{\omega\pm\omega_{cs}} )iE_y \Big]. \\
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

where "R" stands for right, "L" stands for left, "S" stands for sum, "D" stands for difference, and "P" stands for plasma. Using these in @eq:dx and proceeding similarly with the $y$ and $z$ components, we obtain

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
\mathbf{n}=\frac{c}{\omega}\mathbf{k},
$$

we can write @eq:wave1 as

$$
\mathbf{n}\times(\mathbf{n}\times\mathbf{E})+\pmb{\epsilon}_R\cdot\mathbf{E} = 0.
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
&\times [(S-n^2\cos^2\theta)(P-n^2\sin^2\theta)-n^4\sin^2\theta\cos^2\theta] = 0.
\end{aligned}
$$ {#eq:dispersion_2ndcol}

By replacing $\cos^2\theta$ by $1-\sin^2\theta$, we can solve for $\sin^2\theta$, obtaining

$$
\sin^2\theta = \frac{-P(n^4-2Sn^2+RL)}{n^4(S-P)+n^2(PS-RL)}.
$$

We have used the identity $S^2 -  D^2 = RL$. Similarly,

$$
\cos^2\theta = \frac{Sn^4 - (PS + RL)n^2 + PRL}{n^4(S-P)+n^2(PS-RL)}.
$$

Dividing the last two equations, we obtain

$$
\tan^2\theta = \frac{P(n^4-2Sn^2+RL)}{Sn^4-(PS+RL)n^2+PRL}.
$$

Since $2S = R + L$, the numerator and denominator can be factored to give the cold-plasma dispersion relation

$$
\tan^2\theta = \frac{P(n^2-R)(n^2-L)}{(Sn^2-RL)(n^2-P)}
$$ {#eq:cold_plasma_dispersion}

The principal modes of cold plasma waves can be recovered by setting $\theta = 0$ and $90^o$. When $\theta = 0^o$, there are three roots: $P=0$ (Langmuir wave), $n^2=R$ (R wave), and $n^2=L$ (L wave). When $\theta = 90^o$, there are two roots: $n^2=RL/S$ (extraordinary wave) and $n^2=P$ (ordinary wave). By inserting the definitions of @eq:stix_notation, one can verify that these are identical to the dispersion relations given in separate derivations, with the addition of corrections due to ion motions.

The resonances can be found by letting $n$ go to $\infty$. We then have

$$
\tan^2\theta_{res} = -P/S
$$

This shows that the resonance frequencies depend on angle $\theta$. If $\theta=0^o$, the possible solutions are $P = 0$ and $S = \infty$. The former is the plasma resonance $\omega=\omega_p$, while the latter occurs when either $R = \infty$ (electron cyclotron resonance) or $L =\infty$ (ion cyclotron resonance). If $θ = 90^o$, the possible solutions are $P =\infty$ or $S = 0$. The former cannot occur for finite $\omega_p$ and $\omega$, and the latter yields the upper and lower
hybrid frequencies, as well as the two-ion hybrid frequency when there is more than one ion species.

The cutoffs can be found by setting $n = 0$ in @eq:dispersion_2ndcol. Again using $S^2-D^2 = RL$, we find that the condition for cutoff is independent of $\theta$:

$$
PRL = 0
$$

The conditions $R = 0$ and $L = 0$ yield the $\omega_R$ and $\omega_L$ cutoff frequencies, with the addition of ion corrections. The condition $P = 0$ is seen to correspond to cutoff as well as to resonance. This degeneracy is due to our neglect of thermal motions. Actually, $P = 0$ (or $\omega = \omega_p$) is a resonance for longitudinal waves and a
cutoff for transverse waves. The information contained in @eq:cold_plasma_dispersion is summarized in the Clemmow–Mullaly–Allis (CMA) diagram. One further result, not in the diagram, can be obtained easily from this formulation. The middle line of @eq:dielectric reads

$$
iDE_x + (S-n^2)E_y = 0
$$

Thus the polarization in the plane perpendicular to $\mathbf{B}_0$ is given by

$$
\frac{iE_x}{E_y} = \frac{n^2 - S}{D}.
$$

From this it is easily seen that waves are linearly polarized at resonance ($n^2=\infty$) and circularly polarized at cutoff ($n^2 = 0$, $R = 0$ or $L = 0$; thus $S = \pm D$).

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

## Warm Plasma

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
&\text{lowest order: } \omega=\pm \omega_{pe}, \\
&\text{first order:} 1-\frac{{\omega_{pe}}^2}{\omega^2}\Big( 1+\frac{3k^2{v_{th}}^2}{{\omega_{pe}}^2}\Big)=0\Rightarrow \omega^2={\omega_{pe}}^2+3k^2{v_{th,e}}^2.
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
&=1+\frac{{\omega_{pe}}^2}{k^2{v_{th,e}}^2}.
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
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2}.
$$

_Case 2_: $\mathbf{k}\perp \mathbf{B}_0$, i.e. perpendicular propagation. Without loss of generality, let $\mathbf{k}=k_x\widehat{x}$. Then

$$
\mathbf{E}_1=\widehat{x}\tilde{E}_{1x}e^{-i\omega t+ik_x x}.
$$

The equations of motion in x,y direction are (cold plasma)

$$
\begin{aligned}
\ddot{x}_1 &= -\frac{e}{m_e}[E_{1x}+\dot{y}_1B_0], \\
\ddot{y}_1 &= -\frac{e}{m_e}[-\dot{x}_1B_0], \\
\Rightarrow \dot{y}_1&=\frac{eB_0}{m_e}x_1=|\Omega_e| x_1  \\
\ddot{x}_1&=-\frac{e}{m_e}[E_{1x}+|\Omega_e|\cdot{y_1}B_0]=-\frac{e}{m_e}E_{1x}-{\Omega_e}^2 x_1,  \\
\Rightarrow x_1&=\frac{-\frac{e}{m_e}E_{1x}}{-\omega^2+{\Omega_e}^2}.
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
\frac{\epsilon}{\epsilon_0}=1-\frac{{\omega_{pe}}^2}{\omega^2-{\Omega_e}^2}-\frac{{\omega_{pi}}^2}{\omega^2-{\Omega_i}^2}.
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

## Summary of Basic MHD Waves

![Plasma oscillation, also known as Langmuir wave.](https://s8.gifyu.com/images/plasma.gif){#fig:langmuir_wave}

![Lower hybrid wave.](https://s8.gifyu.com/images/lowerhybrid.gif){#fig:lowerhybrid_wave}

![Alfvén wave.](https://s8.gifyu.com/images/alfven.gif){#fig:alfven_wave}

![Whistler wave.](https://s8.gifyu.com/images/whistler.gif){#fig:whistler_wave}

![Fast wave.](https://s8.gifyu.com/images/fast.gif){#fig:fast_wave}
