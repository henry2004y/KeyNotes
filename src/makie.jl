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