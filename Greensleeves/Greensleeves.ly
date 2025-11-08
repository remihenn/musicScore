\language "italiano"
\version "2.24.0"

\header {
  title = "Greensleeves"
}

global = {
  \key do \major
  \numericTimeSignature
  \time 6/8
  \partial 8
  \tempo "Adagio" 8=92
}

mainThemePartOne = \relative do'' {
  \partial 8 la8
  do4 re8 mi8. fa16 mi8
  re4 si8 sol8. la16 si8
  do4 la8 la8. sold16 la8
  si4 sold8 mi4
}

mainThemePartTwo = \relative do'' {
  \partial 8 la8
  do4 re8 mi8. fa16 mi8
  re4 si8 sol8. la16 si8
  do8. si16 la8 sol8. fad16 sol8
  la2.
}

mainThemePartThree = \relative do'' {
   sol4 sol8 sol8. fad16 mi8
   re4 si8 sol8. la16 si8 
   la4 sold8 sold8. fa sold16
   si4 sold8 mi4.
}

mainThemePartFour = \relative do'' {
   sol4 sol8 sol8. fad16 mi8
   re4 si8 sol8. la16 si8 
   la4 sold8 sold8. fa sold16
   si4 sold8 mi4.
}

scoreAViolin = \relative do'' {
  \global
  % Music follows here.
  \mainThemePartTwo
  
}

scoreAClarinet = \relative do'' {
  \global
  \transposition sib
  % Music follows here.
  \mainThemePartOne
  
}

scoreAClassicalGuitarI = \relative do' {
  \global
  % Music follows here.
  \mainThemePartThree
  
}

scoreAClassicalGuitarII = \relative do' {
  \global
  % Music follows here.
  
}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violon"
  shortInstrumentName = "Violon"
  midiInstrument = "violin"
} \scoreAViolin

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Clarinette"
  shortInstrumentName = "Clarinette"
  midiInstrument = "clarinet"
} \scoreAClarinet

scoreAClassicalGuitarIPart = \new Staff \with {
  midiInstrument = "acoustic guitar (nylon)"
  instrumentName = "Guitare Classique I"
  shortInstrumentName = "Guitare Classique I"
} { \clef "treble_8" \scoreAClassicalGuitarI }

scoreAClassicalGuitarIIPart = \new Staff \with {
  midiInstrument = "acoustic guitar (nylon)"
  instrumentName = "Guitare Classique II"
  shortInstrumentName = "Guitare Classique II"
} { \clef "treble_8" \scoreAClassicalGuitarII }

\score {
  <<
    \scoreAViolinPart
    \scoreAClarinetPart
    \scoreAClassicalGuitarIPart
    \scoreAClassicalGuitarIIPart
  >>
  \layout { }
  \midi { }
}
