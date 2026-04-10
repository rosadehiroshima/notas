#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#set text(font: "New Computer Modern")
#set heading(numbering: "1.1")
#show heading: set block(above: 2em, below: 2em)
// #set page(fill: black)
// #set text(fill: white)
// #set table(stroke: white)

#let lim = $limits(lim)$
#let space = "    "

= Limites

Considerando a função $y = x^2$, ao aproximar o valor de $x$ para um número, por exemplo 3, podemos saber o valor que $y$ se aproxima?

Usando valores de $x$ e $y$, montamos a seguinte tabela, para melhor entendimento da pergunta:
#align(center)[
  #table(
    columns: (auto, auto),
    align: center,

    inset: 10pt,
    table.header([$x$], [$y$]),
    ..for i in range(1, 6) {
      let x = 3 - calc.pow(10, -1 * i)
      ([#x], [#(x * x)])
    },
  )
]

Cada vez mais que aproximamos os valores $x$ de 3, vemos $y$ se aproximando de 9, ou seja, o limite da função $y = x^2$ quando $x$ tende a 3 é 9.

O Racíocinio acima é expresso da seguinte forma:

#align(center)[
  #columns(3)[
    $limits(lim)_(x->3)x^2 = 9$
    #colbreak()
    $->$
    #colbreak()
    $limits(lim)_(x -> a)f(x) = L$
  ]
]

Temos os valores de $x$ suficientemente próximos de 3, mas nunca iguais a 3, a mesma coisa para $y$.

== Limites laterais

Posta a base para entendimento de limites, podemos ir mais a fundo nas suas especificidades; $x$ pode se aproximar de $a$ de fuas maneiras diferentes, sendo elas:

#align(center)[
  Esquerda: $x -> a^-$

  Direita: $x -> a^+$
]

== Propriedades de limites
#align(left, block(breakable: false, [
  #set math.equation(numbering: "(1)", number-align: left)
  $ lim_(x -> a) [f(x) plus.minus g(x)] = lim_(x -> a) f(x) plus.minus lim_(x -> a) g(x) $
  $ lim_(x -> a) c dot f(x) = c dot lim_(x -> a) f(x) $
  $ lim_(x -> a) [f(x) dot g(x)] = lim_(x -> a) f(x) dot lim_(x -> a) g(x) $
  $ lim_(x -> a) [f(x) / g(x)] = (lim_(x -> a) f(x)) / (lim_(x -> a) g(x)) #space g(x) eq.not 0 $
  $ lim_(x -> a) f(x)^2 = [lim_(x -> a) f(x)]^2 $
  $ lim_(x -> a) root(n, f(x)) = root(n, lim_(x -> a) f(x)) $
  $ lim_(x -> a) |f(x)| = |lim_(x -> a) f(x)| $
]))

== Limites infinitos

#align(center)[
  #set par(leading: 1em)
  #table(
    columns: (auto, auto, auto),
    align: left,
    inset: 10pt,
    table.header([Expressão], [Significado], [Se lê]),
    [$lim_(x -> a^-) f(x) = +infinity$ \ $lim_(x -> a^-) f(x) = -infinity$],
    [$f(x)$ cresce (ou descresce) infinitamente quando $x$ tende a $a$ pela esquerda],
    [O limite de $f(x)$ quando $x$ tende a $a$ pela esquerda é igual a mais (ou menos) infinito],

    [$lim_(x -> a^+) f(x) = +infinity$ \ $lim_(x -> a^+) f(x) = -infinity$],
    [$f(x)$ cresce (ou descresce) infinitamente quando $x$ tende a $a$ pela direita],
    [O limite de $f(x)$ quando $x$ tende a $a$ pela direita é igual a mais (ou menos) infinito],

    [$lim_(x -> a) f(x) = +infinity$ \ $lim_(x -> a) f(x) = -infinity$],
    [$f(x)$ cresce (ou descresce) infinitamente quando $x$ tende a $a$],
    [O limite de $f(x)$ quando $x$ tende a $a$ é igual a mais (ou menos) infinito],
  )
]


// #cetz.canvas({
//   import cetz.draw: *
//   import cetz-plot: *

// })