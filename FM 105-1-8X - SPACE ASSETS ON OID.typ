#import "template.typ": *
#import "@preview/dashy-todo:0.1.3": *

#page(
  header: grid(columns: (1fr, auto), 
    line(start: (0%, -0.3em),length: 100%, stroke: 2pt + black), 
    text(font: sans-font, weight: "extrabold", size: 20pt)[FM-105-1-8X]
  ),
  background: image("Pictures/TitlePage.png"),
)[
  #place(
    dx: 40pt,  dy: 160pt,
    align(center, {
      text(font: sans-font, size: 28pt, weight: "bold")[SPACE ASSETS \ ON OID]
      linebreak()
      text(font: sans-font, size: 20pt)[UNITS AND DOCTRINE]
    })
  )
  #place(bottom+center, [
    #set text(font: sans-font, size: 9pt)
    #set par(justify: true)
    DISTRIBUTION RESTRICTION: This publication contains technical, operational, or strategic information that is for official government use only. Distribution thereof is limited to government agencies of the Intermarine Federation or licensed contractors. Special use releases of this publication must be requested from Reception & Disposal, Drekfort Military Development Center, Langport, Vansa, PO 32001
  ])
]

#page(place(dx: 30%, dy: 25%, image("Pictures/BRUNBOK.png")))

#outline(title: "TODOs", target: figure.where(kind: "todo"))

#page(
  footer: [i],
)[
  #place(top+right,
    align(right, {
      text(font: sans-font, size: 14pt)[*FM 105-1-8X*\ ]
      text(font: sans-font, size: 12pt)[Edition 0.9.7]
    })
  )
  #place(top+right,
  dy: 50pt,
    block(
      width: 30%,
      align(center, text(font: sans-font)[
        HEADQUARTERS \ 
        DREKFORT M.D.C. \
        Langport, Vansa, 03/10/85
      ])
    )
  )
  #place(
    rect(
      width: 40%,
      height: 50pt,
      stroke: (right: 1pt),
      text(font: sans-font, align(center+horizon)[FIELD MANUAL \ No. 105-1-8X])
    )
  )
  #place(dx: 30pt, dy: 30%, top+left, block(width: 80%)[

    #align(center, text(font: sans-font, size: 16pt)[*Space Assets on Oid:* \ _Units and Doctrine_])

    #set par(first-line-indent: 40pt, justify: true)
    #grid(columns: (auto, 1fr),
      text(font: sans-font, weight: "regular", size: 18pt)[Preface],
      line(start: (0%, 14pt), length:100%, stroke: 2pt + black)
    )

    #par[]
    This manual is a compilation of technical notes (TN-78205-1-8X, TN-78205-2-8X, TN-78205-3-8X & TN-78205-4-8X) describing the various space assets that are being used militarily by the Federal States-Navy Space Corps, the Royal Astronomical Society Of The Ebonic Forest, the New Rygolic Host and the active remainders of the Santagarian Nation Space Program.

    This manual is restricted to internal use amongst the various military branches of the intermarine federation and should be handed out to any commanding and non-commanding officers.

    This manual represents the definitive (condensed) source of unclassi-
    fied information on any known and militarily relevant space assets: their abilities, strengths, weaknesses, and general availability to a commander. The Main Threats Direc-
    torate at the Drekfort Military Development Center, Langport, Vansa, updates
    these manuals periodically to provide the most current unclassified information
    available.
  ])
]

#show: template

#set text(font: sans-font)
#grid(
  columns: (25%, auto),
  align: right, column-gutter: 15pt, 
  [#v(3.6em) CHAPTER #v(18.9em) APPENDIX], outline()
)
#pagebreak()
= Overview
#par[]
Since they are out of sight and mostly out of mind, it is easy to forget how space assets are an essential and ubiquitous part of the modern battlefield. This manual has been compiled for a commander of any branch to to familiarize themselves with all of the space assets they may have access to or face on the battlefield.
#grid(columns: (50%, 50%), column-gutter: 10pt)[
  #par[] #v(-1.5em)
  Modern space assets functionally fall under mostly 4 categories: reconnaissance, communication, artillery or navigation. The last one, while important is so integrated with other technologies through all military branches and some of civilian life that it is not useful to consider it a separate asset. The other 3 are discussed here in addition to special mentions.

  Communication vessels mostly just relay information between 2 far-away points on the ground. This is often done by simply repeating the signal. For our purposes, this can be used to inspire or directly coordinate far-away troops directly from higher command.

  Artillery is used to directly strike a point on the Earth with missiles, unguided rods or direct energy  weapons. It usually gets called in like other artillery, but comes at a different angle. Since space assets can see more of the planet, they are a good platform to deploy heavy weaponry on, but can often only be used once.

  Because of their high cost and low number, space assets are almost never directly attached to a company or platoon. How they are accessed instead is that military units can request to borrow access to a spacecraft for a certain time and sometimes on specific frequencies to benefit from it only when they need to. //Spacecraft rarely get involved in actual "physical" combat against each-other and when they do, it is typically planned on a strategic level. 
  #todo[ A bit dry, idk ]
][
  #block(height: 60%, width: 100%, align(horizon+center, image("Pictures/AEF-Launcher.png")))
]
#page(
  header: grid(columns: (auto, 1fr),
    text(font: sans-font, weight: "extrabold", size: 14pt)[Size Comparison],
    line(length: 100%, stroke: 2pt),
  )
)[
  (Commanding Angel size unknown)
  #image("Pictures/scale.png")
]

#pagebreak()

#grid(columns: (65%, auto))[
  = Federal States-Navy Space Corps (F.S-N.S.C)
  As the dominant space power on Oid, the Intermarine federation boasts a proud space corps to defend its interests in Oid Orbit and beyond. First among these are the manned ships that patrol cis-lunar space, defending the lunar industry that they are born out of. The majority of the departments operations however lies with operating a much more vast number of reconnaissance, communication and navigation assets --- quiet force multipliers and enablers of the state-navies many operations far from shore and, if it is deemed necessary, states-army or expeditionary campaigns. 

  #local-outline-row[BLUEBIRD][RECONNAISANCE SATELITE][1]
  #local-outline-row[FEDERAL RELAY STATION][RELAY][2]
  #local-outline-row[COSMOS CLASS][MISSILE BOAT][3]
][
  #box(height: 60%, align(center+horizon, image("Pictures/FSA-Launcher.png")))
  #todo[Feds Artwork doesn't really fit with what is already established and I would rather show the construction of the relay station]
]

#pagebreak()

#picture([BLUEBIRD], feds-blue, "Pictures/Bluebird.png")
#columns(2, {
  infobox(
    [BLUEBIRD], 10, [RECONNAISSANCE SAT], 
    type: [Space], 
    toughness: 2,
    quality: 2,
    tags: (underline[Constellation],), 
    weapons:  (
      (
        name: [Multi-Spectral Digital Camera], 
        target: "All", range: $oo$, accuracy: "x/++", tags: ("Designator", "Barrage(2)"),
      ),
      (
        name: [Foliage-penetrating SAR], 
        target: "All", range: $oo$, accuracy: "x/++", tags: ("Designator",),
        notes: [Ignores terrain occlusion]
      ),
    )
  )

  remark[RECONNAISSANCE SAT][
    One of the first things new astronomers learn is how to distinguish real stars from the reflections that Bluebird satellites are making near dusk or dawn, such tangible is their omnipresence.
    As the workhorse of the federated-states space command, this satellite constellation can theoretically spot any target anywhere on the planet at any time. Despite its ubiquity, Bluebird access can still be a scarce and treasured resource on the tactical level if many units operate in the some region.
  ]

  quote[

    Please tell me, little bird, little bird.
    
    Tell me about the sky, about the clouds.
    
    About the trees, about the lakes.
    
    About the rivers, which meander far
    
    of about the cities, roaring loud.
    
    Tell me about the sorrows and the wars
    
    about all the things you've seen, 
    
    little bird, little bird.

    -- from "Little Bird", a radio hit from Chivi-Chivi
  ]

  statblock((
    [Mass], [19 000 kg],
    [Number], [> 50],
    [Orbit], [600x600 km],
    [Color Spectrum], [500 - 3000 nm],
    [Image resolution], [2048 $times$ 2048 px],
    [Downlink Data], [30 Mbps]
  ))
})

#pagebreak()

#picture([Federal Relay Station], feds-blue, "Pictures/FRS.png")

#columns(2, {
  infobox(
    [Federal Relay Station], 0, [RELAY STATION], 
    type: [Space], 
    toughness: 3, 
    command: 1,
    quality: 4,
    taccom: true,
    notes: [If this is the last or only TACCOM, the player looses immediately #todo[Should have a jammer, maybe a brigade]],
  )

  statblock((
    [Mass], [180 000 kg],
    [Number], [4],
    [Orbit], [Stationary, 5°E],
    [Total Bandwidth], [20 GHz],
    [Parts], [8],
    [Crew], [4],
    [Crew Rotation], [120 days]
  ))
  remark[RELAY STATION][
    As a consequence of its massive space presence, the relay station of the federal states are permanently crewed stations These massive telecommunication hubs, carry everything from long-range phone calls to direct data-links between armies in the field and the ministry of defense. This way, high ranking officers with full visibility onto the battlefield can make direct tactical decisions in critical engagements ... as long as there is a local commander to receive and relay the commands.
    #v(-10pt)
  ]

  quote[
    They say a company chief who doesn't operate from the front-line is a coward and hiding more than a kilometer behind the front marks you as unfit for the position.
    So what does leading from 36.000km make you?

    --  Conchar Goronwy, Chasseur, 96e Infanterie
  ]

})
#pagebreak()


#picture([COSMOS - CLASS], feds-blue, "Pictures/COSMOS.png", width: 84%)
#columns(2, {
  infobox(
    [COSMOS - CLASS], 30, [MISSILE BOAT], 
    type: [Space],
    tags: (underline[Mobile], todo[What mobile does that mean now?] , [Brigade(2, $ oo$)]),
    toughness: 10,
    quality: 3,
    weapons:  (
      (
        name: [75 dBW EW suite #todo[Maybe replace it with a dazzler]], 
        target: "Space(orbit)", range: [--], accuracy: "++", tags: ("Multigun", "Adds 4 pin to target",),
      ),
      (
        name: [Space-to-Ground Missiles], 
        target: "Ground", range: $oo$, accuracy: "4+", strength: "2/2", dice: 4, tags: ("Heavy indirect (5)", "Rear Attack"),
        notes: [Can only be used in LEO]
      ),
    )
  )

  // Something like https://www.projectrho.com/public_html/rocket/enginelist2.php#bimodalntr
  // https://www.patreon.com/RifleInfantry/posts/198x-short-timer-134474695?utm_medium=clipboard_copy&utm_source=copyLink&utm_campaign=postshare_fan&utm_content=web_share
  statblock((
    [Mass], [250 000 kg],
    [Number], [3],
    [Orbit], [Any],
    [#sym.Delta V], [15 000 m/s],
    [Power Plant], [160 MW#sub[th] fission],
    [Operating temp.], [1500 - 3000 K],
    [Crew], [8 - 10],
  ))

  remark[MISSILE BOAT][
    This ain't a communication relay, or a reconnaissance camera, or even just our automated strategic weapon, automated awaiting a command. This is a fully-crewed, nuclear- powered, fully armed and highly-mobile vessel, akin to its naval brethren. It com more to any orbit and strike down any target. Some may say its an unwise allocation of funds, but I say nobody at space command could lock themselves in the mirror if they retired this thing
  ]
})

#pagebreak()



= Royal Astr. Society Of The Ebonic Forest (Sarfe)
More limited in technology, experience and launch infrastructure, the Ebonic Forest prefers to rely on low-mass, uncrewed and highly specialized radio-controlled spacecraft for both civilian and military usage. The Royal Astronomical Society of the Ebonic Forest, or more formally known as "la Société Astronomique Royale de la Forêst Ebonique" (SARFE) is an independent government agency that often competes with the military for the brightest and most ambitious minds. 

Although their crewed space program is barely existent and their launchers limited, the Royal Astronomical Society has managed to become relevant in the space game by specializing in radio- and electrical engineering and operating reliable, but lightweight craft with skilled operators.

#local-outline-row[EBOSAT-05][TV SATELLITE][1]
#local-outline-row[A.I.G.U.E][HIGH-GAIN JAMMER][2]
#local-outline-row[L.A.N.C.E.U.R][KINETIC BOMBARDMENT][3]

#grid(columns: (60%, auto), column-gutter: 5pt)[

  #quote[
    Fighting on the technological and industrial back-foot means using terrain and stealth to your advantage. It means playing unfair and relying on simple, cheap but reliable equipment with high tolerances and simple, but frequent maintenance. It means cutting corners in manufacturing and accepting the consequences. All these are strategies, that the regency is intimately familiar with, will not get you far in space combat.

    When the Royal Astronomical Society was elevated from an underfunded academic research group to an expansive government agency with generous funding, their job was straight-forward: Build up a space force that can hold its own and provide strong support to the A.E.F and internal security all over the regency. The nations smartest minds where assembled and challenged to build up the complex knowledge base and high-tech manufacturing industry based on their existing experience from building high-performance aircraft.

    To avoid being targeted by asat weapons right away, the first missions where purely scientific or civilian, often in collaboration with the emerging santagarian space program. Some say these early civilian missions where among the SARFEs greatest archievement, providing radio and even television broadcast to far-off tribes and ensuring the Regencies political reach and soft-power.

    -- Rayleigh Irving, Federal Intelligence
  ]
][
  #box(width: 100%, align(center+horizon, image("Pictures/AEF-Launcher.png")))
]



//As the dominant space power on Oid, the Intermarine federation boasts a proud space corps to defend its interests in Oid Orbit and beyond. First among these are the manned ships that patrol cis-lunar space, defending the lunar industry that they are born out of. The majority of the departments operations however lies with operating a much more vast number of reconnaissance, communication and navigation assets --- quiet force multipliers and enablers of the state-navies many operations far from shore and, if it is deemed necessary, states-army or expeditionary campaigns. 

#pagebreak()

#columns(2, {
  picture([EBOSAT-05], ebon-gray, "Pictures/Ebosat.png")

  infobox(
    [EBOSAT-05], 10, [TV SATELLITE],
    type: [Space], 
    toughness: 1,
    quality: 1,
    tags: ([Brigade(2, $oo$")],),
    weapons: (
      (
        name: [Propaganda Broadcast],
        target: "Inf/Vec", range: $oo$, accuracy: "++", dice: 1,
        tags: ("Rally", "Ammo(1)", [Radius($oo$")])
      ),
    )
  )

  remark[TV SATELLITE][
    Originally a civilian television satellite, this one got "drafted" so-to-say into military service to relay communication to far-away forces in the field. Many such re-uses have taken place over the years, going both ways, with some speculating that the satellites are deliberately- designed for both use-cases
  ]

  quote[
    The lupars do not make the same hard distinction between civilian and military technology as we do. While they of course have their dedicated tanks and planes and the like, they are not opposed to use a civilian truck or hunting rifle or radio for military operation, neither to use military vehicles if farming or logistics vehicles are in dire need.
    
    -- Rayleigh Irving, Federal Intelligence
  ]

  statblock((
    [Mass], [1580 kg],
    [Number], [14-16],
    [Orbit], [Stationary, 25°W],
    [Age], [12 y],
    [Working XPDRs], [4/5],
    [Longitude], [97 °W],
  ))
})

#pagebreak()

#picture([A.I.G.U.E], ebon-gray, "Pictures/Eclaire.png", width: 80%)
#columns(2, {
  infobox(
    [A.I.G.U.E], 20, [HIGH-GAIN JAMMER],
    type: [Space], 
    toughness: 2,
    quality: 3,
    tags: (),
    weapons: (
      (
        name: [Ultra-high-gain antenna],
        target: "Ground", range: $oo$, accuracy: "4+",
        tags: ("Radius(10\")", ),
      ),
      (
        name: [#sym.arrow Ka-Band Comms Jammer],
        notes: [Units withing the affected area immediately become "jammed" (c.f. @app:general-rules)]
      ),
      (
        name: [#sym.arrow L-Band GNSS Jammer],
        notes: [Any guided missiles against in the affected area gain -1 on their to-hit roll until the start of the next logistics phase.]
      )
    )
  )

  statblock((
    [Mass], [5870 kg],
    [Number], [2],
    [Orbit], [Stationary, 30°W],
    [Antenna Diameter], [32 m],
    [Max EIRP], [125 dBW],
    [Frequency range], [1 -- 40 GHz],
    [Program cost], [5.2 Bn]
  ))

  remark[HIGH-GAIN JAMMER][
    As a rare and well-celebrated triumph of the Ebonic high-tech sector, the A.I.G.U.E. (Antenne immense à gain ultra-élévé) enables projecting a high power signal anywhere on the continent at a large spectrum of frequencies. While it is mostly used for Jamming, the flexibility of this system should not be underestimated.
  ]

  quote[
    One of the most ambitious venture of the aspiring state and the entire pride of their limited space program.
    Getting that large antenna to unfold properly has costed them 3 failures and keeping the amplifiers cold has costed then 1 more. It is common wisdom that we should be glad that the resources are" wasted" on this prestige project instead of buying a few hundred more Tanners, but when your communication shuts down in the heart of the forest, you don't really see it that way.
    
    -- Rayleigh Irving, Federal Intelligence
  ]

})

#pagebreak()

#picture([L.A.N.C.E.U.R], ebon-gray, "Pictures/Odinsson.png")

#columns(2, {
  infobox(
    [L.A.N.C.E.U.R], 25, [KINETIC BOMBARDMENT],
    type: [Space], 
    toughness: 2,
    quality: 1,
    tags: (underline[Sweep],),
    weapons: (
      (
        name: [Kinetic Tungsten Rods],
        target: "Ground", range: $oo$, accuracy: "5+", strength: 10, dice: 2,
        tags: ("Rear-Attack", "Radius(4\")")
      ),
    )
  )

  /*#quote[
    I saw the first demonstration of this system. It was far on some uninhabited plains. Rather disappointingly, it just looked like a normal detonation test, with the projectile to fast and small to see. I wonder if they had forbidden the press to watch just to hide the unspectacular mundanity of this practical weapon.

    -- Brother Torres
  ]*/

  statblock((
    [Mass], [\~ 1500 kg],
    [Number], [> 5],
    [Orbit], [350 x 600 km; Polar],
    [Heat signature], [500 mW],
  ))

  remark[KINETIC BOMBARDMENT][
    Keeping inline with their infantry doctrine, the L.A.N.C.E.U.R (#underline[L]ancuer #underline[A]erospaiale des #underline[N]acelles #underline[C]inétiques #underline[E]xtraterrestres à #underline[U]tilisation #underline[R]épété) is designed with ambush tactics in mind. A very unusual style for spacecraft for good reason: The empty environment and free sightliness grant no hiding spot. Even if you are visually hidden, the perfectly cold background will reveal any infrared signature that comes with the heat generated.

    This vehicle achieves this by being almost dormant until activated, not even sending telemetry. They are often launched alongside other payloads so their trajectory can't easily be propagated. Once the time comes, they let loose a barrage of small, but fast flechettes to rain down on some remote place.
    
    //Originally supposed to be an orbital laser like the God-ray, the design bureau had to settle on a much less ambitious concept that com still fulfill some of the capabilities with the drawback of limited uses. To keep the element of surprise
  ]
})

#pagebreak()

= Rhygolic Space Assets

#grid(columns: (65%, auto), column-gutter: 5pt)[
  From all of the powers on Oid, space travel comes the easiest to the N.R.H. by far. Instead of multi-stage, single-use rockets, Rygolic launch vehicles can bring a payload to orbit, land in one piece, do it all again, and then refuel #footnote[Authors note: If this sounds excessive, it is based on FM 100-3-8X ; SUPPLEMENTAL FILES - 5-7. Hovering for 30 min would also allow you to do this]. The vehicles are often launched from subterranean silos, where they are build and fitted with secretive payloads. 

  The N.R.H. uses this easy access to populate space with constructs and drones of various makes and types for either defense, communication, access to sunlight, or even just storage. Unlike other power, they can afford to regularly land many of their spacecraft for maintenance and refit. 

  #local-outline-row[STARNET][COMMUNICATION CONSTELLATION][1]
  #local-outline-row[A-2 GODRAY][ORBITAL LASER][2]
  #local-outline-row[COMMANDING ANGEL][UNCLASSIFIED][3]
][
  #block(height: 80%, align(horizon, image("Pictures/NRH-Launcher.png")))
]

#pagebreak()

#columns(2, {
  picture([STARNET], rygo-red, "Pictures/StarNet.png")
  infobox(
    [STARNET], 15, [COMMUNICATION CONSTELLATION], 
    type: [Space], 
    toughness: 1,
    quality: 3,
    tags: (underline[Rygonet($oo$")],),
    notes: [Rygonet may not be used in the movement phase #todo[Why not, actually ?] \ #todo[Can this have a softkill weapon ?]]
  )

  remark[COMMUNICATION CONSTELLATION][
    Second only to the host itself, with its large towers, the second most complex and performant communication network must be its backup: Starnet. The amount of data that is received, processed and transmitted through this interconnected web of autonomous spacecraft is incomparable to the simple relays other factions are using with this system, any construct com be reached at any point. Despite this, its use in tactical situations is very rare -- but not unheard of. The reason is unclear, but theories range from high latency to avoid being targeted.
  ]

  quote[
    The earliest iteration of Starnet reaches back to when the Master-Brain was still alive. Back then, it was a highly centralized system that carried a much larger fraction of the realms traffic. Since then the use of large non-construct computations systems strongly diminished as neither us, nor men, nor the constructs could properly maintain them. But Starnets design stands out. It seems to be made so robustly, so intelligently, that it forms an entity all by itself. A severed part of the new Host maybe. It seems mostly aligned with its construct brethren, but also independent.

    -- Giorgio Moceri, University of Baba Gadou
  ]

  statblock((
    [Mass], [2 300 kg],
    [Number], [80],
    [Orbit], [10 100 x 10 100 km],
    [Avg. Throughput], [100 Gbps p. sat],
  ))
})

#pagebreak()

#picture([A-2 GODRAY], rygo-red, "Pictures/Godray.png", width: 90%)
#columns(2, {
  infobox(
    [A-2 "GOD-RAY"], 30, [ORBITAL LASER], 
    type: [Space], 
    toughness: 1,
    quality: 3,
    tags: (underline[Sweep],),
    weapons: (
      (
        name: ["God Ray" 15 MW Laser],
        range: $oo$,
        tags: (underline[Laser],)
      ),
      (
        name: [#sym.arrow 20m wide-beam sweeping mode],
        target: "All", accuracy: "1+", strength: 1, dice: 2,
        tags: ("Radius(3)", "Heavy Indirect(0)", "Rear Attack")
      ),
      (
        name: [#sym.arrow 1.2m point-focus mode \ #todo[Not sure how to implement this properly]],
        target: "All", accuracy: "3+", strength: 20, dice: 1,
      ),
    )
  )

  /*
  MATH:
  - Diffraction limited spot size is 24 cm in radius. 
  - Jitter is 48 cm, therefore minimum effective beamsize is 107cm x 107cm/cos(elevation), ignoring beam spread
  - point-focus mode: 3.5 kW/cm2 maximum intensity
  - radius:
  R1 -> : 0.51 W/cm2 maximum intensity
  */

  remark[ORBITAL LASER][
    The N.R.H. puts its biggest and most power- full lasers in orbit, where they can be used to their largest flexibility.
    
    Even in a low orbit though, jitter, atmospheric scintillations and diffraction spread the beam over a large area, such that the effect is less of a highly focused piercing beam and more like a whole area being slowly but mercilessly abed
  ]

  statblock((
    [Mass], [15 700 kg],
    [Number], [8],
    [Orbit], [550 x 700 km],
    [Wavelength], [925 nm],
    [Accuracy], [0.1 arcsec],
    [Powerplant], [150 MW#sub[th] Lead-cooled fission],
    [Cooling], [135 MW, 1600 K droplet radiator],
  ))

  quote[
    I saw this one in an illustrated magazine once. A short "ZAP" coming vertically from the sky and everything explodes. A scary prospect, but not as scary as the real deal. A burning, maddening heat that rises from somewhere on the horizon, like a second sun that has been cast away and is now waning to take its righteous revenge upon mankind. Within minutes, dry wood and foliage starts to burn, motors break down and unprotected soldiers fall dead or unconscious. If you can hold out for maybe 15 minutes, that mad sun starts to set again to rise again some other day
    
    -- Rayleigh Irving, Federal Intelligence
  ]

})

#pagebreak()

#columns(2, {
  picture([COMMANDING ANGEL], rygo-red, "Pictures/CommandingAngel.png")

  infobox(
    [COMMANDING ANGEL], 0, [UNCLASSIFIED], 
    type: [Space], 
    toughness: 4,
    quality: 4,
    command: 10,
    taccom: true,
    tags: (underline[Constellation], "Brigade(4, 0\")", underline[Rygonet($oo$\")], "Active Protection(4)"),
    notes: [
      Rygonet may be used on planes

      This unit may still be called in after all other TACCOMS have been lost. Until then, the player may not take any actions or movement and close combat is automatically lost
    ]
  )

  remark[UNCLASSIFIED][
    Other than other Rygolic commanders, like the Node Team, there is evidence that this construct is in font involved in the decision-making process in some way. Its exact role remains a mystery.
    The shape and the method of its defense suggests a close relation to the" Destroying Angel" (c.f. FM-100-3-8X)
  ]

  quote[
    They taught us that when we killed the Node team or communications huh or whatever, there is no way in hell that the enemy com still more. While this is accurate 95% of the time, it is also a white lie to preserve the last sliver of morale when fighting these creatures.
    Once, when I was a young Lieutenant, I remember we took on a small group of them and elegantly dispatched their node team with minimal casualties and watched the entire group stopping in their tracks. Of course we celebrated, drink a lot, let our guard down. some pretended to dance with the unresponsive constructs. Then, a half hour later, one of- them walkers wiped out the entire company out of nowhere. I only escaped, half drunk, because I went peeing in the woods and
    stayed hidden there 
    
    -- Lt. Connor Jasper, 15th Federal Expeditionary
  ]
  
  statblock((
    [Mass], [???],
    [Number], [#sym.gt.eq 1],
    [Orbit], [Varying (< 1200km)], 
    [Powerplant], [???],
  ))
})

#pagebreak()

= Santagarian National Space Program (Snsp)
Not many of the current inhabitants of the baronies will never have heard or thought of space travel. Despite this, the former nation of Santagaria had quite ambitious hopes when it founded the SNSP. Although that hope was short-lived and never succeeded in putting a man into orbit before the bombs fell, it still managed to develop and some primitive satellites who can still be observed to this day. 


#local-outline-row[RELIC 59XX][ANCIENT RELAY][3]

#quote[
  Everyone is told about the wonders on mysteries that the old Empire was able to achieve. About an ingenuity and craftsmanship that borders on magic. Most people are more than ready to avert the stories as facts, but I always expressed doubts. Why do I never see these wonders, how where they all lost.
  One day a wise man responded to me by showing me a large radio pointed at the sky. There was no helicopter flying, so there should have been no man between us and eternity. But behold! the sky. was communicating back! It was some military cipher at the time, but I never doubted the old stories after that
  #todo[Initially compressed to fit within a unit box. Can be expanded again]
  #todo[Santi Artwork]
]

#pagebreak()

#picture([RELIC 59XX], santi-green, "Pictures/Relic.png", width: 50%)
#columns(2, {
  
  infobox(
    [RELIC 59XX], 5, [ANCIENT RELAY], 
    type: [Space], 
    toughness: 3,
    quality: 1,
    tags: ([Brigade(2, $oo$")],),
  )

  remark[ANCIENT RELAY][
    As a preparation for the nuclear war that the baronies eventually experienced, a simple satellite was devised that could operate completely autonomously.
    Its medium-gain antenna, which always points straight down simply repeats and amplifies any signal. it relieves. This simplicity makes it very inefficient, but still reliably even after nothing else survived from the Santagarian space program
  ]

  colbreak()

  statblock((
    [Mass], [450 kg],
    [Number], [12],
    [Orbit], [Stationary \~80°W (drifting)],
    [Age], [35 y],
    [Stabilization], [Gravity-gradient],
    [Power], [200 W],
    [Bandwidth], [5 MHz],
  ))

  quote[
    You use the term "Broadcasting License" a lot, what exactly do you mean by it?

    -- Anonymous
  ]

})

#pagebreak()

// APPENDICES
#show: appendix

= Space Asset Rules <app:general-rules>

#columns(2)[

/*== Orbits
// TODO: Is this necaissary?
A Unit with the _Space(X)_ identifier is a space unit. Space units do not have a position on the board, they just are either on the battlefield or are off it. Instead, the _X_ indicates an orbit they are in. To simplify, the broad range of orbits are categorized into 4 different groups, roughly based on their height:
/ LEO: Low orbit just above the atmosphere (< 1 000 km).
/ MEO: Medium orbit with a height from 1 000 -- 20 000 km.
/ GEO: Geostationary orbit (\~36 000 km and roughly circular and equatorial).
/ HEO: High orbit with their apoapsis above even GEO, such as Tundra orbits. None of the current units make use of this orbit, but it could be used by #underline[Mobile] units or future expansions

The orbit is only used for targeting, although LEO units should logically either have the #underline[_Sweep_] or #underline[_Constellation_] tag. */

== General rules
Space units do not have height, spotting or movement characteristics.
Space units can draw line-of-sight to all units, but cannot spot without use of a designator weapon, similarly to planes. This means that TACCOM space units can also call missions on any unit on the board.

Space units are also not identified until they reveal themselves by activating. /*However, attacks against them do not suffer from blind-fire, even if the unit is not identified.*/

== Cards
Since space untis have no position on the board, they are not represented by models or blinds, but by cards. At the beginning of the turn, take the relevent card into your hand without revealing them. When a spce unit enters the board -- either during depolyment or at the beginning of a round through #underline[Sweep] or #underline[Constellation], place its card face-down on your depolyment edge. To reveal a space units actions, turn it upside down. A player may place the revealed space unit somewhere specific on the board to indicate its area of effect after activation. This makes tracking which units have activated easier.

//have an additional element of abstraction, I suggest to use cards to represent space units. Before the space units are identified, the card is laid down face-down next to the board and is revealed as the unit is revealed. The orbit of the units can be indicated either by placing the cards/blinds on certain dedicated spots next to the board or by tokens.

Decoy space units can be purchased as usual with 5pt per decoy. Decoys can enter the battlefield, leave and be "revealed" at any time.

/*== Targeting Space Units:
A weapon that targets a space asset may specify the orbit in parenthesis, i.e. _Space(LEO)_. If shot from space, it may also specify _Space(orbit)_, indicating that the target must be in the same orbit as the attacker. A weapon that targets _"All"_ still only targets, _Vec._, _Inf._ and _Air_ units, not Space assets.*/

== Jammed Units
Some of the weapons introduced may result in units becomming "jammed". Mark these units with a jammed-token.
Any jammed units respond to friendly support missions, brigade or be brigaded, or use Rygonet whatsoever.
#todo[Find available colors for jammed tokens, introduce them im TTS]

]


// ... Cards may be used to indicate the area of effect of a unit

#pagebreak()
= Special Rules <app:special-rules>
This appendix section describes the underlined special rules introduced by the space assets.
#show heading.where(depth: 2): it => {
  set text(weight: "medium")
  set align(center)
  underline(emph(it))
}

#columns(2)[
== Sweep
_Space assets in a low orbit are only in view for a short time before disappearing beyond the horizon. Since the time when the unit passes overhead can be predicted precisely, attacks can be synchronized to the window of appearance._

A unit with the #underline[_Sweep_] tag will only be in view for a single round. The player decides before the game starts which round the unit will appear on. This should be noted privately on e.g. the unit list or the underside of the card. The unit enters the field like reinforcements would on that round. At the end of the round, the unit leaves the game, getting no more actions and providing no more benefits, as if it had been killed.

== Constellation
_The short usable windows of low-orbit craft can be mitigated by having a large constellation of enough units distributed around the world, such that at least one of them is always in view of any point on the ground._

Works similarly #underline[_Sweep_], but the round does not need to be decided beforehand. Instead, this unit can be called in before any round starts. It "dies" all-the-same at the end of that round.

== Mobile
_This unit is designed to move between orbits frequently and has no designated orbit and is designated as _Space(\*)_ _

The orbit of this unit is chosen when it is deployed.
If the unit is deployed in LEO and has neither #underline[_Sweep_], not #underline[_Constellation_] as tags, the unit gains the #underline[_Sweep_] tag. In this case, the unit does not have to be revealed.

== Laser
c.f. *FM 100-3-8X - THE NEW RYGOLIC HOST*

== Rygonet(X")
c.f. *FM 100-3-8X - THE NEW RYGOLIC HOST*
]

#pagebreak()
= Quick Unit Reference
#columns(2,
  context {
    for block in query(<meta:statbox>) {
      block
    }
  }
)

#set page(header: [], numbering: none)
#pagebreak(to: "even")

#set par(first-line-indent: 0pt)
#align(right)[
  #text(size: 13pt)[*FM 105-1-8X*] \ 
  03/10/85
]

By Order of the Ministry of Defense:
#grid(columns: 2)[][]

Signatories:
#grid(columns: 2)[][]

#place(bottom)[
  DISTRIBUTION:

  Active Army, Whitewater Guard, Ready Reserves, Irregular Militia Partnership Program: To be
  distributed in accordance with DA Form 12-1A, Keystone Knowledge for the Federal Soldier
  (Qty rqr block no. 174).

  Additional copies may be requisitioned from the F.S-A.-M.T. & D.D. General Publications
  Center, 1322 Worstenrij, Brunbok, Vykeland-and-Deire 21450

  #align(center, image("Pictures/F S-A Logo.png", width: 20%))
]