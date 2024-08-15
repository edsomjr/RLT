## Problem on Algorithms 

Ian Parberry & William Gasarch

Visto a [licença de direitos autorais](http://hercule.csci.unt.edu/ian/books/free/license.html): a pedido dos autores, o PDF não será disponibilizado diretamente aqui. Porém, por conta do website estar fora do ar, saiba que o livro pode ser encontrado publicamente com uma pesquisa simples na internet.

Com 668 problemas e 35 exemplos trabalhados, o livro serve como suplmento ao providenciar uma coleção de problemas práticos de construção, análise e verificação de algoritimos. O livro foca nas áreas importantes de construção de algoritimos e materiais fundamentais: técnicas de algoritimos; estruturas de dados avançadas e NP-completo; e problemas miscelâneos. Algoritimos são expressados em pseudo-código parecido com Pascal com figuras, diagramas, dicas, soluções, e comentários.

### Soluções para os exercícios

## Capítulo 2: Indução Matemática

### 2.1 Somatórios

7. Para $n = 1$ temos que

$$
\sum_{i = 1}^1 \frac{1}{2^i} = \frac{1}{2} = 1 - \frac{1}{2^1},
$$

de modo que a afirmativa é verdadeira neste caso. Suponha que a afirmativa é verdadeira para um inteiro positivo $m$. Para $m + 1$ temos que

$$
\begin{align}
	\sum_{i = 1}^{m + 1} \frac{1}{2^i} &= \left( \sum_{i = 1}^{m} \frac{1}{2^i} \right) + \frac{1}{2^{m + 1}} \\
	&= \left( 1 - \frac{1}{2^m}\right) + \frac{1}{2^{m + 1}} \\
	&= 1 + \left( \frac{1}{2^{m + 1}} - \frac{1}{2^m}\right)  \\
	&= 1 + \left( \frac{1}{2^{m + 1}} - \frac{1}{2^m}\right)  \\
	&= 1 - \frac{1}{2^{m + 1}} \\
\end{align}
$$

Portanto, a afirmativa é verdadeira para todo inteiro $n\geq 1$.

$$
\begin{flalign}
&&\square
\end{flalign}
$$

