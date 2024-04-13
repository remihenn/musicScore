\version ""
\include "italiano.ly"

\header {
  title = "Mission Impossible"
}

global = {
  \key mib \major
  \time 4/4
  \tempo 4=152
}

intro = 
{
  do,1~\trill
  do2. mib8 mi8
  \time 5/4
}

accompagnement = 
{
  fa4 r8 fa8 r4 lab sib
  fa4 r8 fa8 r4 mib mi
  fa4 r8 fa8 r4 lab sib
  fa4 r8 fa8 r4 mib mi
}

violin = \relative do'' {
  \global
  \intro
  \accompagnement
  
  lab8 fa do2~do
  lab'8 fa si,2~si
  lab'8 fa sib,2~sib
  lab8 si r1
  % comment remonte-on d'une octave ?
  \accompagnement
  
  
}

cello = \relative do {
  \global
  % comment baisser d'une octave ?
  \intro
  \accompagnement
  \accompagnement
  
  si8 lab mi'1
  si8 lab red1
  si8 lab re1
  dod8 si r4
  
}

clarinet = \relative do'' {
  \global
  \transposition sib
  \intro
  \accompagnement
  \accompagnement
  \accompagnement
  \accompagnement
  
}

altoSax = \relative do'' {
  \global
  \transposition mib
  \intro
  \accompagnement
  \accompagnement
  \accompagnement
  \accompagnement
  
}

right = \relative do'' {
  \global
  \intro
  \accompagnement
  \accompagnement
  \accompagnement
  \accompagnement
  
}

left = \relative do' {
  \global
  
}

violinPart = \new Staff \with {
  instrumentName = "Violon"
  shortInstrumentName = "Violon"
  midiInstrument = "violin"
} \violin

celloPart = \new Staff \with {
  instrumentName = "Violoncelle"
  shortInstrumentName = "Vcelle"
  midiInstrument = "cello"
} { \clef bass \cello }

clarinetPart = \new Staff \with {
  instrumentName = "Clarinette"
  shortInstrumentName = "Cl"
  midiInstrument = "clarinet"
} \clarinet

altoSaxPart = \new Staff \with {
  instrumentName = "Saxophone Alto"
  shortInstrumentName = "Sax Alto"
  midiInstrument = "alto sax"
} \altoSax

pianoPart = \new PianoStaff \with {
  instrumentName = "Accordéon"
  shortInstrumentName = "Acc"
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
    \celloPart
    \transpose sib do {\clarinetPart} 
    \transpose mib do {\altoSaxPart} 
    \pianoPart
  >>
  \layout { }
  \midi { }
}
