#' Grafico De Barras Com Porcentagens
#'
#' \code{graf_bar()} retorna um gráfico de barras.
#'
#' @param x dados categoricos
#' @param xlab texto para o eixo x
#' @param ylab texto para o eixo y
#' @param color cor das barras do grafico
#' @param ordenada ordena as barras em forma descrescente
#' @param size comprimento
#' @param horizontal permite que as barras fiquem na horizontal
#'
#' @return grafico da variavel \code{x}
#' @examples
#' #grafico de barra simples graf_bar(dados)
#' graf_bar(ggplot2::diamonds$cut, xlab = "cut")
#'
#' @export
graf_bar <- function(x, xlab = "", ylab = "", color = "Steelblue",
                     ordenada = FALSE, size = 3.5, horizontal = FALSE) {

  frequencias <- questionr::freq(x, digits = 2, )
  frequencias <- data.frame(categorias = rownames(frequencias), frequencias)

  colnames(frequencias) <- c("categorias", "n", "perc", "perc_valido")

  frequencias <- frequencias[stats::complete.cases(frequencias), ]

  limite_y <- 1.05*max(frequencias$perc_valido/100)

  if (ordenada == FALSE && horizontal == FALSE) {
    g <- ggplot2::ggplot(data = frequencias, ggplot2::aes(x = categorias, y = perc_valido/100)) +
         ggplot2::geom_bar(stat = "identity", width = 0.5, fill = color) +
         ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
         ggplot2::scale_x_discrete(limits = levels(x)) +
         ggplot2::geom_text(ggplot2::aes(label = paste0(perc_valido, "%")), vjust = -0.5, color = "black", size = size) +
         ggplot2::scale_y_continuous(labels = scales::percent,
                         limits = c(0, limite_y)) +
         ggplot2::theme_test()
  }

  if (ordenada == TRUE && horizontal == FALSE) {
    g <- ggplot2::ggplot(data = frequencias, ggplot2::aes(x = stats::reorder(categorias, -perc_valido), y = perc_valido/100)) +
         ggplot2::geom_bar(stat = "identity", width = 0.5, fill = color) +
         ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
         ggplot2::geom_text(ggplot2::aes(label = paste0(perc_valido, "%")), vjust = -0.5, color = "black", size = size) +
         ggplot2::scale_y_continuous(labels = scales::percent,
                         limits = c(0, limite_y)) +
         ggplot2::theme_test()
  }

  if (ordenada == FALSE && horizontal == TRUE) {
    g <- ggplot2::ggplot(data = frequencias, ggplot2::aes(x = categorias, y = perc_valido/100)) +
         ggplot2::geom_bar(stat = "identity", width = 0.5, fill = color) +
         ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
         ggplot2::scale_x_discrete(limits = levels(x)) +
         ggplot2::geom_text(ggplot2::aes(label = paste0(perc_valido, "%")), vjust = 0.5, hjust = -0.10, color = "black", size = size) +
         ggplot2::scale_y_continuous(labels = scales::percent,
                         limits = c(0, limite_y)) +
         ggplot2::theme_test() +
         ggplot2::coord_flip()
  }

  if (ordenada == TRUE && horizontal == TRUE) {
    g <- ggplot2::ggplot(data = frequencias, ggplot2::aes(x = stats::reorder(categorias, perc_valido), y = perc_valido/100)) +
         ggplot2::geom_bar(stat = "identity", width = 0.5, fill = color) +
         ggplot2::xlab(xlab) + ggplot2::ylab(ylab) +
         ggplot2::geom_text(ggplot2::aes(label = paste0(perc_valido, "%")), vjust = 0.5, hjust = -0.10, color = "black", size = size) +
         ggplot2::scale_y_continuous(labels = scales::percent,
                         limits = c(0, limite_y)) +
         ggplot2::theme_test() +
         ggplot2::coord_flip()
  }

  return(g)

}
