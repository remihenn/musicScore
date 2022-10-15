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

right = \relative do' {
  \global
  % Music follows here.
  \repeat volta 2 {

  fa16\f fa'8-> dod16 re8 do
  sib8 re, mib mi
  fa16 sib8-> sold16 la8 sol
  fa8 fa' <mi sol> <mib la>
  \bar "||"
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
  \alternative {
    { <fa sib>16 \(fa sol la sib16 do re fa\) }
    { <fa, sib>16 \(fa sol la sib8\) fa}
  }
  \bar "||"




}

left = \relative do {
  \global
  % Music follows here.
  \repeat volta 2 {
  fa16 fa'8-> dod16 re8 do
  sib8 re, mib mi
  fa16 sib8-> sold16 fa8 sol
  fa8 <re re'> <reb reb'> <do do'>
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
  do8 <sol' sib> fa <la mib'>}
  \alternative {
  {<sib re>8 <fa do' mib> <sib re> r}
  {<sib re>8 <fa do' mib> <sib re> r}
  }
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
