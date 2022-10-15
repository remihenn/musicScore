\version "2.20.0"
\language "italiano"

\header {
  title = "Swipesy (cakewalk)"
  instrument = "Piano Clarinette Saxophone"
  composer = "Scott Joplin"
  arranger = "arrangement Rémi Hennebelle"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key sib \major
  \numericTimeSignature
  \time 2/4
  \tempo "Slow" 4=80
}

clarinet = \relative do'' {
  \global
  \transposition sib
  % Music follows here.
  r

}

altoSax = \relative do'' {
  \global
  \transposition mib
  % Music follows here.
  r

}

introductionRight = {
  fa16\f fa'8-> dod16 re8 do
  sib8 re, mib mi
  fa16 sib8-> sold16 la8 sol
  fa8 fa' <mi sol> <mib la>
  \bar "||"
}

themaARight = {
  <re sib'>16 <re sib'>8 fa16 la16 sol fa re
  fa16 sol8 fa16 re8 sib8
  sib16 re8 sib16 <fad la>8 <fad re'>16 sol16~
  sol4 r16 sib8 sol16
  sib16 do sib sol sib do sib sol
  sib16 <fa re'>8 sib16 <sol re'>4
  do16 <do sib'>8 <do la'>16~ <do la'>16 mi8 <do sol'>16
  <mib do'>16 fa <mib la> fa sol16 <mib la>8 fa16
  <re sib'>16 <re sib'>8 fa16 la16 sol fa re
  fa16 sol8 fa16 re8 sib
  sib16 re8 sib16 <fad la>8 <fad re'>16 sol~
  sol4 r16 sib8 sol16
  sib16 do sib sol sib16 do sib sol
  sib16 <fa re'>8 sib16 <fa re'>4
  <mi sol>16 <mi re'>8. <fa la>16 <fa do'>8 <fa sib>16~
}

themaBRight = {
  la16 <fa mib'>8 do'16 re16 do la fa
  la16 <fa mib'>8 do'16 re16 do la fa
  sib16 re8 sib16 sol4
  r16 <sol sib re>8 do16 re16 do sib sol
  la16 <fad re'>8 do'16 <fad, la>4~
  <fad la>2
  sib16 re8 sib16 sol4
  r16 <sol sib re>8 do16 re16 do sib sol
  la16 <fa mib'>8 do'16 re16 do la fa
  la16 <fa mib'>8 do'16 re16 do la fa
  sib16 re8 sib16 sol4
  r16 <sol sib re>8 do16 re16 do sib sol
  sib16 do sib sol sib16 do sib sol
  sib16 <fa re'>8 sib16 <fa re'>4
  <mi sol>16 <mi re'>8. <fa la>16 <fa do'>8 <fa sib>16~


}

right = \relative do' {
  \global
  % Music follows here.
  \introductionRight
  \repeat volta 2 {
    \themaARight
  }
  \alternative {
    { <fa sib>16 \(fa sol la sib16 do re fa\) }
    { <fa, sib>16 \(fa sol la sib8\) fa \bar "||"}
  }
  \repeat volta 2 {
    \themaBRight
  }
  \alternative {
    {<fa sib>8 \acciaccatura sol' fa \acciaccatura sol fa fa,}
    {<fa sib>8 fa' <mi sol> <mib la> \bar "||"}
  }
  \themaARight

}

introductionLeft = {
  fa16 fa'8-> dod16 re8 do
  sib8 re, mib mi
  fa16 sib8-> sold16 fa8 sol
  fa8 <re re'> <reb reb'> <do do'>
  \bar "||"
}

themaALeft = {
  <sib sib'>8 <fa' sib re> fa, <fa' sib re>
  sib,8 <fa' sib re> fa, <fa' sib re>
  <sol sib re>8 <sol sib re> <re fad la re> <re fad la re>
  <sol sib re>8 <sol sib re> <sol sib re> <sol sib re>
  <mib, mib'>8 <fa fa'> <sol sol'> <la la'>
  <sib sib'>8 <fa' sib re> <sol, sol'> <sol' sib re>
  do,8 <sib' do mi> do, <sib' do mi>
  <fa, fa'>8 <fad fad'> <sol sol'> <la la'>
  <sib sib'>8 <fa' sib re> fa, <fa' sib re>
  sib,8 <fa' sib re> fa, <fa' sib re>
  <sol sib re>8 <sol sib re> <re fad la re> <re fad la re>
  <sol sib re>8 <sol sib re> <sol sib re> <sol sib re>
  <mib, mib'>8 <fa fa'> <sol sol'> <la la'>
  <sib sib'>8 <fa' sib re> sol, <fa' sol si>
  do8 <sol' sib> fa <la mib'>
}

themaBLeft = {
  <do, do'>8 <fa la mib'> fa, <fa' la mib'>
  do <fa la mib'> fa, <fa' la mib'>
  sib,8 <fa' sib re> re <fa sib re>
  <sol, sol'>8 <sol' sib re> <sol, sol'> <sol' sib re>
  <re, re'>8 <fad' do' re> <re, re'> <fad' do' re>
  <re, re'>8 <mib mib'>16 <re re'>~ <re re'> <do do'> <sib sib'> <la la'>
  <sol sol'>8 <sol'' sib re> sib, <sol' sib re>
  sol, <sol' sib re> <sol sib re> <sol sib re>
  do,8 <fa la mib'> fa, <fa' la mib'>
  do8 <fa la mib'> fa, <fa' la mib'>
  sib, <fa' sib re> re <fa sib re>
  <sol, sol'> <sol' sib re> <sol sib re> <sol sib re>
  <mib, mib'> <fa fa'> <sol sol'> <la la'>
  <sib sib'> <fa' sib re> sol, <fa' sol si>
  do <sol' sib> fa <la mib'>
}

left = \relative do {
  \global
  % Music follows here.
  \introductionLeft
  \repeat volta 2 {
    \themaALeft
  }
  \alternative {
    {<sib re>8 <fa do' mib> <sib re> r}
    {<sib re>8 <fa do' mib> <sib re> r \bar "||"}
  }\repeat volta 2 {
    \themaBLeft
  }\alternative {}
}

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  midiInstrument = "clarinet"
} \clarinet

altoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  midiInstrument = "alto sax"
} \altoSax

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
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
    \clarinetPart
    \altoSaxPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
