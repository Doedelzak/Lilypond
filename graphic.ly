\version "2.18.2"

\header {
  title = "Exemples graphiques"
  subtitle = "   "
}

line = \relative c'' {
  \hide Staff.TimeSignature
  \hide Staff.BarLine
  \hide Staff.Clef
  \stopStaff
  \makeClusters { <g b>1 <c g'> <a,, f''> <e' f''> <c, d,> <a,,, g'''> <a' g'> <a'' g''> <c e> <f b> <g a> <g g> <g g> <c,,,, d'''''''> < c d > <b'''' b''''> <a a> <g g> }
  \break
  \startStaff
  \set fontSize = #8
  e'''16-^(
  \stopStaff 
  \override NoteHead.style = #'triangle
  \override NoteHead.color = #grey
  \set fontSize = #5
  d32) 
  e c b g a 
  \override NoteHead.color = #red
  \override NoteHead.style = #'xcircle
  d16[ f e]
  \hide Staff.Stem
  \override NoteHead.style = #'slash
  \override NoteHead.color = #blue
  \override Glissando.style = #'zigzag
  a,32\glissando
  \override NoteHead.color = #yellow
  d,32
  
}

  


\score {
  \new Staff <<
    \line
  
  >>
}
