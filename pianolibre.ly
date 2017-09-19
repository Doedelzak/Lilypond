\version "2.18.2"


\header {
  title = "Pluie"
  subtitle = "    "
  composer = "Benjamin Bouvrot"
  
}

rh = \relative c''{
      \hide Staff.TimeSignature
      \clef treble
      \hide Staff.Stem
      \override Rest.stencil = ##f
      \cadenzaOn
      c'4\p c,2 des4 ees2
      \bar "|"
      c'4\mp c,2 des4 ees2 r8
      \bar "|"
      \break
      c'4\p c,2 des4 <aes ees'> ees2 r2 r4 r2 \breathe
      \bar "|"
      ees'2-^\ppp r4 r r r r 
      \override Rest.stencil = ##t
      r2
      \bar "|"
      \break
      
      \override Rest.stencil = ##f
      \ottava #1
      ees'2\mf ces4 aes des ees ces aes2 r4 r c2 aes4 f bes2
      \ottava #0
      \bar "|"
      
      ees,2 b'4 f ees b' f2 <ees,! des'!>
      \bar "|"
      \break
      
      ees'2\mp c'4 f, ees c' f,2 ees
      \bar "|"
      
      cis'4\p cis,2 d4 e2
      \bar "|"
      \break
      
      <f, d'>4\f <e' des'>\breathe
      \bar "|"
      c2\ppp
      \override Rest.stencil = ##t
      r
      \bar "|"
      <d, b'>4\f <cis' d b'>
      \bar "|"
      des2\ppp bes4 c des bes2 r4
      \bar "|"
      \break
      
      a'2\mf bes, c4 des aes'2
      \bar "|"
      a4 bes,!2 c4 des aes' b,2 fis' bes, f2
      \bar "|"
      \override Rest.stencil = ##f
      <bes! f'>2 r4
      \bar "|."
      

      }

lh = \relative c'{
      \hide Staff.TimeSignature
      %%%%%%\override Staff.BarLine.stencil = ##f
      \clef treble
      \override Stem.stencil = ##f
      \override Rest.stencil = ##f
      \cadenzaOn
      r4\sustainOn r r r r r
      \bar "|"
      r c2 r4 aes'2 r8
      \bar "|"
      \break
      \clef bass
      r4 r2 r4 r des,,2 ges,2 des4 fes2
      \bar "|"
      c''2-^\sustainOff des4 bes c des bes
      \override Rest.stencil = ##t
      r2
      \bar "|"
      \break
      
      \override Rest.stencil = ##f
      \clef treble
      r4\sustainOn r r r r r g' e a b g2 e2 r4 r r
      \bar "|"
      
      \clef bass
      c2 r r r 
      <des, ges>
      \break
      
      r r4 r r r r2 r
      \bar "|"
      r4 r2 r4 r2
      \bar "|"
      \break
      
      dis4 
      \ottava #1
      cis''
      \ottava #0
      \bar "|"
      r2\sustainOff r
      \bar "|"
      <b,, cis'>4\sustainOn
      \ottava #1
      cis''
      \ottava #0
      r2\sustainOff r r r
      \bar "|"
      \break
      
      r2\sustainOn r r r
      \bar "|"
      \clef treble
      r4 f,2 r4 a! cis,2 d4 e bes2 c4 des2
      \bar "|"
      r2 r4
      \bar "|."
      \break
      
      }

\score { 
     \new PianoStaff <<
       \set PianoStaff.instrumentName = #"Piano"
       
       \new Staff \rh 
       \new Staff \lh 
       
     >>
}