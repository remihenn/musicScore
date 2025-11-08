\version "2.24.0"
\language "italiano"

\header {
    title = "Dernière Danse"
    composer = "Indila"
}

global = {
    \key do \minor
    \time 4/4
    \tempo 4=60
}

accompagnementViolonSansSilence = {
    do='8. do16 fa8. fa16 mib8. mib16 re8 r
    do8 re16 mib fa8. fa16 mib8. mib16 re8
}

accompagnementViolon = {
    \accompagnementViolonSansSilence r8
}

conclusionViolon = {
    sol8 
    mib4 r4 r2
}

violin = \relative do'' {
    \global
    \repeat unfold 14 { \accompagnementViolon }
    \accompagnementViolonSansSilence
    \conclusionViolon
    \fine
}

premierTheme = {
    re16 re do
    re4 do r16 mib mib sol fa mib re do
    re4 mib r16 mib mib sol fa mib re do
    re4 do r16 
}

accompagnementClarinettePremierTheme = {
    r8 sol r lab r sol r fa
    r8 sol r lab r sol r fa
    do'8. do16 re do sib lab sol4~sol16 fa sol lab
    sol4. sol8 do,2
}

conclusionPremierTheme = {
    re16 re do re do re do
    sol sol sol do re do re do re2
}

autreConclusionPremierTheme = {
    fa8 sol16 mib8 re
    do4 sib2 si4
}

deuxiemeTheme = {
    sol=''8 sol lab lab sol sol fa4
    r16 sol sol sol lab8 lab sol sol fa4
    r16 sol sol sol lab8 lab sol sol fa fa
    mib mib fa fa mib mib re16
}

clarinet = \relative do'' {
    \global
    \transposition sib {
        \repeat unfold 3 {r1}
        r2 r4 r16 \premierTheme
        \conclusionPremierTheme
        \accompagnementClarinettePremierTheme
        \deuxiemeTheme r16 r r
        \deuxiemeTheme
        \premierTheme
        \autreConclusionPremierTheme
        \deuxiemeTheme r16 r r
        r1 r1 r1
    }
    \fine
}

altoSax = \relative do'' {
    \global
    \transposition mib
    \repeat unfold 7 {r1}
    r2 r4 r16 \premierTheme
    \autreConclusionPremierTheme
    \deuxiemeTheme r16 r r
    \deuxiemeTheme r16 r r
    \repeat unfold 4 {r1}
    \deuxiemeTheme r16 r r
    r1 r1 r1
    \fine
}

right = \relative do'' {
    \global
    \repeat unfold 10 {r1}
    r8 sol r lab r sol r fa
    r8 sol r lab r sol r fa
    \repeat unfold 11 {r1}
    r2 r8 r16 do' sib re8 sib16
    sol4 sol r16 do re do re mib re do
    mib re do re do4 r16 do do sib re sib sol fa
    sol4 sol r16 mib re mib
    sol mib re mib 
    re4 do r2
    \repeat unfold 3 {r1}
    \fine
}

accompagnementPiano = {
    r8 <do mib sol> r <do fa lab> r <do mib sol> r <si re fa sol>
}

conclusionPiano = {
    r1
}

left = \relative do' {
    \global
    r1
    r1
    \repeat unfold 25 {
        \accompagnementPiano
    }
    <do mib sol>4 <do fa lab> <do mib sol> <si re fa sol>
    \conclusionPiano
    \fine
}

violinPart = \new Staff \with {
    instrumentName = "Violon"
    shortInstrumentName = "Violon"
    midiInstrument = "violin"
} \violin

clarinetPart = \new Staff \with {
    instrumentName = "Clarinette"
    shortInstrumentName = "Clarinette"
    midiInstrument = "clarinet"
} \clarinet

altoSaxPart = \new Staff \with {
    instrumentName = "Saxophone Alto"
    shortInstrumentName = "Saxophone Alto"
    midiInstrument = "alto sax"
} \altoSax

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
        \transpose do re \violinPart
        \transpose sib re \clarinetPart
        \transpose mib re \altoSaxPart
        \transpose do re \pianoPart
    >>
    \layout { }
    \midi { }
}
\pageBreak
\score{
  <<
      \transpose do re \violinPart
  >>
}
\pageBreak
\score{
  <<
      \transpose sib re \clarinetPart
  >>
}
\pageBreak
\score{
  <<
      \transpose mib re \altoSaxPart
  >>
}
\pageBreak
\score{
  <<
      \transpose do re \pianoPart
  >>
}
\pageBreak
\score {
    <<
        \transpose do re \violinPart
        \transpose do re \clarinetPart
        \transpose do re \altoSaxPart
        \transpose do re \pianoPart
    >>
}
