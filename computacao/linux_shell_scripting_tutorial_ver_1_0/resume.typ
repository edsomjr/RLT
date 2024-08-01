#let solution(shell, content) = [
	#block(
		stroke: (paint: rgb(200, 203, 205), thickness: 1pt, dash: "dashed"),
		fill: rgb(240, 243, 245),
		inset: 12pt,
		width: 100%,
		[ #content ]
	)
]

= Exercícios

Os exercícios abaixo devem ser solucionados com línguagens Shell, como `bash`, `nushell`, `zsh`, `fish`, etc.

Na décima página, um exercício é proposto -- _e erronamente solucionado_ -- com o intuito de entender melhor os filtros em Shell scripting:

1. Suponha que exista um arquivo chamado `hotel.txt` com 100 linhas de dados. Imprima da linha 20 dele à linha 30 e armazene este resultado em um novo arquivo `hlist`.

#solution[dwadw][
```bash
$ tail +20 < hotel.txt | head -10 > hlist
```
]
