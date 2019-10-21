// a grammar for making manifestoes; parts culled from the postmodernism
// grammar and other places.
// acb  sometime in 1995

#include <format.pbi>
#include <stdmap.pbi>

hi:
  // "foo">thing-maps
  sent-about("fb")
;

sent-about(sub):
  sub " is " @sub>append-is
;

thing-maps:
  "foo" -> "opts"
  "foo" -> "opt1"
;

opts: "opt1" | "opt2" | "bar";

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

nl: "\n" ;

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
  list-of-what-they-want-you-to-believe 
  what-they-want-you-to-believe
  what-they-want-you-to-believe
  what-they-want-you-to-believe
  |
  list-of-what-they-want-you-to-believe 
  what-they-want-you-to-believe
  what-they-want-you-to-believe
  |
  list-of-what-they-want-you-to-believe 
  what-they-want-you-to-believe
  |
  what-they-want-you-to-believe
  what-they-want-you-to-believe
  what-they-want-you-to-believe
  what-they-want-you-to-believe
;

what-they-want-you-to-believe:
  big-thing " isn't actually all it's cracked up to be." nl
  |
  "haskell is fuctional" nl
  |
  "swift can be used serverside" nl
  |
  "facebook is a privacy nightmare" nl
  |
  "american idol was a good show" nl
  // assign institution to literal variable
  // institution is-actually institution>what-it-is
  // |
  // they-say institution>fullname is-actually institution>what-it-isnt
  // but institution is-actually institution>what-it-is
  // |
  // they-say institution isnt-actually institution>what-it-isnt
  // but it-is-fucked
;

is-actually:
  " is actually " |
  " is a front for " |
  " is "
;

it-is-fucked: 
  "they're pulling the " shroud " over your eyes"
;

shroud:
  "wool" | "fog of war" | "pants" | "hoodie" | "blankie" | "scarf" | "veil"
;

institution:
  "the haskell community" | "the facebook" | "the new york times" | 
  "the sweatpant lobby" | "the recurse center" | "the restaurant industry"
  | "the pipe cleaner industry" | "the girl scouts" | "williams sonoma" |
  "the graph search industry" | "new media artists" 
  | "heap-based programming languages" | "tinyland" | "maryanne's kittens"
;

// what stuff REALLY is
hsklcm-is: "a community of surfers" | "the mafia running the park slope food co-op" | "functionally wild" ;
fb-is: "a book of lies" | "mark zuckerberg's capstone project" | "a scrapbook" ;
nyt-is: "paper maché catalog" | "big data visualization" | "the record of paper" ;
spl-is: "funded by big cold" | "an arm of the weather channel" | "NOT cozy" ;
rc-is: "a community of layabouts" | "clown school" | "a simulation";
rstind-is: "entirely owned by Time Square Applebee's" | "William Grisaitis' kitchen" ;
pipecleaner-is: "an arm of the NSA" | "funded most of kindergarten cop" | "pipeDIRTY" ;
girlscouts-is: "on the better business bureau's watchlist" | "bad for the cookie community" ;
williamssonoma-is: "just a kitchen" | "a fancypants club" | "a knife shoppe" ;
graphind-is: "an arm of the vertex lobby" | "very edgey" | "invented by Mr. Rogers" ;
newmedart-is: "propped up by LED manufacturers" | "actually a laser cutter" | "a Unity game" ;
heapproglang-is: "turing complete";
tinyland-is: "pre-recorded" | "sentient" | "8k resolution" ;
kittens-is: "temp" ;
// what stuff is NOT
hsklcm-isnt: "functionally tame" ;
fb-isnt: "a book of lies" | "mark zuckerberg's capstone project" | "a scrapbook" ;
nyt-isnt: "temp" ;
spl-isnt: "temp" ;
rc-isnt: "temp" ;
rstind-isnt: "temp" ;
pipecleaner-isnt: "temp" ;
girlscouts-isnt: "temp" ;
williamssonoma-isnt: "temp" ;
graphind-isnt: "temp" ;
newmedart-isnt: "temp" ;
heapproglang-isnt: "temp" ;
tinyland-isnt: "temp" ;
kittens-isnt: "temp" ;


fullname:
  // 
  "hsklcm" -> "the haskell community"
  "fb" -> "the facebook"
  "nyt" -> "the new york times"
  "spl" -> "the sweatpant lobby"
  "rc" -> "the recurse center"
  "rstind" -> "the restaurant industry"
  "pipecleaner" -> "the pipe cleaner industry"
  "girlscouts" -> "the girl scouts"
  "williamssonoma" -> "williams sonoma"
  "graphind" -> "the graph search industry"
  "newmedart" -> "new media artists"
  "heapproglang" -> "heap-based programming languages"
  "tinyland" -> "tinyland"
  "kittens" -> "maryanne's kittens"
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

append-is:
  ".*" -> "$"/"-is" 
;

append-isnt:
  ".*" -> "$"/"-is" 
;
