
#import "@preview/rubber-article:0.5.0": *
#import "../src/lib.typ": *

// === Settings ===

// Language of your thesis (either "de" or "en").
#let language = "de"

// Title of your thesis
#let title = "What are ducks?"

// LaTeX like article style
#show: article.with(
  cols: none,
  eq-chapterwise: true,
  eq-numbering: "(1.1)",
  header-display: true,
  header-title: title,
  lang: language,
  page-margins: 1.75in,
  page-paper: "a4",
)

// Cover of your thesis
#cs-thesis-cover()


// === Abstracts in german and english ===
// Your need a summary in german and english, each one page.

#heading(numbering: none, outlined: false)[Zusammenfassung]

#lorem(300)

#pagebreak()

#heading(numbering: none, outlined: false)[Abstract]

#lorem(300)

#pagebreak()


// === Outline ===

// Page numbering is disabled by cs-thesis-cover and needs to be reenabled.
#set page(numbering: "1")

#outline()

#pagebreak()

// === Content ===

= Chapters of the thesis

#lorem(23)

== Example Subchapter

#quote(attribution: <test>)[Ducks are very sweet.]

#pagebreak()

// === Bibliography ===

#bibliography("bibliography.yaml", full: true)
