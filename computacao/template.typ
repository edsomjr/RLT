#let to-string(content) = {
  if content.has("text") {
    content.text
  } else if content.has("children") {
    content.children.map(to-string).join("")
  } else if content.has("body") {
    to-string(content.body)
  } else if content == [ ] {
    " "
  }
}
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

#let nushell(content) = [
	#solution[nushell][
		#raw(to-string(content).replace(regex("^"), "#!/usr/bin/env nu\n\n"), lang: "bash")
	]
]

#let bash(content) = [
	#solution[nushell][
		#raw(to-string(content).replace(regex("^"), "#!/usr/bin/env bash\n\n"), lang: "bash")
	]
]

