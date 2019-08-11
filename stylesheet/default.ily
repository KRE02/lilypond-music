\layout {
  indent = 0\cm
  short-indent = 0\cm
  
  \context {
    \ChordNames
    minorChordModifier = \markup { "-" }
    chordChanges = ##t
    chordRootNamer = #germanChords
    noChordSymbol = ##f
  }

  \override ChordName.X-offset =
  \override ChordName.self-alignment-X = #CENTER
  \override ChordName.font-size = #0
  \override ChordName.layer = #2
  \override ChordName.extra-spacing-width = #'(-0.07 . 0.07)

  \override Score.Clef #'break-visibility = #'#(#f #f #f)
  \override Score.KeySignature #'break-visibility = #'#(#f #f #f)
  \override Score.SystemStartBar #'collapse-height = #1
}

