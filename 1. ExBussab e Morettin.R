###EXERCÍCIO 2A

estado_civil    <- c("solteiro", "casado", "casado", "solteiro", "solteiro",
                     "casado", "solteiro", "solteiro", "casado", "solteiro",
                     "casado", "solteiro", "solteiro", "casado", "casado",
                     "solteiro", "casado", "casado", "solteiro", "solteiro",
                     "casado", "solteiro", "solteiro", "casado", "casado",
                     "casado", "solteiro", "casado", "casado", "casado",
                     "solteiro", "casado", "casado", "solteiro", "casado",
                     "casado")

estado_civil <- as.factor(estado_civil)

table(estado_civil)

prop.table(table(estado_civil)) * 100 ##estatística em porcentagem



#### EXERCICIO 11A

urbano <- c(10, 40, 80, 50, 20)
rural <- c(30,50,15,5,0)
classes <- c("2 a 3","3 a 5", "5 a 7", "7 a 10", "10 a 15")


barplot(urbano, names.arg = classes, main = "Urbanos")
barplot(rural, names.arg = classes, main = "Rurais")


####HISTOGRAMA  ####DEU ERROR..... NÃO SEI PQ O HISTOGRAMA TA ERRADO

hist(urbano,
     main = "Histograma Urbano",
     xlab = "Aluguel")

hist(rural,
     main = "Histograma Rural",
     xlab = "Aluguel")




####EXERCÍCIO 11B

## a população urbana possui maior concentração de 5 a 7 alugueis, enquanto no ambiente rural a maior concetração está em 3 a 5.
### além disso, a curva da população urbana está centrada; simétrica e a rural é assimétrica negativa indo para zero.



#### EXERCÍCIO 16


idade <- c(26,32,36,20,40,28,41,43,34,23,33,27,37,44,30,38,31,39,25,37,30,34,41,26,32,35,46,29,40,35,31,36,43,33,48,42)

table (idade)

hist(idade,
     breaks = seq(20, 50, by = 5),
     main = "Histograma das Idades",
     xlab = "Idade")

##### B

idade_freqacumulada <- c(3,7,10,8,6,2)
classe_acumulada <- c("20 a 25", "25 a 30", "30 a 35", "35 a 40", "40 a 45", "45 a 50")

freq_acum <- cumsum(idade_freqacumulada)

perc_acum <- freq_acum / sum(idade_freqacumulada) * 100

plot(perc_acum,
     type = "b",
     xaxt = "n",
     main = "Porcentagem acumulada",
     xlab = "Faixa etária",
     ylab = "Porcentagem (%)")



##### C

#### tenho 36 resultados. como necessito i,25% i,50% e i,75%. Temos

#### i,25% (9) está entre 25 e 30 anos, mais próximo de 30

#### i,50% (18) está entre 30 e 35 anos

#### i,75% (27) está entre 35 e 40 anos
