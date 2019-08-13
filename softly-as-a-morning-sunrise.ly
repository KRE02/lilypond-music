\version "2.19.83"
\language "deutsch"
\include "stylesheet/default.ily"

\header {
  title = "Softly As A Morning Sunrise"
  composer = "Hamerstein / Romberg"
}

\markup {
  \vspace #2
}

global = {
  \key es \major
  \time 2/2
  %\easyHeadsOn
}

all = {
  \global
  \relative c' {
    \repeat volta 2 { 
      c'2 g |
      r8 f8 g[ f] g4 f |
      c'2 es, |
      r8 d8 es[ d] es4 d |
      \break
      g2 c, |
      r8 g'8 as[ g] es4 d |
      c1 |
    }
    \alternative {
      % 1
      {
        c4( r4 r2 |
        \break
      }
      % 2
      {
        \tuplet 3/2 { c4) d es }
        \tuplet 3/2 { f4 g as } \bar "||" |
      }
    }
    b2 es,2 |
    r8 b' c[ b] c4 b |
    b2 e,( |
    \break
    \tuplet 3/2 { e4) e f }
    \tuplet 3/2 { g4 as b } |
    c2 f,2 |
    r8 c'8 d[ c] d4 c |
    d1 |
    \break
    r1 \bar "||" |
    c2 g |
    r8 f g[ f] g4 f |
    c'2 es, |
    \break
    r8 d es[ d] es4 d |
    g2 c, |
    r8 g' as[ g] es4 d |
    c1( |
    c1) \bar "|." |
  }
}

voicings = \chordmode {
  c1:m7 |
  d2:m7.5- g2:7 |
  c1:m7 |
  d2:m7.5- g2:7.9-.10-11+13- |
  c1:m7 |
  d2:m7.5- g2:7.9- |
  c1:m7 |
  d2:m7.5- g2:7.9-.10-11+13- |
  f2:m7 b2:7 |
  es1:m7+ |
  s1 |
  c1:7.9- |
  s1 |
  f1:m7 |
  fis1:dim |
  g1:7sus4 |
  g1:7.9- |
  c1:m7 |
  d2:m7.5- g2:7.9-.10-11+13- |
  c1:m7 |
  d2:m7.5- g2:7.9-.10-11+13- |
  c1:m7 |
  d2:7.5- g2:7.9- |
  c1:m7 |
  s1
}

\score {
  <<
  \new ChordNames {
    \voicings
  }
  \new Staff {
    \all
  }
  >>
  \layout {
  }
  \midi {
    \tempo 4=220
  }
}
