\version "2.22.1"

\header{
  title = "Petit garçon"
}

global = {
  \clef "treble"
  \time 4/4
  \key c \Major
  \tempo "Andante"
}

clarinet = \relative c' {
  \global
  \repeat volta 2 {
     c8 c4 d |
     e2~e8 e f e 
     d2~d8 d e d 
     c2 a8 a a c 
     d4~d8 c c4 d 
     e2 e8 g f e 
     f c c d e e e c d d d b c % j en suis au debut de la ligne
     e e g g f d g, g g d g f e d c d e
     c c d e e g f e f c c d e e e c d d d b c 

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
  \midi{}
}

