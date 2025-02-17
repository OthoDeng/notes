#import "@preview/shiroa:0.1.2": *

#show: book


#book-meta( // put metadata of your book like book.toml of mdbook
  title: "Notes",
  description: "Course notes",
  repository: "https://ottoqwq.me",
  authors: ("Otto Deng", "Ohto Ai"),
  language: "en",
  summary: [ // this field works like summary.md of mdbook
    #prefix-chapter("intro.typ")[Introduction]

    = 2024 秋季
    - #chapter("2024fall/流体力学.typ")[流体力学]
    - #chapter("2024fall/大气化学.typ")[大气化学]
    - #chapter("2024fall/大气物理.typ")[大气物理]
    - #chapter("2024fall/数理方程.typ")[数理方程]
    - #chapter("2024fall/热力学.typ")[热力学]

    = 2025 春季
  ],
)


// re-export page template
#import "templates/page.typ": project
#let book-page = project

#build-meta(dest-dir: "../dist")

#get-book-meta()