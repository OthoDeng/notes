#import "@preview/shiroa:0.1.2": *

#show: book


#book-meta( // put metadata of your book like book.toml of mdbook
  title: "Desperado Waltz",
  description: "Course notes",
  repository: "https://github.com/OthoDeng",
  authors: ("Otto Deng", "Ohto Ai"),
  language: "zh",

  summary: [ // this field works like summary.md of mdbook
    #prefix-chapter("intro.typ")[Introduction]


    = 2024 Fall
    - #chapter("2024fall/流体力学上.typ")[Fluid Dynamics I]
    - #chapter("2024fall/流体力学下.typ")[Fluid Dynamics II]
    - #chapter("2024fall/大气化学.typ")[Atmospheric Chemistry]
    - #chapter("2024fall/大气物理.typ")[Atmospheric Physics]
    - #chapter("2024fall/数理方程.typ")[Equations of Mathematic Physics]
    - #chapter("2024fall/热力学.typ")[Thermodynamics]

    = 2025 Spring
    - #chapter("2025spring/天气学原理.typ")[Principles of Meteorology]
    - #chapter("2025spring/计算方法.typ")[Computational Methods]
  ],
)


// re-export page template
#import "templates/page.typ": project
#let book-page = project

#build-meta(dest-dir: "../../notes")

#get-book-meta()

