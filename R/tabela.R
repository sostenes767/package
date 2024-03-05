#' Cria Uma Tabela
#'
#' \code{tabela()} retorna uma tabela dos \code{dados}.
#'
#' @param dados dataframe
#'
#' @return uma tabela dos \code{dados}
#' @examples
#' tabela(mtcars)
#'
#' @export
tabela <- function(dados){
  dados |> gtsummary::tbl_summary()
}
