\version "2.18.2"

\header {
  title = ""
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=100
}



melody = \relative c'' {
  c4 d e f g4 r4 r2 
  \break
  c,,16 d e f g a b c d e f
  
}

words = \lyricmode {
  J'utilise volontairement des longs mots 
  \break
  J'u -- ti -- lise -- vo -- lon -- tai -- re -- ment -- des -- longs -- mots
  
}

\score {
  <<
    \new Staff { \melody }
    \addlyrics { \words }
  >>
}
