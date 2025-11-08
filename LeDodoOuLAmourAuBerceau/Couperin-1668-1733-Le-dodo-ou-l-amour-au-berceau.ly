\version "2.24.0"
\language "italiano"

\header {
    title = "Le dodo ou l‘amour au berceau"
    composer = "Couperin (1668-1733)"
}

global = {
    \key la \major
    \time 2/2
    \tempo 2=60
}

themePrincipalSax = {
    \partial 2 si2\prall
    la2 si\prall
    la si4 dod\turn
    re4 dod si8 mi re mi
    dod4\prall si8 la
    
    \partial 2 si2\prall
    la2 si\prall
    la si4 dod\turn
    re4 dod si8\prall la si dod
    la2\mordent
}

themeDeux = {
    \partial 2 fad'2
    mi2\mordent fad
    mi2\mordent fad
    mi2\mordent re4.\prall dod16 re
    mi2 dod
    si2\mordent dod
    si2\mordent si4 dod8 si
    la8 si sold la fad si la si
    sold4\prall fad8 mi dod'2
    si\prall la\mordent
    sold\prall fad'
    mi\mordent re\mordent
    dod\prall si
    mi4\mordent fad8 mi re dod re si
    dod4\prall si8 la    
}

sopranoSax = \relative do'' {
    \global
    \transposition sib
    \repeat  volta 2 {\themePrincipalSax}
    \themeDeux
    \themePrincipalSax
  
}

right = \relative do'' {
    \global
    % Music follows here.
  
}

left = \relative do' {
    \global
    % Music follows here.
  
}

sopranoSaxPart = \new Staff \with {
    instrumentName = "Saxophone Soprano"
    shortInstrumentName = "Saxophone Soprano"
    midiInstrument = "soprano sax"
} \sopranoSax

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
        \sopranoSaxPart
        \pianoPart
    >>
    \layout { }
    \midi { }
}
