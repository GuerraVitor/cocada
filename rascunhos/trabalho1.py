import numpy as np

# Gerando os vetores aleatórios
vetor_maior = np.random.randint(1, 100, 10)
vetor_menor = np.random.randint(1, 100, 3)

# Calculando a norma ao quadrado do vetor menor
norma_quadrado = np.dot(vetor_menor, vetor_menor)

# Inicializando variáveis para armazenar o melhor produto interno e o índice correspondente
melhor_produto_interno = None
melhor_indice = None

# Percorrendo o vetor maior para encontrar o trecho mais próximo da norma ao quadrado do vetor menor
for i in range(len(vetor_maior) - len(vetor_menor) + 1):
    trecho = vetor_maior[i:i + len(vetor_menor)]
    produto_interno = np.dot(trecho, vetor_menor)
    
    if melhor_produto_interno is None or abs(produto_interno - norma_quadrado) < abs(melhor_produto_interno - norma_quadrado):
        melhor_produto_interno = produto_interno
        melhor_indice = i

# Exibindo os vetores e o resultado
print("Vetor maior:", vetor_maior)
print("Vetor menor:", vetor_menor)
print("Norma ao quadrado do vetor menor:", norma_quadrado)
print("Melhor índice encontrado:", melhor_indice)
print("Trecho correspondente no vetor maior:", vetor_maior[melhor_indice:melhor_indice + len(vetor_menor)])
print("Produto interno correspondente:", melhor_produto_interno)
