#(define (tie::tab-clear-tied-fret-numbers grob)
   (let* ((tied-fret-nr (ly:spanner-bound grob RIGHT)))
      (ly:grob-set-property! tied-fret-nr 'transparent #t)))

\version "2.14.0"
\paper {
   indent = #0
   print-all-headers = ##t
   ragged-right = ##f
   ragged-bottom = ##t
}
\layout {
   \context { \Score
      \override MetronomeMark #'padding = #'5
   }
   \context { \Staff
      \override TimeSignature #'style = #'numbered
      \override StringNumber #'transparent = ##t
   }
   \context { \TabStaff
      \override TimeSignature #'style = #'numbered
      \override Stem #'transparent = ##t
      \override Beam #'transparent = ##t
      \override Tie  #'after-line-breaking = #tie::tab-clear-tied-fret-numbers
   }
   \context { \TabVoice
      \override Tie #'stencil = ##f
   }
   \context { \StaffGroup
      \consists "Instrument_name_engraver"
   }
}
TrackAVoiceAMusic = #(define-music-function (parser location inTab) (boolean?)
#{
   \tempo 4=140
   \clef #(if inTab "tab" "bass_8")
   \key aes \major
   \time 4/4
   \oneVoice
   r1 
   r1 
   <des,~\3>2. <des,\3>8 <aes,,\4>8 
   <des,\3>2. <c,\3>8 <bes,,\3>8 
   <aes,,~\4>2. <aes,,\4>8 <aes,,\4>8 
   <aes,,\4>2. <c,\3>4 
   <des,~\3>2. <des,\3>8 <aes,,\4>8 
   <des,\3>2. <ees,\2>8 <f,\2>8 
   <aes,,\4>2 <ees,\2>2 
   <aes,\1>4 <g,\1>4 <f,\2>4 <ees,\2>4 
   <des,~\3>2. <des,\3>8 <aes,,\4>8 
   <des,\3>2. <c,\3>8 <bes,,\3>8 
   <aes,,~\4>2. <aes,,\4>8 <aes,,\4>8 
   <aes,,\4>2. <c,\3>4 
   <des,~\3>2. <des,\3>8 <aes,,\4>8 
   <des,\3>2. <ees,\2>8 <f,\2>8 
   <aes,,\4>2 <ees,\2>2 
   <aes,\1>4 <g,\1>4 <f,\2>8 <ees,\2>8 <c,\3>4 
   <des,\3>4 <aes,\1>8 <des~\1>8 <des\1>8 <aes,\1>8 <des\1>8 <ees\1>8 
   <des,\3>4 <aes,\2>8 <des~\1>8 <des\1>8 <c\1>8 <aes,\2>8 <ees,\3>8 
   <aes,,\4>4 <ees,\2>8 <aes,~\1>8 <aes,\1>8 <ees,\2>8 <aes,\1>8 <bes,\1>8 
   <aes,,\4>4 <ees,\2>8 <aes,~\1>8 <aes,\1>8 <bes,\1>8 <aes,\1>8 <ees,\2>8 
   <des,\3>4 <aes,\2>8 <des~\1>8 <des\1>8 <aes,\2>8 <des\1>8 <ees\1>8 
   <des,\3>4 <aes,\2>8 <des~\1>8 <des\1>8 <c\1>8 <aes,\2>8 <ees,\3>8 
   <aes,,\4>4 <ees,\2>8 <aes,\1>8. <ees,\2>16 <ees,\2>8 <aes,\1>8 <bes,\1>8 
   <aes,,\4>4 <ees,\3>8 <aes,~\2>8 <aes,\2>8 <bes,\2>8 <ees\1>8 <ees\1>8 
   <des,\3>4. <des,~\3>8 <des,\3>4 r4 
   r1 
   <aes,,\4>4. <aes,,\4>8 r2 
   r2 r4. <aes,,\4>8 
   <des,\3>4. <des,~\3>8 <des,\3>4 r4 
   r2 r8 <g,\1>8 <g,\1>8 <ees,\2>8 
   <aes,,\4>4. <aes,,\4>8 r2 
   r2. <aes,,\4>8 <bes,,\4>8 
   <c,\4>4 <bes,\2>4 <c\2>4 <f\1>4 
   <bes,,\4>4 <aes,\2>4 <bes,\2>4 <ees\1>4 
   <aes,,\4>8 <bes,,\4>8 <ees,\3>8 <f,\3>8 <bes,\2>8 <aes,\2>8 <des\1>8 <ees\1>8 
   <f\1>4 <ees\1>4 <bes,\2>2 
   <c,\4>8 <bes,\2>8 <c\2>8 <bes,\2>8 <f\1>8 <ees\1>8 <c\2>8 <bes,\2>8 
   <aes,,\4>8 <bes,,\4>8 <bes,\2>8 <aes,\2>8 <f,\3>8 <ees,\3>8 <bes,,\4>8 <aes,,~\4>8 
   <aes,,\4>8 <bes,,\4>8 <ees,\3>8 <f,\3>8 <bes,\2>8 <aes,\2>8 <des\1>8 <ees\1>8 
   <aes\1>4 <g\1>4 <f\1>8 <ees\2>8 <c\2>4 
   <ees,~\2>2. <ees,\2>8 <bes,,\3>8 
   <ees,\2>2. <ees,\2>4 
   <des,~\3>2. <des,\3>8 <aes,,\4>8 
   <des,\3>2. <des,\3>8 <aes,,\4>8 
   <c,\3>2. <c,\3>4 
   <b,,\3>2 <bes,,\3>2 
   <ees,\2>4 <bes,,\3>8 <f,~\2>8 <f,\2>8 <ees,~\2>8 <ees,\2>8 <bes,,\3>8 
   <ees,\2>4 <bes,,\3>8 <ees,~\2>8 <ees,\2>8 <f,~\2>8 <f,\2>8 <bes,,\3>8 
   <ees,~\2>2. <ees,\2>8 <bes,,\3>8 
   <ees,\2>2. <ees,\2>4 
   <des,~\3>2. <des,\3>8 <aes,,\4>8 
   <des,\3>2. <des,\3>4 
   <c,\3>2. <c,\3>4 
   <b,,\3>2 <bes,,\3>2 
   <ees,\2>4 <bes,,\3>8 <f,~\2>8 <f,\2>8 <ees,~\2>8 <ees,\2>8 <bes,,~\3>8 
   <bes,,\3>8 <g,\1>8 <aes,\1>8 <g,\1>8 <f,\2>8 <ees,\2>8 <d,\2>8 <bes,,\3>8 
   <ees,\2>8 <ees,~\2>8 <ees,\2>8 <ees,~\2>8 <ees,\2>8 <ees~\1>8 <ees\1>4 
   <ees,\2>4 <ees,\2>8 <ees,~\2>8 <ees,\2>8 <des~\1>8 <des\1>4 
   <b,,\3>8 <b,,~\3>8 <b,,\3>4 <b,,\3>2 
   <b,,\3>8 <b,,~\3>8 <b,,\3>4 <b,,\3>2 
   <aes,,\4>4 <aes,,\4>8 <aes,,~\4>8 <aes,,\4>8 <aes,~\2>8 <aes,\2>4 
   <aes,,\4>8 <aes,,~\4>8 <aes,,\4>8 <aes,,\4>8 r8 <bes,\1>8 r4 
   <bes,,\3>4 r8 <bes,,~\3>8 <bes,,\3>8 <bes,,~\3>8 <bes,,\3>4 
   <c,\3>4 r8 <des,\3>8 r8 <c,~\3>8 <c,\3>4 
   <ees,\3>8 <ees,~\3>8 <ees,\3>8 <ees,~\3>8 <ees,\3>8 <ees~\1>8 <ees\1>4 
   <ees,\3>8 <ees,~\3>8 <ees,\3>8 <ees,\3>8 r8 <des\1>8 r4 
   <b,,\3>4 <b,,\3>4 <b,,~\3>2 
   <b,,\3>8 <b,,~\3>8 <b,,\3>4 <b,,\3>2 
   <aes,,\4>8 <aes,,~\4>8 <aes,,\4>8 <aes,,~\4>8 <aes,,\4>8 <aes,\2>8 r4 
   <aes,,\4>4 r8 <aes,,~\4>8 <aes,,\4>8 <bes,\1>8 r4 
   <bes,,\3>4. <bes,,~\3>8 <bes,,\3>8 <bes,,~\3>8 <bes,,\3>4 
   <c,\3>4. <des,\3>8 r8 <c,~\3>8 <c,\3>4 
   <b,,\3>2 <b,,\3>2 
   <des,\3>2 r2 
   <ees,\2>2 <ees,\2>4. <ees,~\2>8 
   <ees,\2>8 <ees,\2>8 <ees,\2>4 <f,\2>4 <ees,\2>4 
   <c,\3>2 <c,\3>4 r8 <c,~\3>8 
   <c,\3>8 <c,\3>8 <c,\3>4 <c,\3>4 <bes,,\3>4 
   <aes,,\4>2 <aes,,\4>4 <g,,\4>8 <aes,,~\4>8 
   <aes,,\4>8 <aes,,\4>8 <aes,,\4>4 <aes,,\4>4. <bes,,\3>8 
   <b,,\3>2 <b,,\3>4 <b,,\3>4 
   <b,,\3>8 <des,\3>8 <des,\3>4 <des,\3>4 <des,\3>8 <des,\3>8 
   <ees,\2>2 <ees,\2>4. <ees,~\2>8 
   <ees,\2>8 <ees,\2>8 <ees,\2>4 <f,\2>4 <ees,\2>4 
   <c,\3>2 <c,\3>4 <g,,\4>8 <c,~\3>8 
   <c,\3>8 <c,\3>8 <c,\3>4 <c,\3>4 <bes,,\3>8 <g,,\4>8 
   <aes,,\4>2. <g,,\4>8 <aes,,~\4>8 
   <aes,,\4>8 <aes,,~\4>8 <aes,,\4>4 <aes,,\4>4 <aes,,\4>8 <bes,,\3>8 
   <b,,\3>2 <b,,\3>4 <b,,\3>8 <b,,\3>8 
   <b,,\3>8 <des,\3>8 <des,\3>4 <des,\3>4 <des,\3>8 <des,\3>8 
   <b,,\3>1 
   <des,\3>2. r4 
   <aes,,~\4>1 
   <aes,,\4>1 
   <bes,,~\3>1 
   <bes,,\3>1 
   <c,~\3>1 
   <c,\3>2. <c,\3>4 
   <g,,\4>2 <bes,,\3>2 
   <f,,\4>2 <g,,\4>2 
   <g,,\4>2 <bes,,\3>2 
   <f,,\4>2 <g,,\4>4 <bes,,\3>4 
   \time 5/4
   <ees,\2>4 <bes,,\3>8 <ees,\2>8 <f,\2>8 <ees,\2>8 <bes,,\3>4 <f,\2 f,,\4 >16 <f,,\4>8. 
   \time 4/4
   <b,,\3>4. <ges,~\2>8 <ges,\2>8 <b,,\3>8 <b,,\3>8 <des,\3>8 
   <ees,\2>4 <bes,,\3>8 <f,~\2>8 <f,\2>8 <ees,\2>8 <bes,,\3>4 
   <c,\3>4. <g,\2>8 <c\1>8 <g,\2>8 <c\1>8 <d\1>8 
   <ees\1>8 <d\1>8 <g\1>4 <f\1>4 <ees\1>4 
   <aes,,~\4>2. <aes,,~\4>4 
   <aes,,~\4>4 <aes,,~\4>2 <aes,,\4>4 
   <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>4 
   <bes,,~\3>2 <bes,,~\3>4 <bes,,\3>4 
   <c,~\3>2. <c,~\3>4 
   <c,\3>2. <c,\3>4 
   <g,,~\4>4 <g,,\4>4 <bes,,~\3>4 <bes,,\3>4 
   <f,,~\4>4 <f,,\4>4 <g,,~\4>4 <g,,\4>4 
   <g,,\4>2 <bes,,~\3>4 <bes,,\3>4 
   <f,,\4>2 <g,,\4>4 <bes,,\3>4 
   \time 5/4
   <ees,\2>4 <bes,,\3>8 <ees,\2>8 <f,\2>8 <ees,\2>8 <bes,,\3>4 <f,,\4>4 
   \time 4/4
   <b,,\3>4. <ges,~\2>8 <ges,\2>8 <b,,\3>8 <b,,\3>8 <des,\3>8 
   <ees,\2>4 <bes,,\3>8 <f,~\2>8 <f,\2>8 <ees,\2>8 <bes,,\3>4 
   <c,\3>4 r8 <g,\2>8 <c\1>8 <g,\2>8 <c\1>8 <d\1>8 
   <ees\1>8 <d\1>8 <g\1>4 <f\1>4 <ees\1>4 
   \time 6/4
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>4 
   <aes,,~\4>2 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>4 
   <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>4 <bes,,\3>4 
   <c,~\3>2 <c,~\3>4 <c,~\3>4 <c,\3>2 
   <c,~\3>4 <c,~\3>4 <c,~\3>2 <c,\3>4 <bes,,\3>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>4 
   <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>2 <bes,,~\3>4 <bes,,\3>4 
   <c,~\3>2 <c,~\3>4 <c,~\3>4 <c,\3>2 
   <c,~\3>4 <c,~\3>4 <c,\3>4 <c,~\3>4 <c,\3>4 <bes,,\3>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>4 <aes,,\4>4 
   <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>2 <bes,,\3>4 <bes,,\3>4 
   <c,~\3>2 <c,~\3>4 <c,~\3>4 <c,\3>4 <c,\3>4 
   <c,~\3>4 <c,~\3>4 <c,\3>4 <c,~\3>4 <c,\3>4 <bes,,\3>4 
   <aes,,~\4>2 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>4 <aes,,\4>4 
   <bes,,~\3>4 <bes,,~\3>4 <bes,,~\3>2 <bes,,\3>4 <bes,,\3>4 
   <c,~\3>4 <c,~\3>4 <c,~\3>4 <c,~\3>4 <c,\3>4 <c,\3>4 
   <c,~\3>4 <c,\3>4 <c,\3>4 <c,\3>4 <c,\3>4 <bes,,\3>4 
   <aes,,\4>2 <aes,,\4>4 <ees,~\3>4 <ees,\3>4 <aes,,\4>4 
   <bes,,~\3>4 <bes,,\3>8 <bes,\1>8 <bes,,\3>4 <bes,,\3>4 <bes,,\3>4 <aes,,\4>4 
   <c,~\3>4 <c,\3>4 <c,\3>4 <c,~\3>4 <c,\3>4 <bes,,\3>8 <c,\3>8 
   <c,\3>4 <c\1>4 <bes,\1>4 <g,\1>4 <f,\2>8 <g,\1>8 <bes,,\3>4 
   <aes,,\4>2 <aes,,\4>4 <ees,~\3>4 <ees,\3>4 <aes,,\4>4 
   <bes,,~\3>4 <bes,,\3>4 <bes,,\3>4 <bes,,\3>4 <bes,,\3>4 <aes,,\4>8 <bes,,\3>8 
   <c,\3>4 <c,\3>4 <ees,\2>8 <f,\2>8 <g,\1>4 <bes,\1>4 <c\1>4 
   <ees\1>4 <d\1>4 <bes,\2>4 <c\2>4 <bes,\2>4 <g,\1>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>2 <aes,,~\4>4 <aes,,~\4>4 
   <aes,,~\4>2 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>2 
   <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>4 
   <aes,,\4>4 <aes,,~\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,\4>4 
   <aes,,\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,~\4>4 <aes,,~\4>4 
   <aes,,\4>4 <aes,,~\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,\4>4 
   <aes,,\4>4 <aes,,\4>4 <aes,,~\4>4 <aes,,\4>4 <aes,,~\4>4 <aes,,\4>4 
   <aes,,\4>4 <aes,,\4>4 <aes,,~\4>4 <aes,,\4>4 <aes,,\4>4 <aes,,~\4>4 
   <aes,,\4>8 <aes,,~\4>8 <aes,,\4>8 <aes,,\4>8 <aes,,\4>4 <aes,,~\4>4 <aes,,~\4>4 <aes,,\4>8 <aes,,\4>8 
   <aes,,\4>4 <aes,,\4>8 <aes,,\4>8 <aes,,\4>4 <aes,\2>4 <aes,\2>8 <aes,~\2>8 <aes,\2>8 <aes,\2>8 
   r4 r4 r2 r4 r4 
   \bar "|."
   \pageBreak
#})
TrackAVoiceBMusic = #(define-music-function (parser location inTab) (boolean?)
#{
#})
TrackALyrics = \lyricmode {
   \set ignoreMelismata = ##t
   
   \unset ignoreMelismata
}
TrackAStaff = \new Staff <<
   \context Voice = "TrackAVoiceAMusic" {
      \TrackAVoiceAMusic ##f
   }
   \context Voice = "TrackAVoiceBMusic" {
      \TrackAVoiceBMusic ##f
   }
>>
TrackATabStaff = \new TabStaff \with { stringTunings = #`( ,(ly:make-pitch -2 4 NATURAL) ,(ly:make-pitch -2 1 NATURAL) ,(ly:make-pitch -3 5 NATURAL) ,(ly:make-pitch -3 2 NATURAL) ,(ly:make-pitch -4 6 NATURAL) ) } <<
   \context TabVoice = "TrackAVoiceAMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceAMusic ##t
   }
   \context TabVoice = "TrackAVoiceBMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceBMusic ##t
   }
>>
TrackAStaffGroup = \new StaffGroup <<
   \TrackAStaff
   \TrackATabStaff
>>
\score {
   \TrackAStaffGroup
   \header {
      title = "Triage" 
      composer = "" 
      instrument = "Electric Bass" 
   }
}
