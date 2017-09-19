\version "2.18.2"

\header {
	   title = "Titre"
	   subtitle = "Sous-titre"
	   composer = "Compositeur"
	
	}



maindroite = \relative c'{
  
   \clef treble
   \key c \minor 
   c4\mf d ees f
   \overrideTimeSignatureSettings       % changer division des temps
    			7/8                                         % mesure
    			1/8                                         % unité de division
    			#' (2 3 2)                            % description divisions de temps
    			#' () 
   \time 7/8
   ees8\ppp f g aes bes c-. ees-.
   
}

maingauche = \relative c{
   
   \clef bass
   \key c \minor 
   <c ees g>1
   \overrideTimeSignatureSettings       % changer division des temps
    			7/8                                         % mesure
    			1/8                                         % unité de division
    			#' (2 3 2)                            % description divisions de temps
    			#' () 
   \time 7/8
   ees8 f g aes bes c-. ees-.
   
   
   
}

\score {
   \new PianoStaff <<
        \set PianoStaff.instrumentName = #"Piano"                                            
    	\new Staff \maindroite
    	\new Staff \maingauche
    	
   >>
    	
   }