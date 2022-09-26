function example_dataframe()
   DataFrame(A = 1:6, B = 1:6, C = 1:6)
end

function lambda_factor_dataframe()
   e = 1.60217662e-19 # electron charge, [C]
   c = 299792458.     # speed of light, [m/s]
   μ₀ = 4π*1e-7       # Vacuum permeability, [H/m]
   ϵ₀ = 1/(c^2*μ₀)    # Vacuum permittivity, [F/m]
   kT = [0.2, 2, 100, 10^4, 10^3] # [eV]
   n = BigInt(10).^[15, 17, 19, 21, 27] # [m^-3]
   λD = @. √(ϵ₀ / e) * sqrt(kT/n)
   lnΛ = @. log(12π*n*λD^3)
   DataFrame("kB Tₑ (eV)"=>kT, "n (/m³)"=>n, "lnΛ"=>lnΛ)
end