#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1 / 1",
)

#set text(font: "New Computer Modern", size: 11pt, lang: "pt", region: "br")
#set par(justify: true, leading: 0.8em)

#set heading(numbering: (..nums) => {
  let niveis = nums.pos()
  if niveis.len() == 1 {
    numbering("1.", niveis.last())
  } else if niveis.len() == 2 {
    numbering("a)", niveis.last())
  }
})

#show heading.where(level: 1): set text(size: 14pt, fill: rgb("003366"))
#show heading.where(level: 1): set block(above: 2em, below: 1.5em)

#show heading.where(level: 2): set text(size: 11pt, weight: "regular")
#show heading.where(level: 2): set block(above: 1.5em, below: 0.8em)

#show math.equation.where(block: true): set block(above: 1em, below: 1em)

#set math.cancel(stroke: red)

#let lim = $limits(lim)$
#let space = h(1.5em)

*Nome:* Luiz Gustavo Silva Carvalho \
*Curso:* Sistemas de Informação - 6º Semestre
#v(1em)

Obs: a atividade foi feita anteriormente no papel, apenas foi formalizada em um documento para facilitar a leitura das resoluções.

= Use o gráfico dado da $f$ para determinar cada expressão, se ela existir. Se não existir, explique o por quê?

#block(align(left)[
  #columns(2, gutter: 3em)[
    == $lim_(x -> 0^-) f(x) = 2$
    == $lim_(x -> 0^+) f(x) = 2$
    == $lim_(x -> 0) f(x) = 2$
    == $f(0) = 2$
    == $lim_(x -> 2^-) f(x) = 2$
    == $lim_(x -> 2^+) f(x) = -1$
    == $lim_(x -> 2) f(x) = exists.not$
    == $f(2) = -1$

    #colbreak()

    == $lim_(x -> 5^-) f(x) = 2$
    == $lim_(x -> 5^+) f(x) = -2$
    == $lim_(x -> 5) f(x) = exists.not$
    == $f(5) = 2$
    == $lim_(x -> 7^-) f(x) = 2$
    == $lim_(x -> 7^+) f(x) = 2$
    == $f(7) = exists.not$
  ]
])

= Determine os limites abaixo:

#align(block(breakable: false)[
  #columns(2, gutter: 3em)[
    #set math.equation(numbering: "i)", number-align: left)

    == $lim_(x -> 2^-) (x + 5)/(x - 2)$
    $
      lim_(x -> 2^-) (2 + 5)/(2 - 2)
    $
    $
      lim_(x -> 2^-) (7)/(0) = -infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 2^-) (x+3)/(x-2)$
    $
      lim_(x -> 2^-) (2+3)/(2-2)
    $
    $
      lim_(x -> 2^-) (5)/(0) = -infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 1^+) (x^2+2)/(x-1)$
    $
      lim_(x -> 1^+) (1^2+2)/(1-1)
    $
    $
      lim_(x -> 1^+) 3/0 = +infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> -3^+) sqrt(x+5)/(x+3)$
    $
      lim_(x -> -3^+) sqrt((-3)+5)/((-3)+3)
    $
    $
      lim_(x -> -3^+) sqrt(2)/(0) = +infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 2^+) 3^x/(2-x)$
    $
      lim_(x -> 2^+) 3^2/(2-2)
    $
    $
      lim_(x -> 2^+) 9/0 = +infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 3^-) 5/(x^2-9)$
    $
      lim_(x -> 3^-) 5/(3^2-9)
    $
    $
      lim_(x -> 3^-) 5/(9-9) = -infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 3^-) (x-5)/(x^2-9)$
    $
      lim_(x -> 3^-) (3-5)/(3^2-9)
    $
    $
      lim_(x -> 3^-) (-2)/(0) = +infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 2^+) (x^2-5x+2)/(x^2-4x+4)$
    $
      lim_(x -> 2^+) (2^2-(5 dot 2)+2)/(2^2-(4 dot 2)+4)
    $
    $
      lim_(x -> 2^+) (4-10+2)/(4-8+4)
    $
    $
      lim_(x -> 2^+) -4/0 = -infinity
    $
    #counter(math.equation).update(0)

    #colbreak()

    == $lim_(x -> 0^+) (2-3x)/sqrt(x)$
    $
      lim_(x -> 0^+) (2-0)/sqrt(0) = +infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 3^-) (5-2^x)/(2x-6)$
    $
      lim_(x -> 3^-) (5-2^3)/((2 dot 3)-6)
    $
    $
      lim_(x -> 3^-) (5-8)/(6-6) = -3/0 = +infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> 0^+) (x-4)/(sin x)$
    $
      lim_(x -> 0^+) (0-4)/(sin 0) = -4/0 = -infinity
    $
    #counter(math.equation).update(0)

    == $lim_(x -> pi^-) 10/(tan x)$
    $
      lim_(x -> pi^-) 10/(tan pi) = 10/0 = -infinity
    $
    #counter(math.equation).update(0)
  ]
])

= Calcule os seguintes limites:

#block(align(left)[
  #set math.equation(numbering: "i)", number-align: left)

  == $lim_(x -> -infinity) 1/(5x+6)$
  $
    lim_(x -> -infinity) cancel(1/x)/(5cancel(x/x)+cancel(6/x))
  $
  $
    lim_(x -> -infinity) 0/5 = 0
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (3 - (5/(x^2+1)))$
  $
    lim_(x -> +infinity) (3 - (5/x^2/(x^2/x^2+1/x^2)))
  $
  $
    lim_(x -> +infinity) (3 - (cancel(5/x^2)/(cancel(x^2/x^2)+cancel(1/x^2)))) = 3 - 0 = 3
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (2sqrt(x) + x^2)/(2x^2 - 1)$
  $
    lim_(x -> +infinity) ((2sqrt(x))/x^2 + x^2/x^2)/((2x^2)/x^2 - 1/x^2)
  $
  $
    lim_(x -> +infinity) (cancel(2sqrt(x)/abs(x)) + cancel(x^2/x^2))/(2cancel(x^2/x^2) - cancel(1/x^2))
  $
  $
    lim_(x -> +infinity) (0 + 1)/(2 - 0) = 1/2
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) sqrt(5-x)$
  $
    lim_(x -> -infinity) sqrt(5-x)
  $
  $
    lim_(x -> -infinity) sqrt(5-(-infinity)) = sqrt(+infinity) = +infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) sqrt(5x^2 - 2)/(x+3)$
  $
    lim_(x -> +infinity) sqrt(5x^2/abs(x)^2 - 2/abs(x^2))/(x/x+3/x)
  $
  $
    lim_(x -> +infinity) sqrt(5cancel(x^2/abs(x)^2) - cancel(2/abs(x^2)))/(cancel(x/x)+cancel(3/x))
  $
  $
    lim_(x -> +infinity) sqrt(5 - 0)/(1+0) = sqrt(5)
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) sqrt(5x^2 - 2)/(x+3)$
  $
    lim_(x -> -infinity) sqrt(5x^2/abs(x)^2 - 2/abs(x^2))/(x/x+3/x)
  $
  $
    lim_(x -> -infinity) sqrt(5cancel(x^2/abs(x)^2) - cancel(2/abs(x^2)))/(cancel(x/x)+cancel(3/x))
  $
  $
    lim_(x -> -infinity) sqrt(5 - 0)/(1+0) = -sqrt(5)
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) x^4$
  $
    lim_(x -> -infinity) x^4 = (-infinity)^4 = +infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^6+2x)$
  $
    lim_(x -> -infinity) (x^6+2x) = +infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (x^7+2x^4-3x^3)$
  $
    lim_(x -> +infinity) (x^7+2x^4-3x^3) = +infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^3-7x^4-2x^5)$
  $
    lim_(x -> -infinity) (x^3-7x^4-2x^5) = +infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^2-5x+6)/(x+3)$
  $
    lim_(x -> -infinity) (x^2/x-5x/x+6/x)/(x/x+3/x)
  $
  $
    lim_(x -> -infinity) (cancel(x^2/x)-cancel(5x/x)+cancel(6/x))/(cancel(x/x)+cancel(3/x))
  $
  $
    lim_(x -> -infinity) x-5 = -infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^2-4x+2)/(2x^2-7x+1)$
  $
    lim_(x -> -infinity) (x^2/x^2-4x/x^2+2/x^2)/(2x^2/x^2-7x/x^2+1/x^2)
  $
  $
    lim_(x -> -infinity) (cancel(x^2/x^2)-cancel(4x/x^2)+cancel(2/x^2))/(cancel(2x^2/x^2)-cancel(7x/x^2)+cancel(1/x^2))
  $
  $
    lim_(x -> -infinity) (1-0+0)/(2-0+0) = 1/2
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^4+x^3-3)/(10-3x)$
  $
    lim_(x -> -infinity) (cancel(x^4/x)+cancel(x^3/x)-cancel(3/x))/(cancel(10/x)-cancel(3x/x))
  $
  $
    lim_(x -> -infinity) (x^3+x^2-0)/(0-3)
  $
  $
    lim_(x -> -infinity) (x^3+x^2)/(-3) = +infinity
  $
  #counter(math.equation).update(0)
])

= Determina o valor de $m$ para que a função abaixo seja contínua em $x = 2$

$
  f(x) = cases(
    12-x^3 ", se" x < 2,
    m ", se" x = 2,
    (x^2-4)/(x-2) ", se" x>2
  )
$

#block()[
  #set math.equation(numbering: "i)", number-align: left)
  $
    lim_(x -> 2^-) f(x) = lim_(x -> 2^+) f(x) = f(2)
  $

  $
    lim_(x -> 2^-) (12 - x^3) = 12 - 2^3 = 12 - 8 = 4
  $

  $
    lim_(x -> 2^+) (x^2 - 4)/(x - 2)
  $
  $
    lim_(x -> 2^+) ((x - 2)(x + 2))/(x - 2)
  $
  $
    lim_(x -> 2^+) (cancel(x - 2)(x + 2))/cancel(x - 2) = 2 + 2 = 4
  $

  $
    f(2) = m
  $

  $
    m = 4
  $
]

= Calcule os limites indicados:

#block(align(left)[
  #set math.equation(numbering: "i)", number-align: left)

  == $lim_(x -> 3) (x^2 - 9)/(x - 3)$
  $
    lim_(x -> 3) ((x - 3)(x + 3))/(x - 3)
  $
  $
    lim_(x -> 3) (cancel(x - 3)(x + 3))/cancel(x - 3) = 3 + 3 = 6
  $
  #counter(math.equation).update(0)

  == $lim_(x -> 4) (x^2 - 16)/(x^2 - 8x + 16)$
  $
    lim_(x -> 4) ((x - 4)(x + 4))/(x - 4)^2
  $
  $
    lim_(x -> 4) (cancel(x - 4)(x + 4))/(cancel((x - 4))(x - 4))
  $
  $
    lim_(x -> 4) (x + 4)/(x - 4) = 8/0 = exists.not
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^2 - 6x + 9)/(x - 3)$
  $
    lim_(x -> -infinity) (x - 3)^2/(x - 3)
  $
  $
    lim_(x -> -infinity) (x - 3) = -infinity - 3 = -infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (sqrt(x - 2) - sqrt(x^2 + 10))$
  $
    lim_(x -> +infinity) (sqrt(x) - x) = -infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (3/(x^2 + x) (sqrt(x) - 5))$
  $
    lim_(x -> +infinity) (3sqrt(x) - 15)/(x^2 + x)
  $
  $
    lim_(x -> +infinity) (3sqrt(x)/x^2 - 15/x^2)/(x^2/x^2 + x/x^2) = (0 - 0)/(1 + 0) = 0
  $
  #counter(math.equation).update(0)

  == $lim_(x -> 2) (sqrt(x) - sqrt(2))/(x - 2)$
  $
    lim_(x -> 2) ((sqrt(x) - sqrt(2))(sqrt(x) + sqrt(2)))/((x - 2)(sqrt(x) + sqrt(2)))
  $
  $
    lim_(x -> 2) (x - 2)/((x - 2)(sqrt(x) + sqrt(2)))
  $
  $
    lim_(x -> 2) cancel(x - 2)/(cancel(x - 2)(sqrt(x) + sqrt(2)))
  $
  $
    lim_(x -> 2) 1/(sqrt(x) + sqrt(2)) = 1/(sqrt(2) + sqrt(2)) = 1/(2sqrt(2)) = sqrt(2)/4
  $
  #counter(math.equation).update(0)

  == $lim_(x -> 3^+) (2x - 6)/(x^2 - 6x + 9)$
  $
    lim_(x -> 3^+) (2(x - 3))/(x - 3)^2
  $
  $
    lim_(x -> 3^+) (2cancel((x - 3)))/(cancel((x - 3))(x - 3))
  $
  $
    lim_(x -> 3^+) 2/(x - 3) = 2/0^+ = +infinity
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (x^2 - 9x + 20)/(x^3 - 5)$
  $
    lim_(x -> +infinity) (x^2/x^3 - 9x/x^3 + 20/x^3)/(x^3/x^3 - 5/x^3)
  $
  $
    lim_(x -> +infinity) (1/x - 9/x^2 + 20/x^3)/(1 - 5/x^3) = (0 - 0 + 0)/(1 - 0) = 0
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (1 + sqrt(x))/(1 - sqrt(x))$
  $
    lim_(x -> +infinity) (1/sqrt(x) + sqrt(x)/sqrt(x))/(1/sqrt(x) - sqrt(x)/sqrt(x))
  $
  $
    lim_(x -> +infinity) (1/sqrt(x) + 1)/(1/sqrt(x) - 1) = (0 + 1)/(0 - 1) = -1
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) sqrt(1 + 4x^2)/(4 + x)$
  $
    lim_(x -> +infinity) sqrt(1/x^2 + (4x^2)/x^2)/(4/x + x/x)
  $
  $
    lim_(x -> +infinity) sqrt(1/x^2 + 4)/(4/x + 1) = sqrt(0 + 4)/(0 + 1) = 2/1 = 2
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) x/sqrt(x^2 + 1)$
  $
    lim_(x -> -infinity) (x/abs(x))/(sqrt(x^2 + 1)/sqrt(x^2))
  $
  $
    lim_(x -> -infinity) (-1)/sqrt(x^2/x^2 + 1/x^2)
  $
  $
    lim_(x -> -infinity) (-1)/sqrt(1 + 0) = -1/1 = -1
  $
  #counter(math.equation).update(0)

  == $lim_(x -> 11) (11 - x)/(x^2 - 121)$
  $
    lim_(x -> 11) (-(x - 11))/((x - 11)(x + 11))
  $
  $
    lim_(x -> 11) (-cancel((x - 11)))/(cancel((x - 11))(x + 11))
  $
  $
    lim_(x -> 11) (-1)/(x + 11) = (-1)/(11 + 11) = -1/22
  $
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (x + 6) 1/sqrt(4x^2 + 3)$
  $
    lim_(x -> +infinity) (x + 6)/sqrt(4x^2 + 3)
  $
  $
    lim_(x -> +infinity) (x/x + 6/x)/sqrt((4x^2)/x^2 + 3/x^2)
  $
  $
    lim_(x -> +infinity) (1 + 6/x)/sqrt(4 + 3/x^2) = (1 + 0)/sqrt(4 + 0) = 1/2
  $
  #counter(math.equation).update(0)

  == $lim_(x -> -1) (x^3 + 4x^2 + 5x + 2)/(x^2 + 2x + 1)$
  $
    lim_(x -> -1) ((x + 1)^2 (x + 2))/(x + 1)^2
  $
  $
    lim_(x -> -1) (cancel((x + 1)^2) (x + 2))/cancel((x + 1)^2)
  $
  $
    lim_(x -> -1) (x + 2) = -1 + 2 = 1
  $
  #counter(math.equation).update(0)
])


= Dado que, para todo $x$ tem-se,

$
  |g(x) - 2| <= 3(x - 1)^2 #space "encontre" #space lim_(x -> 1) g(x).
$
#block()[
  #set math.equation(numbering: "i)", number-align: left)

  $
    -3(x - 1)^2 <= g(x) - 2 <= 3(x - 1)^2
  $

  $
    2 - 3(x - 1)^2 <= g(x) <= 2 + 3(x - 1)^2
  $

  $
    lim_(x -> 1) (2 - 3(x - 1)^2) <= lim_(x -> 1) g(x) <= lim_(x -> 1) (2 + 3(x - 1)^2)
  $

  $
    2 - 3(1 - 1)^2 <= lim_(x -> 1) g(x) <= 2 + 3(1 - 1)^2
  $

  $
    2 - 0 <= lim_(x -> 1) g(x) <= 2 + 0
  $

  $
    2 <= lim_(x -> 1) g(x) <= 2
  $

  $
    lim_(x -> 1) g(x) = 2
  $
]

= Utilizando os limites fundamentais, calcule:

#align(block(breakable: false)[
  #columns(2, gutter: 3em)[
    == $lim_(x -> 0) (sin 3x)/x$
    == $lim_(x -> 0) (sin x)/(2x)$
    == $lim_(x -> 0) (sin pi x)/(sin 3x)$
    == $lim_(x -> 0) (cos x - 1)/x$
    == $lim_(x -> 0) x^2/(cos x - 1)$
    == $lim_(x -> 0) (tan x)/x$

    #colbreak()

    == $lim_(x -> 0) x/(sin x)$
    == $lim_(x -> +infinity) (1 + 1/x)^(2x)$
    == $lim_(x -> 0) (1 + x)^(1/(5x))$
    == $lim_(x -> +infinity) (1 + 1/x)^(x+3)$
    == $lim_(x -> 0) (2e^x - 2)/x$
    == $lim_(x -> 0) (e^(3x) - 1)/(e^(-x) - 1)$
  ]
])
