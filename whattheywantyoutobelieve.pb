// a grammar for making manifestoes; parts culled from the postmodernism
// grammar and other places.
// acb  sometime in 1995

#include <format.pbi>
#include <stdmap.pbi>

hi: 
  // assign institution to literal variable
  ?currInst=institution //"\nassigned currInst\n"
  ?nickname=$currInst>fullname //"\nassigned name\n"
  [
  $currInst sp is-actually($nickname) sp @$nickname>append-is pnct nl
  |
  they-say sp $currInst sp is-actually($nickname) sp @$nickname>append-isnt nl
  but sp currInst sp is-truly($nickname) sp @$nickname>append-is nl
  // |
  // they-say institution isnt-actually institution>what-it-isnt
  // but it-is-fucked
  ]
;

they-say:
  "they say"
;

but: 
  "but"
;

is-actually(item):
  item>am-verb sp ["actually" | "really" | "truly" | "merely" | 
         "really just" | "only" | "just"]
;

is-truly(item):
  // ?amvertitem>am-verb
  // am-verb-pronoun
  item>am-verb>am-verb-pronoun sp item>am-verb sp ["actually" | "really" | "truly" |
                  "unbelievably" | "incredibly"]
;

his:
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
  | "heap-based programming languages" | "tinyland" ;

// what stuff REALLY is
hsklcm-is: "a community of surfers" | "the mafia running the park slope food co-op" | "functionally wild" ;
fb-is: "a book of lies" | "mark zuckerberg's capstone project" | "a scrapbook" ;
nyt-is: "a paper maché catalog" | "big data visualization" | "the record of paper" ;
spl-is: "funded by big 🍆" | "an arm of the weather channel" | "NOT cozy" ;
rc-is: "a community of layabouts" | "clown school" | "a simulation" | "a real treat";
rstind-is: "owned by Time Square Applebee's" | "William Grisaitis' kitchen" ;
pipecleaner-is: "an arm of the NSA" | "primarily funding for kindergarten cop" | "pipeDIRTY" ;
girlscouts-is: "on the better business bureau's watchlist" | "bad for the cookie community" ;
williamssonoma-is: "in cahoots with big wedding registry" | "a fancypants club" | "a knife shoppe" ;
graphind-is: "an arm of the vertex lobby" | "very edgey" | "invented by the cracking the coding interview pyramid scheme" ;
newmedart-is: "propped up by LED manufacturers" | "a laser cutter" | "a Unity game" | "photoshop" ;
heapproglang-is: "turing complete";
tinyland-is: "pre-recorded" | "sentient" | "an 8k resolution display" ;

// what stuff is NOT
hsklcm-isnt: "functionally tame"  | "pure" | "MONAD";
fb-isnt: "a book of lies" | "mark zuckerberg's capstone project" | "a scrapbook" ;
nyt-isnt: "The Paper of Record" | "A Reputible News Source" | "all the news thats fit to print" ;
spl-isnt: "a hotel lobby full of " ["furniture upholstered with sweat pant material" | "pillows made of sweats" | "sweatpants"] ;
rc-isnt: "a place to become a better programmer" | "a programming retreat" | "a community of programmers";
rstind-isnt: "a pots and pans shoppe" | "owned by Chef Boyardee" | "a chef haven" ;
pipecleaner-isnt: "for cleaning pipes" | "fun and games" | "arts 'n' crafts" ;
girlscouts-isnt: "a leadership program" | "wilderness skillz" | "badges" ;
williamssonoma-isnt: "a fancy cookware shoppe" | "The Command Centre of The Mall" | "a kitchen" ;
graphind-isnt: "Your professor's after school hobby" | "acyclic" ;
newmedart-isnt: "the intersection of technology and art" | "your vr headset" | "political VR" ;
heapproglang-isnt: "a joke" | "a farce" | "a laughing stock" ;
tinyland-isnt: "a new computing paradigm" | "small gummy bears arranged on a table" | "a tiny dynamic land" ;


fullname:
  "graphind" <-> "the graph search industry"
  "hsklcm" <-> "the haskell community"
  "fb" <-> "the facebook"
  "nyt" <-> "the new york times"
  "spl" <-> "the sweatpant lobby"
  "rc" <-> "the recurse center"
  "rstind" <-> "the restaurant industry"
  "pipecleaner" <-> "the pipe cleaner industry"
  "girlscouts" <-> "the girl scouts"
  "williamssonoma" <-> "williams sonoma"
  "newmedart" <-> "new media artists"
  "heapproglang" <-> "heap-based programming languages"
  "tinyland" <-> "tinyland"
;

am-verb:
  "graphind" -> "is"
  "hsklcm" -> "is"
  "fb" -> "is"
  "nyt" -> "is"
  "spl" -> "is"
  "rc" -> "is"
  "rstind" -> "is"
  "pipecleaner" -> "is"
  "girlscouts" -> "are"
  "williamssonoma" -> "is"
  "newmedart" -> "are"
  "heapproglang" -> "are"
  "tinyland" -> "is"
;

am-verb-pronoun:
  "is" <-> "it"
  "are" <-> "they"
;


// inst-pronoun:
//   "graphind" -> "it"
//   "hsklcm" -> "it"
//   "fb" -> "it"
//   "nyt" -> "it"
//   "spl" -> "it"
//   "rc" -> "it"
//   "rstind" -> "it"
//   "pipecleaner" -> "it"
//   "girlscouts" -> "they"
//   "williamssonoma" -> "it"
//   "newmedart" -> "they"
//   "heapproglang" -> "they"
//   "tinyland" -> "it"
// ;

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
  ".*" -> "$"/"-isnt" 
;

sp: " " ;
