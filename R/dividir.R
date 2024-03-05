#' Dividir um numero pelo outro
#'
#' \code{Dividir()} retorna a divisao de \code{x} e \code{y}.
#'
#' @param x um numero
#' @param y um numero
#'
#' @return a divisao de  \code{x} por \code{y}
#' @examples
#' #dividir 6/2 = 3
#' dividir (6,2)
#'
#' @export
dividir <- function(x,y){
  stopifnot(y != 0)
  x/y
}
