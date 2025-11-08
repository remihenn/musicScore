\version "2.24.0"
\language "italiano"

\header {
  title = "Jean I & Jean II"
}

global = {
  \key la \major
  \time 4/4
  \tempo 4=60
}

violin = \relative do'' {
  \global
  % Music follows here.
  la8 la la si dod dod dod dod
  si si si si  la4 la
  
  la8 la la si dod dod dod dod
  si si si si  la4 la 
  \bar "|."
  
}

right = \relative do'' {
  \global
  la4. sold8 la2
  si4. dod8 la2
  
  la4. sold8 la2
  si4. dod8 la2
  % Music follows here.
  
}

left = \relative do' {
  \global
  la16 dod mi dod la16 dod mi dod
  la16 dod mi dod la16 dod mi dod
  
  mi, sold si sold mi sold si sold
  la16 dod mi dod la16 dod mi dod
  
  la16 dod mi dod la16 dod mi dod
  la16 dod mi dod la16 dod mi dod
  
  mi, sold si sold mi sold si sold
  la16 dod mi dod la16 dod mi dod
  
  % Music follows here.
  
}

violinPart = \new Staff \with {
  instrumentName = "Violon"
  shortInstrumentName = "Violon"
  midiInstrument = "violin"
} \violin

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Piano"
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
    \violinPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
