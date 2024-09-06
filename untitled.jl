using Random  # Para gerar números aleatórios
using Polynomials  # Para manipular polinômios

# Passo 1: Gerando 30 pontos aleatórios de um polinômio de grau 5

# Coeficientes do polinômio de grau 5 (escolhidos arbitrariamente)
coeffs = [3.0, -2.5, 1.2, -0.4, 0.1, 0.05]

# Gerando 30 pontos aleatórios de x entre -10 e 10
x = rand(Uniform(-10, 10), 30)

# Calculando os valores de y usando o polinômio
# y = c1 + c2*x + c3*x^2 + c4*x^3 + c5*x^4 + c6*x^5 + noise
y = Polynomial(coeffs).(x) + randn(30)  # Adiciona ruído normal

# Passo 2: Regressão polinomial de grau 0 (constante)
y_mean = mean(y)  # A constante que minimiza o erro é a média dos valores de y

# Exibindo os resultados
println("Coeficientes do polinômio original: ", coeffs)
println("Pontos x: ", x)
println("Pontos y: ", y)
println("Regressão de grau 0 (média de y): ", y_mean)
