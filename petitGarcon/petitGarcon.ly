\version "2.22.1"

\header{
  title = "Petit garçon"
}

global = {
  \clef "treble"
  \time 4/4
  \key c \major
  \tempo "Andante"
}

clarinet = \relative c' {
  \global
     r4 r8 c8 c4 d
     e2~e8 e f e 
     d2~d8 d e d 
     c4. a8 a4 c 
     d4. c8 c4 d 
     e2 e8 g f e 
     f4. c8 c4 d 
     e8 e e c d d d b 
     c4. e8 e4 g 
     g2. f4 
     d4. g,8 g g d' g 
     f4 e8 d c4 d 
     e4. c8 c4 d 
     e2 e8 g f e 
     f4. c8 c4 d 
     e8 e e c d d d b 
     c2 r2 \bar "|."
}

piano = \chords {
  \repeat volta 2 {
    e1:m
    e:m
    c g a:m
    e:m b
  }
  \alternative {
    { b1 }
    { e1:m }
  }
  \repeat volta 2 {
    g1
    c2 g
    e:m b
  }
  \alternative {
    { e1:m }
    { e1:m }
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
    dis1
  }
  \alternative {
    { dis1 }
    { e1 } 
  }
  \repeat volta 2 {
    g1
    c2 g2
    b2 dis2
  }
  \alternative {
    { g,1 }
    { e'1 \bar "|." } 
  }
}

\score {
  \new StaffGroup <<
%  \transpose c bes {\piano}
  \new Staff \with { instrumentName = "Clarinette" }  
  { \clarinet }
%  \new Staff \with { instrumentName = "Saxophone" }  
%  { \transpose ees bes {\saxo_alto} }
  >>
  \midi{}
}
%{
\score {
  \new StaffGroup <<
  { \piano }
  \new Staff \with { instrumentName = "Clarinette" }  
  { \clarinet }
  \new Staff \with { instrumentName = "Saxophone" }
  { \saxo_alto }
  >>
}
%}

