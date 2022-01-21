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
    g' g fis e
    d c b2
    e4 e d8( g, a4) 
    b2 r2 
    a4 a8( b) c4 b8( a) 
    b4 e g8( e fis g) 
    fis4 fis dis dis 
  }
  \alternative {
    { b2 r2 }
    { e2 r2 }
  }
  \repeat volta 2 {
    d4 d d d
    e e b a
    g g b b
  }
  \alternative {
    { e,2 r2 }
    { e'1 \bar "|." }
  }
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
  \transpose c bes {\piano}
  \new Staff \with { instrumentName = "Clarinette" }  
  { \clarinet }
  \new Staff \with { instrumentName = "Saxophone" }  
  { \transpose ees bes {\saxo_alto} }
  >>
}

\score {
  \new StaffGroup <<
  { \piano }
  \new Staff \with { instrumentName = "Clarinette" }  
  { \clarinet }
  \new Staff \with { instrumentName = "Saxophone" }
  { \saxo_alto }
  >>
}

