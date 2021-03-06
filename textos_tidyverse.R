
# Trabalhando com textos - Tidyverse -------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data do script: 30/04/22 -----------------------------------------------------------------------------------------------------------------
# Referência: Curso Udemy ------------------------------------------------------------------------------------------------------------------

# Pacote necessário ------------------------------------------------------------------------------------------------------------------------

library(tidyverse)

# strings = linhas

# Funções strsplit e unlist ----------------------------------------------------------------------------------------------------------------------------------

art5 <- "Todos são iguais perante a lei, sem distinção de qualquer natureza, garantindo-se
aos brasileiros e aos estrangeiros residentes no país à inviolabilidade do direito à vida,
à liberdade, à igualdade, à segurança e à propriedade."

art5

a5 <- strsplit(art5, " ") # Divide o texto e cria uma lista de palavras
a5 
a5 <- a5 %>% unlist() # Muda do formato 'list' para 'vector'
a5

a5[4] # Apresenta a palavra da posição 4

a6 <- art5 %>% strsplit("") # Divide o texto e cria uma lista de letras
a6
a6 <- a6 %>% unlist() # Muda do formato 'list' para 'vector'
a6

a6[3] # Apresenta a letra da posição 3

# Fazendo o oposto com 'collapse' ----------------------------------------------------------------------------------------------------------

paste(a5, collapse = " ") # Une aspalavras e separa o texto por espaço
paste(a5, collapse = "") # Nenhuma separação
paste(a5, collapse = "#") # Separação das palavras do texto com "#"

# Misturando letras ------------------------------------------------------------------------------------------------------------------------

letters # Letras do alfabeto em minúsculo
LETTERS # Letras do alfabeto em maiúsculo

paste(letters, LETTERS, sep = "/")
paste(c(letters, LETTERS), sep = "/")

# Funções para localizar termos ------------------------------------------------------------------------------------------------------------

grep("a", a5) # Retorna a posição de todas as palavras com a letra "a"
grep("a", a5, value = TRUE) # Retorna todas as palavras com a letra "a"
grep("dade", a5, value = TRUE) # Retorna todas as palavras com os termos "dade"

grep("iguais", a5)
grep("iguais", a5, value = TRUE) # Retorna todas as palavras com os termos "dade"

grepl("a", a5) # Função que retorna true ou false

# Substituindo termos ----------------------------------------------------------------------------------------------------------------------

sub("a", "A", a5) # Substitui o primeiro "a" de todas as palavras por "A"
gsub("a", "A", a5) # Substitui todas os "a" das palavras

# Utilizando as funções em colunas de data frames ------------------------------------------------------------------------------------------

iris1 <- iris
iris1$Species <- gsub("setosa", "Tipo_1", iris1$Species)
iris1$Species <- gsub("versicolor", "Tipo_2", iris1$Species)
iris1$Species <- gsub("virginica", "Tipo_3", iris1$Species)

view(iris1)

iris1$Species <- gsub("Tipo", "Espécie", iris1$Species)

view(iris1)
