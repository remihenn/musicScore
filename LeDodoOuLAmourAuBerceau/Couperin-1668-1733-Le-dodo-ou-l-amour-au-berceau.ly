\version "2.24.0"
\language "italiano"

\header {
    title = "Le dodo ou l‘amour au berceau"
    composer = "Couperin (1668-1733)"
}

global = {
    \key la \major
    \time 2/2
    \tempo 2=100
}

themePrincipalSaxo = {
    \textMark "Thème principal majeur"
    \partial 2 si2\prall\(
    la2\) si\prall\(
    la2\) si4 dod\turn
    re4 dod si8\( mi re mi
    dod4\prall\) si8 la
    
    \partial 2 si2\prall\(
    la2\) si\prall\(
    la2\) si4 dod\turn
    re4 dod si8\prall la si dod
    la2\mordent
}

deuxiemeThemeMajeurSaxo = {
    \textMark "Deuxième thème majeur"
    \partial 2 fad'2\(
    mi2\mordent\) fad\(
    mi2\mordent\) fad\(
    mi2\mordent\) re4.\prall dod16 re
    mi2 dod\(
    si2\mordent\) dod\(
    si2\mordent\) si4 dod8 si
    la8 si sold la fad si la si
    sold4\prall fad8 mi dod'2\(
    si\prall\) la\mordent\(
    sold\prall\) fad'\(
    mi\mordent\) re\mordent\(
    dod\prall\) si
    mi4\mordent fad8\( mi\) re\( dod\) re\( si\)
    dod4\prall si8 la    
}

premierThemeMineurSaxo = {
    \textMark "Thème principal mineur"
    \key la \minor
    \partial 2 mi=''2\(
    re2\prall\) do\mordent\(
    si2\prall\) mi4\( fa8 mi\)
    re4\prall do mi8 re do si
    do4\mordent si8 la do2\mordent\(
    si2\prall\) la \mordent\(
    sold2\prall\) do4\( re8 do\)
    si4\prall la do8 si la sold
    la2
}

deuxiemeThemeMineurSaxo = {
    \textMark "Deuxième thème mineur"
    \key la \minor
    \partial 2 mi'2\(
    re2\mordent\) re\prall\(
    do2\) do4\( re8 do\) 
    fa4 mi re\prall do
    si4\prall la8 sol
    sol'4\(  la8 sol\)
    fa2\prall mi4\( fa8 mi\)
    re2\prall sol4\( la8 sol\)
    fa4\prall mi fa8 mi re mi
    do8 re mi fa sol4\( la8 sol\)
    fa2\prall mi4\( fa8 mi\)
    re2\prall do4\( re8 do\)
    re4 mi mi8 fa mi re
    mi4\prall re8 do
}

sopranoSaxo = \relative do'' {
    \global
    \transposition sib
    \repeat volta 2 {\themePrincipalSaxo}
    \deuxiemeThemeMajeurSaxo
    \themePrincipalSaxo
    \repeat volta 2 {\premierThemeMineurSaxo}
    \deuxiemeThemeMineurSaxo
    \premierThemeMineurSaxo
    \themePrincipalSaxo
  
}

themePrincipalPianoSoprano = {
    \relative do'' {\partial 2 re,8 la' sold mi
    dod8 la' sold la re, la' sold mi
    dod8 la' sold la fad la mi la
    re,8 la' fa la mi la mi re
    dod8 la' mi la re, la' sol mi
    dod8 la' sol la re, la' sol mi dod8 la' sol la fa la mi la
    re,8 la' fad la mi la mi re
    dod8 mi la mi
    }
}

themePrincipalPianoAlto = {
    \relative do' {\partial 2 re2
    do2 re
    do2 r
    r r
    do re
    do re
    do r
    r r do}
}

themePrincipalPianoTenor = {
    \relative do' {
        \partial 2 la2~
        la la~
        la la~
        la la4 sold
        la2 la~
        la la~
        la la~
        la la4 sold
        la2   
    }
}

themePrincipalPianoBasse = {
    \relative do {
        \partial 2 r2
        la1
        la2 re4 mi
        fad re mi2
        la'2 la4 r2
        la1
        la2 re4 mi
        fad re mi2
        la2
    }
}

pianoSoprano = {
    \mergeDifferentlyHeadedOn
    \new Voice \voiceOne
    \repeat volta 2 {\themePrincipalPianoSoprano}
}

pianoAlto = {
    \new Voice \voiceTwo
    \repeat volta 2 {\themePrincipalPianoAlto}
}

right = {
    \clef treble
    <<
        \pianoSoprano
        \pianoAlto
    >>
}

pianoTenor = {
    \mergeDifferentlyHeadedOn
    \new Voice \voiceOne
    \repeat volta 2 {\themePrincipalPianoTenor}
}

pianoBasse = {
    \mergeDifferentlyHeadedOn
    \new Voice \voiceOne
    \repeat volta 2 {\themePrincipalPianoBasse}
}

left = {
    \key la \major
    \clef bass
    <<
        \pianoTenor
        \pianoBasse
    >>
}

sopranoSaxoPart = \new Staff \with {
    instrumentName = "Saxophone Soprano"
    shortInstrumentName = "Sax"
    midiInstrument = "soprano sax"
} \sopranoSaxo

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
        \sopranoSaxoPart
        \pianoPart
    >>
    \layout { }
    \midi { }
}
\pageBreak
\score {
    <<
        \transpose sib do' \sopranoSaxoPart
    >>
    \layout { }
}
