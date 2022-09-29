# Particle-in-Cell {#sec:pic}

## Phase Space Sampling

Let $\hat{f}(\mathbf{z})$ be a general probability density function with normalization:

$$
\int_\Omega \hat{f}(\mathbf{z})dV = 1
$$

Now sample the phase space with $N$ markers according to $\hat{f}(\mathbf{z})$ then the _marker distribution_, $g$ is:

$$
g(\mathbf{z}) = N\hat{f}(\mathbf{z})
$$

and the phase space volume element occupied by a marker is

$$
dV_i = \frac{1}{g(\mathbf{z}_i)}
$$

where $\mathbf{z}_i$ is the phase space coordinate of the marker and $dV_i$ the volume element occupied by it.

Define the weight of a marker as the number of physical particles in the corresponding phase space volume occupied by
the marker:

$$
w_i = f(\mathbf{z}_i)dV_i = \frac{f(\mathbf{z}_i)}{g(\mathbf{z}_i)}
$$

This marker distribution can represent the total $f$ or the $\delta f$. (???)

We can now take moments of the distribution function in the phase space (such as density), and the Monte Carlo approximation to the integration is as follows:

$$
M(A) = \int_\Omega A(\mathbf{z})f(\mathbf{z})dV = \sum_{i=1}^{N}A(\mathbf{z}_i)w_i + \mathcal{\frac{1}{\sqrt{N}}}
$$

where $N$ is the number of markers in the phase space region $\Omega$. This Monte Carlo approximation makes the particle simulation feasible for a number of problems, even in 3D, at the cost of introducing an error on the order of $N^{-1/2}$.

## Computational Cost

The key feature that makes PIC more feasible than the brute-force nbody method is the reduction of computational cost. Given $N$ macro-particles in the system, a brute force method has a complexity of $\mathcal{O}(N^2)$, and a PIC method has $\mathcal{O}(N\log N)$. A rough idea how this is possible can be obtained by ignoring the pair interactions and consider collective effects especially for those particles at a large distance.

## δf Method {#sec:delta_f}

Consider the growth rate of a single unstable wave in a 1D-1V Vlasov-Poisson system of plasma. The energy conservation leads to

$$
\frac{d}{dt}\Big(\frac{\epsilon_0}{2}E(x)^2\Big) + \int q v E(x)f(x,v)dv = 0
$$

For a single mode $E(x,t) = A(t)\sin(kx-\omega t)$, the growth rate is

$$
\gamma = \frac{1}{A}\frac{dA}{dt} = -\int qvEfdv = -\sum_j q_j w_j E(x_j)
$$

where $w_j$ is the particle weight. All kinetic information lies in the marker particle position distribution.

The idea of $\delta-f$ method is to decompose the total distribution function into two parts,

$$
f = f_0 + \delta f,\quad |\delta f|\ll f_0 
$$

and let the particle weight be proportional to the perturbation part,

$$
w\propto \delta f,\quad w_j = \frac{\delta f(x_j, v_j)}{f(x_j, v_j)}
$$

If the contribution from $f_0$ is known, for example

$$
\int qvE f_0 dv = \int qvf_0(v) A \sin(kx-\omega t)dv = 0
$$

then the growth rate can be written as

$$
\gamma = -\int qvE\delta f dv = -\int qvE\frac{\delta f}{f}f dv = \sum_j q_j v_j w_j E(x_j)
$$

Since now the particle weight is proportional to $\delta f/f$, the system noise would be significantly reduced by $(\delta f/f)^2$; in other words, for the same noise level the number of macro-particles required would be reduced by $(\delta f/f)^2$, which is typically $\mathcal{O}(10^6)$. Of course this requires the prior assumption $|\delta f| \ll f$ to be valid.
