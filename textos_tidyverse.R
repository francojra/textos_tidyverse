
# Trabalahndo com textos - Tidyverse -------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data do script: 30/04/22 -----------------------------------------------------------------------------------------------------------------
# Referência: Curso Udemy ------------------------------------------------------------------------------------------------------------------

# Pacote necessário ------------------------------------------------------------------------------------------------------------------------

library(tidyverse)

# strings = linhas

# Prática ----------------------------------------------------------------------------------------------------------------------------------

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
