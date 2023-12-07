const MAKIE_PLOT_TYPES = Union{Figure, FigureAxisPlot}

function _makie_save(path::String, p)
   try
      FileIO.save(path, p; px_per_unit=3)
   catch e
      # Explicit rm due to https://github.com/JuliaIO/FileIO.jl/issues/338.
      rm(path; force=true)

      file, ext = splitext(path)
      # SVG will fail with GLMakie and that is okay.
      # Books.jl will only use SVG if the file is available, otherwise PNG.
      if ext != ".svg"
          @error "Failed to save Makie image" exception=(e, catch_backtrace())
      end
   end
end

Books.is_image(plot::MAKIE_PLOT_TYPES) = true
Books.svg(svg_path::String, p::MAKIE_PLOT_TYPES) = _makie_save(svg_path, p)
Books.png(png_path::String, p::MAKIE_PLOT_TYPES) = _makie_save(png_path, p)

function makiejl()
   x = range(0, 10, length=100)
   y = sin.(x)
   p = lines(x, y)
   caption = "An example plot with Makie.jl."
   label = "makie"
   link_attributes = "width=70%"
   Options(p; caption, label, link_attributes)
end

meshgrid(y,x) = (ndgrid(x,y)[[2,1]]...,)

function plot_kink()
   R₀ = 3.0 # inner radius
   a = R₀ / 3
   r₀ = 0.8 * a
   dr = 0.3 * r₀ # radial perturbation
   dθ = 2π/80
   dϕ = dθ

   θ, ϕ = meshgrid(0:dθ:2π, 0:dϕ:2π)
   # mode numbers (poloidal, toroidal)
   m, n = 2, 1
   # plasma displacement
   r = @. r₀ + dr * cos(m*θ - n*ϕ)

   R = @. R₀ + r * cos(θ)
   # convert to Cartesian coord.
   Z = @. r .* sin(θ)
   X = @. R .* cos(ϕ)
   Y = @. R .* sin(ϕ)

   p = surface(X, Y, Z, axis=(type=Axis3,), colormap=(:turbo, 0.7))

   caption = "Plasma column (poloidal m = $m, toroidal n = $n) kink mode in a Tokamak."
   label = "kink"

   Options(p; caption, label)
end

function plot_balloon()
   R₀ = 3.0 # inner radius
   a = R₀ / 3
   r₀ = 0.8 * a
   dr = 0.3 * r₀ # radial perturbation
   dθ = 2π/200
   dϕ = 2π/100
    
   θ, ϕ = meshgrid(0:dθ:2π, -0.5π:dϕ:1.2π)
   # mode numbers (poloidal, toroidal)
   m, n = 15, 10
   # plasma displacement
   envelope = @. exp(-0.8 *(abs(θ - π) - π)^2)
   r = @. r₀ + (dr * envelope) * cos(m*θ - n*ϕ) 

   R = @. R₀ + r * cos(θ)
   # convert to Cartesian coord.
   Z = @. r .* sin(θ)
   X = @. R .* cos(ϕ)
   Y = @. R .* sin(ϕ)

   p = surface(X, Y, Z, axis=(type=Axis3,), colormap=(:turbo, 0.7))

   caption = "Plasma column (poloidal m = $m, toroidal n = $n) balloon mode."
   label = "balloon"

   Options(p; caption, label)
end

function plot_tearing()
   R₀ = 3.0 # inner radius
   a = R₀ / 3
   r₀ = 0.8 * a
   dθ₁ = 2π/200
   dθ₂ = 2π/20
    
   # mode numbers (poloidal, toroidal)
   m, n = 3, 1
    
   θ₁, θ₂ = meshgrid(-0.15π:dθ₁:1.75π, 0:dθ₂:2π)
   q = m / n
   ϕ₁ = q .* θ₁
    
   x₀ = @. (R₀ + r₀*cos(θ₁))*cos(ϕ₁)
   y₀ = @. (R₀ + r₀*cos(θ₁))*sin(ϕ₁)
   z₀ = @. r₀ * sin(θ₁)
   RR₀ = @. √(x₀^2 + y₀^2)
    
   aa = 0.8 * r₀ 
   bb = 0.4 * aa # radial perturbation ?
   # plasma displacement ?
   R = @. aa * cos(θ₂) * sin(ϕ₁) - bb * sin(θ₂) * cos(ϕ₁) + RR₀
   # convert to Cartesian coord.
   Z = @. aa * cos(θ₂) * cos(ϕ₁) + bb * sin(θ₂) * sin(ϕ₁) + z₀
   X = @. R * cos(ϕ₁)
   Y = @. R * sin(ϕ₁)

   p = surface(X, Y, Z, axis=(type=Axis3,), colormap=(:turbo, 0.7))

   caption = "Plasma column (poloidal m = $m, toroidal n = $n) tearing mode."
   label = "tearing"

   Options(p; caption, label)
end

function plot_conductivity()   
   x = range(0, 4.5, length=100) # Ωₑ / νc
   
   σₚ = @. 1 / (1+x^2)
   σₕ = @. x / (1+x^2)
   σpar = ones(length(x))

   f = Figure(fontsize=25, resolution=(600, 420))
   ax = Axis(f[1, 1],
      xlabel=L"\Omega_e / \nu_c",
      ylabel=L"\sigma"
   )

   p1 = lines!(ax, x, σₚ, linewidth=5, label="Pedersen")
   p2 = lines!(ax, x, σₕ, linewidth=5, label="Hall")
   p3 = lines!(ax, x, σpar, linewidth=5, label="Parallel")
   axislegend(ax; position=:rc)

   caption = "Pedersen, Hall and parallel conductivity."
   label = "conductivity"
   Options(f; caption, label)
end

function plot_airy()
   x = -15:.1:5
   a = @. airyai(x)
   i_ = 1:159
   b = @. airybi(x[i_])

   f = Figure(fontsize=25, resolution=(800, 420))
   ax = Axis(f[1, 1],
      xlabel="x",
      ylabel="y",
   )

   p1 = lines!(ax, x, a, linewidth=3, label="Ai(x)")
   p2 = lines!(ax, x[i_], b, linewidth=3, label="Bi(x)")
   axislegend(ax)

   caption = "Airy functions."
   label = "airy"
   Options(f; caption, label)
end

function plot_airy_minus_x()
   x = -5:.1:15
   a = @. airyai(-x)
   i_ = 43:length(x)
   b = @. airybi(-x[i_])

   f = Figure(fontsize=25, resolution=(800, 420))
   ax = Axis(f[1, 1],
      xlabel="s",
      ylabel="Ey",
   )

   p1 = lines!(ax, x, a, linewidth=3, label="Ai(s)")
   p2 = lines!(ax, x[i_], b, linewidth=3, label="Bi(s)")
   axislegend(ax)

   caption = "Airy functions solutions for the simplified field line resonance equation."
   label = "airy_flr"
   Options(f; caption, label)
end

function plot_airy_ode()
   # Initial Conditions: y → 0 as x → ∞
   x₀ = [airyai(10.0)]
   dx₀ = [airyaiprime(10.0)]
   tspan = (10.0, -15.0)

   # Define the problem
   function airy_equation(ddu, du, u, ω, t)
      ddu .= t*u
   end

   # Pass to solvers
   prob = SecondOrderODEProblem(airy_equation, dx₀, x₀, tspan)
   sol = solve(prob, DPRKN6())

   # Extract solutions
   x = sol.t
   a = getindex.(sol.u,2)

   f = Figure(fontsize=25, resolution=(800, 420))
   ax = Axis(f[1, 1],
      xlabel="x",
      ylabel="y",
   )

   p1 = lines!(ax, x, a, linewidth=3, label="Ai(x)")
   axislegend(ax)

   caption = "Numerical solution of Airy function of the first kind."
   label = "airy_ode"
   Options(f; caption, label)
end

function plot_b1z_ode()
   # Initial Conditions
   x₀1 = [0.033]
   dx₀1 = [1.0]
   x₀2 = [0.28]
   dx₀2 = [0.0]

   tspan = (15.0, 1.0)

   # Define the problem
   function b1z_equation(ddu, du, u, α, t)
      ddu .= du/(t - 1) - (t - 2)*u
   end

   # Pass to solvers
   prob = SecondOrderODEProblem(b1z_equation, dx₀1, x₀1, tspan)
   sol1 = solve(prob, Nystrom4(), dt=0.05)
   prob = SecondOrderODEProblem(b1z_equation, dx₀2, x₀2, tspan)
   sol2 = solve(prob, Nystrom4(), dt=0.05)

   # Extract solutions
   x = sol1.t
   a = getindex.(sol1.u, 2)
   b = getindex.(sol2.u, 2)

   f = Figure(fontsize=25, resolution=(800, 500))
   ax = Axis(f[1, 1],
      xticks = 0:15,
      xlabel="x",
      ylabel=L"B_{1z}",
   )

   p1 = lines!(ax, x, a, linewidth=3, label="R(x)")
   p2 = lines!(ax, x, b, linewidth=3, label="S(x)")
   axislegend(ax; position=(0.25,1.0), framevisible=false)
   vlines!(ax, [1.0,2.0], color = :black)

   caption = "Numerical solution of field line resonance perturbation equation for \
      \$\\alpha=1,x_r=1,x_t=2\$. The singular behavior at \$x_r=1\$ for \$S(x)\$ is not \
      so obvious and the boundary conditions on the right side are hard-coded."
   label = "b1z_ode"
   Options(f; caption, label)
end

function plot_dispersion_parallel()
   # normalized parameters
   c, q, B, n, mi, me, ϵ₀, δ = 1.0, 1.0, 1e-1, 1.0, 1.0, 0.1, 1.0, 1e-3
   ωce = q*B/me
   ωpe = √(n*q^2/(ϵ₀*me))
   ωci = q*B/mi
   ωpi = √(n*q^2/(ϵ₀*mi))
   ωL = ωce/2*(-1+√(1+4ωpe^2/ωce^2))
   ωR = ωce/2*(1+√(1+4ωpe^2/ωce^2))
   ω∞L, ω∞R = 5.0, 5.0

   ω1 = range(0+δ, ωci-δ, length=51)
   ω2 = range(ωL+300δ, ω∞L, length=51)
   ω3 = range(0+δ, ωce-10δ, length=51)
   ω4 = range(ωR+120δ, ω∞R, length=51)
   ω5 = range(0+δ, ω∞R, length=101)

   k1 = @. √(ω1^2 - ω1*ωpi^2/(ω1 - ωci) - ω1*ωpe^2/(ω1 + ωce))/c
   k2 = @. √(ω2^2 - ω2*ωpi^2/(ω2 - ωci) - ω2*ωpe^2/(ω2 + ωce))/c

   k3 = @. √(ω3^2 - ω3*ωpi^2/(ω3 + ωci) - ω3*ωpe^2/(ω3 - ωce))/c
   k4 = @. √(ω4^2 - ω4*ωpi^2/(ω4 + ωci) - ω4*ωpe^2/(ω4 - ωce))/c

   k5 = @. ω5/c

   f = Figure(fontsize=25, resolution=(900, 450))
   ax = Axis(f[1, 1],
      xlabel="k",
      ylabel="ω",
      xscale=log10,
      yscale=log10,
   )

   p1 = lines!(ax, k1, ω1, linewidth=3, label="ion cyclotron mode")
   p2 = lines!(ax, k2, ω2, linewidth=3, label="ion free-space mode")
   p3 = lines!(ax, k3, ω3, linewidth=3, label="electron cyclotron mode")
   p4 = lines!(ax, k4, ω4, linewidth=3, label="electron free-space mode")
   p5 = lines!(ax, k5, ω5, linewidth=3, label="light")
   text!(1.0, 1.0; text="electron cyclotron resonance")
   text!(1.0, 0.1; text="ion cyclotron resonance")
   axislegend(ax; position=:lt, framevisible=false)
   hlines!(ax, [ωci, ωce], color=:black, linestyle=:dot)

   caption = "Wave modes propagating parallel to the magnetic field. Some arbitrary \
      constants are used. Note that log scale is used since we can easily cross multiple \
      scales so ion scales can be almost invisible if we include electron scales."
   label = "dispersion_parallel"
   Options(f; caption, label)
end

"Parker spiral in 2D polar axis."
function plot_IMF_ecliptic()
   # Solar
   Tsolarrotate = 25.05*24*3600 # [s]
   ωsun = 2π / Tsolarrotate # [rad/s]
   Rsun = 696340e3 # solar radius, [m]
   AU = 1.496e11 # sun-Earth distance, [m]
   
   # Distance from sun
   # https://www.enchantedlearning.com/subjects/astronomy/planets/
   dMercury = 0.39  # [AU], 57.91e9 [m]
   dVenus   = 0.723 # [AU], 108.2e9 [m]
   dMars    = 1.524 # [AU], 227.9e9 [m]
   dJupiter = 5.203 # [AU], 778.5e9 [m]
   
   Vr = 300e3 # [m/s]
   rmin = 1.0*Rsun # inner radius, [m]
   rmax = 5.3*AU # outer radius, [m]
   
   # 2D ecliptic plane
   φ₀ = 0
   r = range(rmin, rmax, length=400)
   φ = @. 2π *( φ₀ + rmin*ωsun/Vr*(r/rmin - log(r) - 1 + log(rmin)) )

   f = Figure(size = (800, 400))

   ax = PolarAxis(f[1,1], title="Ecliptic plane")
   lines!(ax, φ, r./AU, label="Parker spiral")
   rCircle = ones(100)
   angle = range(0, 2π, length=100)
   lines!(ax, angle, rCircle, linestyle=:dashdot, color=:black, label="Earth")
   lines!(ax, angle, rCircle.*dMercury, linestyle=:dashdot, label="Mercury")
   lines!(ax, angle, rCircle.*dVenus, linestyle=:dashdot, label="Venus")
   lines!(ax, angle, rCircle.*dMars, linestyle=:dashdot, label="Mars")
   lines!(ax, angle, rCircle.*dJupiter, linestyle=:dashdot, label="Jupiter")
   rlims!(ax, 0, rmax/AU)
   #TODO: not working in Makie v0.20.2!
   #axislegend()

   caption = "Interplanetary magnetic field in the ecliptic plane."
   label = "IMF2D"
   Options(f; caption, label)
end

function plot_IMF_3D()
   # Solar
   Tsolarrotate = 25.05*24*3600 # [s]
   ωsun = 2π / Tsolarrotate # [rad/s]
   Rsun = 696340e3 # solar radius, [m]
   AU = 1.496e11 # sun-Earth distance, [m]
   rmin = 1.0*Rsun # inner radius, [m]
   rmax = 5.3*AU # outer radius, [m]
   Vr = 300e3 # [m/s]
   # 3D
   nr, nθ = 10, 50
   r_range = range(rmin, rmax, length=nr)
   θ_range = range(π/16, π*15/16, length=nθ)

   # meshgrid like operation
   r = r_range' .* ones(nθ)
   θ = ones(nr)' .* θ_range

   f = Figure(fontsize=25, resolution=(600, 400))
   ax = Axis3(f[1, 1],
      xlabel="x [AU]",
      ylabel="y [AU]",
      zlabel="z [AU]",
      aspect=(1,1,1)
   )

   for i = 1:1
      φ₀ = i*π/4
      φ = @. 2π *( φ₀ + rmin*ωsun/Vr*(r/rmin - log(r) - 1 + log(rmin)) )

      X = @. r * sin(θ) * cos(φ) / AU
      Y = @. r * sin(θ) * sin(φ) / AU
      Z = @. r * cos(θ) / AU

      scatter!(ax, X[:], Y[:], Z[:])
   end

   caption = "Interplanetary magnetic field."
   label = "IMF3D"
   Options(f; caption, label)
end