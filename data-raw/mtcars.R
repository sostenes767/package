## code to prepare `mtcars` dataset goes here

# Exportando dados mtcars
library(dplyr)

write.csv(x = mtcars,
          file = "data-raw/mtcars.csv",
          quote = FALSE,
          row.names = FALSE)

#Limpeza dos dados
mtcars <- "data-raw/mtcars.csv" |>
  read.csv(header = TRUE) |> select(mpg:wt)

#Salva o banco para uso
usethis::use_data(mtcars, overwrite = TRUE)
