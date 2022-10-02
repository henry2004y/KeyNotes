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

   caption = "Numerical solution of field line resonance perturbation equation for \$\\alpha=1,x_r=1,x_t=2\$. The singular behavior at \$x_r=1\$ for \$S(x)\$ is not so obvious and the boundary conditions on the right side are hard-coded."
   label = "b1z_ode"
   Options(f; caption, label)
end