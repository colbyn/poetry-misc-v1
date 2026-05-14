// Dark color scheme — dark background, white foreground

#set document(
  title: "Galvanizing Lines",
  author: "Colbyn Wadman",
)

#set page(
  paper: "us-letter",
  margin: (
    top: 1in,
    bottom: 1in,
    left: 1in,
    right: 1in,
  ),
  fill: rgb("#222222"),
)

#set text(
  fill: rgb("#ffffff"),
)

// ------------------------------------------------------------
// Heading system — left aligned, literary/editorial
// ------------------------------------------------------------

#let heading-ink = luma(98%)
#let heading-soft = luma(88%)
#let heading-muted = luma(72%)
#let heading-rule = luma(38%)

#let heading-measure = 5.35in

#show heading: set block(breakable: false)

#show heading.where(level: 1): body => block(
  width: 100%,
  above: 0.15em,
  below: 2.35em,
)[
  #block(width: heading-measure)[
    #text(
      size: 31pt,
      tracking: 0.14em,
      weight: "semibold",
      fill: heading-ink,
      smallcaps(body),
    )
  ]

  #v(0.5em)

  #block(width: 100%)[
    #line(length: 100%, stroke: 0.6pt + heading-rule)
  ]
]

#show heading.where(level: 2): body => block(
  width: 100%,
  above: 2.15em,
  below: 0.35em,
)[
  #block(width: heading-measure)[
    #text(
      size: 23pt,
      fill: heading-ink,
      tracking: 0.055em,
      weight: "regular",
      body,
    )
  ]
]

#show heading.where(level: 3): body => block(
  width: 100%,
  above: 1.55em,
  below: 0.45em,
)[
  #block(width: heading-measure)[
    #text(
      size: 13pt,
      fill: heading-soft,
      tracking: 0.13em,
      weight: "semibold",
      smallcaps(body),
    )
  ]
]

#show heading.where(level: 4): body => block(
  width: 100%,
  above: 1.1em,
  below: 0.35em,
)[
  #block(width: heading-measure)[
    #text(
      size: 10pt,
      fill: heading-muted,
      tracking: 0.11em,
      weight: "semibold",
      smallcaps(body),
    )
  ]
]

// MAIN PAGE

#align(center)[
  #block(width: 100%)[
    #outline()
  ]
]

#align(center + horizon)[
  = Galvanizing Lines
]

// Don't pollute global namespace

#{ include "content.typ" }

