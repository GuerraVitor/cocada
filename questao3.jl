#= reta y = ax que passa pelos pontos (1, 3) e (4, 5)
3 = 1x 
5 = 4x
4 = 2x
a) sim
b) nao
=#

using LinearAlgebra


a = [3 6; 
     6 14]
    
b = [37; 77] 

x = a \ b

erro = a * x - b

print(norm(erro))