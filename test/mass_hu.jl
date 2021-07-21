include("./imports.jl")

@testset ExtendedTestSet "mass_hu" begin
    @testset ExtendedTestSet "mass_hu" begin
        vol = [
            1 0 1 0
            0 0 0 0
            1 1 1 1
            0 1 0 1
            ]
        vol[vol .> 0] .= 200
        vol[vol .< 1] .= -1024

        test = mass_hu(vol, 1.5, -1024, 200)
        answer = 12
        @test test == answer
    end
end