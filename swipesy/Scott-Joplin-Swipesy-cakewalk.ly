\version "2.20.0"
\language "italiano"

\header {
  title = "Swipesy (cakewalk)"
  instrument = "Piano Clarinette Saxophone"
  composer = "Scott Joplin"
  arranger = "arrangement Rémi Hennebelle"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key sib \major
  \numericTimeSignature
  \time 2/4
  \tempo "Slow" 4=80
}

clarinet = \relative do'' {
  \global
  \transposition sib
  % Music follows here.
  r

}

altoSax = \relative do'' {
  \global
  \transposition mib
  % Music follows here.
  r

}

right = \relative do' {
  \global
  % Music follows here.
  fa16 fa'8 dod16 re8 do
  sib8 re, mib mi
  fa16 sib8 sold16 la8 sol
  fa8 fa'



}

left = \relative do {
  \global
  % Music follows here.
  fa16

}

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  midiInstrument = "clarinet"
} \clarinet

altoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  midiInstrument = "alto sax"
} \altoSax

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \clarinetPart
    \altoSaxPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
