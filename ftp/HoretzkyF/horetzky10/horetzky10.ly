% Entered on Nov 3, 2007
\version "2.11.34"
%#(set-global-staff-size 17) 

\paper {
%	#(set-paper-size "a4")
%	#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##t 
	ragged-bottom = ##f
}

\header {
	title = "Nº. 10. Untitled."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 10. Untitled."
 mutopiacomposer = "HoretzkyF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #268"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/11/05-1099"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  extensively in Europe as a concert performer and teacher. He wrote
%%  between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher: Chappell (London), no date given.
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death.
%%
%%	The dynamic markings for the most part follow the original score; obvious
%%	notation errors have been corrected.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts

dol = \markup { \smaller\italic "dolce."}
cres = \markup{\smaller\italic"cresc:"}
cress = \markup{\tiny\smaller\italic"cresc:"}
espr = \markup{\smaller\italic"espres:"}
rit = \markup{\smaller\italic"ritart:"}
atem = \markup{\smaller\italic"a tempo:"}
smz = \markup{\smaller\italic"smorz:"} % smorzando
showTup = { \override TupletNumber #'transparent = ##f
		\override TupletBracket #'transparent = ##f }
hideTup = { \override TupletNumber #'transparent = ##t
		\override TupletBracket #'transparent = ##t }
seg = \markup {\smaller \smaller \musicglyph #"scripts.segno"}
cod = \markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
toseg = \markup { \bold \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }
fin = \markup {\smaller \smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t	

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{ \center-align 
	{\smaller\bold "Nº. 10  " \tiny\smaller\italic 
	{"ANDANTINO. " "con molta" "ESPRESS:"}}}
	\repeat volta 2 {
		\partial 8*1 <c a>16 <d b> |
		<e c>8. <f d>16 <e c>8 <d b>4 <c a>8 |
		<b a>8. c16 a8 gs4 gs8 |
		a8. b16 c8 d16 b8. gs8 |
		a4. a4\rest 
	}
	
		<c e,>16 <d g,!> |
		<e c>4 c'8 <b g>4 <a f>8 |
		g8. e16 <a c,>8 <g c,>4 e8 |
		c8. b16 c8 g'8 f e |
		d8. e16 c8 b4 g8 |
		c8. b16 c8 d c d |
		e4 a,8 gs4 gs8 |
		a8. b16 c8 d16 b8. gs8 |
		a4. a4\rest		
	
}
		

lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\repeat volta 2 {
		\partial 8*1 r8 |
		a4. e8 gs a |
		d4 ds8 e4 d8 |
		c8. b16 a8 d4 e8 |
		a, e' c a4
	}
	
		r8 |
		<<\voiceFour c4\\{\voiceTwo s4 c'8_\dol c4 c8}>> |
		<e c>4 f,8 e c r |
		e8. d16 e8 c d e |
		f4 fs8 g g, r |
		\once \override DynamicText #'extra-offset = #'(-2.6 . 3.5)
		<e' c>4._\f <g g,> |
		<g c,>4 f16 d e4 d8 |
		c8. b16 a8 d4 e8 |
		a, e' c a4
	
}

staffClassicalGuitar = \new Staff  {
		\time 6/8
		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }			
			\new Voice = C { \voiceFour  \lower }
		>>
		\bar "||"   %%  "|."
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  {\context {
   \Staff
   \consists Span_arpeggio_engraver
 } }

\score {
%%	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
