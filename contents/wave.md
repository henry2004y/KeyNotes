# Waves {#sec:waves}

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

\begin{aligned}
\nabla\times\mathbf{E}&=-\frac{\partial \mathbf{B}}{\partial t}, \\
\nabla\times\mathbf{B}&=\mu_0\mathbf{j}+\mu_0\epsilon_0\frac{\partial\mathbf{E}}{\partial t}\equiv\mu_0\epsilon\frac{\partial \mathbf{E}}{\partial t}.
\end{aligned}

With $\nabla\rightarrow i\mathbf{k},\ \partial/\partial t\rightarrow -i\omega$, we can get the dispersion relation

\begin{aligned}
i\mathbf{k}\times\mathbf{E}&=i\omega \mathbf{B} \notag\\
i\mathbf{k}\times\mathbf{B}&=-i\mu_0\epsilon\omega\mathbf{E} \notag\\
\Rightarrow k^2\mathbf{E}-\cancel{(\mathbf{k}\cdot\mathbf{E})\mathbf{k}}&=\omega^2 \mu_0\epsilon \mathbf{E}.
\end{aligned}

If $\mathbf{k}\perp\mathbf{E}$, by substituting the dielectric function inside we have

\begin{aligned}
k^2=\omega^2 \epsilon\mu_0=\omega^2\epsilon_0\mu_0\Big[ 1-\frac{{\omega_{pe}}^2}{\omega^2}\Big] \nonumber \\
\Rightarrow \omega^2=k^2c^2+{\omega_{pe}}^2.
\end{aligned}

For both waves, $\nabla\cdot(\epsilon\mathbf{E}_1)=0\Rightarrow i\epsilon(\mathbf{k}\cdot\mathbf{E}_1)=0$ is always valid. However, for electrostatic wave, $\mathbf{E}_1=-\nabla\phi_1=-i\mathbf{k}\phi_1\Rightarrow \mathbf{k}\parallel \mathbf{E}_1\Rightarrow \epsilon=0$, while for EM wave, usually $\mathbf{k}\perp\mathbf{E}_1$\footnote{$\mathbf{k}\perp\mathbf{E}_1 \implies $ EM wave, but EM waves do not necessarily need to be transverse. You can always add a component of $\mathbf{E}_1$ parallel to $\mathbf{k}$ without changing $\mathbf{B}_1$.}, $\epsilon$ does not need to be zero. Therefore, _getting the dispersion relation by setting $\epsilon$ to 0 is only valid for isotropic ES waves_. For EM waves, there's a systematic way to get all the dispersion relations starting from dielectric function, explained in detail in @sec:CPDR. Here we just have a simple summary of the steps.

From Maxwell's equation for the perturbed field,

\begin{aligned}
\nabla\times\mathbf{E}_1 &= -\mu_0\frac{\partial \mathbf{H}_1}{\partial t} \\
\nabla\times\mathbf{H}_1 &= \mathbf{J}_1 +\epsilon_0\frac{\partial \mathbf{E}_1}{\partial t}
\end{aligned}

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

\begin{aligned}
\mathbf{k}\times\mathbf{E}_1 &= \mu_0 \omega \mathbf{H}_1 \\
i\mathbf{k}\times\mathbf{H}_1 &= i\mathbf{k}\times\Big( \frac{\mathbf{k}\times\mathbf{E}_1}{\mu_0 \omega}\Big) = \mathbf{J}_1 - \epsilon_0 i\omega\mathbf{E}_1
\end{aligned}

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

is the __electric displacement field__ or __electric induction__.  It accounts for the effects of free and bound charge within materials (i.e. plasma).
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

where $\mathbf{I}$ is the unit tensor.

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
