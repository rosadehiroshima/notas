#set page(fill: black)
#set text(fill: white)
#set table(stroke: white)

= Limites

Considerando a função $y = x^2$, ao aproximar o valor de $x$ para um número, por exemplo 3, podemos saber o valor que $y$ se aproxima?

Usando valores de $x$ e $y$, montamos a seguinte tabela, para melhor entendimento da pergunta:
#align(center)[
#table(
  columns: (auto,auto),
  align: center,
  
  inset: 10pt,
  table.header([$x$],[$y$]),
  ..for i in range(1,6) {
    let x = 3 - calc.pow(10, -1*i)
    ([#x],[#(x*x)])
  }
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
  $limits(lim)_(x->a)f(x) = L$
]
]

Temos os valores de $x$ suficientemente próximos de 3, mas nunca iguais a 3, a mesma coisa para $y$.

== Limites laterais

Posta a base para entendimento de limites, podemos ir mais a fundo nas suas especificidades; $x$ pode se aproximar de $a$ de fuas maneiras diferentes, sendo elas:

#align(center)[
  Esquerda: $x -> a^-$

  Direita: $x -> a^+$
]

