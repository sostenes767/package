
<!-- README.md is generated from README.Rmd. Please edit that file -->

# package <img src="man/figures/logo.png" align="right" height="139"/>

<!-- badges: start -->

[![R-CMD-check](https://github.com/sostenes767/package/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/sostenes767/package/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/sostenes767/package/branch/master/graph/badge.svg)](https://app.codecov.io/gh/sostenes767/package?branch=master)
![Codecov](https://img.shields.io/codecov/c/github/sostenes767/package)
[![ORCiD:0000-0002-5981-4266](https://img.shields.io/badge/ORCiD-0000--0002--5981--4266-A6CE39?logo=ORCID&colorIcon.svg)](https://orcid.org/0000-0002-5981-4266)

<!-- badges: end -->

O objetivo do package é construir um pacote simples com algumas funções
uteis.

## Installation

You can install the development version of package from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sostenes767/package")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(package)
#> 
#> Attaching package: 'package'
#> The following object is masked from 'package:datasets':
#> 
#>     mtcars
## Básicos exemplos do pacote

#Função somar
somar(10,2)
#> [1] 12

#Função multiplicar
multiplicar(10,2)
#> [1] 20

#Função subtrair
subtrair(5,2)
#> [1] 3

#Função dividir
dividir(10,2)
#> [1] 5
```

## Gráfico de barras

``` r
#Grafico de barra simples
graf_bar(ggplot2::diamonds$cut, xlab = "cut")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
