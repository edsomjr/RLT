#let solution(shell, content) = [
	#block(
		stroke: (paint: rgb(200, 203, 205), thickness: 1pt, dash: "dashed"),
		fill: rgb(240, 243, 245),
		inset: 12pt,
		width: 100%,
		[
			#place(
				top + right,
				smallcaps(text(rgb(180, 183, 185))[#shell])
			)
			#content
		]
	)
]

= Exercícios

Os exercícios abaixo devem ser solucionados com línguagens Shell, como `bash`, `nushell`, `zsh`, `fish`, etc.

Na décima página, um exercício é proposto -- _e erronamente solucionado_ -- com o intuito de entender melhor os filtros em Shell scripting:

1. Suponha que exista um arquivo chamado `hotel.txt` com 100 linhas de dados. Imprima começando da linha 20 à linha 30 e armazene este resultado em um novo arquivo `hlist`.

#solution[bash][
```bash
$ tail +20 < hotel.txt | head -10 > hlist
```
]

#solution[nushell][
```bash
$ open hotel.txt | lines | skip 20 | first 10 | save hlist
```
]

#line(length: 100%)

Os exercícios a seguir são da página 44 em diante, e devem ser feitos escrevendo um script shell.

2. Adicione dois números, que são recebeidos pela linha de comando como argumentos, e se eses dois números não são dados, mostre um erro e seu uso correto:

#solution[nushell][
```bash
#!/usr/bin/env nu

# Add two numbers and return its sum.
def main [
	a: int # First number to add.
	b: int # Second number to add.
]: nothing -> int {
	$a + $b
}
```
]

