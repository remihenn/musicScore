\version "2.20.0"
\language "italiano"

\header {
  title = "Swipesy (cakewalk)"
  instrument = "Piano Clarinette Saxophone"
  composer = "Scott Joplin"
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

themaAAnswerClarinet = {
  \compressMMRests { R2*3 }
  \fixed do'{
    r4 r16 sib8\( sol16\)
    sib16\( do' sib sol\) sib\( do' sib sol\)
    sib16\( re'8 sib16\) re'4
  }
}

themaAClarinet = {
  \mark "Thème A"
  \themaAAnswerClarinet
  \fixed do' {
    do'16\( re'8 do'16~ do'16 sol8 sib16\)
    la2
  }
  \themaAAnswerClarinet
  \fixed do' {
    sol16\( re'8. la16 do'8 sib16~\)
  }
}

themaAClarinetWithRepetition = {
  \repeat volta 2 {
    \themaAClarinet
  }
  \alternative {
    {sib16 fa\( sol la sib do re fa\)}
    {sib,16\( fa sol la sib8 fa\)}
  }
}

themaBClarinetBegin = {
  mib'4\( fa,\)
  mib'\( fa,\)
  re'\( sib\)
  sib\( sol\)
}

themaBClarinet = {
  \mark "Thème B"
  \themaBClarinetBegin
  fad re'
  r2
  sib16\( re8 sib16 sol4\)
  r16 re'8\( do16 re16 do sib sol\)
  \themaBClarinetBegin
  mib8\( fa sol la
  sib4\) r4
  sol\( la
}

themaBClarinetWithRepetition = {
  \repeat volta 2 {
    \themaBClarinet
  }
  \alternative {
    { sib4\) r4 }
    { sib4 r4 }
  }
}

themaCClarinet = {
  \mark "Thème C"
  \key mib \major
  r4 r16 do\( re mib\)
  sol8\( fa16 fa~ fa\) r16 r8
  r4 r16 sol,\( lab sib\)
  do8\( sib16 sib~ sib\) r16 r8
  r16 fa\( lab do\) re\( do8 re16
  do8 do16 do16~ do16\) r16 r8
  r16 mib,\( sol sib\) mib\( do8 mib16
  do8 sib16 sib16~ sib8\) r8
  %
  r4 r16 do\( re mib\)
  sol8\( fa16 fa~ fa\) r16 r8
  r4 r16 sol,\( lab sib\)
  do8\( sib16 sib~ sib\) r16 r8
  sib4 mi,
  fa8\( sol lab la\)
  sib4 re
}

themaCClarinetWithRepetition = {
  \repeat volta 2 {
    \themaCClarinet
  }
  \alternative {
    { mib8 r8 r4 }
    { mib8 r8 r4 }
  }
}

themaDPatternClarinet = {
  fa16\( re8 fa16 re8\) r8
}

themaDClarinet = {
  \mark "Thème D"
  \key sib \major
  \themaDPatternClarinet
  \themaDPatternClarinet
  \compressMMRests { R2*2 }
  \themaDPatternClarinet
  \themaDPatternClarinet
  \compressMMRests { R2*2 }
  \themaDPatternClarinet
  \themaDPatternClarinet
  \compressMMRests { R2*2 }
  sib8\( lab sol fa\)
  mib4 mi
  fa16 fa8 fa16\( sol8\) la
}

themaDClarinetWithRepetition = {
  \repeat volta 2 {
    \themaDClarinet
  }
  \alternative {
    { sib2 }
    { sib2 }
  }
}

clarinet = \relative do'' {
  \global
  \transposition sib
  % Music follows here.
  \compressMMRests { R2*4 }
  \themaAClarinetWithRepetition
  \themaBClarinetWithRepetition
  \themaAClarinet
  sib4 r4
  \themaCClarinetWithRepetition
  \themaDClarinetWithRepetition
  \bar "|."
}

themaAQuestionSaxo = {
  sib'16 sib8 fa16 la16 sol fa re
  fa16 sol8 fa16 re8 sib
  sib16 re8 sib16 la8 re16 sol,~
  sol4 r4
}

themaASaxo = {
  \mark "Thème A"
  \themaAQuestionSaxo
  \compressMMRests { R2*4 }
  \themaAQuestionSaxo
  \compressMMRests { R2*3 }
}

themaASaxoWithRepetition = {
  \repeat volta 2 {
    \themaASaxo
  }
  \alternative{
    {r2}
    {r2}
  }
}

themaBIntroductionSaxo = {
  la16 mib'8 do16 re16 do la fa
  la16 mib'8 do16 re16 do la fa
  sib16 re8 sib16 sol4
  r16 re'8 do16 re16 do sib sol
}

themaBSaxo = {
  \mark "Thème B"
  \themaBIntroductionSaxo
  la16 re8 do16 la4~
  la2
  r2 r2
  \themaBIntroductionSaxo
  sib16 do sib sol sib16 do sib sol
  sib16 re8 sib16 re4
  sol,16 re'8. la16 do8 sib16~
}
themaBSaxoWithRepetition = {
  \repeat volta 2 {
    \themaBSaxo
  }
  \alternative {
    {sib8 r8 r4}
    {sib8\repeatTie r8 r4}
  }
}

themaCSaxo = {
  \mark "Thème C"
  \key mib \major
  lab8 fa16 fa~ fa r16 r8
  r4 r16 sib, do re
  fa8 mib16 mib16~ mib16 r16 r8
  r2
  r16 re fa lab re do8 re16
  do8 do16 do16~ do16 r16 r8
  r16 mib, sol sib mib do8 mib16
  do8 sib16 sib16~ sib8 sib16 la
  lab8 fa16 fa~ fa r16 r8
  r4 r16 sib, do re
  fa8 mib16 mib16~ mib16 r16 r8
  r4 r16 sib mib sol
  r16 mi sol sib reb do8 sib16~
  sib16 lab sol8 fa fad
  sol16 sib8 sol16 fa8 fa16 mib~
}

themaCSaxoWithRepetition = {
  r4 r8 sib'16 la
  \repeat volta 2 {
    \themaCSaxo
  }
  \alternative {
    { mib16 sol8 do16 sib8 sib16 la}
    {mib8 sib' mib fa,}
  }
}

themaDSaxo = {
  \mark "Thème D"
  \key sib \major
  r2
  r4 r8 r16 sib,~
  sib do re sib do re do sib~
  sib4~ sib8. r16
  r2
  r4 r8 r16 sol~
  sol8 re' do16 re8 do16
  r2
  r2
  r4 r8 r16 sib~
  sib16 do sib8 do16 sib do re~
  re4~ re8. sib16
  re sib do re do sib lab re
  mib8 re16 do~ do sib sol sib
  fa16 fa'8 re16 do8 do16 sib~
}

themaDSaxoWithRepeatition = {
  \repeat volta 2 {
    \themaDSaxo
  }
  \alternative {
    {sib16 fa'8. fa8 fa8}
    {sib,16\repeatTie sib re fa sib8 r}
  }
}

altoSax = \relative do'' {
  \global
  \transposition mib
  % Music follows here.
  \compressMMRests { R2*4 }
  \themaASaxoWithRepetition
  \themaBSaxoWithRepetition
  \themaASaxo
  \themaCSaxoWithRepetition
  \themaDSaxoWithRepeatition
  \bar "|."
}

introductionRight = {
  fa16\f fa'8-> dod16 re8 do
  sib8 re, mib mi
  fa16 sib8-> sold16 la8 sol
  fa8 fa' <mi sol-4> <mib la>
}

themaAQuestionRight = {
  <re sib'-4>16 <re sib'>8 fa16 la16-5 sol fa re
  fa16 sol8 fa16 re8-2 sib
  sib16-3 re8 sib16 <fad la>8 <fad re'>16 % last pitch after
}

themaAAnswerRight = {
  sol4 r16 sib8-3 sol16
  sib16 do sib sol sib do sib sol
  sib16 <fa re'>8 sib16 % last pitch after
}

themaARight = {
  \mark "Thème A"
  \themaAQuestionRight sol16~
  \themaAAnswerRight <sol re'>4
  do16-2 <do sib'-4>8 <do la'-5>16~ <do la'>16 mi8 <do sol'-4>16
  <mib do'-5>16 fa <mib la> fa sol16 <mib la>8 fa16
  \themaAQuestionRight sol~
  \themaAAnswerRight  <fa re'>4
  <mi sol>16 <mi re'>8. <fa la>16 <fa do'>8 <fa sib>16~
}

themaBIntroductionRight = {
  la16-2 <fa-1 mib'-4>8 do'16-3 re16-4 do la fa
  la16 <fa mib'>8 do'16 re16 do la fa
  sib16 re8 sib16 sol4
  r16 <sol sib re>8 do16-4 re16 do sib sol
}

themaBRight = {
  \mark "Thème B"
  \themaBIntroductionRight
  la16 <fad re'>8 do'16 <fad, la>4~
  <fad la>2
  sib16 re8 sib16 sol4
  r16 <sol sib re>8 do16 re16 do sib sol
  \themaBIntroductionRight
  sib16 do sib sol sib16 do sib sol
  sib16 <fa re'>8 sib16 <fa re'>4
  <mi sol>16 <mi re'>8. <fa la>16 <fa do'>8 <fa sib>16~
}

themaCBeginRight = {
  lab8 fa16-3 fa~ fa do re mib
  <lab, re sol>8 <lab re fa>16 <lab re fa>16~ <lab re fa>16 sib-2 do re
  <sol, fa'>8 <sol mib'>16 <sol mib'>16~ <sol mib'>16 sol lab sib
  <sol do>8 <sol sib>16 <sol sib>16~ <sol sib>16  % last picht after
}

themaCRight = {
  \mark "Thème C"
  \key mib \major
  \themaCBeginRight sol-4 fa mib
  r16 re fa lab re <lab do>8 re16
  <lab do>8 <lab do>16 <lab do>16~ <lab do>16 sib lab fa
  r16 mib-1 sol sib mib <sol, do>8 mib'16
  <sol, do>8 <sol sib>16 <sol sib>16~ <sol sib>8 sib'16-4 la
  \themaCBeginRight sib-1 mib sol
  r16 mi sol sib reb do8 <do, sib'>16~
  <do sib'>16 lab' <sib, do mi sol>8 <lab do fa> <do mib fad>
  sol'16 sib8 sol16 <la, mib' fa>8 <lab fa'>16 <sol mib'>~
}

themaDIntroductionRight = {
  \fixed do {
    fa''16 <fa' sib' re''>8 fa''16 <fa' sib' re''>4
    fa''16 <fa' sib' re''>8 fa''16 <fa' sib' re''>8. %put the last time after
  }
}

themaDRight = {
  \mark "Thème D"
  \key sib \major
  \themaDIntroductionRight <sol sib>16~
  <sol sib>16 do <sol re'> sib <sol do> re' <sol, do> <fa sib>~
  <fa sib>4~ <fa sib>8. fa16
  \themaDIntroductionRight <mi sol>16~
  <mib sol>8 <mi re'> <mi do'>16 <mi re'>8 <fa la do>16~
  <fa la do>8 <fa fa'> <mi mi'> <mib mib'>
  \themaDIntroductionRight <sol sib>16~
  <sol sib> do <sol sib>8 <sol do>16 sib <sol do> <fad re'>~
  <fad re'>4~ <fad re'>8. sib16
  re sib do re do sib lab re
  <sol, mib'>8 re'16 do~ do16 sib sol sib
  fa <fa fa'>8 <fa re'>16 <mi sib' do>8 <mib do'>16 <re sib'>~
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
    { <fa, sib>16 \(fa sol la sib8\) fa}
  }
  \repeat volta 2 {
    \themaBRight
  }
  \alternative {
    {<fa sib>8 \acciaccatura sol' fa \acciaccatura sol fa fa,}
    {<fa sib>8 fa' <mi sol-4> <mib la>}
  }
  \themaARight
  <fa sib>16 \(fa sol la\) sib8 sib'16-4 la
  \repeat volta 2 {
    \themaCRight
  }
  \alternative {
    {<sol mib'>16 sol'8 do16 sib8 sib16 la}
    {<sol, mib'>8 <re' lab' sib> <mib sol sib mib> fa,}
  }
  \repeat volta 2 {
    \themaDRight
  }
  \alternative {
    {<re sib'>16 <fa fa'>8. <fa fa'>8 <fa la fa'>}
    {<re sib'>16 sib' re fa <sib, sib'>8 r}
  }
  \bar "|."
}

introductionLeft = {
  fa16 fa'8-> dod16 re8 do
  sib8 re, mib mi
  fa16 sib8-> sold16 la8 sol
  fa8 <re re'> <reb reb'> <do do'>
}

themaAIntroductionLeft = {
  <sib sib'>8 <fa' sib re> fa, <fa' sib re>
  sib,8 <fa' sib re> fa, <fa' sib re>
  <sol sib re>8 <sol sib re> <re fad la re> <re fad la re>
  <sol sib re>8 <sol sib re> <sol sib re> <sol sib re>
  <mib, mib'>8 <fa fa'> <sol sol'> <la la'>
  <sib sib'>8 <fa' sib re> % 2 pitches after
}

themaALeft = {
  \themaAIntroductionLeft <sol, sol'> <sol' sib re>
  do,8 <sib' do mi> do, <sib' do mi>
  <fa, fa'>8 <fad fad'> <sol sol'> <la la'>
  \themaAIntroductionLeft sol, <fa' sol si>
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

themaCIntroductionLeft = {
  <re re'>8 <lab' sib re> sib, <lab' sib re>
  fa <lab sib re> sib, <lab' sib re>
  mib <sol sib mib> sib, <sol' sib mib>
  mib <sol sib mib> sib, <sol' sib mib>
}

themaCLeft = {
  \key mib \major
  \themaCIntroductionLeft
  fa <lab sib re> sib, <lab' sib re>
  fa <lab sib re> sib, <lab' sib re>
  mib <sol sib mib> sib, <sol' sib mib>
  mib <sol sib mib> <sol sib mib> <sib, sib'>16 <do do'>
  \themaCIntroductionLeft
  <do,, do'>8 <sib'' do mi> <mi,, mi'> <sib'' do mi>
  <fa, fa'> <sol sol'> <lab lab'> <la la'>
  <sib sib'> <sol' sib mib> <do,, do'> <re re'>
}

themaDIntroductionLeft = {
  \fixed do {
    sib, <fa sib re'> fa, <fa sib re'>
    sib, <fa sib re'> fa, <fa sib re'>
  }
}

themaDLeft = {
  \key sib \major
  \themaDIntroductionLeft
  <mib mib'> <fa fa'> <sol sol'> <la la'>
  <sib sib'> <fa' sib re> fa, <fa' sib re>
  \themaDIntroductionLeft
  do <sol' sib> do, <sol' sib>
  <fa, fa'> <fa fa'> <sol sol'> <la la'>
  \themaDIntroductionLeft
  <mib mib'> <mib mib'> <mib mib'> <mib mib'>
  <re re'> <la' la'> <fad fad'> <re re'>
  <sib' sib'> <lab lab'> <sol sol'> <fa fa'>
  <mib mib'> <mib' sol do> <mi, mi'> <mi' sib' dod>
  <fa, fa'> <fa' sib re> <sol, sol'> <la la'>
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
    {<sib re>8 <fa do' mib> <sib re> r}
  }\repeat volta 2 {
    \themaBLeft
  }\alternative {
    {<sib re>8 r r <si, si'>}
    {<sib' re>8 <re, re'> <reb reb'> <do do'>}
  }
  \themaALeft
  { <sib re>8 <fa do' mib> <sib re> <sib, sib'>16 <do do'>}
  \repeat volta 2 {
    \themaCLeft
  }
  \alternative {
    {<mib mib'>8 <sol' sib mib>  <sol sib mib> <sib, sib'>16 <do do'>}
    {<mib, mib'>8 <sib sib'>8 <mib mib,> r}
  }
  \repeat volta 2 {
    \themaDLeft
  }
  \alternative {
    {<sib sib'> <fa' sib re> <fa sib re> <fa do' mib> }
    {<sib, sib'> <fa fa'> <sib, sib'> r}
  }
  \bar "|."
}

clarinetPart = \new Staff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = "Cl"
  midiInstrument = "clarinet"
}
\clarinet
%\transpose sib do {\clarinet}

altoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  shortInstrumentName = "Sax"
  midiInstrument = "alto sax"
} \altoSax

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pn"
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
    \altoSaxPart
    \clarinetPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
\pageBreak
\score{
  <<
    \transpose mib do {\altoSaxPart}
  >>
}
\pageBreak
\score{
  <<
    \transpose sib do {\clarinetPart}
  >>
}
\pageBreak
\score {
  <<
    \pianoPart
  >>
}
