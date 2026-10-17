//#let sans-font = "Inter"
//#let serif-font = "libertinus serif"
#let sans-font = "FreeSans"
#let serif-font = "libertinus serif"

#let feds-blue = rgb("#5171b7")
#let ebon-gray = rgb("#b4b4b4")
#let rygo-red = rgb("#cc221b")
#let santi-green = rgb("#85c88f")

#let stat(dict, key, pre:"", suf: "") = {
  if type(dict) == arguments {
    stat(dict.named(), key, pre:pre, suf:suf)
  }
  else if key in dict [#pre#dict.at(key)#suf]
}

#set rect(width: 100%, inset: 10pt, stroke: 1.5pt)

#let drekfort-watermark = {
  set align(center)
  set par(justify: false)
  text(size: 9pt, font: sans-font)[FEDERAL STATES-ARMY - DREKFORT M.D.C.]
}

#let infobox(name, pts, designation, taccom: false, tags: (), weapons: (), notes: none, ..unit) = [#rect(width: 100%)[
  // First block: Name & designaiton
  #set align(center)
  #set text(font: sans-font)
  #if taccom {
    [TACCOM \ ]
  }
  *#name -- #pts pts* \
  #designation \ 
  #align(center, line(length:90%))
  
  // Second block: Stats & tags
  #set text(font: serif-font)
  #set par(justify: false, first-line-indent: 0pt)
  #(unit.type, stat(pre:"H", unit, "heights"), stat(pre:"S", unit, "strength", suf:"\""), stat(pre:"M", unit, "movement", suf:"\""), stat(pre:"Q", unit, "quality"), stat(pre:"T", unit, "toughness"), stat(pre:"C", unit, "command")).filter(x => x != none).join(", ") \
  #if (tags.len() > 0) {
    tags.map(x => emph(x)).join(", ")
    linebreak()
  }
  #align(center, line(length:90%))

  // Thrid block: Notes
  #if (notes != none) {
    set par(justify: true)
    emph(notes)
    align(center, line(length:90%))
  }
  
  // Fourth block: Weapons
  #set align(left)
  #set par(justify: false, hanging-indent: 40pt)
  #for weapon in weapons {
    strong(weapon.name)
    linebreak()
    let weapon-stats = (weapon.at("target", default: none), stat(pre:"R", weapon, "range", suf:"\""), stat(pre:"A", weapon, "accuracy"), stat(pre:"S", weapon, "strength"), stat(pre:"D", weapon, "dice"))
    let weapon-infos = (
      ..weapon-stats,
      if ("tags" in weapon and weapon.tags.len() > 0) {
        weapon.tags.map(x => emph(x)).join(", ")
      },
      if ("notes" in weapon) {
        emph(weapon.notes)
      },
    )
    weapon-infos.filter(x => x != none).join(", ")
    parbreak()
  }
  #drekfort-watermark
]<meta:statbox>]

#let remark(designation, content) = rect({
  set text(font: sans-font)
  set par(justify: true, first-line-indent: 0pt)
  align(center, strong[TYPE: #designation])
  line(length:90%)
  align(center)[REMARKS]

  text(font: serif-font, content)
  drekfort-watermark
})

#let quote(content) = {
  set par(justify: true, first-line-indent: 0pt)
  rect(emph(content))
}

#let statblock(kvs) = rect({
  align(center, text(font: sans-font)[*INTEL SUMMARY*])
  set text(font: sans-font)
  table(
    stroke: none,
    columns: (50%, 50%),
    table.vline(x: 1),
    ..kvs
  )
  drekfort-watermark
})

#let picture(title, color, path, width: 100%) = align(center, rect(
  radius: (top: 20pt),
  fill: color,
  stroke: 1.5pt + black,
  inset: 0pt, // Make boxes coincide
  width: 100%,
  {
    // Undo effect of "inset: 0pt"
    v(10pt)
    // Undo formatting for this scope
    show heading.where(level: 2): x => align(center, text(
      fill: white, font: sans-font, 
      weight: "bold", size: 14pt,
      x.body
    ))
    heading(
      depth: 2,
      upper(title)
    )
    v(-8pt)
    rect(
      width: 100%,
      radius: (top: 20pt),
      fill: white,
      inset: 6pt,
      stroke: 1.5pt + black,
      image(path, width: width)
    )
  }
))

#let local-outline-row(name, type, page) = grid(
  columns: (auto, 1fr, auto), [#name --- *#type*], repeat([.], gap: 3pt), page
)

//#infobox("Name", 10, "designation", [Space(LEO)], "4/4/4", ("a", [b]), {})
//#remark[Text][Qwertz]
//#quote[An example quote]

/*
Page 1
FIRELOCK 198A THE FINAL DOMAIN FMs 105-1-87... 105-3-80
INVULNERABLE
-INESCAPABLE
-IMPERMANENT
*/

#let template(doc) = {
  set text(
    size: 11pt,
  )

  set page(
    //columns: 2,
    //paper: "us-letter",
    paper: "a4",
    header: context {
      let page = counter(page).get().first()
      if calc.odd(page) {
        grid(columns: (1fr, auto), 
          line(start: (0%, -0.3em),length: 100%, stroke: 2pt + black), 
          text(font: sans-font, weight: "extrabold", size: 14pt)[FM-105-1-8X]
        )
      } else {
        grid(columns: (auto, 1fr), 
          text(font: sans-font, weight: "extrabold", size: 14pt)[FM-105-1-8X],
          line(start: (0%, -0.3em),length: 100%, stroke: 2pt + black)
        )
      }
    },
    numbering: "1 - 1"
  )

  set heading(numbering: "1.1")
  show heading.where(depth: 1): it => {
    set align(center)
    set text(font: sans-font)
    block[
      #text(weight: "regular")[Chapter #counter(heading).display()]
      \
      #upper(it.body)
    ]
  }

  set par(justify: true, first-line-indent: 40pt)

  doc
}

#let appendix(doc) = {

  counter(heading).update(0)
  show heading.where(depth: 1): set heading(numbering: "A", supplement: [Appendix])
  show heading.where(depth: 1): it => {
    set align(center)
    set text(font: sans-font)
    block[
      APPENDIX #counter(heading).display() --
      #upper(it.body)
    ]
  }
  show heading.where(depth: 2): set heading(numbering: none, outlined: false, bookmarked: false)

  doc
}