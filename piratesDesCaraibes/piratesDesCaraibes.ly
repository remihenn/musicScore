%{
%}
\version "2.22.1"

\header{
  title = "Pirates des Caraïbes"
}

global = {
  \clef "treble"
  \time 3/4
  \key d \minor
  \tempo "Andante" 4 = 80
}

clarinetPartOne = \relative {
  \global
  r2 a8 c
  \repeat volta 2 {
    d4 d d8 e
    f4 f f8 g
    e4 e d8 c
  }
  \alternative {
    { d2 a8 c }
    { d2 d8 f }
  }
  g4 g g8 a
  bes4 bes a8 g
  a2 d,8 e
  f4 f g 
  a2 d,8 f
  e2 f8 d
  e2.
}

pianoPartOne = \chords {
  \global
  r2.
  \repeat volta 2 { 
    d2.:m
    f
    a:m
  } 
  \alternative {
    { d:m }
    { d:m }
  }
  g:m
  ees
  d:m
  bes
  d:m
  a
  a
}

clarinetPartTwo = \relative {
  \repeat volta 2 {
    a'2.
    bes2.
    a4 a a
    a8 g8~g2
    g2.
    f2.
    e4 f e
    d2.
  }
}

pianoPartTwo = \chords {
  \repeat volta 2 {
    d:m
    bes
    f
    c
    g:m
    d:m
    a:m
    d:m
  }
}

clarinetPartThree = \relative {
  \repeat volta 2 {
    d'4 a d
    e a, e' 
    f4. e8 d4
    e2 d8 e
    f4. e8 d4
    c4 bes a
    g f g 
    a b cis
  }
}

pianoPartThree = \chords {
  \repeat volta 2 {
    d2.:m
    a:m
    d:m
    a:m
    bes
    a:m
    g:m
    a
  }
}

clarinetPartFour = \relative {
  \repeat volta 2 {
    d'8. c16 d8 e f a,
    d8. c16 d8 f e a,
    d8. c16 d8 e f g
  }
  \alternative {
      { a4 e4 c }
      { a'4 b ces }
  }
}

pianoPartFour = \chords {
  \repeat volta 2 {
    d:m
    d:m
    d:m
  }
  \alternative {
      {d:m}
      {d:m}
  }
}

clarinetPartFive = \relative {
  f'4. g8 a4
  g4. f8 e4
  f4 g a
  g2 f8 g
  a4. g8 f4
  e4 f e
  d4. e8 c4
  d2 d8 e
  f4 e f 
  g f g 
  a g f
  d2 d8 e 
  f g a
  bis d, g
  f g e
  d2.
}

pianoPartFive = \chords {
  d:m
  c
  f
  c
  f
  a:m
  d:m
  d:m
  d:m
  c
  f
  bes
  d:m
  g:m
  d:m }
  
clarinet = { 
  { \clarinetPartOne }
  { \clarinetPartTwo }
  { \clarinetPartThree }
  { \clarinetPartFour }
  { \clarinetPartFive }
} 

piano = {
  { \pianoPartOne }
  { \pianoPartTwo }
  { \pianoPartThree }
  { \pianoPartFour }
  { \pianoPartFive }
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
%    \new Staff \with { instrumentName = "Saxophone" }  
%    { \transpose ees bes {\saxo_alto} }
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
%  \new Staff \with { instrumentName = "Saxophone" }
%  { 
%    \set Staff.midiInstrument = #"alto sax"  
%    \saxo_alto 
%  }
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

