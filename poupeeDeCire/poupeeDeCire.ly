%{
%}
\version "2.22.1"

\header{
  title = "Poupée de cire, poupée de son"
}

global = {
  \clef "treble"
  \time 4/4
  \key e \minor
  \tempo "Presto" 4 = 120
}

clarinet = \relative {
  \global
  \repeat volta 2 {
    g'4 g fis e
    d4 c b2
    e4 e d8. g,16 a8 b8~  
    b2 r2 
    a4 a8 b c4 b8 a 
    b8 e4 g e8 fis g 
  }
  \alternative {
    { fis4 fis dis8 dis4 b8~ 
      b2 r2 }
    { fis'4 fis dis8 dis4 e8~ 
      e2 r2 }
  }
  \repeat volta 2 {
    d4 d d d
    e8 e4 b2 a8
  }
  \alternative {
    { g8 g g g b8 b4 e,8~ 
      e2 r2 }
    { g8 g g g b8 b4 e8~ 
      e1 \bar "|." }
  }
}

piano = \chords {
  \repeat volta 2 {
    e1:m
    e:m
    c 
    g 
    f 
    e:m
  }
  \alternative {
    { 
      b1
      b1 }
    { 
      b1
      e1:m }
  }
  \repeat volta 2 {
    g1
    c2 g
  }
  \alternative {
    {  
     e2:m b
     e1:m }
    { 
      e2:m b
      e1:m }
  }
}

saxo_alto = \relative {
  \global
  \repeat volta 2 {
    e'1
    b'
    c
    g2 r2
    f1
    e1
  }
  \alternative {
    { 
      dis1
      dis2 r2}
    { 
      dis1
      e2 r2} 
  }
  \repeat volta 2 {
    g,1
    c2 g2
  }
  \alternative {
    { 
      b2 dis2
      g,2 r2}
    { 
      b2 dis2
      e1 \bar "|." } 
  }
}

\score {
  \new StaffGroup <<
    \new ChordNames \transpose c bes {\piano}
    \new Staff \with { instrumentName = "Clarinette" }  
    { \clarinet }
    \new Staff \with { instrumentName = "Saxophone" }  
    { \transpose ees bes {\saxo_alto} }
  >>
}

transposedScore = {
 \new StaffGroup <<
  \new ChordNames {    
    \set Staff.midiInstrument = #"electric piano 2"  
    \piano 
  }
  \new Staff \with { instrumentName = "Clarinette"}
  {
    \set Staff.midiInstrument = #"clarinet"  
    \clarinet 
  }
  \new Staff \with { instrumentName = "Saxophone" }
  { 
    \set Staff.midiInstrument = #"alto sax"  
    \saxo_alto 
  }
  >>
}

\score {
  \transposedScore
  %\layout {}
}

\score {
  \unfoldRepeats {
    \transposedScore
  }
  \midi {}
}

