Compte-rendu des ateliers Lilypond présentés à Paris dans le cadre du meetup Creative Coding Paris. 


# I/ Les bases de Lilypond   →   start.ly

- Il est nécessaire de démarrer le fichier par la mention de la version utilisée de Lilypond, pour assurer la compatibilité avec les versions futures :

   ``` 
   \version "2.18.2"
   ```

- Entrer des commentaires dans le code : 

   ```
   % commentaire
   ```

- Entrer des notes :
une apostrophe ' monte la note d'une octave et une virgule 
, baisse la note d'une octave. Sans indication, Lilypond écrit la note la plus proche de la note précédente, dans la limite d'un intervalle de quarte. Au-delà d'un intervalle de quarte, il faudra ajouter une ' ou une , pour monter ou baisser la note à l'octave désiré.
                          Exemple :

   ```  
   \relative c'{
        c d e a e b' d,                           
     }
   ```

- Valeurs rythmiques : se placent après les notes. 1 vaut une ronde, 2 une blanche, 4 une noire, 16 une double-croche, etc.

   ``` 
   a1 b2 c4 d8 e16
   ```

- Dièses (is) et bémols (es), double-dièses (isis) et double-bémols (eses) : se placent aussi directement après les notes

   ``` 
   aes bis ces deses eisis
   ```

- Accords : 
		* nb : la première note de l'accord est celle prise en compte pour le calcul des octaves relatives

   ```
   <c e g>4
   ```

- Comment décider librement des ligatures des croches : [ après une note pour démarrer la ligature, et ] après une note pour terminer la ligature. Attention à l'espace après [ et pas d'espace avant ]
   ```
   c8[ d e f g] a[ b] c d 
   ```

- Changer de clé :
   ``` 
  \clef bass
  \clef treble
  \clef soprano
  \clef mezzosoprano
  \clef alto
  \clef baritone
  % etc.
  ```

 - Changer de mesure : 
   ```
   \time 4/4
   \time 7/8
   \time 11/16
   % etc.
   ```

- Modifier les divisions de temps au sein de la signature rythmique :

   ```
   \overrideTimeSignatureSettings       % changer division des temps
    			7/8                           % signature rythmique dont on va modifier les paramètres par défaut
    			1/8                           % unité de division
    			#' (2 2 2 1)                  % description divisions de temps
    			#' ()                         % supprime les mises en forme par défaut
   \time 7/8                            % une fois les paramètres par défaut modifiés, on peut déclarer le changement de mesure
   ```

- Changer d'armature :
   ```
   \key c \minor
   \key ees \major
   % etc.
   ```


- Mise en page à placer en début de fichier (après la mention de la version de Lilypond !) :
   ```
   \header {
	        title = ""
	       subtitle = ""
	        composer = ""
    	}
   ```

- Instrumentation à placer en fin de fichier : \score

     - \newStaff : \newStaff permet de créer une portée au sein de \score
     - \new ChoirStaff, \new PianoStaff... : templates
     - \GrandStaff : groupement libre de portées

     - Exemple d'instrumentation : 

   ```
   \score {
         \new PianoStaff <<
    	       \set PianoStaff.instrumentName = #"Piano"                                            
    		     \new Staff \maindroite
    	       \new Staff \maingauche
             >>
          }
   ```
 

- Expression et articulation à insérer à la suite d'une note :

     - Tiret + signes présents sur le clavier : ' ^ ~ . > _ 

     - http://lilypond.org/doc/v2.18/Documentation/notation/expressive-marks-attached-to-notes#articulations-and-ornamentations

     - \p, \mf, \fff, \sustainOn, \sustainOff, \breathe, \fermata...


- Paroles →  words.ly
     - Créer une “portée” de paroles dans \score : 

   ```
   \addLyrics{ 
        \words
        }
   ```                                     }
   
- Puis, dans le corps de la partition, utiliser le lyricmode : 
   ```
   words = \lyricmode {
        Pa –- ro –- les
        }
   ```
      


# II/ Cas particulier : morceau pour piano avec rythme libre et sans mesures, mais séparation de motifs →  pianolibre.ly

- Comment effacer des éléments :
        - Effacer les queues des notes : \hide Staff.Stem
        - Effacer l'indication de mesure : \hide Staff.TimeSignature
        - Effacer les silences : \override Rest.stencil = ##f                                             		(Car \hide est permanent, hors on veut insérer des silences ponctuels. Dans ce cas, il suffira de remettre cette variable à ##t )

- Comment espacer librement les notes :
        - Silences invisibles : \override Rest.stencil = ##f
		Avantage : permet tout autant des séparations très libres (avec petites valeurs) que d'avoir à coup sûr certaines notes bien en face entre les parties (valeurs longues, ou simplement calcul de l'"espace" rythmique à combler)

- Comment mettre les barres de mesure de manière libre :
        - \CadenzaOn : se libérer du formatage des mesures
        - \bar = "|" : insérer manuellement une mesure
        - \break pour les changements de lignes




# III/ Liste d'éléments pour les notations alternatives →  graphic.ly

- Clusters
   ```
   \makeClusters { <g b>2 <c g'> }
   ```

- Changer les couleurs
         - \override NoteHead.color = #red
         - \override Stem.color = #green
         etc.
         - http://lilypond.org/doc/v2.18/Documentation/notation/list-of-colors

- Changer la taille des objets
   ```
   \override NoteHead.font-size = #-3
   ```

- Supprimer et remettre des lignes de portées :
         - \stopStaff et \startStaff

- Changer les têtes de notes
   ```
   \override NoteHead.style = #'triangle
   ```
         - http://lilypond.org/doc/v2.18/Documentation/notation/note-head-styles

- Outils de notation graphique
         - http://lilypond.org/doc/v2.18/Documentation/notation/graphic
