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

function shock_estimation()
   kB = 1.38064852e-23
   μ₀ = 4π*1e-7
   mᵢ = 1.673557546e-27

   n1 = 2e6  # [m^3]
   v1 = 6e5  # [m/s]
   B1 = 5e-9 # [T]
   T1 = 5e5  # [K]
   λ1 = 1.0
   
   As = kB * T1 / (mᵢ * v1^2)        # 0.011
   Am = B1^2 / (μ₀ * mᵢ * n1 * v1^2) # 0.016
   
   x = 3     # downstream/upstream jump density ratio
   y = 1 / x
   
   λ2 = (-2λ1*y^3 + λ1*(2As+Am+2)*y^2 - Am*λ1) /
      (6λ1*y^3 - 4λ1*(2As+Am+2)*y^2 + (2λ1*(4As+1+2Am)+2As)*y)
   
   "λ2 = $λ2 under jump ratio $x"
end