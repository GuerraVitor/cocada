#cereal1 = 50cal 20carb 2gord
#cereal2 = 100cal 15carb 1gord
# b = Ax , com a sendo a matriz com colunas iguais as infos dos cereais e b a mistura requerida

A = [50 100;
    20 15;
    2 1]

b = [350; 65; 8]

x = A \ b

println(x)
