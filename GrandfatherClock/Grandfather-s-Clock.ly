\version "2.23.82"

\header {
  title = "Grandfather‘s Clock"
}

\paper {
  #(set-paper-size "a4")
  system-count = #10
}

global = {
  \key c \major
  \numericTimeSignature
  \time 2/4
  \tempo \markup "Con Moto"
  \language "italiano"
}

CodaClarinetI = \relative do' {
  do'2-> \mp
  re2->
  re2->
}

themeAClarinetI = \relative do' {
  do'4\fermata
  \once \override BreathingSign.text = #(make-musicglyph-markup "scripts.caesura.straight")
  \breathe sol\mf
  \tempo \markup "A Tempo"
  \set Score.rehearsalMark = #format-mark-box-letters
  \repeat volta 2 {
    \mark \default
    do4 si8\( do\)
    re4 do8\( re\)
    mi4 fa8\( mi\)
    la,4 \breathe re8 re
    do4 do8 do
    si4 la8\( si\)
    do2\(
  }
  \alternative {
    {do4\) \breathe sol8 sol}
    {do4\repeatTie r}
  }
  \bar "||"
}

themeBBeforeSegnoClarinetI = \relative do' {
  \mark \default
  mi'2 \pp
  fa2
  fa4 re
  do4 r
  mi2\( \p
  la,2\)
  r4 la\(
  si4\) \breathe sol8\f sol
}

themeBAfterSegnoClarinetI = \relative do' {
  do'4 \parenthesize \f r
  re4 r
  mi16-. mi mi8-.-. fa\( mi\)
  la,4 \breathe re8 re
  do2
  si4 la8\( si\)
  do2~
}

themeDClarinetI = \relative do' {
  \mark #4
  do'4 sol8 sol
  la8\( sol\) sol4
  mi8\( sol\) sol4
  mi8\([ sol\) sol sol]
  do4 sol8 sol
  la8\( sol\) sol4
  mi8\( sol\) sol4
  mi8\( sol\) sol4 \bar "||"
}

clarinetI = \relative do' {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \global
  \transposition sib
  % Music follows here.
  \CodaClarinetI
  \themeAClarinetI
  \themeBBeforeSegnoClarinetI
  \repeat segno 2 {
   % do2
  \themeBAfterSegnoClarinetI
    \alternative {
      \volta 1 {
        do'4 r8 sol\mf \bar "||"
        \themeDClarinetI
      }
      \volta 2 \volta #'(){
        \section
        \sectionLabel "Coda"
        do4 \repeatTie r
        \CodaClarinetI
        do4\fermata \mf r \bar "|."
      }
    }
  }
}

CodaClarinetII = \relative do' {
  r8 mi\mf[-. sol-. mi-.]
  r8 fa[-. sol-. fa-.]
  r8 fa[-. sol-. fa-.]
}

themeAClarinetII = \relative do' {
  sol'4\fermata
  \once \override BreathingSign.text = #(make-musicglyph-markup "scripts.caesura.straight")
  \breathe fa\mf
  \tempo \markup "A Tempo"
  \repeat volta 2 {
    mi8[ mi sol\( mi\)]
    fa2
    sol8[ sol la\( sol\)]
    fa4 \breathe la8 la
    sol4 sol8 sol
    fa4 fa8 fa
    mi8[ mi\( sol mi\)]
  }
  \alternative {
    {do4 \breathe fa8 fa}
    {do4 r}
  }
  \bar "||"
}

themeBClarinetII = \relative do' {
  do'2 \pp
  la2
  la4 sol8\( fa\)
  mi4 r
  do'2\( \p
  fad,2\)
  r4 fa?\(
  sol4\) sol8\f sol \bar "||"
  sol4 \parenthesize \f r
  si4 r
  sol16-. sol-. sol8-. sol sol
  fa4 \breathe la 8 la
  sol8\([ mi\) fa\( mi\)]
  fa4 fa8 fa
  mi8[ mi sol\( mi\)]
  do4 r8 sol' \mf \bar "||"
}

themeDClarinetII = \relative do' {
  do'4 sol8 sol
  la8\( sol\) sol4
  do,8\( mi\) mi4
  do8\([ mi\) mi sol]
  do4 sol8 sol
  la8\( sol\) sol4
  do,8\( mi\) mi4
  do8\( mi\) mi4
  \bar "||"
}

clarinetII = {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \global
  \transposition sib
  \CodaClarinetII
  \themeAClarinetII
  \themeBClarinetII
  \themeDClarinetII
  do'4 r
  \CodaClarinetII
  sol'4 \parenthesize \mf \fermata r \bar "|."
}

CodaClarinetIII = \relative do' {
  r8 do\mf[-. mi-. do-.]
  r8 re[-. si-. re-.]
  r8 re[-. si-. re-.]
}

ThemeAClarinetIII = \relative do' {
  mi4\fermata
  \once \override BreathingSign.text = #(make-musicglyph-markup "scripts.caesura.straight")
  \breathe si8\(\mf re\)
  \repeat volta 2 {
    do2
    si8[ si la\( si\)]
    do2
    do4 \breathe fa8 fa
    mi4 mi8 mi
    re4 do8\( re\)
    do2\(
  }
  \alternative {
    {do4\) \breathe si8 si}
    {do4 \repeatTie do8^"Solo"\mf \( mi\)}
  }
  \bar "||"
}

ThemeBClarinetIII = \relative do' {
  sol'4 mi8\( re\)
  do4 si8\( do\)
  re8[\( do\) si\( la]\)
  sol4 do8\( mi\)
  sol4 mi8\( re\)
  do4 si8\( do\)
  re2(
  re4) \breathe sol8\f fa \bar "||"
  mi4 \parenthesize \f r
  fa4 r
  do16-. do do8-.-. sib8 sib
  do4 \breathe fa8 fa
  mi8\( do\) re do
  re4 do8\( re\)
  do2(
  do4) r8 sol\mf \bar "||"
}

ThemeDClarinetIII = \relative do' {
  do4 sol8 sol
  la8\( sol\) sol4
  sol8\( do\) do4
  sol8\([ do\) do sol]
  do4 sol8 sol
  la8\( sol\) sol4
  sol8\( do\) do4
  sol8\( do\) do4 \bar "||"
}

clarinetIII = \relative do' {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \global
  \transposition sib
  % Music follows here.
  \CodaClarinetIII
  \ThemeAClarinetIII
  \ThemeBClarinetIII
  \ThemeDClarinetIII
  do4 \repeatTie r
  \CodaClarinetIII
  mi4\fermata \parenthesize \mf r
}

clarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} \clarinetI

clarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} \clarinetII

clarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \clarinetIII

\score {
  <<
    \clarinetIPart
    \clarinetIIPart
    \clarinetIIIPart
  >>
  \layout { }
  \midi { }
}



\pageBreak
% Piano part
\score{
  <<
    \transpose do sib, {\clarinetIPart}
    \transpose do sib, {\clarinetIIIPart}
    \clarinetIIPart
  >>
}
