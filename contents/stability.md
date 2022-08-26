# Stability {#sec:stability}

## MHD Modes

### Kink Mode

A kink instability, is a _current-driven_ plasma instability characterized by transverse displacements of a plasma column's cross-section from its center of mass without any change in the characteristics of the plasma. It typically develops in a thin plasma column carrying a strong axial current which exceeds the [Kruskal–Shafranov limit](https://en.wikipedia.org/wiki/Safety_factor_(plasma_physics)) and is sometimes known as the Kruskal–Shafranov (kink) instability.

The kink instability was first widely explored in fusion power machines with Z-pinch configurations in the 1950s. It is one of the common magnetohydrodynamic instability modes which can develop in a pinch plasma and is sometimes referred to as the $m=1$ mode.

If a "kink" begins to develop in a column the magnetic forces on the inside of the kink become larger than those on the outside, which leads to growth of the perturbation. As it develops at fixed areas in the plasma, kinks belong to the class of "absolute plasma instabilities", as opposed to convective processes. 

```jl
KeyNotes.plot_kink()
```

### Sausage Mode

The $m=0$ mode known as the sausage instability.

### Ballooning Mode

The ballooning instability is a type of internal pressure-driven plasma instability usually seen in tokamak fusion power reactors or in space plasmas [@hameiri1991ballooning]. It is important in fusion research as it determines a set of criteria for the maximum achievable plasma beta. The name refers to the shape and action of the instability, which acts like the elongations formed in a long balloon when it is squeezed. In literature, the structure of these elongations are commonly referred to as "fingers".

The narrow fingers of plasma produced by the instability are capable of accelerating and pushing aside the surrounding magnetic field in order to cause a sudden, explosive release of energy. Thus, the instability is also known as the explosive instability.

The interchange instability can be derived from the equations of the ballooning instability as a special case in which the ballooning mode does not perturb the equilibrium magnetic field.[@hameiri1991ballooning] This special limit is known as the Mercier criterion.

```jl
KeyNotes.plot_balloon()
```

### Tearing Mode

```jl
KeyNotes.plot_tearing()
```

## Kinetic Mode
