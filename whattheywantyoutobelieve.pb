// a grammar for making manifestoes; parts culled from the postmodernism
// grammar and other places.
// acb  sometime in 1995

#include <format.pbi>
#include <stdmap.pbi>

presentation-structure: 
  section-off(intro) 
  section-off(list-of-what-they-want-you-to-believe)
  section-off(outro)
;

they-say:
  ["they" | "government officials" | "the facilitators" | "the authorities" | "DMV employees"  ] sp 
  ["say" | "claim" | "lie" | "assert" | "allege"] sp "that"
;

but: 
  "but" | "however" | "when in fact" | "well, actually"
;

is-actually(item negate):
  item>am-verb sp negate ["actually" | "really" | "truly" | "merely" | 
         "really just" | "only" | "just"]
;

is-truly(item):
  item>am-verb>am-verb-pronoun sp item>am-verb sp ["actually" | "really" | "truly" |
                  "unbelievably" | "incredibly"]
;

sent-about(sub):
  sub " is " @sub>append-is
;


sp:
  " "
;

nl: "\n" ;

pnct:
  "." | "!" | "!!!!"
;

section-off(a): 
  a
  "\n------------------------------------------------\n\n"
;

intro: 
  hello-recursers>upcase-first nl
  hello-recursers>upcase-first nl
  who-we-are nl
  crusaders-of-truth nl
  pump-up>upcase-first nl
;
//------------intro----------------------------------------------------------
hello-recursers:
  ["Hello" | "heyo" | "it's " ["gnarly" | "tubular" | "radical" ]] ", "
  ["my friends" | "buddies" | "recursers" | "cursed batch"] pnct;

who-we-are:
  [[travelers pnct nl qualified-to-say] | 
  [rabblerousers pnct nl travelers] |
  [qualified-to-say pnct nl rabblerousers]
  ] pnct
;

travelers: 
  "We have " ["traveled" | "journeyed" | "traversed"] sp
  ["great" | "long" | "unimagineable"] sp ["distances" | "lengths" | "plains"]
  " to share our " ["wisdom" | "knowledge" | "good brains"] " with you "
  ["plebians" | ["lowly" | "simple"] [" programmers" | " code monkeys"]]
;

qualified-to-say: 
  "We have " [["studied under " | "learned from "] ["ascended masters " | "the best in the " ["biz"| "world"]]]
  sp "like " master ", " master ", " master ", and " master 
;

master: 
  "the founder of tik tok" | "Mr and Mrs Pacman" | "the inventor of the slapchop" |
  "Steve Job's secret child" | "Mai" | "the god of category theory" | 
  "the information superhighway" | "the ten o'clock news" | "the monad monster"
;

rabblerousers: 
  "We have " ["under"|""]"taken "
  ["great"|"tremendous"|"significant"]sp["professional "|"personal "|""] 
  "risks to "[["be " | "arrive "] ["at RC" | "here"]] pnct sp
  "We've had to "   ["abandon" | "leave behind" ] sp "our "
  ["lives" | ["keyboard clacking" | "thumb-twiddling"] " jobs" | "beanie-babie ecomm businesses" ]
  "--this is " ["all" | "everything"] " we've ever " ["wanted" | "hoped"] " to do"
;

crusaders-of-truth:
  "We'll " ["make you " | "force you to "] "question everything you "
  ["thought you " ["knew" | "could cram in your "["noggin" | "brain"]]] pnct sp
  "We're not "   ["afraid"|"scared"|"'fraid"]
  " to think " ["big " ["concepts" | "ideas"] | ""] pnct sp
  "This talk will make you " ["question" |"re-think" | "re-examine"] " " big-thing ", " big-thing ", " big-thing ", and " big-thing pnct sp
;

pump-up:
  [ "buckle your " ["seatbelt" | "backpack straps" | "knees"]
    |
    ["gear" | "strap" | "mount"] " up"
  ]
  " for the "
  [
    ["ride" | "journey" | "quest" | "adventure" | "powerpoint"]
    " of your " [ "pathetic " | ""] ["life" | "existence" | "day"]
  ]
  pnct
;
//---------------------------------------------------------------------------

list-of-what-they-want-you-to-believe: 
  list-of-what-they-want-you-to-believe 
  what-they-want-you-to-believe>upcase-first
  what-they-want-you-to-believe>upcase-first
  what-they-want-you-to-believe>upcase-first
  |
  list-of-what-they-want-you-to-believe 
  what-they-want-you-to-believe>upcase-first
  what-they-want-you-to-believe>upcase-first
  |
  list-of-what-they-want-you-to-believe 
  what-they-want-you-to-believe>upcase-first
  |
  what-they-want-you-to-believe>upcase-first
  what-they-want-you-to-believe>upcase-first
  what-they-want-you-to-believe>upcase-first
  what-they-want-you-to-believe>upcase-first
;

what-they-want-you-to-believe:
  ?currInst=institution 
  ?nickname=$currInst>fullname 
  [
   $currInst sp is-actually($nickname "") sp @$nickname>append-is pnct nl
   |
   they-say sp $currInst sp is-actually($nickname "") sp @$nickname>append-isnt nl
   but>upcase-first sp currInst sp is-truly($nickname) sp @$nickname>append-is nl
   |
   they-say sp $currInst sp is-actually($nickname "not ") sp @$nickname>append-is nl
   but>upcase-first sp it-is-fucked nl
  ] nl
;


is-actually:
  " is actually " |
  " is a front for " |
  " is "
;

it-is-fucked: 
  "they're pulling the " shroud " over your " ["eyes" | "head" | "face" ] |

  "they're serving you a " 
    ["heaping" | "smoking" | "sizzling" | "steaming" | "massive"] 
    sp ["pile" | "plate" | "platter" | "all you can eat buffet"] 
    " of "  
    ["doo doo" | "garbage"  | "bullsnot" | "bullplop" | "bullboogers" ] |

  "they're " ["poking" | "gouging"] " your " ["eyes" | "retinas" | "peepers"] 
  " out with a " ["pen plotter" | "sharpie" | "usb-c dongle"] 
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
pipecleaner-is: "an arm of the NSA" | "trying to bedazzle unix pipes" | "pipeDIRTY" ;
girlscouts-is: "on the better business bureau's watchlist" | "bad for the cookie community" ;
williamssonoma-is: "in cahoots with big wedding registry" | "a fancypants club" | "a knife shoppe" ;
graphind-is: "an arm of the vertex lobby" | "very edgey" | "invented by the cracking the coding interview pyramid scheme" ;
newmedart-is: "propped up by LED manufacturers" | "a laser cutter" | "a Unity game" | "photoshop" ;
heapproglang-is: "turing complete";
tinyland-is: "pre-recorded" | "sentient" | "an 8k resolution display" ;

// what stuff is NOT
hsklcm-isnt: "functionally tame"  | "pure" | "a MONAD";
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

outro:
  ["That's " ["a wrap" | "our talk" | "why we came here"] pnct | "That was incredible."] sp
  ["First of all" | "So, yeah," | "No need to thank us but,"] sp "you're welcome." sp
  ["We hope that" | "Maybe" | "Perhaps" | "With a lot of hard work on" sp 
  [ "your end" | "our end" ]] sp "one day we can love you, as much as you love us." sp nl
  "We " ["pray" | "dream" | "yearn" | "hope"] " that you " ["experience" | "have" | "live"]
    " a" ["n enchanted" | " blessed" | " magical"] sp ["day" | "life" | "week" | "hour" | "moment"] pnct nl nl
  [":)" | ""]
;

big-thing: "society" | "class" | "civilisation"
  | "culture" | "language" | "art" | "reality" | "truth" 
  | "consciousness" | "humanity" | "personhood"
  | "individuality" | "history" | "technology" ;

append-is:
  ".*" -> "$"/"-is" 
;

append-isnt:
  ".*" -> "$"/"-isnt" 
;

sp: " " ;
