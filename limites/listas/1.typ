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

#columns(2, align(left)[
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

#columns(2, align(left)[
  == $lim_(x -> -infinity) 1/(5x+6)$
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (3 - (5/(x^2+1)))$
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (2sqrt(x) + x^2)/(2x^2 - 1)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) sqrt(5-x)$
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) sqrt(5x^2 - 2)/(x+3)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) sqrt(5x^2 - 2)/(x+3)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^4)$
  #counter(math.equation).update(0)

  #colbreak()

  == $lim_(x -> -infinity) (x^6+2x)$
  #counter(math.equation).update(0)

  == $lim_(x -> +infinity) (x^7+2x^4-3x^3)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^3-7x^4-2x^5)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^2-5x+6)/(x+3)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^2-4x+2)/(2x^2-7x+1)$
  #counter(math.equation).update(0)

  == $lim_(x -> -infinity) (x^4+x^3-3)/(10-3x)$
  #counter(math.equation).update(0)
])
