using LinearAlgebra

gostos = [0.9 0.1;
         0.8 0.2;
         0.3 0.7;
         0.6 0.4;
         0   1;] 

tipo_filmes = [0.9 0.1;
              0.1 0.9;
              0.5 0.5;
              0   1;         
              0.2 0.8;]

j = 1
i = 1



while i < 6
    while j < 6
        r = gostos[i, :] ⋅ tipo_filmes[j, :]
        println(r)
        global j += 1
    end
    global i += 1
end

