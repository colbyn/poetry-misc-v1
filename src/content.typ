// src/content.typ

#import "@preview/droplet:0.3.1": dropcap as raw-dropcap



#let illum-rubric = rgb("#ff6868")
#let illum-gold = rgb("#ff6868")

#let incipit-rest(body) = text(
  font: "Hoefler Text",
  size: 11.6pt,
  tracking: 0.10em,
  fill: illum-gold,
  smallcaps(body),
)

#let manuscript-dropword(
  initial,
  // rest,
  body,
  height: 3,
  gap: 1em,
) = raw-dropcap(
  [
    #box(stroke: 0.5pt + red, inset: (x: 12pt, y: 4pt), radius: 3pt)[
      #initial
    ]
  ],
  [
    #body
  ],
  height: height,
  gap: gap,
  justify: false,
  transform: letter => text(
    font: "Hoefler Text",
    fill: illum-rubric,
    stroke: illum-gold + 0.2pt,
    size: 4em,
  )[
    #letter
  ],
)


// #v(12pt)

#let ink = luma(100%)
#let dim = luma(72%)
#let soft = luma(86%)
#let rule = luma(38%)

#let roman = "New Computer Modern"
#let display = "New Computer Modern"

#let poem-measure = 4.85in
#let prose-measure = 5.15in

#let byline(body) = block(
  above: -0.25em,
  below: 1.6em,
)[
  #align(center)[
    #text(
      font: roman,
      size: 12pt,
      fill: dim,
      style: "italic",
      body,
    )
  ]
]

#let divider() = block(
  width: 100%,
  above: 1.4em,
  below: 1.65em,
)[
  #align(center)[
    #block(width: 100%)[
      #line(length: 100%, stroke: 0.45pt + rule)
    ]
  ]
]

#let turn(body) = block(
  above: 1.45em,
  below: 1.35em,
)[
  #align(center)[
    #text(
      font: roman,
      size: 7.4pt,
      tracking: 0.16em,
      weight: "semibold",
      fill: soft,
      smallcaps(body),
    )
  ]
]

#let poem(body, width: poem-measure, dir: center) = block(
  width: 100%,
)[
  #align(dir)[
    #block(
      width: width,
      above: 0.1em,
      below: 2.15em,
    )[
      #set align(left)

      #set text(
        font: roman,
        size: 10.6pt,
        fill: ink,
      )

      #set par(
        justify: false,
        leading: 0.72em,
        spacing: 0pt,
        first-line-indent: 0pt,
      )

      #body
    ]
  ]
]

#let prose(body, width: prose-measure) = align(center)[
  #block(
    width: width,
    above: 0.15em,
    below: 2.15em,
  )[
    #set text(
      font: roman,
      size: 10.45pt,
      fill: ink,
    )

    #set par(
      justify: true,
      leading: 0.78em,
      spacing: 0.9em,
      first-line-indent: 0pt,
    )

    #body
  ]
]

#let work(title, note: none, body, break-page: true) = [
  #if break-page {
    pagebreak()
  }
  #block(
    width: 100%,
    above: 0.4em,
    below: 1.9em,
  )[
    #heading(level: 2)[#title]

    #if note != none {
      byline(note)
    }

    #body
  ]
]

#work(
  [If We Must Die],
  note: [Claude McKay],
)[
  #poem(width: 4.62in)[
    If we must die, let it not be like hogs \
    Hunted and penned in an inglorious spot, \
    While round us bark the mad and hungry dogs, \
    Making their mock at our accursèd lot. \
    If we must die, O let us nobly die, \
    So that our precious blood may not be shed \
    In vain; then even the monsters we defy \
    Shall be constrained to honor us though dead! \
    O kinsmen! we must meet the common foe! \
    Though far outnumbered let us show us brave, \
    And for their thousand blows deal one death-blow! \
    What though before us lies the open grave? \
    Like men we'll face the murderous, cowardly pack, \
    Pressed to the wall, dying, but fighting back!
  ]
]

#divider()

#work(
  [All of Us or None],
  note: [Bertolt Brecht],
)[
  #poem(width: 5.08in)[
    Slave, who is it that shall free you? \
    Those in deepest darkness lying. \
    Comrade, only these can see you \
    Only they can hear you crying. \
    Comrade, only slaves can free you. \
    Everything or nothing. All of us or none. \
    One alone his lot can't better. \
    Either gun or fetter. \
    Everything or nothing. All of us or none.

    #v(1.05em)

    You who hunger, who shall feed you? \
    If it's bread you would be carving, \
    Come to us, we too are starving. \
    Come to us and let us lead you. \
    Only hungry men can feed you. \
    Everything or nothing. All of us or none. \
    One alone his lot can't better. \
    Either gun or fetter. \
    Everything or nothing. All of us or none.

    #v(1.05em)

    Beaten man, who shall avenge you? \
    You, on whom the blows are falling, \
    Hear your wounded brothers calling. \
    Weakness gives us strength to lend you. \
    Come to us, we shall avenge you. \
    Everything or nothing. All of us or none. \
    One alone his lot can't better. \
    Either gun or fetter. \
    Everything or nothing. All of us or none.

    #v(1.05em)

    Who, oh wretched one, shall dare it? \
    He who can no longer bear it. \
    Counts the blows that arm his spirit. \
    Taught the time by need and sorrow, \
    Strikes today and not tomorrow. \
    Everything or nothing. All of us or none. \
    One alone his lot can't better. \
    Either gun or fetter. \
    Everything or nothing. All of us or none.
  ]
]

#divider()

#work(
  [Entry 1],
  note: [Blank verse — unrhymed iambic pentameter],
)[
  #poem[
    As leaves which autumn loosens from the bough \
    Fall unremarked to earth, and where they fall \
    Are trodden under by the heedless foot \
    Of all that passes—neither mourned nor sought— \
    So fares the man estranged from fellowship, \
    Whom neither strength of will, nor purpose long \
    Sustained against despair, can long preserve \
    Against the slow attrition of a world \
    That knows him not, nor pauses in its course \
    To reckon what it treads upon.

    #turn[Therefore]

    Awake to this: that no man stands alone \
    And prospers long; that Necessity, \
    More urgent than affection, more severe \
    Than love's persuasion, drives us to our kind. \
    One vigil kept while others sleep in trust; \
    One burden shared that none alone could bear; \
    One hand extended to the fallen—swift, \
    Before the world, which will not pause for him, \
    Steps past him there. \
    For divided, we are nothing. Joined, we hold \
    Against the vast incuriosity of things.
  ]
]

#divider()

#work(
  [Entry 2],
  note: [Elevated prose],
)[
  #prose[
    Heaven and Earth are not benevolent. They do not concern themselves with the flourishing of isolated men, but pass over them as wind over dry grass. For this world preserves nothing merely because it suffers, hopes, or loves its own continuance. It grinds down the solitary and scatters those who stand apart; and every man left unto himself is at last overcome by hunger, toil, fear, age, or despair.

    #turn[Therefore]

    We must join together, not from sentiment, but from necessity.\
    For what one man cannot endure alone, many together may withstand.\
    One keeps watch while another sleeps;\
    one gathers bread while another builds shelter;\
    one carries the burden when another falters beneath it.\
    Thus do men oppose the indifference of the world:\
    not by conquering it, but by refusing to face it alone.

    #v(1.05em)

    For divided, we are consumed. Together, we endure.
  ]
]

