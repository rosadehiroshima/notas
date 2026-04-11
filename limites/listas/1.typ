#set text(font: "New Computer Modern")

#set heading(numbering: (..nums) => {
  let niveis = nums.pos()

  if niveis.len() == 1 {
    numbering("1.", niveis.last())
  } else if niveis.len() == 2 {
    numbering("a.", niveis.last())
  }
})
#show heading: set block(above: 1em, below: 2em)
#show heading.where(level: 1): set text(size: 11pt)

#set math.cancel(stroke: red)

// #set page(fill: black)
// #set text(fill: white)
// #set table(stroke: white)

#let lim = $limits(lim)$
#let space = "    "

= Use o gráfico dado da $f$ para determinar cada expressão, se ela existir. Se não existir, explique o por quê?

#block(align(left)[
  == $lim_(x -> 0^-) f(x) = 2$
  == $lim_(x -> 0^+) f(x) = 2$
  == $lim_(x -> 0) f(x) = 2$
  == $f(0) = 2$
  == $lim_(x -> 2^-) f(x) = 2$
  == $lim_(x -> 2^+) f(x) = -1$
  == $lim_(x -> 2) f(x) = exists.not$
  == $f(2) = -1$
  == $lim_(x -> 5^-) f(x) = 2$
  == $lim_(x -> 5^+) f(x) = -2$
  == $lim_(x -> 5) f(x) = exists.not$
  == $f(5) = 2$
  == $lim_(x -> 7^-) f(x) = 2$
  == $lim_(x -> 7^+) f(x) = 2$
  == $f(7) = exists.not$
])

= Determine os limites abaixo:
#align(block(breakable: false)[
  // #set par(leading: )
  #columns(2)[
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
    lim_(x -> -infinity) sqrt(5x^2/abs(x)^2 - 2/abs(x)^2)/(x/x+3/x)
  $

  $
    lim_(x -> -infinity) sqrt(5cancel(x^2/abs(x)^2) - cancel(2/abs(x)^2))/(cancel(x/x)+cancel(3/x))
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
  f(x) = cases(12-x^3 ", se" x < 2, m ", se" x = 2, (x^2-4)/(x-2) ", se" x>2)
$
