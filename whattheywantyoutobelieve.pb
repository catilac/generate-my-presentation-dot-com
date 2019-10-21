// a grammar for making manifestoes; parts culled from the postmodernism
// grammar and other places.
// acb  sometime in 1995

presentation-structure: 
  section-off(intro) 
  section-off(society-is-fucked)
  section-off(why-society-is-fucked)
  section-off(list-of-what-they-want-you-to-believe)
  section-off(outro)
  section-off(thank-you)
  section-off(have-a-blessed-day)
;

sp:
  " "
;

pnct:
  "." | "!" | "!!!!"
;

section-off(a): 
  "------------------------------------------------\n"
  a
  "\n------------------------------------------------\n\n"
;

intro: 
  "society wants u to believe something...."
;
society-is-fucked: 
  "society is fucked."
;
why-society-is-fucked: 
  "why society is fucked."
;
list-of-what-they-want-you-to-believe: 
  "list of what they want you to believe."
;
outro:
  "we out"
;

thank-you:
  "thanks booboo"
;
have-a-blessed-day:
  "😄"
;

big-thing: "society" | "class" | "civilisation"
  | "culture" | "language" | "art" | "reality" | "truth" 
  | "sexuality" | "consciousness" | "humanity" | "personhood"
  | "individuality" | "history" | "technology" ;
