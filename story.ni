"Never Gives Up Her Dead" by Brian Rushton

Volume 1 - Pre-game setup

[the true point of the game is to help people come to grips with your personal death]

[maybe the recorder can play back memories?]

When play begins:
	say "You are Emrys Tisserand, a pioneer between the stars. You have left your comfortable retired life and grandchildren behind and embarked on a quest to establish a new colony. Your ship, the Starship Tragwyddol has thousands of passengers in cold storage. For ten years you have entertained the crew with your tales while recording the ship's history. As Storyweaver, you keep the thread of history for the ship, to teach the past, record the present, and prepare others for the future. Most of the crew take turns in the cryochambers to lengthen their life span, but you, the heart of the ship, always intended this to be your last voyage. 

Storyweavers have the Gift, they say, and bring luck to everyone aboard. But now, only months away from your destination, your starship has suffered catastrophic damage from a meteoric collision.

This is the story of how you die."

Book 1 - Metadata, out of world actions and extensions

Part 1 - Metadata

Chapter 1 - Game essentials

[Release along with a solution.]

Section 1 - Genre, description, etc

The story genre is "Science Fiction". The story description is "Hop through dimensions to save your ship." The story creation year is 2023. The release number is 16.

Section 2 - Increasing memory sizes

Use MAX_PROP_TABLE_SIZE of 900000.
Use MAX_NUM_STATIC_STRINGS of 90000.
Use MAX_INDIV_PROP_TABLE_SIZE of 60000.
Use MAX_STATIC_DATA of 500000.
Use MAX_DICT_ENTRIES of 8000.
Use MAX_OBJECTS of 4000.
Use MAX_ACTIONS of 1000.
Use MAX_SYMBOLS of 40000.

Part 2 - Out of world actions

Abouting is an action out of world. Understand "About" as abouting. 

Carry out abouting:
	say "Never Gives Up Her Dead is a large-scale text adventure. For help, type HELP. For credits, type CREDITS.

The basic commands needed for this game include LOOK, INVENTORY, EXAMINE (or just X), TAKE, DROP, ENTER, N, E, S, W, UP, DOWN, OPEN, UNLOCK, PUSH, PULL, LOOK UNDER, TURN ON, TURN OFF, WAIT (or just Z), AGAIN (or just G)."

Helping is an action out of world. Understand "Help" as helping.

Carry out helping:
	say "The basic commands needed for this game include LOOK, INVENTORY, EXAMINE (or just X), TAKE, DROP, ENTER, N, E, S, W, UP, DOWN, OPEN, UNLOCK, PUSH, PULL, LOOK UNDER, TURN ON, TURN OFF, WAIT (or just Z), AGAIN (or just G).

Commands like UNDO, SAVE and RESTORE can be used to go back to earlier parts of the game.

Speech works by typing SAY [bracket]a topic[close bracket], or SAY [bracket]a topic[close bracket] TO [bracket]a person[close bracket]. Each topic can only be said to one person. All topics that are useful in the current region of the game you are in are listed in your topic inventory, accessible by typing TOPICS or T. To get all topics in all areas, type AT[if the player is in murder-region].

While solving the murder mystery, all clues are available as topics of conversation for all the suspects. You can LINK two clues that either contradict each other or support each other to get something you can confront the suspects with.

The special clue called Statement will transport you into a suspect's past when used. To leave early, type STOP[end if]."

[enable a mode where the preview of a topic is always printed when it is delivered?]

Crediting is an action out of world. Understand "Credits" as crediting. 

Carry out crediting:
	say "This game was written by Brian Rushton/Mathbrush using Inform 7 (by Graham Nelson). Beta testers include Amanda Walker, the Xenographer, John Ziegler, Jade, Christopher Merriner, Patrick Mooney, Brett Witty, Rovarsson, E. Joyce, Max Fouquet O'Garra, Dee Cooke, Ian Greener, Chandler Groover, Lance Cironeand LAST_TESTER_HERE. 

Hanon Ondricek gave helpful advice about the concept and title. Phil Riley made suggestions about coding.

Matt Weiner, N. Comier, and Mike Sousa served as inspiration for some puzzle content. Many of the standard Inform examples were used, but a lot of code was directly lifted from Under Contract, Example 205."
[Code from Otistdog was used for overly elaborate looking.]
[for testing]

After reading a command (this is the ignore beta-comments rule): 
	if the player's command matches the regular expression "^<#*\p>": 
		say "(Noted.)"; 
		reject the player's command. 


Part 3 - Extensions

Include Clues and Conversation by Brian Rushton.
Include Numbered Disambiguation Choices by Aaron Reed.
Include Object Response Tests by Juhana Leinonen.

Book 2 - Rules and types of things

Part 1 - Doors

Chapter 1 -Tears in space

Section 1 -Definition

A space-tear is a kind of door. A space-tear is usually unopenable. A space-tear is usually open. A space-tear can be disguised or undisguised. A space-tear is usually undisguised. 

Understand "tear" or "space" or "tear in space" or "rip" or "hole" as a space-tear when the item described is undisguised.

A space-tear can be red-torn or green-torn. A space-tear is usually red-torn. Understand "red" as red-torn. Understand "green" as green-torn. Understand the red-torn property as describing a space-tear.

Before going nowhere when the noun is inside:
	repeat with current running through space-tears:
		if the location is the front side of current:
			try entering current instead;

Before going nowhere when the noun is outside:
	repeat with current running through space-tears:
		if the location is the back side of current:
			try entering current instead;

Instead of exiting when the holder of the player is a room:
	try going outside instead;

The description of a space-tear is "This is a tear in the fabric of space and time. Going through it will take you to somewhere new and, perhaps, dangerous. It is glowing [if the item described is red-torn]red[otherwise]green[end if]."

[change description if you passed through it once]

Before going through a space-tear (called currenttear):
	say "[line break]*************************************************************************************************[line break]";
	say "You are engulfed in a [if currenttear is red-torn]red[otherwise]green[end if] haze, losing all sense of direction. Slowly the haze clears.";
	say "*************************************************************************************************[paragraph break]";

The printed name of a space-tear is usually "tear in space".

Instead of touching a space-tear:
	say "Your hand doesn't feel anything at all. The transition is seamless."

Instead of looking under a space-tear:
	say "The tear looks the same from every direction, which you didn't really expect."

Instead of searching a space-tear:
	say "The tear in space is difficult to see through from the outside. The only way to experience it is by going through."

Chapter 2 - Stairs

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. 

Instead of climbing a staircase: 
	try entering the noun. 

Part 2 - Tangibility

A thing can be intangible or not intangible. A thing is usually not intangible.

Touching something is physicality. Rubbing something is physicality. Pushing something is physicality. Taking something is physicality. Pulling something is physicality. Opening something is physicality. Closing something is physicality. Turning something is physicality. Switching on something is physicality. Switching off something is physicality. Kissing something is physicality. Entering something is physicality.

Examining is freeacting. Answering someone that is freeacting. Asking someone about is freeacting. Asking someone for is freeacting. Dropping is freeacting. Waiting is freeacting. Waking is freeacting. Telling someone about is freeacting. Asking someone for is freeacting. Saying yes is freeacting. Saying no is freeacting. Thinking is freeacting. Smelling is freeacting. Listening to something is freeacting. Saying sorry is freeacting. Sleeping is freeacting. Taking inventory is freeacting. 

Instead of physicality when the noun is an intangible thing:
	say "[The noun] [are] not tangible."

A thing can be distant or not distant. A thing is usually not distant.

Instead of physicality when the noun is distant:
	say "[The noun] [are] too far away."

Instead of inserting something into a distant thing:
	say "[The noun] [are] too far away."

Part 3 - Exits

To say boldsouth:
	say "[bold type]south[roman type]";

To say boldnorth:
	say "[bold type]north[roman type]";

To say boldeast:
	say "[bold type]east[roman type]";

To say boldup:
	say "[bold type]up[roman type]";

To say bolddown:
	say "[bold type]down[roman type]";

To say boldwest:
	say "[bold type]west[roman type]";

To say boldnorthwest:
	say "[bold type]northwest[roman type]";

To say boldnortheast:
	say "[bold type]northeast[roman type]";

To say boldsouthwest:
	say "[bold type]southwest[roman type]";

To say boldsoutheast:
	say "[bold type]southeast[roman type]";
	
To say boldinside:
	say "[bold type]inside[roman type]";
	
To say boldoutside:
	say "[bold type]outside[roman type]";

To say exit list: 
	let place be location; 
	let L be a list of directions;
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, add way to L;
	say L;

Part 4 - Quips

Report uttering a quip to someone:
	now the targetsummary of the noun is "The conversation went as follows:[paragraph break][the targetresponse of the noun]";

A person is usually not talkative.

Every turn:
	clear personlists;
	
When play begins:
	clear personlists;
	
To clear personlists:
	repeat with current running through people:
		if current heeds a quip carried by the player:
			now current is talkative;
		otherwise:
			now current is not talkative;
	repeat with current running through quips carried by the player:
		repeat with currentregion running through regions:
			if target of current is not nothing:
				if target of current is in currentregion:
					if the player is in currentregion:
						now target of current is talkative;

Before Uttering a quip to someone:
	if the second noun is the target of the noun:
		if the noun is MeihTarget:
			say "'[preview of noun]'[paragraph break]";
	otherwise if the second noun heeds the noun:
		if the second noun does not forsake the noun:
			if the noun is statement-quip:
				say "You ask, 'Would you mind giving me your statement?'";
			otherwise:
				say "You mention how [preview of noun][paragraph break]";

The preview printing rule response (A) is "[if currentquip is a squip and currentquip is not statement-quip] - You know [the preview of currentquip][otherwise] - [the preview of currentquip][end if]"

All-topicing is an action applying to nothing. Understand "AT" or "all topics" or "all topic" as all-topicing.

Carry out all-topicing:
	repeat with current running through quips carried by the player:
		now target of current is talkative;
	try topicing;

The standard singleuttering rule response (B) is "Your recorder beeps. This is a message meant for [The target of the noun], who isn't here.";

The advice on talking to just one person rule response (A) is "[We] [can] see just the topics for one person at a time by TALKing TO that person[first time]

To say a specific topic to someone, type SAY the topic TO that person[only]."

[Replacing some code that doesn't work when becoming a suspect]
A quip can be once-delivered or not once-delivered. A quip is usually not once-delivered.

CluesClear is a truth state that varies. CluesClear is false.

To clear the flags:
	let somethingDelivered be 0;
	repeat with currentquip running through once-delivered deliveryflagged quips:
		now currentquip is not deliveryflagged;
	repeat with currentquip running through deliveryflagged quips:
		if the target of currentquip is not nothing:
			say "[bracket]New [if currentquip is a squip]Clue [otherwise]Topic [end if][if the target of currentquip is not in the location]for [the Target of currentquip] [end if]- [currentquip][close bracket][roman type]";
		otherwise:
			say "[bracket]New [if currentquip is a squip]Clue [otherwise]Topic [end if]- [currentquip][close bracket][roman type]";
		say "[line break]";
		now history of currentquip is "[currentquip] - [preview of currentquip][line break]";
		now currentquip is carried by the emrys-weaver;
		now currentquip is not deliveryflagged;
		now currentquip is once-delivered;
		now somethingDelivered is 1;
		if the target of currentquip is nothing:
			repeat with currentperson running through talkative people:
				now currentperson heeds currentquip;
	if somethingDelivered is 1:
		If FirstClear is 0:
			say "[line break][bracket]You can see your list of [HasCluesOrTopics]s by typing [CapCluesOrTopics], or just [if the number of clues carried by the player > 0]C[otherwise]T[end if].[close bracket]";
			say "[line break]";
			now FirstClear is 1;
		if the player is not emrys-weaver:
			if cluesclear is false:
				say "[line break][bracket]Clues discovered during statements can be used or discussed once the statement is over.[close bracket]";
				say "[line break]";
				now cluesclear is true;

[squips are used for suspects: suspect-quips]
A squip is a kind of quip. 

A thing can be linkaged or unlinkaged. A thing is usually not linkaged.

Squipcounter is a number that varies. Squipcounter is 0.

Report uttering an unlinkaged squip to someone:
	increment squipcounter;
	
Every turn when squipcounter is 7:
	now squipcounter is 0;
	say "[one of]It dawns on you that this group of suspects is quite adept at lying. While they have been willing to talk about many subjects, you're beginning to feel that only calling them out directly in their lies will make any real progress.[or][bracket]Talking to suspects about clues can provide useful info, but only clues produced by LINKing one clue to another will produce any real progress[close bracket][stopping][conditional paragraph break]"

Singlequipping is an action applying to one thing. Understand "[a held quip]" as singlequipping.

Carry out singlequipping:
	try singleuttering the noun;

Part 5 - Floors

A floor is a kind of thing. Understand "floor" as a floor. 

Instead of putting something on a floor:
	try dropping the noun;
	
Instead of inserting something into a floor:
	try dropping the noun;

Instead of pushing or pulling or turning a floor:
	say "You are unable to move the entire floor, which isn't entirely surprising."

Part 5 - Player character

Chapter 1 - Name and identity

[maybe Angharad instead]

Emrys-weaver is a person. Understand "emrys" or "weaver" or "storyweaver" or "Tisserand" as emrys-weaver when the player is not in black-dome.

The player is emrys-weaver. 

The description of emrys-weaver is "You are Emrys Tisserand, and you are the active Storyweaver of the seedship Tragwyddol. It is your job to preserve and share the history of this people in the form of stories. 

They say that Storyweavers have the Gift, but what that gift is, all disagree on. For most of your career, you haven't noticed anything strange or supernatural about you. But all that has changed today."

Chapter 2 - Recorder

The all-recorder is worn by the player. The printed name of the all-recorder is "recorder". Understand "recorder" or "slender" or "device" or "earpiece" or "metal" or "microphone" as the all-recorder.

[make turning off the recorder put all quips out of scope]

Instead of taking off the all-recorder:
	say "It's actually attached to your nervous system. It might be a bad idea to remove it manually."

Does the player mean doing something with the all-recorder:
	it is unlikely;

The description of the all-recorder is "Your recorder is a slender device made of metal, consisting of an earpiece and a microphone.

This device helps you remember various conversations you had or possible subjects to discuss with others. You can bring up topics pertinent to the current area of the game you are in by typing TOPICS or T, and remember past conversations by typing REMEMBER followed by the name of the topic.

To see all topics for all regions of the game, type AT.

The recorder has other useful features as well, most notably providing compass directions for you to move in, based on the local magnetic fields."

Volume 2 - Rooms

Book 1 - Past ship

Part 1 - Main rooms

Ship-region is a region.

Instead of going nowhere when the player is in ship-region:
	if the noun is down:
		say "There's no transport tube headed down here.";
	otherwise if the noun is up:
		say "There's no transport tube headed up here.";
	otherwise if the noun is outside:
		say "You're not sure which direction counts as outside.";
	otherwise if the noun is inside:
		say "You're not sure which direction counts as inside.";
	otherwise:
		say "There's a wall that way.";

The ship-walls are a plural-named backdrop. The ship-walls are in ship-region. The description of the ship-walls is "All walls in the ship are a uniform gray with bold swipes of color around exits and entrances." The printed name of the ship-walls is "walls". Understand "wall" or "walls" as the ship-walls.

The ship-floor is a backdrop. The ship-floor is in ship-region. The description of the ship-floor is "Most of the floor on the ship is stainless steel." The printed name of the ship-floor is "floor". Understand "floor" or "floors" or "stainless" or "steel" as the ship-floor.

Instead of inserting something into the ship-floor:
	try dropping the noun;
	
Instead of putting something on the ship-floor:
	try dropping the noun;

Does the player mean doing something with the ship-floor:
	it is unlikely;

Instead of entering the ship-floor:
	say "You get on the floor temporarily, then hop back up.";

Chapter 1 - Transit

Transit-room is a room in ship-region. The printed name of Transit-room is "Transit Hub".   The description of Transit-room is "This room connects all of the ship together. There is a big advertisement on the wall saying '[bold type]TESTERS: THE HORROR AREA IS DOWN AND TO THE SOUTH[roman type].'

-There is a transport tube going [bolddown].[line break]-To the [boldnorth] is the captain's quarters, which is where the wax museum is.[line break]-Going [boldup] through the transport tube to the bridge takes you to the murder mystery area.[line break]-Going [boldeast] to the psychologist's office takes you to the haunted house area.

There are also unfinished areas which are just for holding temporary items. Those are the engineering room to the [boldwest], which has a flashlight/lockpick, the brig to the [boldsouth], which will eventually be a combat zone, and the savannah found going [bolddown] to the living quarters, where the wasphawk is found."

The big-ad is scenery in transit-room. The printed name of big-ad is "advertisement". Understand "wall" or "ad" or "advertisement" or "big" as the big-ad. The description of the big-ad is "The advertisement on the wall is wise and judicious. It tells you to go [bolddown] and then [boldsouth] to get to the horror area."

Section 1 - Tear in space

[was removed. maybe put back]

Chapter 2 - Psychologist's office

Psych-room is east from Transit-room. psych-room is in ship-region. The printed name of Psych-room is "Psychologist's Office". The description of psych-room is "You've spent a lot of time in Gareth's office over the last few months, given your similar responsibilities. This is a small office with softer lighting and more furnishings than most of the ship. The walls are plastered with classic movie posters and the desk is overflowing with action figures. You can return through the halls to the transit hub to the [boldwest]."

The classic-posters are plural-named scenery in psych-room. The printed name of the classic-posters is "classic movie posters". Understand "classic" or "movie" or "poster" or "posters"as the classic-posters. The description of the classic-posters is "These are all from old Earth. You know Gareth is a fan of the old movies; he's been trying to purchase an actual film reel for years.

He has posters for The Mummy, Dracula, and The Creature from the Black Lagoon."

Instead of taking the classic-posters:
	say "You know how careful Gareth is with his posters; you would never take the chance of tearing something he cares so much about."

A horror-poster is a kind of thing. A horror-poster is usually scenery. Understand "poster" or "movie" as a horror-poster.

The dracula-poster is a horror-poster in psych-room. The printed name of the dracula-poster is "[italic type]Dracula[roman type] poster". Understand "dracula" or "vampire" or "orange" or "bright" or "black" or "lugosi" or "bella" as the dracula-poster. The description of the dracula-poster is "This poster is bright orange and yellow and dark black, advertising the film [italic type]Dracula[roman type]. You recognize the man as Bella Lugosi, since Gareth once sat you down and talked to you for over three hours about why he was the most iconic vampire, although Carlisle Cullen was his second place choice, which made you doubt his overall method for ranking."

The mummy-poster is a horror-poster in psych-room. The printed name of the mummy poster is "[italic type]Mummy[roman type] poster". The description of the mummy-poster is "This poster for the movie [italic type]The Mummy[roman type] shows an impressionistic image of a mummy and an alluring woman posing in front of vague hieroglyphics, with the words 'It Comes to Life!'

You watched this one with Gareth, but it wasn't, in your opinion, as good as the Brendan Frasier one, or that ones['] 100th anniversary remake."

Understand "mummy" as the mummy-poster.

Understand "impressionistic" or "image" or "mummy" or "alluring" or "woman" or "vague" or "hieroglyphics" or "words" as the mummy-poster when the mummy-poster is examined.

The lagoon-poster is a horror-poster in psych-room. THe printed name of the lagoon-poster is "[italic type]Creature from the Black Lagoon[roman type] poster". Understand "creature" or "black" or "lagoon" or "from the" as the lagoon-poster. The description of the lagoon-poster is "This is a pulpy-looking movie poster featuring a guy in a rubber suit grabbing a screaming woman clad in a bathing suit, under the title [italic type]Creature from the Black Lagoon[roman type]."

Understand "pulpy" or "pulpy-looking" or "looking" or "guy" or "rubber" or "suit" or "screaming" or "woman" or "bathing" or "suit" as the lagoon-poster when the lagoon-poster is examined.

INstead of taking or pulling or attacking a horror-poster:
	say "Gareth would be so upset if you ruined his posters! You couldn't bring yourself to do that."

The action-figures are plural-named scenery. The action-figures are on the psych-desk. The printed name of the action-figures is "action figures". Understand "action" or "action figures" or "toys" or "toy" or "figures" or "figurines" or "horror" or "various" or "character" or "characters" as the action-figures. The description of the action-figures is "Gareth has a few action figures out, but he keeps most of his favorites in storage. Except for his Dracula figure; that's his number one favorite, and he usually keeps it out for display. But it's missing.

He still has his wolfman, yeti, and crystal ball out, though."

A psych-figure is a kind of thing. A psych-figure is usually scenery. Understand "figure" or "figurine" as a psych-figure.

Instead of physicality when the noun is a psych-figure:
	say "Gareth doesn't really need someone messing with his possessions right now."

The wolfman-figure is a psych-figure on the psych-desk. The printed name of the wolfman-figure is "wolfman figurine". Understand "wolf" or "wolf man" or "wolfman" as the wolfman-figure. The description of the wolfman-figure is "This figure is a wolfman caught mid-transformation, howling in agony."

The yeti-figure is a psych-figure on the psych-desk. The printed name of the yeti-figure is "yeti figurine". Understand "yeti" or "bigfoot" or "snowman" or "creature" or "abominable" as the yeti-figure. The description of the yeti-figure is "This figure is a yeti, a creature from the mountains of Tibet."

The crystal-figure is a psych-figure on the psych-desk. The printed name of the crystal-figure is "crystal ball". Understand "crystal" or "ball" or "ghost" as the crystal-figure. The description of the crystal-figure is "This is a little different from his other figures, a crystal ball that has a kind of ghost in it you can only see from certain directions." 

The psych-desk is an enterable scenery supporter in psych-room. Understand "desk" as the psych-desk. The printed name of the psych-desk is "desk". The description of the psych-desk is "This is a plain desk with a single drawer, cluttered with action figures. Gareth likes to set his patients at ease."

The psych-drawer is a closed openable container. The psych-drawer is part of the psych-desk. Understand "drawer" as the psych-drawer when the psych-desk is examined. The printed name of the psych-drawer is "drawer".

After opening the psych-drawer for the first time:
	now the psych-drawer is open;
	say "You open the drawer, revealing a loosely-bound manuscript."

The psych-manuscript is in psych-drawer. The printed name of the psych-manuscript is "loose manuscript". Understand "loose" or "loosely" or "loosely-bound" or "bound" or "untitled" or "manuscript" as the psych-manuscript. The description of the psych-manuscript is "[first time]You haven't seen this before. [only]It's a loosely-bound manuscript with the title 'The use of narrative in diagnosis and training in the human sciences'.".

Instead of reading the psych-manuscript:
	say "You leaf through a few pages[one of][or] again[stopping]. It looks like his idea is to make fictional narratives that depict various negative emotional states and how to deal with them yourself or help others experiencing them. Interesting."

Instead of taking the psych-manuscript:
	say "It looks like Gareth's been working hard on it; it'd be a shame to lose it."

Instead of entering the psych-desk:
	say "That might knock off a bunch of the action figures!";

Withplaying is an action applying to one thing. Understand "play with [something]" as withplaying.

Carry out withplaying:
	if the noun is the action-figures:
		say "Gareth has said that they're for looking at, not playing with.";
	otherwise if the noun is the gareth-toy:
		say "You wobble it back and forth a little and make it talk in a squeaky voice.";
	otherwise:
		say "This [aren't] the right time to play.";

Instead of taking the action-figures:
	say "Gareth would get very upset. This doesn't seem like the time for that."

Instead of kissing gareth:
	say "You give Gareth a hug. He lets you, and pats your hand absent-mindedly."

Instead of physicality when the noun is action-figures:
	say "Gareth asked you to leave these alone."

[implement individual movie posters?]

Understand "lie down on [the psych-couch]" as entering.

The softer-lighting is intangible scenery in the psych-room. The printed name of the softer-lighting is "softer lighting". Understand "softer" or "lighting" as the softer-lighting. The description of the softer-lighting is "The lighting in here is softer than the rest of the ship, but you can't discern its source."

Understand "furnishings" as the psych-couch. Understand "furnishings" as the psych-rug.

The psych-rug is scenery in the psych-room. Understand "comfortable" or "rug" as the psych-rug. The printed name of the psych-rug is "comfortable rug". The description of the psych-rug is "This a comfortable rug that helps mute some of the clangs and echoes typical in spaceships."

The psych-couch is an enterable scenery supporter in the psych-room. Understand "couch" as the psych-couch. The printed name of the psych-couch is "couch". The description of the psych-couch is "While its usefulness in psychological evaluation is debatable, the couch is one of the best places for naps on the ship. When there isn't an emergency, that is. The two of you have sat and talked here many times before."

Instead of looking under the psych-couch:
	say "Hmm, pretty clean. Gareth must take good care of his office."

Section 1 - Psychologist

Gareth is a man in Psych-room. "Gareth is here, huddled on his couch and staring at the wall." Understand "doctor" or "Djomo" as Gareth. The description of Gareth is "Gareth is a disheveled middle-aged man with a mop of curly black hair and a lean frame. He's usually so playful and full of energy, but he has a thousand-yard stare right now, and it hurts you to see him like this. "

Report going to psych-room:
	deliver Consolation-gareth;
	deliver simians-gareth;
	
Consolation-gareth is a quip. The target of consolation-gareth is gareth. The preview of Consolation-gareth is "Hey, Gareth, are you feeling okay?" The printed name of consolation-gareth is "Consolation". Understand "consolation" as consolation-gareth.

The targetresponse of consolation-gareth is "Gareth looks up at you disconsolately. 'I wasn't trained for this. Do you know there are twenty-three psychologists on board? Some of them have seen combat. Not me; I was supposed to be the colony's family psychologist. And somehow I'm the one they defrosted right before we all go up in flames. I could have just died in my sleep like the other ten thousand passengers. I don't know how to be helpful at all right now,' he says.

You don't say anything, but squeeze his hand in support. He barely seems to register it."

Simians-gareth is a quip. The target of simians-gareth is gareth. The preview of simians-gareth is "Gareth, a random robot monkey just took your toy!" The printed name of simians-gareth is "Simians". Understand "simians" as simians-gareth.

The targetresponse of simians-gareth is "Gareth turns away from you sulkily. 'You don't have to make fun of me,' he says. 'We're all going to die, the least you could do is to not bully me about my action figures.'

'But Gareth, that's not--' you start, but he just shakes his head."

Section 2 - Tear in space

The psych-tear is a space-tear. "[one of]The psychologist on duty (and one of your best friends), Gareth Djomo, is in here, huddled on his couch. Oblivious to the chaos outside, or perhaps overwhelmed by it, he stares off into the corner. 

There is a tearing sound, and the fabric of reality rips open to the [boldnorth]. Out of the tear comes a bizarre little creature, a kind of robotic monkey. It leaps up onto Gareth's desk and grabs one of the action figures, then rushes back into the tear in space. [Gareth] doesn't seem to notice any of this[or][if the player is in ship-region]A tear in space has opened up here[otherwise]A tear in space leading back to the ship is here[end if], to the [if the player is in psych-room][boldnorth][otherwise][boldsouth][end if]. It glows [if the psych-tear is red-torn]red[otherwise]green[end if][stopping]." The psych-tear is north of psych-room and south of the front-room.

Chapter 3 - Engineering room

The engineering-room is west from Transit-room. The engineering-room is in ship-region. The printed name of the engineering-room is "Engineering Room". "You can return to the transit hub to the [boldeast]."

The engineering-tear is a space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in engineering-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the engineering-tear is red-torn]red[otherwise]green[end if]." The engineering-tear is north of engineering-room and south of device-room. 

Chapter 4 - Bridge, flight control

The transport-tube is an open unopenable scenery door. The transport-tube is up from Transit-room and down from flight-room.The printed name of the transport-tube is "transport tube". Understand "transport" or "tube" or "elevator" as the transport-tube. The description of the transport-tube is "The transport tube is completely safe to use. Much better than the old model; you know a guy who only has three fingers on his right hand because of it." 

Bridge-region is a region. Bridge-region is in ship-region.

The bridge-background is a plural-named distant backdrop. The printed name of the bridge-background is "crew". Understand "crew" as the bridge-background. The bridge-background is in bridge-region. The description of bridge-background is "All the crew are busy. You can find the rest by walking around the bridge."

The bridge-stations is a plural-named distant backdrop. The printed name of the bridge-stations is "stations". Understand "station" or "Stations" as the bridge-stations. The bridge-stations is in bridge-region. "The other stations are further away. You can reach them by walking around the bridge."

The flight-room is in bridge-region. The printed name of the flight-room is "Bridge: Flight Controls". The description of the flight-room is "The bridge of the ship is massive, spreading around you in multiple directions, each spot with its own crew and station. This is the flight control section, featuring a large console covered in lights and buttons, on which is [a murder-orient].

The transport tube leads back [bold type]down[roman type] to the rest of the ship."

Instead of going nowhere from flight-room:
	say "[bracket]Most of this area hasn't been implemented yet. The part I'm asking testers to look at is through the tear in space to the [boldnorth].[close bracket][paragraph break]"

Mefe is a woman in flight-room. "Officer Mefe is here[if the flight-tear is green-torn], calmly working on navigation[otherwise], frantically trying to restore navigation function to the console[end if]." The description of Mefe is "Flight Officer Mefe Azimov is a short woman with wavy blond hair tucked under a cap. An intimidating, reserved woman, Mefe is one of the officers you've spent the least time with[if the flight-tear is green-torn]. But you feel like you've gotte to know her better, now. She seems confident[otherwise]. She tends to be wary of you, but you haven't found out why, yet. While trying to repair the controls, she constantly scans the room, looking for other problems to fix, but finding too many to handle[end if].". Understand "flight" or "officer" or "azimov" or "wavy" or "blond" or "hair" or "short" as Mefe.

The flight-console is a scenery supporter in flight-room. The printed name of the flight-console is "flight console". Understand "flight" or "console" or "wide" or "wing" or "shaped" or "button" or "buttons" or "setting" or "settings" or "wing-shaped" or "numerous" or "blinking" or "light" or "lights" or "switch" or "switches" or "control" or "controls" as the flight-console. The description of the flight-console is "This is a wide, wing-shaped flight console with numerous blinking lights and switches."

Repairing is an action applying to one thing. understand "repair [something]" or "fix [something]" as repairing.

Carry out repairing:
	now the story tense is past tense;
	say "[We] [are] never trained for repairs.";
	now the story tense is present tense;

murder-orient is a thing on flight-console. The printed name of the murder-orient is "[if the murder-orient is examined][italic type]Murder on the Orient Express[roman type][otherwise]vintage mystery novel[end if]"

Understand "murder" or "book" or "books" or "orient" or "express" or "vintage" or "mystery" or "novel" or "ancient" as the murder-orient.

Understand the command "read" as something new. 

Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing, requiring light. 

Carry out reading:
	try examining the noun;

Instead of reading the murder-orient:
	say "There's no need to read the book; as a Storyweaver, you're very familiar with the murder on the Orient Express, and of the necessity of pointing out contradictions in witness testimony.";

The description of the murder-orient is "Mefe has a habit of reading ancient books during slow times, of which this is not one. This is a murder mystery called [italic type]Murder on the Orient Express[roman type]."

Instead of physicality when the noun is murder-orient:
	say "[if flight-tear is red-torn]Officer Mefe shouts, 'Hey, wait until after we're not on a crash-course with death before you mess with my stuff, okay[otherwise]Officer Mefe says, 'Hey, how about you read that later, okay[end if]?'"

Instead of physicality when the noun is flight-console:
	say "Mefe says, 'Watch it! I'm trying to correct our flight path!'"

The flight-cap is worn by Mefe. Understand "cap" as the flight-cap. The printed name of the flight-cap is "cap". The description of the flight-cap is "This cap signifies Mefe's rank as Officer."

The flight-tear is a space-tear. "[first time]As you come out of the transport, you arrive at a scene of chaos. 

Flight Officer [Mefe] Azimov is frantically operating the flight console. 'Come on, come on!' she says, trying combination after combination of buttons and settings.

While you watch, a strange robotic monkey-like creature clambers out from behind the console. It holds a sparking computer chip in its hand.

It issues a series of beeps, and the space in front of you to the north rips open violently, space itself tearing. The creature dives through the tear. Officer Mefe doesn't seem to notice anything at all[deliverchipless].

[only][if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in flight-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the flight-tear is red-torn]red[otherwise]green[end if]." The flight-tear is north of flight-room and south of lavatory-room.

To say deliverchipless:
	deliver chipless-quip;
	
Chipless-quip is a quip. The printed name of chipless-quip is "Chipless". Understand "chipless" as chipless-quip. The target of chipless-quip is Mefe. The preview of chipless-quip is "A robot monkey ran off with a chip from your computer!"

The targetresponse of chipless-quip is "'My apologies, Storyweaver, I don't have time to talk about...wait, did you say something took a chip? A monkey?' You nod.

She leans over the console. 'The little gremlin! Emrys, I've got to get this ship under control or we're all going to die. Where did it go?'

'Into that,' you say, pointing towards the large rip in space. 

Mefe stares, then looks back at you. 'I can't see anything.' Then her face clears, and she says, 'It must be your Weaver's Gift. Something is trying to help us. My great-grandma used to be a weaver, and she'd tell us stories of all the frightful things she'd seen. Emrys, can you grab that chip for me? I'll do the best I can here while you're gone.'

'Don't worry, Mefe, I'll do everything I can to get it back,' you say. You pat her reassuringly on the arm, and she looks a little less frightened of you."

Chapter 5 - Living quarters

Living-quarters is down from Transit-room. Living-quarters is in ship-region. The printed name of Living-quarters is "Living Quarters". "These are the living quarters. You can go back [bold type]up[roman type] to the rest of the ship.

A small advertisement on the wall says, 'TESTERS: GO [boldsouth] TO GET TO THE HORROR AREA!'

The halls to the [boldsouth] lead to the schools. From the looks of it, that area has been hit hard by the collision."

The small-ad is scenery in living-quarters. The printed name of small-ad is "advertisement". Understand "wall" or "ad" or "advertisement" or "small" as the small-ad. The description of the small-ad is "The advertisement on the wall is wise and judicious. It tells you to that the horror area is to the [boldsouth]."

The quarters-tear is a space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in living-quarters][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the quarters-tear is red-torn]red[otherwise]green[end if]." The quarters-tear is north of living-quarters and south of savannah-room. 

Chapter 6 - Captain's quarters

The captain-room is north from Transit-room. The captain-room is in ship-region. The printed name of the captain-room is "Captain's Quarters". The description of captain-room is "The Captain's quarters are much like the man himself, utilitarian but comfortable. [first time]Few people come in here, as the Captain likes to spend his time among his officers and around the ship. It feels almost like you are invading a private sanctum.

[only]A desk with his private data terminal is the main feature on one side of his room, next to his neatly-made bed. A shelf filled with historical texts dominates the other. The main decoration on the wall is a picture of his family[first time].

 [The Captain] looks up as you enter the room. He's the same height as you, but has a commanding presence, with a body still muscled and fit despite the gray in his beard. He's holding a glass of Scotch in his hand. As his eyes look up to meet you, you notice a slight reddish glow behind him, accompanied by a tearing sound.

'Storyweaver. You're here,' he says, keeping a calm tone despite his ashen appearance. 'I could use your perspective on history, given the...events of the day.[deliverrequest]' As he speaks, the glow behind him widens, opening into a full-blown tear in the fabric of space, glowing red.

The captain sighs, and you can almost see a tear in his eye. As he speaks, a robotic, yet simian-looking hand pushes its way out of the portal and grabs something from the desk before pulling it into the tear in space.

You only had a second to look, but your heart drops: the hand took the Captain's watch, an antique passed down for generations in his family. Strangely, he seems completely unaware of what's happened[only].".

Section 1 - The captain

The Captain is a man in the captain-room. "The Captain is brooding, holding his Scotch and staring disconsolately." Understand "muscles" or "muscle" or "beard" or "hair" or "close" or "cropped" or "close-cropped" or "neatly" or "trim" or "trimmed" as the captain. The description of the captain is "The Captain is a muscular man about your height. He is  wearing his command uniform. His close-cropped hair and neatly-trimmed beard are mostly gray with a hint of the original black in them.

He is not the first captain the ship has had; each captain serves for a few years, then elects one of his or her officers as a replacement before returning to storage. He is nearing the end of his term, though.".

The command-uniform is worn by the captain. The printed name of the command-uniform is "command uniform". Understand "command" or "uniform" or "gray" or "Jacket" or "slack" or "slacks" or "matching" as the command-uniform. The description of the command-uniform is "The captain's command uniform is a gray jacket with matching slacks. Only a few bars represent his rank."

To say deliverrequest:
	deliver request-quip;

Request-quip is a quip. The printed name of the request-quip is "Request". Understand "Request" as the request-quip. The target of request-quip is the captain. The preview of the request-quip is "Reporting for duty, sir. How can I help you?".

The targetresponse of the request-quip is "'Storyweaver,' he says, 'The ship...it's not in good shape. Things are worse than we have let on.'

'Then excuse me for asking, sir, but why are you in here? Shouldn't you be trying to fix things?' you ask.

He winces. 'I hope you don't think me a coward,' he says. 'There is little I can do; these are problems that even our experts cannot solve. I've decided the best thing to do is to get out of their way.'

'Where do I come in?' you ask.

'You, like me, are a scholar, a historian. Storyweaver, what will they say about me if we fail? If the captain of the very first seedship loses it just a few small years from our goal?' he asks.

'You can't control what people say about you,' you answer. 'But you can control what you do.'

He shakes his head, then turns to look at his desk. He seems to take no notice of the gaping hole in spacetime next to it. But he notices the absence of his watch. He startles, then looks under the desk, but then notices you watching. He returns to sulking over his Scotch, now sadder than before."

The scotch-glass is held by the captain. The printed name of the scotch-glass is "glass of scotch". Understand "glass" or "glass of" or "scotch" or "drink" or "cup" as the scotch-glass. The description of the scotch-glass is "The Captain holds a glass of scotch firmly in his hand. It seems he's been helping himself to the decanter on the desk." 

Instead of drinking the scotch-glass:
	say "That's the Captain's drink!"

Instead of wearing the antique-watch:
	say "Oh, the Captain would be mad if he saw you wearing his family's prize watch as if it were your own!"

[FIX THIS LATER add an antique watch quip]

Instead of giving the antique-watch to the captain:
	say "The Captain looks at you with surprise. 'My watch? When did you...' He grasps it tightly. 'Thank you Storyweaver.'

He looks at it for a moment, then says, 'This watch belongs to a long line of heroes. My ancestors won this in the first war, the one they called the Great War, before they had to resort to numbers. My grandfather had it, one of the first asteroid miners. My father had it, a heart surgeon who saved thousands. And I...I have no child to give it to. And I am not a hero.'

'That is your choice,' you say. 'No one can stop you. A true hero is anyone willing to risk himself to save his friends.'

He stiffens and straightens up. 'You're right. Thank you, Storyweaver,' he says. 'I think it's time I help out my crew.'

He gives you a nod, and walks out of the room.

The tear in space in this room gently turns from red to green.";
	now the captain-tear is green-torn;

Section 2 - The tear in space

The captain-tear is a red-torn space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in captain-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the captain-tear is red-torn]red[otherwise]green[end if]." The captain-tear is north of captain-room and south of wax-entrance. 

Section 3 - Captain's Desk

The captains-desk is an enterable scenery supporter in captain-room. The printed name of the captains-desk is "mahogany desk". Understand "mahogany" or "desk" as the captains-desk. The description of the captains-desk is "The desk is mahogany, an antique. The Captain has a predilection for things from older times, which is one reason he's always had the greatest respect for you."

Instead of entering the captains-desk:
	say "The poor captain has had a pretty bad day. He doesn't need someone stomping all over his desk!"

The drinks-tray is a scenery open unopenable container on the captains-desk. The printed name of the drinks-tray is "drinks tray". Understand "drinks" or "Tray" as the drinks-tray. The description of the drinks-tray is "The crew gifted the captain this tray after his second year of service. He's treasured it ever since."

Instead of taking the drinks-tray:
	say "The captain is very particular about his Scotch, and wouldn't appreciate it going missing.";

The scotch-decanter is in the drinks-tray. The printed name of the scotch-decanter is "decanter of Scotch". Understand "crystal" or "of scotch" or "decanter" as the scotch-decanter. The description of the scotch-decanter is "This crystal decanter of Scotch is noticeably not full. The Captain's had a hard time, it seems."

Instead of taking the scotch-decanter:
	say "The captain is very particular about his Scotch, and wouldn't appreciate it going missing.";

Instead of drinking the scotch-decanter:
	say "That's the Captain's Scotch! He wouldn't be pleased with that..."

The empty-glass is in the drinks-tray. The printed name of the empty-glass is "empty glass". Understand "empty" or "glass" as the empty-glass. The description of the empty-glass is "The other glass is empty, still on the tray."

Does the player mean doing something with the empty-glass:
	it is unlikely;

Instead of drinking the empty-glass:
	say "But it's empty!"

Instead of taking the empty-glass:
	say "The Captain's glasses can be left well enough alone."

Instead of inserting something into the empty-glass:
	say "The Captain's glasses can be left well enough alone."

The private-terminal is a scenery device on captains-desk. The printed name of private-terminal is "private data terminal". Understand "private" or "data" or "terminal" as the private-terminal. The description of the private-terminal is "The captain's private data terminal is for use when he's away from the bridge and wants to stay connected to everyone else."

Instead of switching on the private-terminal:
	say "The data terminal is coded to the Captain. It won't turn on for you."

Instead of opening the captains-desk:
	say "It doesn't have any drawers."

Section 4 - Bed and ornaments

The tightly-made is a scenery enterable supporter in captain-room. The printed name of tightly-made is "tightly-made bed". Understand "tightly" or "made" or "bed" as the tightly-made. The description of the tightly-made is "The captain's bed is impeccable. A quarter would bounce quite a bit on this.".

Instead of entering the tightly-made:
	say "Hopping in the Captain's bed would be deeply disrespectful."

The family-picture is scenery in captain-room. The printed name of the family-picture is "family picture". Understand "family" or "picture" or "rosy" or "plump" or "woman" or "small" or "girl" as the family-picture. The description of the family-picture is "[if home-quip is targetgiven]You look closer at the picture. Sad, now that you know the story[otherwise]Interesting. You haven't heard the Captain talk much about his family before, and this is your first time in his quarters[deliverhome][end if].

The picture shows the captain, young and thin, his arm around the waist of a rosy, plump woman. The woman is holding a small girl on her lap."

To say deliverhome:
	deliver home-quip
	
Home-quip is a quip. The printed name of home-quip is "Home". Understand "Home" as home-quip. The target of Home-quip is the Captain. The preview of Home-quip is "Do you think of your family often?"

The targetresponse of home-quip is "'Storyweaver,' he answer seriously, 'My wife and son died very soon after that picture was taken. It was sudden, but I'm told it was relatively painless. I think about them every day.'

'Oh,' you say, embarassed. 'I didn't know. My condolences.'

'Thank you,' he says. 'I appreciate your openness. But this ship is my home now. For as long as it lasts.' He stares gloomily into his drink."

Section 5 - Bookshelf

The captain-shelf is a scenery supporter in captain-room. The printed name of the captain-shelf is "bookshelf". Understand "book" or "books" or "caesar" or "gibbon" or "historical" or "text" or "texts" or "plutarch" or "shelf" as the captain-shelf. The description of the captain-shelf is "The Captain's bookshelf is filled with historical texts: Caesar, Gibbon, Plutarch, and others. He has a fondness for grounding himself in the stories of past heroes."

Instead of taking the captain-shelf:
	try reading the captain-shelf;

Instead of reading the captain-shelf:
	say "You grab one of his books at random and peruse it for a minute, but the type is small and it's hard to focus with everything going on. You put it back."

Book 2 - Future Ship

Part 1 - Wax museum dimension

The wax-region is a region.

Instead of going nowhere when the player is in wax-region:
	if the noun is up:
		say "This is a one-floor museum[if climbing-wall is in the location].

If you want to climb the wall, try grabbing or climbing one of the rocks[end if].";
	otherwise if the noun is down:
		say "This is a one-story building.";
	otherwise if the noun is outside:
		say "You're not sure which direction counts as outside.";
	otherwise if the noun is inside:
		say "You're not sure which direction counts as inside.";
	otherwise:
		say "This room doesn't have an exit in that direction.";

A wax-figure is a kind of thing. A wax-figure is scenery. Understand "wax" or "figure" or "figures" as a wax-figure. Instead of touching a wax-figure: say "Hmmm. Kind of....waxy."

An info-plaque is a kind of thing. An info-plaque is scenery. Understand "plaque" or "plaques" as an info-plaque.

Does the player mean doing something with an info-plaque:
	it is unlikely;

Instead of taking a wax-figure:
	say "The figure seems quite sturdy."
	
A thing can be waxful or nonwax. A thing is usually waxful.

Instead of physicality when the noun is part of a wax-figure:
	if the noun is nonwax:
		say "That's attached to the wax figure right now, so you can't do much with it.";
	otherwise:
		say "The wax in the figures doesn't move much, and if you push too hard, it could damage the wax."

Instead of physicality when the noun is a wax-figure:
	say "The wax in the figures doesn't move much, and if you push too hard, it could damage the wax."


Chapter 1 - Napoleon room

[Pride here means overlooking others and not seeing from their point of view. Getting up high? Climbing up?]

Pride-room is a room in the wax-region. The printed name of Pride-room is "Napoleon Room". The description of Pride-room is "[if the player is not on climbing-wall][pride-intro][otherwise]From your vantage point on the climbing wall, you can see the wax figures of Napoleon and Khufu far below, as well as the rainbow-colored podium[end if]."

To say pride-intro:
	say "[first time]'Hello?' you say as you enter the dark building. 'Is anyone there?'

Lights click on, and you jump in surprise. You let out a shout when the lights reveal a pointed weapon only inches from your face. Then you realize that your attacker isn't moving. 

'A wax museum,' you say, breathily. Your dad used to take you to these when you were a kid. It was one of the things that got you to major in history in college, and it was also one of the reasons you wanted to be a Storyweaver. Although, you've never been in one alone before.

[only]You find yourself in a room dominated by two large wax figures. According to two helpful plaques, one is Napoleon, the would-be emperor of Europe. He has been depicted here riding a rearing horse, his cape billowing in the wind. He brandishes a well-polished saber in one hand.

The other figure is Khufu, the ancient Pharaoh of Egypt and possibly the architect of one of its grandest monuments. On one side of Khufu is a scale model of the Great Pyramid of Giza, although it seems slightly off-balance. On the other side is a very unusual and gaudy version of the Sphinx[if currentcolor is not black].

The room is gently lit by an ambient [currentcolor] glow[end if].

The floor is covered in an intricate and unusual pattern that draws your attention[if the rainbow-podium is in pride-room].

A rainbow-colored podium projects out of the ground. On it are three switches, each a different color[end if]. 

Outside of the figures and the floor, the entire room is minimally decorated and quite tall. To the [boldeast] is an entryway with a sign saying Gift Shop. You can also go [boldnorth] or [boldsouth] from here[if climbing-wall is in pride-room].

A climbing wall has been revealed on one side of the room. It has numerous rocks on it, each individually labelled[end if]"

[flashlight spoils it]

[climbing wall lets you see pattern on the floor]

The gift-sign is distant scenery in pride-room. The printed name of the gift-sign is "gift shop sign". Understand "gift" or "shop" or "sign" as the gift-sign.

The description of the gift-sign is "The sign proudly proclaims 'GIFT SHOP'."

Section 1 - Napoleon

wax-napoleon is a wax-figure in pride-room.. The printed name of wax-napoleon is "Napoleon". Understand "napoleon" or "bonaparte" as wax-napoleon. The description of wax-napoleon is "Napoleon is depicted in his full glory, brandishing a polished saber and wearing a billowing cape and a jaunty bicorne hat. He is seated on a rearing horse. As a Storyweaver educated in much of Earth's history, the historical accuracy of the figure is dubious, but it does look impressive."

The napoleon-horse is a wax-figure in pride-room. The printed name of the napoleon-horse is "rearing horse". Understand "rearing" or "horse" or "arabian" or "chestnut" as the napoleon-horse. The description of the napoleon-horse is "The rearing horse looks to be a chestnut Arabian, depicted in a fierce manner."

The red-cape is part of wax-napoleon. The printed name of the red-cape is "billowing cape". Understand "billowing"or "cape" as the red-cape. The description of the red-cape is "It must be quite difficult to construct such a realistic cape out of wax, but it looks real."

Instead of touching the red-cape:
	say "Yep. Wax."
	
The polished-saber is a nonwax part of wax-napoleon. The printed name of the polished-saber is "polished saber". Understand "polished" or "mirror" or "reflective" or "reflection" or "crescent" or "weapon" or "metal" or "well" or "well-polished" or "metallic" or "saber" or "sword" as the polished-saber.

The description of the polished-saber is "The saber looks to be metallic, unlike the rest of Napoleon, which is made of wax. The saber reflects much of the room, but it is all distorted." 

The jaunty-bicorne is part of wax-napoleon. The printed name of the jaunty-bicorne is "bicorne hat". Understand "jaunty" or "bicorne" or "hat" as the jaunty-bicorne. The description of the jaunty-bicorne is "Napoleon's hat looks dangerously close to falling off, but upon closer inspection seems to be all of one piece with the wax figure."

The napoleon-plaque is an info-plaque in pride-room. The printed name of the napoleon-plaque is "Napoleon plaque". Understand "napoleon" or "plaque" as the napoleon-plaque. The description of the napoleon-plaque is "It says, 'Napoleon Bonaparte'."

Currentpad is a number that varies. Currentpad is 0.

The horse-hoof is part of the napoleon-horse. Understand "hoof" or "hooves" or "prominent" as the horse-hoof. The printed name of the horse-hoof is "hoof". The description of the horse-hoof is "Looking underneath the most prominent hoof, you see a five-digit keypad. It currently displays '[currentpaddisplay]'."

Instead of looking under the horse-hoof:
	try examining the horse-hoof;
	
The digit-pad is part of the horse-hoof. The printed name of the digit-pad is "keypad". Understand "five-digit" or "five" or "digit" or "keypad" or "key" or "display" or "keys" as the digit-pad. The description of the digit-pad is "This is a simple keypad that displays five digits. It currently reads '[currentpaddisplay]'."

Numbersetting it on is an action applying to one number and one thing. Understand "type [a number] on [digit-pad]" or "enter [a number] on [digit-pad]" as numbersetting it on.

Digitpowered is a truth state that varies. Digitpowered is true.

Carry out numbersetting it on:
	if digitpowered is false:
		say "The keypad is now inert.";
	otherwise:
		now currentpad is remainder after dividing the number understood by 100000;
		say "The keypad buzzes harshly. It now displays '[currentpaddisplay]'."

To say currentpaddisplay:
	if currentpad < 10000:
		say "0";
	if currentpad < 1000:
		say "0";
	if currentpad < 100:
		say "0";
	if currentpad < 10:
		say "0";
	say currentpad;

Understand "set [digit-pad] to [a number]" as numbersetting it on (with nouns reversed).
	
Instead of numbersetting 27182 on digit-pad:
	if digitpowered is false:
		say "The keypad is now inert.";
	otherwise:
		now digitpowered is false;
		now currentpad is 27182;
		now climbing-wall is in pride-room;
		say "There is a loud bell sound. The keypad now displays '[currentpaddisplay]'. 

Panels slide open on one wall across the room from you. One at a time, rocks protrude out, until it forms a climbing wall. 

You wander over to take a look. All of the rocks have words on them. Something about the words is familiar..."

["type [a number]" or "enter [a number]" or "type in [a number]"]

Section 2 - Khufu

khufu-figure is a wax-figure in pride-room. The printed name of the khufu-figure is "Khufu". UNderstand "khufu" or "pharaoh" as the khufu-figure. The description of the khufu-figure is "This figure is generally right, from what you remember. It looks like they modeled it directly on the ivory statuette found in the early 1900[']s. Khufu is depicted holding the flail of authority and wearing the red crown. He gives off an air of majesty mingled with smugness."

The khufu-flail is part of the khufu-figure. The printed name of the khufu-flail is "flail of authority". Understand "Flail" or "flail of " or "authority" as the khufu-flail. The description of the khufu-flail is "The flail was a traditional sign of authority of the pharaohs, although its exact significance is uncertain. This flail is held close, across Khufu's body."

The red-crown is part of the khufu-figure. Understand "red" or "crown" as the red-crown. The printed name of the red-crown is "red crown". The description of the red-crown is "Khufu is only wearing one crown, just like the statuette it's modeled after. This one, in red, represents lower Egypt. You saw many depictions like this in Cairo, once, when you formed part of a team that was returning some of the last artifacts still held in foreign museums."

Does the player mean doing something with the red-crown:
	it is unlikely;

The khufu-plaque is an info-plaque in pride-room. The printed name of the khufu-plaque is "Khufu plaque". Understand "khufu" as the khufu-plaque. The description of the khufu-plaque is "It says, 'Khufu', with no titles or other honors."

Section 3 - Pyramid

PyramidPos is a number that varies. PyramidPos is 0.

Pyramidleft is a truth state that varies. Pyramidleft is false.

The khufu-pyramid is scenery in pride-room. The printed name of khufu-pyramid is "Great Pyramid". Understand "great" or "pyramid" or "giza" or "of giza" or "solid" or "scale" or "model" or "limestone" as the khufu-pyramid. The description of the khufu-pyramid is "This pyramid doesn't look nearly as accurate as most of the things around it. It's coated in solid white limestone (or something visually similar), just like the original, but the dimensions are off. Also, it seems not to be attached well to the floor; it looks like you could easily turn it any way you like."

Instead of climbing the khufu-pyramid:
	say "It's not situated below anything else and doesn't provide any particular advantage."

The true-combination is a list of numbers that varies. The true-combination is {4, 2, 3}.

The current-combination is a list of numbers that varies. The current-combination is {0, 0, 0}.

Instead of pushing the khufu-pyramid:
	try turning the khufu-pyramid;

Instead of turning the khufu-pyramid:
	say "[first time]The pyramid wobbles. Encouraged, you discover that it can rotate it in either direction. [only]It can rotate either left or right."

RIght-turning is an action applying to one thing. Understand "turn [something] right" or "turn [something] to the right" as right-turning.

Left-turning is an action applying to one thing. Understand "turn [something] left" or "turn [something] to the left" as left-turning.

Does the player mean left-turning the khufu-pyramid:
	it is likely;
	
Does the player mean right-turning the khufu-pyramid:
	it is likely;

Carry out left-turning:
	say "Turning left doesn't make sense here."

Carry out right-turning:
	say "Turning right doesn't make sense here."

Pyramidunlocked is a truth state that varies. Pyramidunlocked is true.

Before left-turning the khufu-pyramid:
	if pyramidunlocked is false:
		say "The pyramid resists any further attempts to move it." instead;

Before right-turning the khufu-pyramid:
	if pyramidunlocked is false:
		say "The pyramid resists any further attempts to move it." instead;

Instead of left-turning the khufu-pyramid:
	say "You turn [the khufu-pyramid] to the left. It ";
	if pyramidpos is 0:
		now pyramidleft is true;
	if pyramidleft is true:
		say "rumbles a bit as it turns, and then rests with a clunk.";
		increment PyramidPos;
		check-pyramid;
	otherwise:
		switch-pyramid;
		now pyramidleft is true;

Instead of right-turning the khufu-pyramid:
	say "You turn [the khufu-pyramid] to the right. It ";
	if pyramidpos is 0:
		now pyramidleft is false;
	if pyramidleft is false:
		say "rumbles a bit as it turns, and then rests with a clunk.";
		increment PyramidPos;
		check-pyramid;
	otherwise:
		switch-pyramid;
		now pyramidleft is false;
		
PyrDebugging is an action applying to nothing. Understand "pyrdebug" as pyrdebugging.

Pyrdebugflag is a truth state that varies. Pyrdebugflag is false.

Carry out pyrdebugging:
	now pyrdebugflag is true;
	
Every turn when pyrdebugflag is true:
	say "The current-combination is [current-combination]."

To switch-pyramid:
	let tempphrase be "[pyramidpos in words]";
	say "grinds a little, internal gears turning, but finally lets out a clunk.

A mechanical voice says, '[tempphrase in sentence case]'.";
	truncate the current-combination to the last 2 entries;
	add pyramidpos to current-combination;
	now pyramidpos is 1;

To check-pyramid:
	let templist be current-combination;
	truncate templist to the last 2 entries;
	add pyramidpos to templist;
	if templist is true-combination:
		say "[conditional paragraph break]The Sphinx's eyes light up in quick succession, back and forth, while a ringing sound plays. It reminds you of a slot machine, which is not something you've often thought when in wax museums.

The pyramid shudders again before it settles very firmly with a thump. At the same time, a rainbow-colored podium rises from the ground, almost underneath you, startling you and making you take a few quick steps back.";
		now pyramidunlocked is false;
		now rainbow-podium is in pride-room;

Section 4 - Floor

The floor-pattern is a scenery floor in pride-room. The printed name of the floor-pattern is "pattern on the floor". Understand "pattern" or "word" or "color" or "colors" or "pattern on the" or "message" or "floor" or "patterns" as the floor-pattern. The description of the floor-pattern is "The floor is criss-crossed by an intricate pattern that looks like words overlaid on top of each other in different colors. You can't read any of it [colormessage][line break]Besides that, the floor is remarkably clean."

To say colormessage:
	if currentcolor is black:
		say "except for one message in white: 'If you ask the Sphinx, Khufu thinks the world revolves around him. Or his pyramid.'";
	otherwise if currentcolor is red:
		say "except for one message in cyan: 'The gift shop is the most important room in the museum! Make sure to visit!'";
	otherwise if currentcolor is blue:
		say "except for one message in yellow: 'Have you tried magenta light yet?'";
	otherwise if currentcolor is green:
		say "except for one message in magenta: 'To get the horse going: from inside the great green circle, behold the crescent mirror.'";
	otherwise if currentcolor is cyan:
		say "except for one message in red: 'Watch out for rocks, they always spell trouble!'";
	otherwise if currentcolor is magenta:
		say "at all; it's just a big blob of green lines. 

Except, there's a large disk of green color in the middle.";
	otherwise if currentcolor is yellow:
		say "except for one message in blue: 'Look under the hoof.'";
	otherwise if currentcolor is white:
		say "except for one message in black: 'That's a lot of lights! Hope you're paying the electricity bill.'";
	
Every turn when the player is enclosed by pride-room:
	if currentcolor is magenta:
		now green-disk is in pride-room;
	otherwise:
		repeat with current running through things on green-disk:
			now current is in pride-room;
		now green-disk is nowhere;
	
Does the player mean switching on the green-disk:
	it is unlikely;
	
Does the player mean switching off the green-disk:
	it is unlikely;

The Green-disk is an enterable scenery supporter. The printed name of green-disk is "green disk". Understand "green" or "disk" or "disk of" or "color" as the green-disk. The description of the green-disk is "In the magenta light, a green disk of color has appeared on the ground. It's large enough to stand on, although it's just an optical illusion, rather than a physical object distinct from the carpet around it."

Instead of touching the green-disk:
	say "It's not really there; you're just touching the carpet."

Instead of examining the polished-saber when the player is on green-disk:
	say "In the distorted reflection in the saber, and from your position on the green disk, the green pattern on the ground becomes legible. It's a five-digit code: 27182."

[okay, now add looking at saber when standing on disk, climbing wall with rocks spelling trouble, and something under the hoof]

Section 6 - Sphinx

Khufu-sphinx is scenery in pride-room. The printed name of khufu-sphinx is "Sphinx". Understand "sphinx" or "gaudy"  or "body" or "face" or "scale" or "Model" or "lion" or "nose" as khufu-sphinx.

The description of khufu-sphinx is "The sphinx has been heavily remodeled from its real-life appearance. There is no wear and tear on the body and most of the face, and the flat part of the nose has a button on it. Its eyes look like plastic."

The khufu-button is part of khufu-sphinx. Understand "button" or "nose" as the khufu-button. The printed name of the khufu-button is "button". The description of the khufu-button is "This button is placed where the sphinx's nose should be."

The sphinx-left is part of the khufu-sphinx. Understand "left sphinx" or "left eye" or "eye" or "plastic" or "eyes" or "lit" or "light" as the sphinx-left. The printed name of the sphinx-left is "left sphinx eye". The description of the sphinx-left is "The left eye of the sphinx is plastic, probably has some kind of light underneath, since the texture reminds you of street lights.".

The sphinx-right is part of the khufu-sphinx. Understand "right sphinx" or "right eye" or "eye" or "eyes" or "plastic" or "lit" or "light" as the sphinx-right. The printed name of the sphinx-right is "right sphinx eye". The description of the sphinx-right is "The right eye of the sphinx is plastic, probably has some kind of light underneath, since the texture reminds you of street lights."

Instead of pushing the sphinx-right:
	say "*doink doink doink*

Nothing."

Instead of pushing the sphinx-left:
	say "*doink doink doink*

Nothing."

Instead of pushing the khufu-button:
	say "The Sphinx's left eye lights up, and it says, 'What walks on four legs in the morning...'

The right eye lights up and it says, '...two legs at noon...'

Then the left eye lights up again and it says, '...and three legs at evening?'

Then it turns dark[first time].

Every Storyweaver worth her salt knows this one; you've been telling kids about this riddle for years. 'Man!' you shout. But nothing responds. Must not be an audio puzzle[only]."

[add eyes to the sphinx]

Section 7 - Rainbow podium

The rainbow-podium is scenery. The printed name of the rainbow-podium is "rainbow podium". Understand "rainbow" or "podium" or "rainbow-colored" or "color"or "splash" or "splashes" or "colored" as the rainbow-podium. The description of the rainbow-podium is "This podium is covered in splashes of bright color. At the top are three switches, each a different color: red, blue, and green[if the number of switched on light-switches > 0]. [The list of switched on light-switches] [are] turned on[otherwise]. They are all turned off[end if].".

A light-switch is a kind of device. A light-switch is usually scenery. Understand "switch" or "switches" as a light-switch. A light-switch is usually switched off.

Understand "toggle [something]" as pushing.

Instead of pushing a light-switch:
	if the noun is switched off:
		try switching on the noun;
	otherwise:
		try switching off the noun;
		
The description of a light-switch is usually "The [printed name] is a simple toggle switch, part of the podium."

The red-switch is a light-switch. The red-switch is part of the rainbow-podium. Understand "red" as the red-switch. The printed name of the red-switch is "red switch".
The blue-switch is a light-switch. The blue-switch is part of the rainbow-podium. Understand "blue" as the blue-switch. The printed name of the blue-switch is "blue switch".
The green-switch is a light-switch. The green-switch is part of the rainbow-podium. Understand "green" as the green-switch. The printed name of the green-switch is "green switch".

lightColor is a kind of value. The lightColors are red, blue, green, magenta, cyan, yellow, white, black.

After switching off a light-switch:
	say "You flick off [the noun]. [if currentcolor is black]Now there is no colored lighting at all[otherwise]The lighting in the room dims a bit, resulting in a [currentcolor] hue[end if]."

After switching on a light-switch:
	say "You flick on [the noun]. A hidden light clicks on and the room brightens, resulting in a [currentcolor] hue[first time].

You worked stage during your time at college, so this brings back memories. You were always on the crew, so it was your job to work the lights. This system seems nicer than the one you guys used[only].

The room looks subtly different."

Understand "flick [a light-switch]" as pushing.

To decide what lightcolor is currentcolor:
	if the number of switched on light-switches is 3, decide on white;
	if the number of switched on light-switches is 2:
		if green-switch is switched off, decide on magenta;
		if blue-switch is switched off, decide on yellow;
		if red-switch is switched off, decide on cyan;
	if red-switch is switched on, decide on red;
	if blue-switch is switched on, decide on blue;
	if green-switch is switched on, decide on green;
	decide on black;

Does the player mean doing something with the captain-tear:
	it is unlikely;

Section 8 - Climbing Wall

The verb to rockheighten means the rockheight property.

The climbing-wall is a scenery enterable supporter. The climbing-wall is not portable. Understand "climbing" or "wall" as the climbing-wall. The printed name of the climbing-wall is "climbing wall". The description of the climbing-wall is "The climbing wall isn't exceptionally large, which is reassuring, since there isn't any safety equipment that you can see. It has a series of protruding rocks, each with a different word on it. 

At the bottom are [a list of climbing-rocks which rockheighten 1].

Above that, too high to reach from the floor without climbing on the lower rocks first is [a list of climbing-rocks which rockheighten 2].

The next layer consists of [a list of climbing-rocks which rockheighten 3].

Above that are [a list of climbing-rocks which rockheighten 4].

Finally, at the top, is [a list of climbing-rocks which rockheighten 5][if the number of rockglowing climbing-rocks > 0].

[The list of rockglowing climbing-rocks] are glowing[end if]." 

To slide is a verb.

Instead of putting something on the climbing-wall:
	say "[The noun] [adapt the verb slide] off the wall.";
	now the noun is in pride-room;

Instead of entering the climbing-wall:
	try climbing the climbing-wall;
	
Instead of exiting when climbingheight > 1:
	say "You're too high up to jump down; you'll have to grab a rock below you to get further down."

Instead of climbing the climbing-wall:
	say "The climbing wall has numerous rocks. Which one do you want to climb on?"

Nato-code is a kind of value. The nato-codes are Tango, Romeo, Oscar, Uniform, Bravo, Lima, Echo, Alfa, Hotel, India, Yankee, Sierra.

A climbing-rock is a kind of thing. A climbing-rock is usually a scenery. Understand "rock" or "word" or "words" or "label" or "rocks" or "protruding" or "labelled" as a climbing-rock. The printed name of a climbing-rock is usually "rock".

A climbing-rock has a nato-code. Understand the nato-code property as describing a climbing-rock. A climbing-rock is usually alfa. After printing the name of a climbing-rock: say " labelled '[nato-code]'". The description of a climbing-rock (called currentrock) is usually "This is a rock labelled [nato-code], attached to the climbing wall."

A climbing-rock has a number called the rockheight. The rockheight of a climbing-rock is usually 0.

When play begins:
	repeat with current running through climbing-rocks:
		now current is on climbing-wall;
		let tempnato be the nato-code of current;
		if tempnato is tango or tempnato is hotel or tempnato is oscar:
			now the rockheight of current is 1;
		otherwise if tempnato is uniform or tempnato is romeo:
			now the rockheight of current is 2;
		otherwise if tempnato is bravo or tempnato is alfa or tempnato is india:
			now the rockheight of current is 3;
		otherwise if tempnato is echo:
			now the rockheight of current is 5;
		otherwise:
			now the rockheight of current is 4;

Instead of taking a climbing-rock:
	say "That's stuck to the wall."

BEfore physicality when the noun is a climbing-rock:
	let tempmax be climbingheight plus 1;
	let tempmin be climbingheight minus 1;
	if rockheight of the noun > tempmax:
		say "That's too high above you!" instead;
	otherwise if rockheight of the noun < tempmin:
		say "That's too far below you!" instead;

After dropping something when the player is on climbing-wall:
	say "[The noun] falls to the ground.";
	now the noun is in pride-room;
	
Before physicality when the player is on climbing-wall:
	if the noun is not on climbing-wall:
		if the noun is not enclosed by the player:
			say "You'll have to get off the climbing wall first; that's too far away!" instead;

[say you are up very high now]

Instead of putting something on a climbing-rock:
	say "[The noun] slips and falls down.";
	now the noun is in pride-room;

There is a tango climbing-rock. There is a romeo climbing-rock. There is an oscar climbing-rock. There is a uniform climbing-rock. There is a bravo climbing-rock. There is a lima climbing-rock. There is an echo climbing-rock. There is an alfa climbing-rock. There is a hotel climbing-rock. There is an india climbing-rock. There is a yankee climbing-rock. There is a sierra climbing-rock.

A thing can be rockglowing or not rockglowing. A thing is usually not rockglowing.

REport examining a rockglowing climbing-rock:
	say "It is glowing.";

Understand "grab [a climbing-rock]" as climbing.

Instead of climbing a climbing-rock:
	try entering the noun;
	
ClimbingHeight is a number that varies. ClimbinghEight is 0.

HeldRock is a climbing-rock that varies. 

BelayOff is a truth state that varies. BelayOff is true.

Instead of entering a climbing-rock:
	let tempheight be rockheight of the noun;
	if heldrock is the noun and belayoff is false:
		say "You're already holding onto that rock!";
	otherwise if tempheight > climbingheight:
		if tempheight minus climbingheight is 1:
			say "You climb up to [the noun].";
			selectrock the noun;
		otherwise:
			say "[The noun] is too high to reach from where you are.";
	otherwise:
		if tempheight is climbingheight:
			say "You move sideways over to [the noun].";
			selectrock the noun;
		otherwise if climbingheight minus tempheight is 1:
			say "You climb down to [the noun].";
			selectrock the noun;
		otherwise:
			say "[The noun] is too far down for you to reach directly from here.";
	if climbingheight is not -1:
		move the player to climbing-wall, without printing a room description;

The playerrocks is a list of nato-codes that varies. The playerrocks is {Tango, Tango, Tango, Tango, Tango, Tango, Tango}.

Pride-done is a truth state that varies. Pride-done is false.

[This code was because I didn't understand 'without printing a room description']

[The room description heading rule does nothing when looking is stupid.
The room description body text rule does nothing when looking is stupid.
The offer items to writing a paragraph about rule does nothing when looking is stupid.

To decide whether looking is stupid:
	if the climbing-wall is nowhere, decide no;
	if the player is not enclosed by pride-room, decide no;
	if the current action is not looking, decide no;
	decide yes;]

To selectrock (currentrock - a climbing-rock):
	if currentrock is rockglowing:
		climbingfail;
	otherwise:
		now heldrock is the noun;
		say "[line break]Once you touch the rock, it starts glowing.";
		now currentrock is rockglowing;
		now climbingheight is the rockheight of currentrock;
		add nato-code of heldrock to playerrocks;
		remove entry 1 from playerrocks;
		if playerrocks is {Tango, Romeo, Oscar, Uniform, Bravo, Lima, Echo}:
			move the player to pride-room, without printing a room description;
			say "As soon as the Echo rock lights up, you hear a loud bell.

A mechanical voice shouts, 'Tango, Romeo, Oscar, Uniform, Bravo, Lima and Echo! That spells trouble!'

The rocks slowly sink down and then back into the wall, despositing you on the floor.

The voice continues, 'Congratulations! Your score has gone up by one! Check the prize meter in the gift shop to monitor your progress!'";
			now climbingheight is -1;
			now climbing-wall is nowhere;
			increment prize-level;
			now pride-done is true;
			now rainbow-podium is nowhere;
			repeat with current running through light-switches:
				now current is switched off;

To climbingfail:
	say "[line break]There is a harsh buzzing sound. All the rocks stop glowing and begin retracting into the wall. You are forced to quickly climb down.";
	now The playerrocks is {Tango, Tango, Tango, Tango, Tango, Tango, Tango};
	repeat with current running through climbing-rocks:
		now current is not rockglowing;
	now climbingheight is -1;
	move the player to pride-room, without printing a room description;
	say "You breathe heavily after climbing back down. Looking at the wall, it looks like all your progress was reset!";

Every turn when the player is in pride-room:
	if the climbing-wall is in pride-room:
		if the player is not on climbing-wall:
			repeat with current running through climbing-rocks:
				now current is not rockglowing;
			now belayoff is true;
			now climbingheight is 0;
		otherwise:
			now belayoff is false;
			
Report looking when the player is on climbing-wall:
	let tempdown be climbingheight minus 1;
	let tempup be climbingheight plus 1;
	say "You are currently gripping onto [the heldrock] on the climbing wall. Next to you, at roughly the same height, are [nearbyrocks].

	You can also climb upward to [a list of climbing-rocks which rockheighten tempup][if climbingheight is 1].

	There are no rocks below you, so you can jump down.[otherwise]. 

	Below you are [a list of climbing-rocks that rockheighten tempdown].";

Understand "jump down" as exiting when the player is on climbing-wall.

Before going nowhere from pride-room when the player is on climbing-wall:
	try exiting instead;

Instead of jumping when the player is on climbing-wall:
	try jumping instead;

To say nearbyrocks:
	let templist be the list of climbing-rocks that rockheighten climbingheight;
	if heldrock is listed in templist:
		remove heldrock from templist;
	say "[templist with indefinite articles]";

Chapter 2 - Gift shop

[have the thing stolen from the crewmate be in a prismatic bubble]

Gift-entryway is a scenery open unopenable door. Gift-entryway is east from pride-room and west from gift-room. The printed name of gift-entryway is "entryway". Understand "entry" or "entryway" as the gift-entryway. The description of the gift-entryway is "The entryway between the gift shop and the rest of the wax museum is wide, probably to encourage spending."

Gift-room is a room. "[first time]The gift shop brings back a flood of memories. When you were younger, even in college, this part always seemed so fun: a way to buy something so that you could always hold onto the memory. Even then, you were concerned with the preservation of knowledge. Only now, you've seen too many material reminders decay or get left behind. Only the stories really last.

[only]The gift shop for the wax museum is colorful and whimsical, to the point of being a little gaudy. 'MYSTERY AND HISTORY', the name of the museum, is displayed proudly. Much of the room is empty, perhaps due to being closed. What's left is scattered around the edges of the room. There are a lot of informational posters on the wall[one of], about the wildest topics[or][stopping]: NATO, Bloody Mary, gold panning, [one of]even foosball![or]and foosball[stopping][paragraph break]An incongruously somber coin machine stands neglected in one corner, labelled 'TOKENS FOR OBOLS'. Next to it is a door marked 'EMPLOYEES ONLY'.

A meter stretches up the entire side of one wall: a sort of long indentation with seven marks at the side and an indicator. Right now, the indicator is at the mark labelled '[prize-level]'. 

At the top of the prize meter[if the antique-watch is in gift-cage], in a silvery cage, is the captain's antique watch[otherwise] is an empty silvery cage[end if][first time]. 

The captain's watch? How did it get all the way up there?[only].

You can return to the rest of the museum to the [boldwest]."

The gift-cage is a distant closed transparent unopenable scenery container in gift-room. Understand "silver" or "cage" or "silvery" as the gift-cage. The printed name of the gift-cage is "silvery cage". The description of the gift-cage is "The cage is much too high for you to reach on your own. It looks sturdy, too; but you've seen this type of thing before. It's designed to open when the meter reaches the top."

The antique-watch is a thing in gift-cage. The indefinite article of the antique-watch is "the". The printed name of the antique-watch is "Captain's watch". Understand "antique" or "watch" or "captain's" or "captain" as the antique-watch. The description of the antique-watch is "The Captain has kept this watch in his family for generations. His ancestors had them in the great wars of the early 1900s, up to the protracted conflicts of the next century and on into space exploration. It's an antique, but carefully maintained."

The gift-room is in wax-region. The printed name of gift-room is "Gift Shop".

The coin-machine is scenery in Gift-room. The printed name of the coin-machine is "coin machine". Understand "coin" or "machine" or "somber" or "obol" or "incongruously" or "black" or "white" or "spider" or "web" or "webs" or "spiderwebs" as the coin-machine. The description of the coin-machine is "This coin machine is painted in black with white spiderwebs, with the slogan TOKENS FOR OBOLS. In front, it has a little tray and a slot with a little sign on it."

The coin-sign is part of the coin-machine. Understand "little" or "sign" as the coin-sign. The printed name of the coin-sign is "little sign". The description of the coin-sign is "The little sign says:

 'Having trouble reaching the underworld? Don't despair! Not yet, that is! Deposit tokens to receive an obol! You'll need to collect all seven!'"

The coin-slot is part of the coin-machine. Understand "slot" as the coin-slot. The printed name of the coin-slot is "slot". The description of the coin-slot is "The slot is small and vertical, sized a little larger than for normal coins." 

Instead of inserting something into the coin-slot:
	try inserting the noun into the coin-machine;

The coin-tray is part of the coin-machine. The coin-tray is a supporter. The printed name of the coin-tray is "tray". Understand "tray" or "small" or "metal" as the coin-tray. The description of the coin-tray is "The small metal tray is positioned to collect anything that comes out of the machine."

Instead of putting something on the coin-tray:
	say "The tray is more for taking things out of, than putting new things in. Also it's really small."

A thing can be deposited or undeposited. A thing is usually undeposited.

The obol is a thing. The description of the obol is "An ancient coin, once used to pay for passage across the river of the dead."

Instead of inserting something into the coin-machine:
	if the noun is a token:
		say "*Chunk!*

	The token disappears into the machine.";
		now the noun is nowhere;
		now the noun is deposited;
		if every token is deposited:
			say conditional paragraph break;
			say "You hear a chugging sound from within the machine. There is a sound as if a hundred souls wailed in a faroff room.
	
Into the coin tray falls an obol.";
		now the obol is on the coin-tray;
	otherwise:
		say "That's not the right shape to fit into the slot.";

The prize-level is a number that varies. The prize-level is 0.

The prize-meter is scenery in gift-room. The printed name of the prize-meter is "prize meter". Understand "prize" or "meter" or "indentation" or "progress" or "indicator" or "number" or "mark" or "Marks" or "long" or "mechanical" as the prize-meter. 

The description of the prize-meter is "The prize meter goes up one whole wall. It's a long indentation with a mechanical indicator set in it. Next to the indentation are several marks, each labelled with a number. The indicator is currently set at [prize-level].

At the top of the meter is a silvery cage[if the antique-watch is in gift-cage] containing the Captain's watch[otherwise]."

Prize-scene is a scene. Prize-scene begins when the player is in gift-room and prize-level > 6.

When prize-scene begins:
	say "A bell goes off, saying 'We have a winner! Thanks for playing, ladies and gentlemen! Everybody gather round to congratulate our star of the day!'

The words echo hollowly into the empty museum. The cage holding the watch lowers down and pops open. 

'Come on and grab your prize!' says the voice.

You walk forward and grab the watch from the cage. It slowly climbs and returns to its original position. You feel tension leave your body now that you have the Captain's watch in hand.";
	now the antique-watch is held by the player;
	
Instead of attacking the antique-watch:
	say "Wow, that would make a lot of effort go to waste."

Instead of showing the antique-watch to someone:
	try giving the antique-watch to the second noun;

[put nato phonetic alphabet in gift shop]

[gift shop has a brochure that explains how the rooms work but everything in it is a lie. do this last]

[this is the room to get into the 'fake' section]

[a hallway behind it has your wax figure]

[this room has some central safe or something with the thing stolen from the history buff]

A gift-poster is a kind of thing. A gift-poster is usually scenery. Understand "poster" or "posters" or "informational" as a gift-poster.

Instead of taking a gift-poster:
	say "These posters seem genuinely useful to others. It would be a shame to take them."

The nato-poster is a gift-poster in gift-room. The printed name of the nato-poster is "NATO Alphabet poster". Understand "nato" or "alphabet" as the nato-poster. The description of the NATO-poster is "It says, 'Named after an ancient empire, the NATO alphabet was a code used to clearly communicate the spelling of a word when using communications that had static or other issues with transmission.

'Each word of the code represented the letter it began with. So, for example, Echo Alpha Tango would stand for EAT!'".

The mary-poster is a gift-poster in gift-room. The printed name of the mary-poster is "Bloody Mary poster". Understand "bloody" or "Mary" as the mary-poster. The description of the mary-poster is "It says, 'The historical figure Mary Tudor fought back against the rising tide of Protestantism by burning hundreds of Protestants at the stake. 

'Over time, her history became distorted into the legend of Bloody Mary, an evil figure of a spiritual nature. It is said that if one is in a dark room by a mirror and chants 'Bloody Mary' three times, she will appear.'"

Understand "chant [text] to [someone]" as asking it about (with nouns reversed).

The gold-poster is a gift-poster in gift-room. The printed name of the gold-poster is "gold panning poster". Understand "gold" or "panning" as the gold-poster. The description of the gold-poster is "It says, 'Want to make money the easy way? Try panning for gold!

'This process was pioneered by, well, the pioneers! To do it, grab a wide dish, preferably one with ridges, and scoop up some sediment like mud or gravel from a river.

'Try rinsing out as much mud as you can, then shake it underwater. Once a lot of the lighter stuff is gone, you can shake it out of the water, too. Don't forget a final rinse!

'Note: any valuable items found while panning for gold in this museum are the property of HISTORY AND MYSTERY and cannot be removed from the premises.'"

The foos-poster is a gift-poster in gift-room. The printed name of the foos-poster is "foosball poster". Understand "foosball" or "Graffiti" as the foos-poster. The description of the foos-poster is "Some angry customer has scribbled all over it in dark marker:

 'The foosball game cheats! If they're gonna cheat, I'm gonna cheat too!'

The only part still legible underneath the graffiti is the phrase 'Read the [bracket]obscured text[close bracket] manual!'".

The employee-door is a scenery door. The employee-door is north of gift-room and south of wax-office. The employee-door is closed and locked. The printed name of the employee-door is "employee door". Understand "employee" or "door" as the employee-door. The description of the employee-door is "This nondescript door blends almost perfectly into the wall. It is simply labelled EMPLOYEES ONLY."

Chapter 3 - Wrath

The wrath-room is north from the pride-room. The printed name of the wrath-room is "Mary Room".The wrath-room is in wax-region. "This room is decorated in grim shades of black and red. It's also colder than the other rooms, just a little bit. It seems like a hub, with exits to the [boldnorth], [boldeast], [boldsouth] and [boldwest].

You can see Achilles here, holding a [if achilles-javelin is part of achilles-figure]massive spear and [end if]shield and wearing little else. Facing him is [if bloody-figure is in wrath-room]Mary Tudor, also known as Bloody Mary, sitting in her red throne[otherwise]an empty platform with a plaque titled 'Bloody Mary' and a tall mirror hung out of your reach[end if][first time].

The empty platform with its tall mirror is unnerving. Sometimes you swear you can see eyes in the mirror that aren't yours, but when you look closer, they aren't there[only][if sound-cube is in wrath-room]. 

There is an odd sort of box in the middle of the room[first time]. You walk closer to it, passing by the oddly empty platform and Achilles['] menacing spear. Once you reach the box, you take a closer look[only]. 

On top of it are three short wooden stakes arranged behind two bronze helmets. In front of it dangles [a tethered-mallet], attached by a string. The box is emblazoned with the words 'HIT IT!' It looks pretty silly compared to the room itself[end if][if shadow-greeks are in wrath-room].

On one wall are projected shadows, representing the Greek and British armies. Below them is a number strip, with the armies congregated at the number marked [armyposition]. 

Above them, on the ceiling, hang down [a list of wrath-balloons in wrath-room][end if]."

[lots of objects moving here]
[rage-inducing puzzles?]

The wrath-decorations are plural-named scenery in wrath-room. The printed name of the wrath-decorations is "decorations". Understand "black" or "red" or "decoration" or "decorations" or "wall" or "walls" or "ceiling" as the wrath-decorations. The description of the wrath-decorations is "The walls and ceiling are all red and black, harsh and militaristic[if a wrath-balloon is in wrath-room]. Right now, there are [a list of wrath-balloons in wrath-room] projecting from the ceiling[end if]."

Does the player mean doing something with the wrath-decorations:
	it is very unlikely;

The mirror-platform is a scenery supporter in wrath-room. The printed name of the mirror-platform is "[if bloody-figure is not in wrath-room]empty [end if]platform". Understand "empty" or "platform" or "mary's" or "stone" or "blocks" as the mirror-platform. The description of the mirror-platform is "The platform for Bloody Mary is made of sturdy stone blocks, supporting [if bloody-figure is in wrath-room]Mary herself[otherwise]nothing but a mirror[end if]." 

Instead of entering the mirror-platform:
	say "It doesn't seem intended for audience use."

The tall-mirror is scenery in wrath-room. The printed name of the tall-mirror is "tall mirror". Understand "tall" or "Mirror" or "Reflection" as the tall-mirror. The description of the tall-mirror is "This mirror would be too tall to fit in your cabin back on the starship. Your reflection in it seems normal[if reflecting-me is once-delivered]; at least, it doesn't look like it will jump out at you this time[otherwise], but you can't help but feel like something is deeply wrong[end if]."

Instead of searching the tall-mirror:
	say "You see your reflection looking back at you, intent and slightly worried.";

Instead of physicality when the noun is tall-mirror:
	say "The mirror makes you feel uncomfortable. Touching it just seems wrong.";

SEction 1 - Sound cube

Instead of attacking the sound-cube:
	say "There are many things to hit on the box. You'll have to be more specific."

The tethered-mallet is a thing in wrath-room. The printed name of the tethered-mallet is "mallet". Understand "mallet" or "tethered" or "tether" or "soft" or "rubber" or "rubbery" as the tethered-mallet. The description of the tethered-mallet is "The mallet is soft and rubbery, designed not to cause damage."

Before going from wrath-room when tethered-mallet is enclosed by the player:
	say "The mallet is tethered to the box. You can't leave until you drop it." instead;

Instead of closing an openable container when tethered-mallet is enclosed by the noun:
	say "The tether on the mallet keeps you from closing [the noun]."

The sound-cube is scenery in wrath-room. The printed name of the sound-cube is "odd box". Understand "odd" or "box" or "cube" as the sound-cube. The description of the sound-cube is "This is a cube about half of your height, and looks reminiscent of the kind of games you've seen in ancient pizza parlors. 

On the top, embedded in the box, are three wooden stakes: one on the left, one on the middle, and one on the right. 

In front of them are two plumed helms, one on the left and one on the right.

[if the tethered-mallet is not held by the player]A mallet hangs down from the cube, and the [otherwise]The [end if]box itself says HIT IT!".

A music-stake is a kind of thing. Understand "stake" or "stakes" as a music-stake. The left-stake is a music-stake. The middle-stake is a music-stake. The right-stake is a music-stake. The description of a music-stake is usually "It's hard to tell from the design whether these are intended to be stakes as in 'vampire-killing stakes' or miniature versions of 'burn the heretics' stakes. Given the Bloody Mary theme, it seems likely it's the latter.".

The left-stake is part of the sound-cube. The middle-stake is part of the sound-cube. The right-stake is part of the sound-cube.

Understand "left" as the left-stake. Understand "middle" or "central" as the middle-stake. Understand "right" as the right-stake.

The printed name of the left-stake is "left stake". The printed name of the middle-stake is "middle stake". The printed name of the right-stake is "right stake".

A music-helm is a kind of thing. Understand "helm" or "helms" or "helmets" or "plume" or "plumed" or "helmet" or "black" or "black-dyed" or "dyed" or "bronze" as a music-helm. The left-helm is a music-helm. The right-helm is a music-helm. The description of a music-helm is usually "These helms are bronze or some imitation, with black-dyed plumes. They look similar to some of the black figure Greek pottery you saw when watching a documentary a few years back."

Understand "left" or "plume" as the left-helm. Understand "right" or "plume" as the right-helm.

The printed name of the left-helm is "left helm". The printed name of the right-helm is "right helm".

The left-helm is part of the sound-cube. The right-helm is part of the sound-cube.

Mallethitting is an action applying to two things. Understand "hit [something] with [the tethered-mallet]" as mallethitting.

Carry out mallethitting:
	try attacking the noun;

Adjective-list is a list of text that varies. Adjective-list is {"Wrathful","Violent","Dire","Heartless","Bloody", "Deadly"}.

Marylevel is a number that varies. Marylevel is 0.

Bloodyprimed is a truth state that varies. Bloodyprimed is true.

Instead of attacking the left-stake:
	if tethered-mallet is not held by the player:
		now the tethered-mallet is held by the player;
		say "You grab the mallet first.[paragraph break]";
	say "You hit the left stake with the mallet. There is a loud 'bloop' sound from the box, and the left helmet wiggles for just a second.";
	rotate adjective-list;

Instead of attacking the left-helm:
	if tethered-mallet is not held by the player:
		now the tethered-mallet is held by the player;
		say "You grab the mallet first.[paragraph break]";
	say "You hit the left helm with the mallet. The helmet rings with the impact. You hear a sonorous voice from the box say '[entry 1 of adjective-list]'.";
	if bloody is ready:
		do nothing;
	otherwise:
		maryfail;
	now bloodyprimed is false;

To decide if bloody is ready:
	if bloodyprimed is false, decide no;
	if entry 1 of adjective-list is not "Bloody", decide no;
	decide yes;

Initial-list is a list of text that varies. Initial-list is {"Sc","Achill","V","M","Zed","Plen"}.

Instead of attacking the middle-stake:
	if tethered-mallet is not held by the player:
		now the tethered-mallet is held by the player;
		say "You grab the mallet first.[paragraph break]";
	say "You hit the middle stake with the mallet. There is a loud 'bloop' sound from the box, and the right helmet wiggles for just a second.";
	rotate Initial-list;

Terminal-list is a list of text that varies. Terminal-list is {"andal","es","en","ar","ary","ite"}.

Instead of attacking the right-stake:
	if tethered-mallet is not held by the player:
		now the tethered-mallet is held by the player;
		say "You grab the mallet first.[paragraph break]";
	say "You hit the right stake with the mallet. There is a loud 'bloop' sound from the box, and the right helmet wiggles for just a second.";
	rotate Terminal-list;
	
Instead of attacking the right-helm:
	if tethered-mallet is not held by the player:
		now the tethered-mallet is held by the player;
		say "You grab the mallet first.[paragraph break]";
	say "You hit the right helm with the mallet. The helmet rings from the blow. You hear a sonorous voice from the box say '[entry 1 of Initial-list][entry 1 of terminal-list]'.";
	if mary is ready:
		increment marylevel;
		say "[line break][one of]A chill breeze floats through the room, and you shiver. The mirror moves, just the smallest amount[or]As the box repeats the name of Bloody Mary, you swear you can hear another voice whispering them back. Your arms are covered in goosebumps[or]Then the voice is quiet[stopping].";
		now bloodyprimed is true;
	otherwise:
		maryfail;
		
To maryfail:
	if marylevel > 0:
		say "[conditional paragraph break]You hear a harsh buzzing, and the frightening atmosphere that had built up goes away.";
	now marylevel is 0;
	now bloodyprimed is true;
	
To decide if mary is ready:
	if bloodyprimed is true, decide no;
	if entry 1 of initial-list is not "M", decide no;
	if entry 1 of terminal-list is not "ary", decide no;
	decide yes;

Every turn when marylevel is 3:
	say "The lights go dark[if a lit thing is carried by the player], although [the random lit thing carried by the player]has enough light for you to see what happens: the cube sinks the floor and a wax figure of Bloody Mary rises out of the floor[otherwise] and you feel a rumbling[end if]. There is the sound of a woman's cruel laughter, and the lights go on. There stands the figure of Bloody Mary, a cruel smile on her lips and blood on her hands.

At the same time, you hear a hissing sound. Is something being pumped into the room? You can feel your heart pounding.

You look up. Out of the ceiling, balloons are being inflated, growing downward like globular fruit. 

A harsh voice shouts, 'Achilles challenges you, Queen of Britain!' The spear of Achilles loosens and falls to the ground with a thud, although it is still attached by a tether to Achilles['] hand. 

Some lights flash on and others flash off, and a large number strip is now easily visible on the wall. Above it are shadows of two large armies, one Greek and one British, judging by their shadowy weapons.

You breathe a sigh of relief: it's just some carnival game.";
	now the sound-cube is nowhere;
	now tethered-mallet is nowhere;
	now tall-mirror is nowhere;
	now bloody-figure is in wrath-room;
	repeat with current running through wrath-balloons:
		now current is in wrath-room;
	now shadow-british are in wrath-room;
	now shadow-greeks are in wrath-room;
	now the achilles-javelin is in wrath-room;
	now marylevel is 4;

[eventually you unlock spear which you can launch maybe]
[balloons on ceiling that pop; sound puzzle; a mallet that is attached by a chain to the floor. Everything it hits has a different sound, including the wax figures!]
[each hit of the mallet changes position of figures, achilles and mary in a fight with shadows or something]

Section 2 - Achilles

Achilles-figure is a wax-figure in wrath-room. The printed name of achilles-figure is "Achilles". Understand "Achilles" or "Musculature" or "cloak" or "helmet" as achilles-figure. The description of Achilles-figure is "Achilles has perfectly sculptured musculature, with what you suspect is an anatomically incorrect number of abs. He is holding [if the achilles-javelin is part of achilles-figure]a spear and [end if]an elaborate shield. He is barely covered by a long cloak and a plumed helmet."

The achilles-heel is part of achilles-figure. Understand "heel" as the achilles-heel. The printed name of the achilles-heel is "heel". The description of the achilles-heel is "You peek at the heel. There's a little message written on it that says: 'Nice try!'"

The achilles-shield is part of achilles-figure. The printed name of the achilles-shield is "shield". Understand "shield" or "Fractal" or "pattern" or "patterns" as the achilles-shield. The description of the achilles-shield is "Achilles's shield has a fractal pattern that recursively subdivides it into smaller and similar patterns.".

The achilles-abs are a plural-named part of achilles-figure. The printed name of achilles-abs is "abs". Understand "abs" or "abdominal" or "muscle" or "muscles" as the achilles-abs. The description of the achilles-abs is "There are sixteen of these. Is that right? Biology isn't your strong suit."

The achilles-javelin is a nonwax part of achilles-figure. The printed name of achilles-javelin is "spear". Understand "javelin" or "spear" as the achilles-javelin. The description of the achilles-javelin is "[if the achilles-javelin is not part of achilles-figure]The spear is attached by a thin tether to Achilles himself. It's not long, but you can reach most of the room with the point[otherwise]Strange; this spear looks more worn than most things in this museum[end if]."

Understand "tether" as the achilles-javelin when the achilles-javelin is not part of achilles-figure.

Instead of closing an openable container when achilles-javelin is enclosed by the noun:
	say "The tether on the javelin keeps you from closing [the noun]."

Instead of going from wrath-room when the achilles-javelin is enclosed by the player:
	say "The tether on the javelin prevents you from taking it out of the room."

[change javelin-taking message when it's attached and when not.]

Section 3 - Bloody Mary

Bloody-figure is a wax-figure. The printed name of Bloody-figure is "Bloody Mary". Understand "mary" or "bloody" or "tudor" or "crues" or "harsh" as bloody-figure. The description of bloody-figure is "The artist seems to have taken several creative liberties. This is Mary Tudor, depicted as harsh and thin-lipped, wearing a sumptuous dress and brocaded mantle, sitting on a throne. Her hands are covered in--or ,at least, painted like--blood."

The mary-throne is part of the bloody-figure. The printed name of the mary-throne is "throne". Understand "throne" or "sharp" or "edges" or "angle" or "angles" or "iron" as the mary-throne. The description of the mary-throne is "Unlike the traditional thrones of England, like St. Edwards Chair, this throne is made of iron, with sharp edges and square angles. And, again, not very accurate historically."

The mary-smile is a plural-named part of the bloody-figure. The printed name of the mary-smile is "lips". Understand "lips" or "lip" or "smile" or "thin" or "lipped" or "thin-lipped" as the mary-smile. The description of the mary-smile is "Bloody Mary's smile is thin and cruel, like someone seeing their greatest enemy humiliated in public."

The mary-plaque is an info-plaque in wrath-room. Understand "bloody" or "Mary" as the mary-plaque. The printed name of the mary-plaque is "Bloody Mary plaque". The description of the mary-plaque is "It simply reads, 'BLOODY MARY'. They could have at least put the birth and death dates or something else historically appropriate. Maybe you'll leave a note when you're done here."

The bloody-hands are a plural-named part of bloody-figure. The printed name of the bloody-hands is "bloodsoaked hands". Understand "blood" or "stain" or "stained" or "paint" or "blood-soaked"or "soak" or "soaked" as the bloody-hands. The description of the bloody-hands is "Whether paint or blood, Mary's hands are irretrievably stained."

Section 5 - Shadow balloons

[implement both ceiling and wall]
[achilles' shield gives the hint on how to approach this and implies that both armies must die at once]

The shadow-greeks are distant scenery. The shadow-british are distant scenery. The printed name of the shadow-greeks is "Greek shadow army". The printed name of the shadow-british is "British shadow army". Understand "greek" or "shadow" or "Greeks" or "spears" or "shields" or "projected" or "army" or "armies" or "weapon" or "weapons" as the shadow-greeks. Understand "british" or "projected" or "shadow" or "army" or "armies" or "weapon"or "weapons" as the shadow-british. The description of the shadow-greeks is "The shadows of Greek soldiers have spears and shields at the ready! They and the Greek are centered at the mark labelled [armyposition].". The description of the shadow-british is "The British stand with arrows and muskets. At least, their shadows do. They and the British are centered at the mark labelled [armyposition].".

A wrath-balloon is a kind of thing. A wrath-balloon is usually distant. Understand "balloon" or "balloons" or "colored" as a wrath-balloon. 

The orange-wrathbloon is a wrath-balloon. The red-wrathbloon is a wrath-balloon. The yellow-wrathbloon is a wrath-balloon. Understand "red" as the red-wrathbloon. Understand "yellow" as the yellow-wrathbloon. Understand "orange" as the orange-wrathbloon.

The printed name of the red-wrathbloon is "red balloon". The printed name of the orange-wrathbloon is "orange balloon". The printed name of the yellow-wrathbloon is "yellow balloon".

The description of a wrath-balloon (called currentbloon) is usually "[The noun] has protruded from the ceiling. You couldn't reach it yourself, but the javelin is long enough to poke it."

Withpoking is an action applying to two things. Understand "poke [something] with [the achilles-javelin]" or "pop [something] with [the achilles-javelin]" as withpoking.

Carry out withpoking:
	try attacking the noun;

[put this on wall and on description of room FIX THIS LATER]
The numbers-strip is distant scenery in wrath-room. The printed name of numbers-strip is "numbers strip". Understand "numbers" or "strip" or "number" or "battle" or "lines" or "line" as numbers-strip. The description of numbers-strip is "Faint enough that you didn't see it before, a number strip is high upon the wall, just below the shadow armies, stretching from one side of the room to another. It goes from 0 to 200, with the armies currently centered as [armyposition].".

Armyposition is a number that varies. Armyposition is 99.

Before attacking a wrath-balloon:
	if the achilles-javelin is not held by the player:
		say "You can't reach the balloons with your bare hands." instead;

Instead of throwing something at a wrath-balloon:
	if the noun is the achilles-javelin:
		say "It's not very aerodynamic, and it's long enough to pop the balloons with while you're holding it.";
	otherwise:
		say "It wouldn't make sense for an escape room to have a puzzle that can't be solved with the materials provided, you reason. And you don't want to damage anything in the room by throwing random things.";

Instead of attacking the yellow-wrathbloon:
	say "The yellow balloon pops, being immediately replaced by a new one that inflates at the same spot.[paragraph break]";
	let temppos be armyposition;
	if armyposition > 195:
		say "The shadow armies don't move at all. You've gone too far to the right to go any further, it seems.";
	now armyposition is armyposition minus five;
	say "Led by the shadow of Achilles, the army of Greek shadows hurls themselves at the British, sending them fleeing. When they settle down and battle lines are redrawn, the armies have moved from [temppos] to [armyposition] on the number strip.";

Instead of attacking the red-wrathbloon:
	say "The red balloon pops, being immediately replaced by a new one that inflates at the same spot.[paragraph break]";
	let temppos be armyposition;
	if armyposition < 5:
		say "The shadow armies don't move at all. You've gone too far.";
	now armyposition is armyposition plus four;
	say "Led by the shadow of Mary Tudor, the army of British shadows shoot a hail of arrows and the odd musket ball at the Greeks, who flee. When they settle down and battle lines are redrawn, the armies have moved from [temppos] to [armyposition] on the number strip.";

Wrath-done is a truth state that varies. Wrath-done is false.

Instead of attacking the orange-wrathbloon:
	say "The orange balloon pops, being immediately replaced by a new one that inflates at the same spot.

A man's voice calls out, saying 'Protestants, your majesty!'

Mary's eyes flash red, and, on the wall, a swarm of shadows of stakes stabs up at the 100 mark, ";
	if armyposition is 100:
		say "impaling both armies in a horrifying massacre. The stakes and armies are then consumed by shadowy flames.

The javelin retracts into Achilles['] hand, and the shadows disappear. The balloons deflate and are retracted into the ceiling.

A loud bell rings, and a voice says 'Congratulations! Your score has gone up by one! Check the gift shop to see your progress!'";
		now wrath-done is true;
		increment prize-level;
		repeat with current running through wrath-balloons:
			now current is nowhere;
		now achilles-javelin is part of achilles-figure;
		now shadow-british is nowhere;
		now shadow-greeks is nowhere;
	otherwise:
		say "missing the armies, which are centered at [armyposition] on the number strip.";

Chapter 4 - Lust 

The lust-room is east from wrath-room. The lust-room is in wax-region. The printed name of the lust-room is "Cleopatra Room". "[first time]Burbling noises guide you to the next room. What you find surprises you: an ancient-looking spa. But not a happy one.

[only]Wax figures of Cleopatra and Genghis Khan are here, both depicted in the throes of death. Cleopatra is reclining and holding an asp, moments before (if you remember right) having it pierce her breast.

Genghis Khan, meanwhile, is also reclining, with bandages wrapped around his chest. He seems fevered and in pain. Next to him is a low table[if the ridge-china is on khan-table] with [a ridge-china] on it[end if].

Contrasting with the gruesome deaths are several features reminiscent of an outdoor spa. One side of the room has a mud bath bubbling in the room. On another side is an actual running river (well, more of a creek), with plastic reeds planted nearby, presumably representing the Nile.

[A glass-box] is in the center of the room[if the sapphire-ring is in glass-box], holding a sapphire ring[otherwise], its ring now removed[end if].

The only other things that stand out to you are a recessed olive-colored panel on the wall, and a sign standing in the middle of the room with a poem on it.

Exits lead [boldwest] and [boldnorth]."

Instead of listening when the player is in lust-room:
	say "You hear the mud bath bubbling.";

[interpret lust as debasing the value of seeing; as seeing something just as a means to an end rather than having value. Maybe breaking open chest of a figure? must break vluable things and even depreciate yourself. A shameful section.]

A gold-ring is a kind of thing. Understand "ring" or "gold" or "band" or "engraving" as a gold-ring. A gold-ring is usually wearable.

The poem-sign is scenery in lust-room. The printed name of the poem-sign is "sign". Understand "poem" or "warning" or "sign" as the poem-sign. The description of the poem-sign is "The sign says:

'Four jeweled rings, such beautiful things[line break]
Electrify and mystify--the joy a ring brings![line break]
But seekers weary first must query.[line break]
Where to find the rings that vary?[line break]
One ring plain and put on show,[line break]
One ring buried deep below.[line break]
A ring for each these figures' deaths:[line break]
find them in that which took their breaths.'

At the bottom it adds, 'WARNING. REMOVING ANYTHING OF VALUE OUT OF THIS ROOM WILL RESULT IN PROSECUTION. IT IS NOT NECESSARY TO USE ITEMS FROM THIS ROOM IN ANY OTHER AREA OF THE MUSEUM.'"

Section 1 - Cleopatra

Cleopatra-figure is a wax-figure in lust-room. Understand "cleopatra" or "symmetrical" or "face" or "tightly-curled" or "curled" or "Hair" or "black hair" or "reclining" or "breast" as the cleopatra-figure. The printed name of cleopatra-figure is "Cleopatra". The description of cleopatra-figure is "This reclining figure of Cleopatra is depicted as a woman with tightly-curled black hair and a pleasingly symmetrical face. That face is solemn as it contemplates the asp she holds in her grasp."

The asp-figure is scenery in lust-room. Understand "asp" or "snake" or "fangs" or "mouth" or "fang" as the asp-figure. The printed name of the asp-figure is "asp". The description of the asp-figure is "The asp is a coiled snake, its fangs bared and its mouth open wide, springing at Cleopatra. It is fairly close to you, as Cleopatra is both shorter than most of the figures you've seen and reclining.".

Instead of touching or rubbing the asp-figure:
	say "It's very waxy."

Instead of kissing the asp-figure:
	if the ruby-ring is nowhere:
		say "You're apprehensive, but it's worth a shot. You kiss the asp, its wax fangs feeling slippery against your lips.

But then you taste metal, and realise that there was something hidden inside of it. You pull out a ruby ring.";
		now the ruby-ring is held by the player;
	otherwise:
		say "There are no more rings inside the asp, but you practice making out some more.";

Instead of searching the asp-figure:
	if the ruby-ring is nowhere:
		say "The feeling grosses you out, but you shove your hand in the snake's mouth. After rummaging around inside the asp's mouth for an uncomfortably long time, you find something: a ruby ring!";
		now the ruby-ring is held by the player;
	otherwise:
		say "There aren't any more rings to be found within the asp.";

The ruby-ring is a gold-ring. Understand "ruby" or "metal" or "oval" or "cut" as the ruby-ring. The printed name of the ruby-ring is "ruby ring". The description of the ruby-ring is "The ruby ring has a simple gold band, on which are engraved the tiny words 'DO NOT REMOVE FROM ROOM'. The ruby itself is oval-cut.".

[The cleopatra-plaque is an info-plaque in pride-room. The printed name of the cleopatra-plaque is "Cleopatra plaque". Understand "cleopatra" as the napoleon-plaque. The description of the cleopatra-plaque is "The plaque says:

'FIX THIS LATER Cleopatra, one of many of the name, famously commited suicide by having an asp (a kind of snake) bite her

This led to her famous line: 'Kiss my asp!', which she said to Anthony.'

[one of]Interesting. You're not sure if that line is actually historically accurate, given the unlikelihood of that pun working in both languages[or]That last line has to be made up[stopping]."]

Section 2 - Genghis Khan

Genghis-figure is a wax-figure in lust-room. Understand "Genghis Khan" or "genghis" or "Khan" as the Genghis-figure. The printed name of genghis-figure is "Genghis Khan". The description of the genghis-figure is "Genghis Khan is portrayed older and wounded, in his last moments. His gray hair spills out of its covering and onto the floor. He lies close to the ground, easily reachable, unlike most of the figures in the museum[if the khan-chest is open].

There is a gaping hole in his chest[otherwise].

His chest is wrapped with bloody-looking bandages. These aren't wax, but some kind of cloth or paper[end if]."

khan-chest is part of the genghis-figure. The printed name of khan-chest is "Genghis Khan's chest". Understand "chest" or "genghis'" or "khan's" or "bandage" or "bandages" or "blood" or "bloody" or "bloody-looking" or "looking" or "gray" or "hair" or "grey" or "genghis khan's" or "his" as the khan-chest. The khan-chest is a closed unopenable container. The description of the khan-chest is "[if the khan-chest is open]The bandages covering Genghis Khan's chest have been ripped open[otherwise]Genghis Khan's chest is covered in papery bandages. "

Instead of taking the khan-chest:
	say "The bandages move a little, but you may need more force than that."

Understand "tear [khan-chest]" as attacking when the player is in lust-room.
Understand "rip [khan-chest]" as attacking when the player is in lust-room.

Instead of touching or rubbing the khan-chest:
	say "[if the khan-chest is open]What's left of the [otherwise]The [end if]bandages are papery and fragile under your touch."

Instead of opening the khan-chest:
	say "The bandages around Genghis Khan's chest are pretty tight. You can't untie them, but you might be able to punch them open."

Instead of attacking the khan-chest:
	if the khan-chest is open:
		say "You've already done that once; and the memory will be wth you for a while.";
	now the khan-chest is open;
	say "You scream as the thrill of combat overcomes you and punch your hand into Genghis Khan. His chest bursts open, revealing an opal ring."
	
Instead of searching the khan-chest:
	say "You can barely move apart the bandages, seeing a glint of something inside, but then they go back, as they are pretty tight. They rip a little as you move them."

The opal-ring is a gold-ring in the khan-chest. The printed name of the opal-ring is "opal ring". Understand "opal" as the opal-ring. The description of the opal-ring is "The opal ring has a simple gold band, on which are engraved the tiny words 'DO NOT REMOVE FROM ROOM'. The opal itself is smooth and rounded.".

The khan-table is a scenery supporter in lust-room. The printed name of the khan-table is "table". Understand "table" or "low" or "wicker" or "low-lying" or "lying" as the khan-table. The description of the khan-table is "The table is low and made of wicker, rather than wax."

Instead of pushing or taking the khan-table:
	say "It doesn't move at all; it must be part of the set."

Section 3 - Mud bath

The mud-bath is scenery in lust-room. The printed name of the mud-bath is "mud bath". Understand "mud" or "bath" or "disgusting" or "bubbling" or "disguting-looking" or "looking" or "foul" or "foul-looking" as the mud-bath. The description of the mud-bath is "The mud bath is a depression in the ground on one side of the room filled with disgusting-looking, bubbling mud[first time]. Not that you've never tried the mudbath at your spa back on earth; but communal amusement park mud isn't your cup of tea[only]."

Instead of digging the mud-bath:
	try searching the mud-bath;

Instead of searching the mud-bath:
	say "You find a whole lot of mud!"

Does the player mean doing something with the mud-bath:
	it is unlikely;

Instead of entering the mud-bath: 
	say "It honestly looks luxurious, despite its likely unsanitary nature. But your recorder would completely fritz out."
	
Instead of inserting something into the mud-bath:
	say "Dropping something directly into the mud bath seems like a bad idea."

Instead of touching or rubbing the mud-bath:
	say "Eww! No thanks."

Instead of touching or rubbing the china-mud:
	say "Touching this with your hands is basically your last resort."

The ridge-china is an open unopenable container on khan-table. The printed name of the ridge-china is "exquisite porcelain bowl". Understand "exquisite" or "porcelain" or "china" or "bowl" or "ridge" or "ridge" or "ridges" or "captivating" or "pattern" or "black" or "ink" or "spiral" as the ridge-china. The description of the ridge-china is "This porcelain bowl looks very old, and has a captivating pattern that looks like black ink brushed into a spiral. 

It is very wide and flat, and, unusually, has a series of ridges on the inside. There is also a message: 'DO NOT REMOVE FROM ROOM.'"

Instead of inserting something into the ridge-china:
	if the noun is the mud-bath:
		try withtaking the mud-bath with the ridge-china;
	otherwise if the noun is the china-mud:
		say "It's already in the bowl!";
	otherwise:
		say "The porcelain dish doesn't seem suited for holding random objects."
		
Instead of inserting something into the china-mud:
	say "Making a mud pie with random objects in it sounds fun, but maybe not right now."

Instead of touching or rubbing the ridge-china:
	say "The ridges on the china bowl are slightly rough under your fingers."

Instead of taking the mud-bath:
	say "You can't take the mud with your bare hands, but maybe you could TAKE it WITH something else."

China-mud is a thing. Understand "mud" or "blob" or "blob of" or "bit" or "of mud" or "bit of" or "layer" or "slurry" or "gritty" as the china-mud. The printed name of the china-mud is "[if the china-mud is unoncerinsed]blob of mud[otherwise if the china-mud is unwetswirled]bit of slurry[otherwise if the china-mud is undryswirled]layer of mud[otherwise]layer of mud[end if]". The description of the china-mud is "[if the china-mud is unoncerinsed]The bowl is filled to the top with thick mud, making it hard to see if there's anything else in there[otherwise if the china-mud is unwetswirled]Rinsing the mud took out a bunch of the dirt but left a gritty slurry sloshing around; you'll need to find a way to get that out[otherwise if the china-mud is undryswirled]Only a layer of heaviest components of the mud remain, just enough to obscure whatever's in here[otherwise]You're so close! You can almost see the bottom. There's definitely something in there[end if]."

Instead of searching the china-mud:
	say "You could poke your hand in there, but you're not quite sure what it is you're trying to find."

Understand "fill [something] with [something]" as withtaking it with (with nouns reversed).

Instead of withtaking the mud-bath with something:
	if the diamond-ring is not nowhere:
		say "You've already found something in the mud bath. It's unlikely you'd need anything more.";
	otherwise if the second noun is the ridge-china:
		if the ridge-china is not held by the player:
			say "But you're not holding [the ridge-china]!";
		otherwise if the number of things contained by ridge-china is zero:
			say "You scoop up the mud with the porcelain, hearing a little 'clink' in the process. It's a little disturbing to see the beautiful dish filled with the foul-looking mud, but it holds it well.";
			now china-mud is in ridge-china;
		otherwise:
			say "The porcelain dish already has something in it." instead;
	otherwise:
		say "[The second noun] [don't] seem adapted to scooping mud.";

Instead of withtaking the scenery-nile with something:
	say "The Nile water doesn't look good to drink, and you have no other use for it as of now."

Instead of taking the china-mud:
	say "Taking it with bare hands would be really gross!"

Instead of going from lust-room when ridge-china is enclosed by the player:
	say "The porcelain bowl seems like it belongs to the exhibit. And this definitely seems like the kind of place to have a lot of cameras watching you."

Section 4 - Nile

The scenery-nile is a scenery container in the lust-room. The printed name of the scenery-nile is "Nile river". Understand "river" or "Nile" or "water" or "creek" or "representation" or "shallow" or "water" as the scenery-Nile.

The description of the scenery-nile is "This miniature Nile river, only a few centimeters deep, flows in one mesh grate and out another. Plastic reeds surround it in a pale illusion of the Nile's true grandeur."

The plastic-reeds are plural-named scenery in lust-room. The printed name of the plastic-reeds is "plastic reeds". Understand "plastic" or "reed" or "Reeds" as the plastic-reeds. The description of the plastic-reeds is "The plastic reeds are well spaced out and obscure nothing."

Instead of searching the scenery-nile:
	say "The river is clear and you can easily see the bottom. Nothing but water here!"

Instead of searching the plastic-reeds:
	say "It is quickly apparent that nothing of interest lies within the plastic reeds."

Instead of taking the plastic-reeds:
	say "The plastic reeds seem firmly embedded into the ground."

The nile-grates are plural-named scenery in lust-room. The printed name of the nile-grates is "grates". Understand "grate" or "grates" or "sluice" or "sluices" as the nile-grates. The description of the nile-grates is "The grates are simple slits in the wall that allow water to pass in and out."

Instead of opening the nile-grates:
	say "They seem like a firm component of the walls, and not something that could feasiby be opened."

Instead of entering the scenery-nile:
	say "Water doesn't mix well with your recorder."

Instead of physicality when the noun is scenery-nile:
	say "The water splashes a bit, but nothing else happens."
	
Instead of drinking scenery-nile:
	say "Drinking amusement park water, or escape room water, seems like a very bad idea, from the stories you have knowledge of."

Before inserting something into the scenery-nile:
	if the noun is the china-mud:
		try inserting the ridge-china into the scenery-nile instead;
	otherwise if the noun is not the ridge-china :
		say "Immersing things in the river seems pretty risky, unless you have a good reason." instead;
	otherwise if number of things in ridge-china is 0:
		say "You dip the porcelain bowl into the water, rinsing it off completely." instead;

Instead of withtaking the scenery-nile with the ridge-china:
	if the number of things in ridge-china is 0:
		say "You scoop up the water, but it sloshes out easily and is soon gone. The bowl seems designed to let light things splash out of it easily.";
	otherwise:
		say "There's already something in the bowl! You can put the bowl in the water to rinse it, though."

Understand "dip [ridge-china] in/into [scenery-nile]" as inserting it into.

A thing can be oncerinsed or unoncerinsed. A thing is usually unoncerinsed.

A thing can be oncewetswirled or unwetswirled. A thing is usually unwetswirled.

A thing can be oncedryswirled or undryswirled. A thing is usually undryswirled.

After inserting the ridge-china into the scenery-nile:
	say "You gently put [the ridge-china] into the Nile river. It rests nicely just under the surface of the shallow water[blobrinse].";

to say blobrinse:
	if the china-mud is in ridge-china:
		if the china-mud is oncedryswirled:
			say ".

The last of the mud is rinsed away, reavealing a silver ring that bears one enormous (and sharp-looking!) diamond. 

You pluck out the diamond ring and hold it. You set down the now-empty bowl";
			now the china-mud is nowhere;
			now the diamond-ring is held by the player;
			now the ridge-china is in lust-room;
		if the china-mud is unoncerinsed:
			say ". Instantly the water downstream turns muddy and viscous, and remains that way for a few seconds before clearing.

Much of the mud in the bowl is rinsed away, now";
			now the china-mud is oncerinsed;

Shaking is an action applying to one thing. Understand "shake [something]" or "swirl [something]" as shaking.

Shaking something is physicality.

Carry out shaking:
	if the noun is not portable:
		say "[The noun] [don't] seem to be shakeable.";
	otherwise:
		say "You lightly shake [the noun] to the best of your ability."

Instead of rubbing the ridge-china when china-mud is in ridge-china:
	try shaking the ridge-china;
	
Instead of rubbing the china-mud:
	try shaking the ridge-china;

Instead of shaking the ridge-china:
	if the number of things enclosed by ridge-china is 0:
		say "You shake the empty porcelain bowl. It's satisfying, but fruitless.";
	otherwise if the china-mud is unoncerinsed:
		say "The bowl is too full of mud to shake out; it might be best to reduce the total amount of mud first.";
	otherwise if the ridge-china is in scenery-nile:
		if the china-mud is unwetswirled:
			say "You gently swirl [the ridge-china], and much of the mud pours out. The bowl is less than half full now.";
			now the china-mud is oncewetswirled;
		otherwise:
			say "You swirl the bowl, but there is little effect; there's so little mud that it might be better doing lighter swirling out of the water.";
	otherwise:
		if the china-mud is unwetswirled:
			say "There's a lot less mud now, but this might work better underwater at this stage, to get a lot of the lighter particles out first. It reminds you of washing out the bowl after making pancakes.";
		otherwise if the china-mud is oncedryswirled:
			say "You swirl it again, but nothing much changes. You'll need to rinse off the water.";
		otherwise:
			say "You swirl the bowl gently over the Nile, letting the lighter mud slop out. By the time you are done, you can hear something rattling in the bowl, but there's just enough mud left you can't see it well.

One more rinse should do the trick.";
			now the china-mud is oncedryswirled;

Mudremoval is an action applying to one thing. Understand "pour out/-- [china-mud]" or "empty [china-mud]" or "pour out/-- [ridge-china]" or "empty [ridge-china]" as mudremoval when the player is in lust-room.

Carry out mudremoval:
	if ridge-china is not held by the player:
		say "But you're not holding the bowl!";
	otherwise:
		say "You pour out the mud back into the mud bath.";
		now the china-mud is nowhere;
		now the china-mud is unoncerinsed; 

Understand "rinse [something] in [the scenery-nile]" as inserting it into.

Washing is an action applying to one thing. Understand "wash [something preferably held]" as washing when the player is in lust-room or the player is in combat-kitchen.

Carry out washing:
	try inserting the noun into the scenery-nile;

Intensemudremoval is an action applying to two things. Understand "pour out/-- [china-mud] on [something]" or "empty [china-mud] on [something]" or "pour out/-- [ridge-china] on [something]" or "empty [ridge-china] on [something]" as Intensemudremoval when the player is in lust-room.

Carry out intensemudremoval:
	if the second noun is mud-bath:
		try mudremoval the china-mud;
	otherwise:
		say "You suspect there's something in the mud; pouring it onto [the second noun] might damage it."

[BEfore inserting the china-mud into something:
	try inserting the ridge-china into the second noun instead;]

Section 5 - Glass box

The diamond-ring is a gold-ring. The printed name of the diamond-ring is "diamond ring". Understand "diamond" or "sharp" or "point" or "Ring" as the diamond-ring. The description of the diamond-ring is "The diamond ring has a simple gold band, on which are engraved the tiny words 'DO NOT REMOVE FROM ROOM'. 

The diamond itself comes to a very sharp-looking point." 

Instead of opening the glass-box when the glass-box is open:
	say "It's already open!"

INstead of going from lust-room when a gold-ring is enclosed by the player:
	say "A stern voice from above says robotically, 'Contraband detected. Please do not leave the room until all valuable goods you have taken are replaced.'"

The glass-box is a transparent closed unopenable container in lust-room. "A glass case is in the middle of the room, containing a sapphire ring." The glass-box is not portable. Understand "black" or "velvet"or "glass" or "box" or "case" or "cut" or "mark" or "marks" as the glass-box. The printed name of the glass-box is "glass case". The description of the glass-box is "The glass case reminds you of the displays in jewelry stores. Inside, it is lined with black velvet[if the glass-box is not closed]. A circle has been cut out of the glass[end if]."

The sapphire-ring is a gold-ring in glass-box. Understand "Sapphire" or "oval" or "ring" as the sapphire-ring. The printed name of the sapphire-ring is "sapphire ring". The description of the sapphire-ring is "The sapphire ring has a simple gold band, on which are engraved the tiny words 'DO NOT REMOVE FROM ROOM'. The sapphire itself is oval cut."

Instead of opening the glass-box when the glass-box is closed:
	say "There's no obvious way to open it, unless you can find a way through the glass. Although it doesn't seem impenetrable: you can see some cut marks on it from something."
	
Instead of attacking the glass-box:
	say "You could seriously injure yourself if shards of glass start flying."

Withcutting it with is an action applying to two things. Understand "cut [something] with [something]" as withcutting it with.

Understand "kiss [the asp-figure]" as kissing.

Carry out withcutting it with:
	if the noun is not the glass-box:
		try cutting the noun;
	otherwise:
		say "[The second noun] [don't] seem to cut through the box. Maybe something else could work?"

Instead of cutting the glass-box:
	say "It would be hard to cut with your bare hands, but you might be able to CUT it WITH something else."

Instead of throwing something at glass-box:
	say "You're not desperate enough to try a solution that involves shards of glass flying all around you."

Instead of withcutting the glass-box with the diamond-ring:
	say "You trace out a circle with the diamond ring, constantly applying pressure. Once you're done, the glass circle falls into the box. You're in!

The glass case is now open.";
	now the glass-box is open;
	now glass-circle is in glass-box;
	
The glass-circle is a thing. The printed name of the glass-circle is "glass circle". Understand "glass" or "circle" as the glass-circle. The description of the glass-circle is "You feel a sense of pride looking at the circle of glass you cut out, as it is almost perfectly round.".

[mention somewhere that diamonds can cut glass?]

Section 6 - Fusebox

The circuit-box is a closed openable scenery container in lust-room. Understand "panel" or "recessed" or "olive" or "electrical" or "olive-colored" or "colored" as the circuit-box. The printed name of the circuit-box is "recessed olive panel". The description of the circuit-box is "There is an olive panel recessed into the wall. It looks like an ordinary electrical panel, but deliberately painted to stand out.".

Instead of inserting something into the circuit-box when the circuit-box is open:
	say "The inside of the panel doesn't have much room, but you might be able to fit something small in the slots."
	
A thing can be circuit-filled or uncircuit-filled. A thing is usually uncircuit-filled.

A circuit-board is in circuit-box. The circuit-board is not portable. The printed name of the circuit-board is "circuit board". Understand "board" or "circuit" or "resin" or "gold" as the circuit-board. The description of the circuit-board is "[first time]How odd. [only]This is a circuit board encased in resin. While you suspect there is more to it outside of your view, what you are able to see is a yellowish metal circuit running through it. The circuit is broken by four different slots, [if the number of uncircuit-filled gold-rings is 4]all of which [otherwise if the number of uncircuit-filled gold-rings > 0]of which [the number of uncircuit-filled gold-rings] [otherwise]none of which [end if]are empty.".

A circuit-slot is a kind of container. Understand "slot" or "slots" as a circuit-slot. The description of a circuit-slot is usually "[The noun] is a thin slot that seems like its intended for a thin disk, like a wafer or coin."

The first-slot is a circuit-slot. The first-slot is part of the circuit-board. Understand "first" or "slot 1" as the first-slot. The printed name of the first-slot is "first slot".

The second-slot is a circuit-slot. The second-slot is part of the circuit-board. Understand "second" or "slot 2" as the second-slot. The printed name of the second-slot is "second slot".

The third-slot is a circuit-slot. The third-slot is part of the circuit-board. Understand "third" or "slot 3" as the third-slot. The printed name of the third-slot is "third slot".

The fourth-slot is a circuit-slot. The fourth-slot is part of the circuit-board. Understand "fourth" or "slot 4" as the fourth-slot. The printed name of the fourth-slot is "fourth slot".

Instead of inserting something into the circuit-board:
	say "There are four different slots you can put it into; you need to be more specific!"

Instead of inserting something into a circuit-slot:
	if the number of things in the second noun > 0:
		say "There's already something there!";
	otherwise if the noun is not a gold-ring:
		say "No matter how you try it, [the noun] doesn't fit. But something around here has to fit! Unless this is just a very poorly designed escape room.";
	otherwise:
		now the noun is in the second noun;
		now the noun is circuit-filled;
		say "You put [the noun] into [the second noun], holding it by the gem to avoid a shock.";

After taking a circuit-filled gold-ring:
	now the noun is not circuit-filled;
	say "You carefully pluck [the noun] out of the slot."
	
Slotfinale is a scene. Slotfinale begins when the number of circuit-filled gold-rings is 4.

Lust-done is a truth state that varies. Lust-done is false.

When slotfinale begins:
	now the circuit-box is nowhere;
	say "A thrum fills the air. 'REMOVE YOUR HAND FROM THE BOX' warns a loud robotic voice.

You pull back your hand, and the olive panel slams shut. The recess that held it is covered by a sliding segment, blending indistinguishably into the wall. 

A bell chimes, and a voice says, 'Congratulations! Your score has gone up by one! Check the Gift Shop to monitor your progress!'";
	increment prize-level;
	now lust-done is true;

Chapter 5 - Envy

[wanting what you don't have. taking from those who have more. Do some balancing here, have two sides of the room, one with material wealth and the other intellectual, bring back and forth]

A thing can be oncetaken or unoncetaken. A thing is usually unoncetaken. 

Report taking something:
	now the noun is oncetaken;

The envy-room is west from wrath-room. The printed name of the envy-room is "Arthur Room". The envy-room is in wax-region. "[first time]You find yourself a bit overwhelmed walking into this room. It's cluttered; it gives you painful flashbacks of cleaning out your grandmother's house after she passed. She'd been a hoarder in her later years. At least this room doesn't have nests of cockroaches--you hope.

It does have King Arthur, though, which brightens your day. The original designers of the Starship Tragwyddol had ties to Wales, as do you and many others of the crew.

[only]The room is divided more or less into two sections. In one is a representation of King Arthur, wearing shining armor and holding a spear. Behind him is a carved throne, and at his feet lies a gauntlet. His side of the room is a rough wooden fort, partially covered by a straw ceiling. 

A weapons rack is behind Arthur[if the number of hidden-spears in weapons-rack is 0], currently empty[otherwise], currently holding [a list of hidden-spears contained by the weapons-rack][end if].

Opposed to him is Diaochan, the great beauty of the Three Kingdoms era. She is small and birdlike, and her side of the room is pastoral and green. A patch of flowers grows by her feet, and a rock garden with a bench for her rest is nearby. One wall behind her is painted with towering mountains and a brilliant sky. 

Near her is a clothesline[if the number of hidden-silks on the chan-line is 0], currently empty[otherwise], holding [a list of hidden-silks enclosed by the chan-line][end if]. It hangs between peach trees, of which there are several in the room. 

A sign stands in the middle of the room.

There are exits to the [boldeast] and [boldnorth]."

The rough-fort is scenery in envy-room. Understand "rough" or "dirt" or "floor" or "wooden" or "beam" or "beams" or "fort" as the rough-fort. The printed name of the rough-fort is "fort". The description of the rough-fort is "Half of the room is made to look like a rough fort with wooden beams and a dirt floor."

Instead of putting something on the rough-fort:
	say "The fort is about half of the room; you'd have to be more specific than that."

[Arthur's side has military might, diaochan's side has beauty]
[king arthur needs more spears, take poles from diaochan's side to fill his up]
[diaochan can need liubo board? fish tokens carved sticks]
[think about this one longer. maybe silks?]
[yes, scarf dance! bring silks over]
[pictures of past winners, smiling proudly, each revealing part of a code]
[turn the photos around and grab pieces of a puzzle out of them?]
[figure out how to do a puzzle]

Silkspear-sign is scenery in the envy-room. The printed name of the silkspear-sign is "sign". Understand "sign" as the silkspear-sign.

The description of the silkspear-sign is "The sign says:[line break]
'Diaochan seeks for seven silks[line break]
While Arthur seeks for seven spears[line break]
Each one holds one in their hands[line break]
But wants the rest from foreign lands.'

Underneath is a warning:
'UNDER NO CIRCUMSTANCES ARE SILKS OR SPEARS TO BE TAKEN FROM THIS ROOM.'"

Section 1 - Diaochan

Diaochan-figure is a wax-figure in envy-room. The printed name of diaochan-figure is "Diaochan". Understand "diao" or "chan" or "slender" or "birdlike" or "bird" or "like" or "bird-like" or "diaochan" or "lips" or "teeth" or "red" or "white" as diaochan-figure. The description of the diaochan-figure is "Diaochan is the shortest wax figure you've seen here, slender and birdlike. She wears a silk shawl. Her lips are red like cherries and her teeth are gleaming white. From what you remember, her tale was one of jealousy, tragedy, and betrayal[if the diao-umbrella is not oncetaken].

She holds a hefty umbrella in one hand[end if].".

[if the sign is not read yet try this instead]

The silk-shawl is part of the diaochan-figure. Understand "silk" or "silks" or "shawl" as the silk-shawl. The printed name of the silk-shawl is "silk shawl". The description of the silk-shawl is "The most noticeable silk in the room is the one worn by Diaochan herself."

Instead of taking the silk-shawl:
	say "According to the sign, this one already counts, so you just have to find six more."

Understand "hang [something] on [chan-line]" as putting it on.

[maybe put all these things on a transparent open container? so the room description isn't so cluttered. Hide all these things!]

The chan-line is a scenery supporter in envy-room. ["A clothesline is stretched between two trees on Diaochan's side of the room."] The chan-line is not portable. The printed name of the chan-line is "clothesline". Understand "clothes" or "line" or "clothesline" as the chan-line. The description of the chan-line is "The clothesline is thin and delicate, capable of supporting only the lightest of fabrics."

Instead of physicality when the noun is chan-line:
	say "The line seems fairly delicate, so you leave it alone."

Spearsummoning relates one thing to one thing. The verb to spearhold means the spearsummoning relation.

Report examining something that spearholds a hidden-spear (called currentspear):
	if currentspear is nowhere:
		now currentspear is in envy-room;

Diaochan-figure spearholds the diao-umbrella.

The peach-trees are plural-named scenery in envy-room. The printed name of the peach-trees is "peach trees". Understand "peach" or "Tree" or "trees" or "blossoms" or "blossoming" as the peach-trees. 

The description of the peach-trees is "Blossoming peach trees are scattered on Diaochan's side of the room. You can almost imagine the smell, but as Mimi says in La Boheme, 'I fior ch'io faccio, ahime, non hanno odore.' They look lovely, though[if the diao-sapling is not oncetaken].

One of the peach trees is a sapling: thin, branchless, and very straight[end if]."

The peach-trees spearhold the diao-sapling.

Before putting something on chan-line:
	if the noun is not a hidden-silk:
		say "Only soft and light things can go on the thin clothesline, so you'll stick to any silks you can find for now." instead;

After putting a hidden-silk on chan-line:
		say "You gently hang [the noun] on the clothesline.";

A hidden-spear is a kind of thing.

[include garden]

Instead of searching something that spearholds something:
	try examining the noun;

The chan-flowers are plural-named scenery in envy-room. The printed name of the chan-flowers is "flower patch". Understand "flower" or "of flowers" or "flowers" or "patch" or "thick" or "chrysanthemum" or "mum" or "mums" or "chrysanthemums" or "variety" or "colors" as the chan-flowers. The description of the chan-flowers is "The thick patch of chrysanthemums lies near by Diaochan's feet. The flowers bloom in a variety of colors[if the diao-spade is not oncetaken].

Behind the patch of flowers is a spade[end if]."

The chan-flowers spearhold the diao-spade.

The chan-bench is an enterable scenery supporter in envy-room. The printed name of the chan-bench is "bench". Understand "bench" as the chan-bench. The description of the chan-bench is "Diaochan's bench looks like it is designed to allow her servants to care for her, whether through food or water or other means[if the diao-fan is not oncetaken]

A fan is near the bench, perhaps left behind by a servant[end if]."

The chan-bench spearholds the diao-fan.

The painted-wall is scenery in envy-room. Understand "painted" or "wall" or "towering" or "guohua" or "style" or "mountain" or "mountains" or "painting" or "brilliant" or "sky" as the painted-wall. The printed name of the painted-wall is "painted wall". The description of the painted-wall is "The wall behind Diaochan is painted in the traditional Guohua style, with towering mountains and a brilliant sky[if the diao-broom is not oncetaken].

A broom is leaned up against the wall[end if]."

Instead of pulling a hidden-spear:
	try taking the noun;

Instead of inserting a hidden-spear into the rucksack:
	say "Unfortunately, that's too big to fit in the rucksack."

The painted-wall spearholds the diao-broom.

The diao-spade is a hidden-spear. "Behind Diaochan's flowers is a spade, leaning against the wall." The printed name of the diao-spade is "spade". Understand "spade" or "long" or "tall" or "metal" or "balde" as the diao-spade. The description of the diao-spade is "The spade is long and tall with a metal blade attached at the end.".

The diao-sapling is a hidden-spear. "An unusually straight sapling grows in the garden." The printed name of the diao-sapling is "straight sapling". Understand "sapling" or "straight" or "thin" or "branchless" or "unusually" as the diao-sapling. The description of the diao-sapling is "The sapling is thin and straight, with no branches.".

The diao-umbrella is a hidden-spear. "Diaochan is holding a long umbrella." The printed name of the diao-umbrella is "long umbrella". Understand "long" or "hefty" or "umbrella" as the diao-umbrella. The description of the diao-umbrella is "Diaochan's umbrella is much more hefty than any umbrella ought to be. Perhaps it is a mode of defence[first time]. It doesn't seem firmly attached[only].".

Instead of opening the diao-umbrella:
	say "This type of umbrella is constantly open, rather than operated with a mechanism.";

The diao-fan is a hidden-spear. "A large fan for her servants to use lays by her." The printed name of the diao-fan is "large fan". Understand "large" or "sizable" or "shaft" or "fan" or "elongated" as the diao-fan. The description of the diao-fan is "This fan is elongated, with a sizable shaft. It must have taken two servants to use it well.".

The diao-broom is a hidden-spear. "A new-looking broom leans against the wall." The printed name of the diao-broom is "new-looking broom". Understand "new-" or "new-looking" or "looking" or "broom" as the diao-broom. The description of the diao-broom is "The broom looks a little out of place, more suited for modern industry than Diaochan's garden."

[definitely add the ai that won't let you take things]

[add zen garden]

The zen-garden is scenery in envy-room. The printed name of the zen-garden is "rock garden". Understand "peaceful" or "lines" or "traced" or "delicate" or "rock" or "rocks" or "garden" or "zen" as the zen-garden. The description of the zen-garden is "The peaceful rock garden has delicate lines traced throughout it[if the diao-rake is not oncetaken].

A rake is near the garden, as if recently used[end if]."

The zen-garden spearholds the diao-rake.

Instead of physicality when the noun is the zen-garden:
	say "It looks very good in its current state; you'd hate to disturb it if you don't have to."

The diao-rake is a hidden-spear. "A rake has been used to stir a rock garden." The printed name of the diao-rake is "rake". Understand "rake" or "vicious" or "looking" or "vicious-looking" or "sharp" or "pointed" or "teeth" as the diao-rake. The description of the diao-rake is "This rake is particularly vicious-looking, with sharp, pointed teeth.".

Section 2 - King Arthur

Arthur-figure is a wax-figure in envy-room. The printed name of arthur-figure is "King Arthur". Understand "king" or "red" or "beard" or "gray" or "arthur" as arthur-figure. The description of arthur-figure is "Arthur is depicted older, with some gray in his red beard. His armor, an anachronistic full plate, is lacquered white. He holds a spear in a commanding fashion.

His hand seems to have been wounded, though[if the arthur-cape is not oncetaken].

A gossamer cape hangs incongruously on his shoulders[end if].".

The arthur-armor is part of arthur-figure. Understand "full" or "plate" or "armor" or "lacquer" or "white" or "shining" or "armor" as the arthur-armor. The printed name of the arthur-armor is "armor". The description of the arthur-armor is "This full plate armor is lacquered white, and altogether it's terribly inaccurate for its time period, when mail was far more common."

arthur-spear is part of the arthur-figure. The printed name of the arthur-spear is "Arthur's spear". Understand "arthur's" or "his" or "spear" or "spears" as the arthur-spear. The description of arthur-spear is "Arthur's spear is heavy, a monument to his strength[if arthur-flag is not oncetaken]

A light-looking flag dangles from the tip of the spear[end if]."

Instead of taking the arthur-spear:
	say "This spear seems firmly attached to Arthur."

The carved-throne is scenery in envy-room. The carved-throne is an enterable supporter. The printed name of the carved-throne is "carved throne". Understand "carved" or "throne" or "dark" or "hardwood" as the carved-throne. The description of the carved-throne is "Arthur's throne has been carved from some dark hardwood, one of the few parts of his representation that seem historically accurate[if arthur-honor is not oncetaken].

A cloth of honor hangs behind the throne[end if]."

The straw-ceiling is distant scenery in envy-room. The printed name of the straw-ceiling is "straw ceiling". Understand "straw" or "ceiling" as the straw-ceiling. The description of the straw-ceiling is "The straw ceiling most likely isn't real straw, given the humidity and the apparent age of this museum. But it looks very realistic[if the arthur-pennant is not oncetaken].

A bold pennant hangs down from the ceiling[end if].".

The arthur-gauntlet is scenery in envy-room. The printed name of the arthur-gauntlet is "gauntlet". Understand "gauntlet" as the arthur-gauntlet. The description of the arthur-gauntlet is "The gauntlet is the same lacquered white as the armor. It seems it has been cast down in challenge[if the arthur-favor is not oncetaken].

Near the gauntlet is a lady's favor[end if].".

Instead of taking the arthur-gauntlet:
	say "The gauntlet is fused to the fort it's on."

The arthur-wound is part of the arthur-figure. The printed name of the arthur-wound is "wound". Understand "hand" or "wound" or "wax-sculpted" or "sculpted" as the arthur-wound. The description of the arthur-wound is "Arthur's wax-sculpted wound looks pretty severe, to be honest[if the arthur-bandage is not oncetaken].

However, much of it is obscured by a silk bandage[end if].".

A hidden-silk is a kind of thing. Understand "silk" as a hidden-silk.

Silksummoning relates one thing to one thing. The verb to silkhold means the silksummoning relation.

Report examining something that silkholds a hidden-silk (called currentsilk):
	if currentsilk is nowhere:
		now currentsilk is in envy-room;

The arthur-figure silkholds the arthur-cape.

The arthur-spear silkholds the arthur-flag.

The carved-throne silkholds the arthur-honor.

The straw-ceiling silkholds the arthur-pennant.

The arthur-gauntlet silkholds the arthur-favor.

The arthur-wound silkholds the arthur-bandage.

[implement arthur'sspear]

The arthur-flag is a hidden-silk. "A light-looking flag hangs from Arthur's spear." The printed name of the arthur-flag is "dragon flag". Understand "dragon" or "flag" or "light" or "looking" or "light-looking" or "brilliant" or "red" as the arthur-flag. The description of the arthur-flag is "The flag is white with a brilliant red dragon it. It seems to be made of silk."

The arthur-cape is a hidden-silk. "Arthur is framed by a gossamer cape." The printed name of the arthur-cape is "gossamer cape". Understand "gossamer" or "cape" as the arthur-cape. The description of the arthur-cape is "[if the arthur-cape is not oncetaken]Arthur's cape is made of silk and only dangles down as far as his back[otherwise]This is a beautiful silk cape[end if]."

Instead of wearing the arthur-cape:
	say "You try the cape on. It looks nice, but doesn't seem to fit right, so you remove it."

The arthur-honor is a hidden-silk. "A cloth of honor hangs behind the throne." The printed name of the arthur-honor is "cloth of honor". Understand "cloth" or "cloth of" or "honor" or "canopy" as the arthur-honor. The description of the arthur-honor is "From your studies you know that the cloth of honor was a traditional canopy that covered thrones in various cultures, and which varied in size over the centuries. This one is fairly small[if the arthur-honor is not oncetaken], and within reach[end if]."

The arthur-pennant is a hidden-silk. "A pennant hangs from the ceiling." The printed name of the arthur-pennant is "hanging pennant". Understand "crimson" or "bold" or "triangle" or "hanging" or "pennant" as the arthur-pennant. The description of the arthur-pennant is "This bold pennant is an elongated triangle of silk dyed crimson. "

The arthur-favor is a hidden-silk. "In Arthur's gauntlet is a lady's favor." The printed name of the arthur-favor is "lady's favor". Understand "lady" or "handkerchief" or "kerchief" or "lady's" or "favor" or "favour" as the arthur-favor. The description of the arthur-favor is "This favor, a symbol of courtly, chaste love, is a silk handkerchief from some woman on whose behalf Arthur is fighting."

The arthur-bandage is a hidden-silk. "A bandage is on Arthur's arm." The printed name of the arthur-bandage is "silk bandage". Understand "bandage" or "bandages" as the arthur-bandage. The description of the arthur-bandage is "This silk bandage would have been quite comforting for a real injury."

Understand "tie [something] around [something]" as tying it to.

Understand "untie [arthur-bandage]" as taking when the player is in envy-room.

[handle the case where they X SILK]

The weapons-rack is a scenery transparent open unopenable container in envy-room. The printed name of the weapons-rack is "weapons rack". Understand "weapon" or "weapons" or "rack" as the weapons-rack.

The describe what's on scenery supporters in room descriptions rule does nothing when the player is in envy-room.

Before inserting something into the weapons-rack:
	if the noun is not a hidden-spear:
		say "Hmm, no matter how you twist and turn it, you can't fit [the noun] into the weapons rack. It seems designed for spears and spear-adjacent items."instead;

Before going from envy-room:
	if a hidden-silk is enclosed by the player:
		say "A harsh buzzing sounds, and a voice says, 'Please do not remove items from this room!'" instead;
	otherwise if a hidden-spear is enclosed by the player:
		say "A harsh buzzing sounds, and a voice says, 'Please do not remove items from this room!'" instead;

Section 3 - Pictures

The picture-arrival is scene. Picture-arrival begins when the pictures are ready.

To decide whether the pictures are ready:
	if the number of hidden-spears in weapons-rack < 6, decide no;
	if the number of hidden-silks on chan-line < 6, decide no;
	decide yes;
	
When picture-arrival begins:
	now picture-container is in envy-room;
	say "A pleasing chime sounds.

Part of the wall slides open, revealing a green display shelf with a button on it. Before you can approach it, though, a picture slides into view, obscuring the button."
	
The Picture-container is a container. "A display shelf with a picture on it has risen out of the floor." Picture-container is not portable. Understand "winners'" or "winners" or "display" or "shelf" or "green" as the picture-container. The printed name of the picture-container is "winners['] display shelf". The description of the picture-container is "This green shelf holds a picture securely. It's blocky in design, making it hard to see how the [if the winner-picture is nowhere]pictures were[otherwise]picture is[end if] attached. The shelf has 'Our Favorite Winners' on it in green.".

The hidden-button is part of the picture-container. Understand "button" as the hidden-button. The printed name of the hidden-button is "button".

Instead of doing something with the hidden-button:
	say "You saw a button when the shelf showed up in the room, but the picture's covering it now."

The winner-picture is part of the picture-container. The printed name of the winner-picture is "picture of a winner". Understand "winner" or "picture" or "picture of" or "paper" or "edge" or "edges" as the winner-picture. The description of the winner-picture is "[if envy-level is 1]The picture is of a smug man with his arms crossed in this very room. He has a quote on the picture: 'The puzzles in this museum are so easy, my dog could solve them! I solved it in one hour. Give me a real challenge next time![otherwise if envy-level is 2]This picture is of a young woman holding a violin in one hand and a violin bow in the other. She's quoted saying 'I solved this museum in half an hour. While I solved it, I created a new violin concerto. I can't believe some people struggle with this stuff. An hour? Please![otherwise if envy-level is 3]This is a picture of a middle-aged woman staring intensely at the camera. Her quote says 'These puzzles are pathetic. I teach 7th grade math and the worst kid in my class could do these puzzles blindfolded. I did it in twenty minutes. Beat that.[otherwise]This picture shows an athletic young man smiling and giving a thumbs up. His quote says, 'Did it in eighteen. But thanks for playing![end if]'

The picture doesn't have glass over it. It seems to be printed on flimsy paper.".

Instead of cutting the winner-picture:
	say "You don't have any good cutting tools."

Instead of looking under the winner-picture:
	say "There's no clear way to look behind or under the picture.";

Understand "smug" or "man" or "arms" as winner-picture when envy-level is 1.

Understand "woman" or "young" or "violin" or "bow" as the winner-picture when envy-level is 2.

Understand "middle-aged" or "middle" or "aged" as the winner-picture when envy-level is 3.

Understand "athletic" or "young" or "man" or "thumb" or "thumbs" as the winner-picture when envy-level is 4.

Envy-level is a number that varies. Envy-level is 1.

Instead of taking or pushing the winner-picture:
	say "The picture of the winner is kind of flimsy; there's no frame or anything. But it's firmly attached at the edges."

Understand "rip [winner-picture]" or "tear [winner-picture]" as attacking when the player is in envy-room.

Instead of attacking the winner-picture:
	if envy-level < 4:
		say "Raising your fist, you take a deep breath, then plunge your fist with the picture of the winner. 

It rips in half, and behind it you can see the button. But another, different picture springs up between you and the button. This picture seems[one of][or] even[stopping] newer[one of][or].

You feel mildly annoyed[or].

You feel intensely annoyed[or].

You feel intense rage at the obnoxious pictures[stopping].";
		increment envy-level;
	otherwise:
		say "With one final blow, you smash through the picture!

You wait. The room is silent. Nothing is coming to replace the picture.

Your anger has cooled off a bit. A green button is now fully visible where the pictures once were.";
		now the winner-picture is nowhere;
		now the hidden-button is nowhere;
		now the envy-button is part of the picture-container;

The envy-button is a thing. Understand "green" or "button" as the envy-button. The printed name of the envy-button is "green button". Understand "green" or "button" as the envy-button. The description of the envy-button is "This harmless-looking green button has certainly taken some aggravating work to find.".

Using is an action applying to one thing. Understand "use [something]" as using.

Carry out using:
	say "Using is pretty vague; you'll have to be more specific."
	
Instead of using envy-button:
	try pushing envy-button;

Envy-done is a truth state that varies. Envy-done is false.

INstead of pushing the envy-button:
	increment prize-level;
	now envy-done is true;
	now the picture-container is nowhere;
	say "A bell rings, and the display shelf starts moving. You back up, and the shelf disappears entirely. A mechanical voice states, 'Your score has gone up! Check the gift shop to see your progress!'"

Chapter 6 - Greed

[The greed room wants everything, and wants control over everything. Some central machine or hub thing that controls access to the rest of the room?]

[There is a big rotating glass door that divides room into four quadrants. Something keeps getting pushed to other quadrant]

[the pushed thing could be like a beach ball. but in the beach ball is a key to unlock the door, which retracts under the ground.]

[a vault door with a code, everything inside is worthless and old and rotten except for the most humble thing]

[collecting scraps of paper--the greed.]

The greed-room is north from envy-room. The greed-room is in wax-region. The printed name of the Greed-room is "Fish Blade room". "[first time]'Interesting', you think, as you enter the room. They actually have a more modern figure here. Fish Blade, the notorious mime, only died a few years ago, soon after the second Mars colony was established. Too bad they picked such a jerk.

[only]In the west side of the room there [mansatext].

Across from him, to the east, [fishtext].

On the north side [vaulttext][if the revolving-door is in greed-room].

By far the most obtrusive thing in the room, though, is a glass revolving door that divides everything into four sectors and makes movement impossible, except through the door itself. The door has a keyhole on it[end if].

You can exit to the [boldsouth]."

To say mansatext:
	say "is a wax figure of Mansa Musa, one of the richest men to ever live. He is surrounded by stacks of gold (or, rather, something else painted gold, unless the museum decided to store billions of credits['] worth here). Next to him is an open gold forge, facing the center of the room"

To say fishtext:
	say "is Fish Blade the mime, surrounded by mounds of merchandise in his proprietary colors. He is wearing his classic getup, and is holding the comically large magnet from the holofilm [italic type]Mustache Man VII[roman type], where he played the villain"
	
To say vaulttext:
	say "is a large vault with a combination lock attached to it. Nearby is a blacklight"

Section 1 - Mansa Musa

The mansa-glass is a closed transparent unopenable scenery container in greed-room. The printed name of the mansa-glass is "western glass sector". Understand "west" or "w" or "western" or "glass" or "sector" as the mansa-glass. The description of the mansa-glass is "The western glass sector is currently [if the mansa-glass is open]accessible[otherwise]inaccessible[end if]. In it [mansatext].".

Instead of searching the mansa-glass:
	try examining the mansa-glass;

Instead of pushing the mansa-glass:
	try pushing the revolving-door;

Instead of turning the revolving-door:
	say "It's stiff enough that you can't turn it without physically pushing it yourself."
	
Understand "spin [something]" or "revolve [something]" or "rotate [something]" as turning.

The mansa-figure is a wax-figure in the mansa-glass. The printed name of the mansa-figure is "Mansa Musa". Understand "mansa" or "Musa" or "richly" or "dressed" or "riches" or "man" or "hands"  or "smile" or "outstretched" as the mansa-figure. The description of the mansa-figure is "Mansa Musa is a richly dressed man surrounded by treasure. He stands with outstretched hands and a smile on his face, contrasting significantly with Fish Blade[if the blacklight is active].

In the blacklight, you can see a symbol of a horse marked with the capital letter I[end if].".

[add little blacklight tattoos as implementation]

The gold-bars are plural-named scenery in the mansa-glass. The printed name of the gold-bars is "gold bars". Understand "gold" or "bar" or "bars" or "treasure" as the gold-bars.

The description of the gold-bars is "The gold bars are stacked taller than Mansa Musa and wrap around him like an amphitheater. You suspect that the museum owners have little knowledge of how much gold had been mined on earth during Mansa Musa's life."

Instead of taking the gold-bars:
	say "Yeah, these are definitely not gold."

The gold-forge is a scenery device in mansa-glass. Understand "open" or "gold" or "forge" as the gold-forge. The printed name of the gold-forge is "gold forge". The description of the gold-forge is "You don't know enough about forges to know if this gold forge is accurate or not, but given the museum's track record, it's not looking great. It looks like a small brick oven with its opening facing towards the center of the room. 

[if the gold-forge is switched off]It looks like it's possible to switch on the device[otherwise]The forge is on, producing heat[end if][if the blacklight is active].

In the blacklight, you can see a symbol of a dog marked with the capital letter M[end if].".

Instead of searching the gold-forge:
	say "The forge is completely empty."
	
Instead of inserting something into the gold-forge:
	say "You don't really feel like melting down [the noun]."

Instead of putting something on the gold-forge:
	say "It is rounded on top, and not useful for putting things on."

Instead of taking or pushing or pulling or turning the gold-forge:
	say "The forge is firmly adhered to the ground."

After switching on the gold-forge:
	say "You can feel a localized wave of heat rolling out from the front of the forge."

After switching off the gold-forge:
	say "You can feel the heat quickly dissipate."
	
Instead of touching the gold-forge when the gold-forge is switched on:
	say "Ouch! It's hot!"
	
Understand "move through [something]" as pushing.

Section 2 - Fish Blade

[fish blade is a famous celebrity from the future, a mime who copyrighted words and colors ]
The fish-glass is a closed transparent unopenable scenery container in greed-room. The printed name of the fish-glass is "eastern glass sector". Understand "eastern" or "east" or "e" or "glass" or "sector" as the fish-glass. The description of the fish-glass is "The eastern glass sector is currently [if the fish-glass is open]accessible[otherwise]inaccessible[end if] In it [fishtext].".

Instead of searching the fish-glass:
	try examining the fish-glass;

The fish-figure is a wax-figure in fish-glass. The printed name of the fish-figure is "Fish Blade". Understand "Fish" or "blade" or "mime" or "paint" or "expression" or "traditional" as the fish-figure. The description of the fish-figure is "Fish Blade is the most accurate figure you've seen, most likely due to how recent he was. He was part of the big Mime Revival in the middle of the last century, but became especially notorious for copyrighting and trademarking things. He started with items, like the giant magnet shown here, but moved on to ridiculous things like ultraviolet paint and even a certain accent (which, as a mime, he didn't even use!) His figure is in traditional mime paint. His expression is rude and unwelcoming[if the blacklight is active].

In the blacklight, you can see a symbol of a fish marked with the capital letter N[end if].".

[FIX THIS LATER]

The merch-mounds are plural-named scenery in fish-glass. The printed name of merch-mounds is "mounds of merchandise". Understand "mound" or "mounds" or "merch" or "hats" or "hat" or "shirt" or "shirts" or "shoe" or "shoes" or "merchandise" or "proprietary" or "color" or "colors" or "colour" or "colours" as the merch-mounds. The description of the merch-mounds is "Shoes, hats, and shirts surround Fish Blade in bright and vibrant colors. You knew the names of each color, once, but once his lawsuits cracked down it became illegal to print the names, publish them, or even store them on digital media. So honestly, you're not quite sure what they're called.".

Instead of taking the merch-mounds:
	say "It's all just wax, unfortunately. Or, perhaps, fortunately. Fish Blade merch isn't really your thing."

The comic-magnet is a scenery device in fish-glass. Understand "magnet" or "ridiculous" or "large" or "device" or "comically" as the comic-magnet. The printed name of the comic-magnet is "comically large magnet". The description of the comic-magnet is "Fish Blade's ridiculous, large magnet seems to be at least somewhat functional, although you doubt it will work on most modern alloys. You can SWITCH ON the device[if the blacklight is active].

In the blacklight, you can see a symbol of a cat marked with the capital letter E[end if].".

Section 3 - Vault

The vault-glass is a closed transparent unopenable scenery container in greed-room. The printed name of the vault-glass is "northern glass sector". Understand "northern" or "north" or "glass" or "sector" or "n" as the vault-glass. The description of the vault-glass is "The northern glass sector is currently [if the vault-glass is open]accessible[otherwise]inaccessible[end if]. In it [vaulttext].".

Instead of searching the vault-glass:
	try examining the vault-glass;

The greed-vault is a closed locked scenery container in vault-glass. Understand "vault" or "heavy" as the greed-vault. The printed name of the greed-vault is "heavy vault". The description of the greed-vault is "In the northern part of the room is a vault, partially built into the wall. It looks to be legitimately sturdy, not a cheap facsimile like some things in this museum. 

There is an inscription on it."

The greed-inscription is part of the greed-vault. Understand "inscription" or "poem" as the greed-inscription. The printed name of the greed-inscription is "inscription". The description of the greed-inscription is "It says:

'A wise man once had students three,[line break]
and brought them here, this vault to see.[line break]
He asked them all, the student herd,[line break]
To sum this vault up in a word.[line break]
One spoke of a place deep in the ground,[line break]
where lots of secret wealth is found.[line break]
One spoke of a bomb to rend and tear,[line break]
opening metal, if one may dare.[line break]
One only said [']it belongs to me.['][line break]
But there was only one answer, not three.[line break]
One single word, with letters four.[line break]
Enter the word, and open the door.'

Below is a combination lock that has animals on it rather than numbers.

Next to the door, you recognize what seems to be a blacklight."

Some vault-detritus is in greed-vault. The printed name of the vault-detritus is "trash". Understand "trash" as the vault-detritus. The description of the vault-detritus is "It looks like someone dumped their trash in here. Gross."

Instead of taking the vault-detritus:
	say "Ew. No."

Greed-done is a truth state that varies. Greed-done is false.

After opening the greed-vault when greed-done is false:
	now greed-done is true;
	say "The vault opens, revealing nothing but trash.

 You hear a bell and a voice says 'One man's treasure is another man's trash! But in any case, you've beaten this room! Check the gift shop to monitor your progress.'";
	increment prize-level;

The uv-light is a switched off scenery device in vault-glass. The printed name of the uv-light is "blacklight". Understand "blacklight" or "black" or "light" or "darK" or "tube" or "purple" or "lamp" as the uv-light. The description of the uv-light is "This long tube is coated in dark purple, which is something you've always associated with blacklights. It looks like something you can SWITCH ON."

Before going nowhere in greed-room when revolving-door is nowhere:
	say "With the revolving door gone, all of the room is accessible at once. The only exit is to the south." instead;

After switching on the uv-light when revolving-door is not in greed-room:
	say "You switch the blacklight on.

You feel like something has subtly changed in the room."

After switching off the uv-light when revolving-door is not in greed-room:
	say "You switch the blacklight off.

You feel like something has subtly changed in the room."

To decide whether the blacklight is active:
	if the revolving-door is in greed-room, decide no;
	if the uv-light is switched off, decide no;
	decide yes;

Section 4 - Revolving door with key

The revolving-door is a scenery enterable open transparent unopenable container in greed-room. Understand "revolving" or "door" as the revolving-door. The printed name of the revolving-door is "revolving door". The description of the revolving-door is "The revolving door is set between four glass sectors, and makes reaching any of the other sectors impossible without moving through the door itself. You are currently in the [revolving-compass] sector. The door itself is labelled PUSH. 

There is a keyhole on the part of the door closest to you, large and old-fashioned, as if for a giant key out of some Gothic novel from old Britain[if stuck-key is not oncetaken].

 [stuck-text][end if]."

Instead of unlocking the revolving-door with something:
	try unlocking the rotating-keyhole with the stuck-key;

The revolving-pos is a number that varies. Revolving-pos is 1.

To say revolving-compass:
	if revolving-pos is 1:
		say "south";
	if revolving-pos is 2:
		say "west";
	if revolving-pos is 3:
		say "north";
	if revolving-pos is 4:
		say "east";

[This stuff was only here because I didn't know about 'without printing a room description]

[The room description heading rule does nothing when pushlookflag is true.
The room description body text rule does nothing when pushlookflag is true.
The offer items to writing a paragraph about rule does nothing when pushlookflag is true.]
[The use initial appearance in room descriptions rule does nothing when pushlookflag is true.]

[Pushlookflag is a truth state that varies. pushlookflag is false.]

[Every turn when pushlookflag is true:
	now pushlookflag is false;]

Instead of entering revolving-door:
	try pushing revolving-door;
	
Instead of opening revolving-door:
	say "It's not a door that really opens or closes, but you can PUSH it."
	
Instead of exiting when the player is in revolving-door:
	try pushing the revolving-door;

Instead of left-turning the revolving-door:
	try pushing the revolving-door;
	
Instead of right-turning the revolving-door:
	say "Unfortunately, the door only seems to go one way. You can just PUSH it."

Heattime is a number that varies. Heattime is 0.

Before listing nondescript items of the envy-room: 
	if stuck-key is marked for listing: 
		now stuck-key is not marked for listing; 
	if wax-glob is marked for listing: 
		now wax-glob is not marked for listing; 

Magnetbroke is a truth state that varies. Magnetbroke is false.
Before switching on the comic-magnet:
	if magnetbroke is true:
		say "The magnet doesn't seem to work at all, now. Someone will have to fix that before the museum reopens. Oh, well." instead;

Instead of pushing revolving-door:
	increment revolving-pos;
	say "You push the door and follow along with its movement. You are now on the [revolving-compass] side. Here, there [if revolving-pos is 2][mansatext][otherwise if revolving-pos is 3][vaulttext][otherwise if revolving-pos is 4][fishtext][otherwise]is the exit to the [boldsouth][end if][if keystuck is false][otherwise if wax-glob is nowhere].

 The [stuck-key] gets pushed around by the door, remaining on the side opposite of you[otherwise].

The [stuck-key], attached by a [wax-glob] to the side of the door opposite of you, rotates with you[end if].";
	if revolving-pos is 5:
		now revolving-pos is 1;
		move the player to greed-room, without printing a room description;
		now revolving-door is open;
		now fish-glass is in greed-room;
		now fish-glass is closed;
	otherwise:
		move the player to revolving-door, without printing a room description;
		now revolving-door is closed;
	if revolving-pos is 2:
		now the mansa-glass is in revolving-door;
		now mansa-glass is open;
		if the comic-magnet is switched on:
			if the wax-glob is nowhere:
				now keystuck is false;
				now the stuck-key is in fish-glass;
				now the comic-magnet is switched off;
				now magnetbroke is true;
				say "Now unobstructed by the door, the powerful magnet pulls the iron key to it! There is a clanking sound and a shower of sparks and the magnet shuts off, the key falling to the ground.

Oh dear. It seems something might have broken.";
	if revolving-pos is 3:
		now the mansa-glass is in greed-room;
		now mansa-glass is closed;
		now the vault-glass is in revolving-door;
		now vault-glass is open;
	if revolving-pos is 4:
		now the vault-glass is in greed-room;
		now the vault-glass is closed;
		if the uv-light is switched on:
			say "The blacklight switches off.";
			now the uv-light is switched off;
		now fish-glass is in revolving-door;
		now fish-glass is open;

Every turn when the player is enclosed by greed-room:
	if revolving-pos is 4:
		if the gold-forge is switched on:
			if the wax-glob is enclosed by greed-room:
				increment heattime;
				if heattime > 1:
					say "The heat from the forge melts the wax completely, and the iron key falls to the ground! Unfortunately, it's still on the other side of the door from you.";
					now the wax-glob is nowhere;

				
A stuck-key is in greed-room. The printed name of the stuck-key is "iron key". "[stuck-text].". Understand "iron" or "thick" or "key" as the stuck-key. The description of the stuck-key is "This thick iron key looks like it belongs to a long-ago era."

To say stuck-text:
	say "A thick iron key is [if wax-glob is in greed-room]hanging on the opposite part of the revolving door from you, attached by a [wax-glob][otherwise]lying on the floor opposite from you in the revolving door[end if]"
		
A wax-glob is in greed-room. The printed name of the wax-glob is "glob of wax". Understand "glob" or "glob of" or "wax" as the wax-glob. The description of the wax-glob is "[if heattime is 0]This wax looks like regular candle wax; interesting choice for an adhesive[otherwise]The wax looks softer. Maybe the oven melted it a bit? Interesting[end if].".

keystuck is a truth state that varies. Keystuck is true.

Before physicality when the noun is stuck-key:
	if keystuck is true:
		say "The key is on the opposite side of the revolving door!" instead;

Before physicality when the noun is wax-glob:
	say "The wax is on the opposite side of the revolving door!" instead;

The rotating-keyhole is part of the revolving-door. The printed name of the rotating-keyhole is "keyhole" . Understand "key" or "keyhole" or "hole"or "old" or "old-fashioned" or "fashioned" or "gothic" as the rotating-keyhole. The description of the rotating-keyhole is "The keyhole is in the middle of the revolving door on your side, well within reach. It seems designed for an old-fashioned key."

Instead of unlocking the revolving-door with something:
	try unlocking the rotating-keyhole with the noun.

Instead of unlocking the rotating-keyhole with the curious-tool:
	say "The keyhole looks entirely mechanical on a large scale, nothing an electronic device can manipulate." 

The can't reach inside closed containers rule response (A) is "[if the noun is a scenery transparent container in greed-room]You can see what you're looking for inside [the noun], but can't reach through the glass[otherwise][The noun] [aren't] open[end if]."

[Check unlocking]

Instead of inserting the stuck-key into the rotating-keyhole:
	try unlocking the rotating-keyhole with the stuck-key;

Instead of unlocking the rotating-keyhole with the stuck-key:
[	now pushlookflag is true;]
	move the player to greed-room, without printing a room description;
	now the stuck-key is nowhere;
	repeat with current running through things in fish-glass:
		now current is in greed-room;
	now fish-glass is nowhere;
	repeat with current running through things in vault-glass:
		now current is in greed-room;
	now vault-glass is nowhere;
	repeat with current running through things in mansa-glass:
		now current is in greed-room;
	now mansa-glass is nowhere;
	now revolving-door is nowhere;
	say "The entire door and the glass sectors start to shudder and then sink until they disappear completely, parts of the floor sliding over it. 

Simultaneously, the combination lock on the vault door lights up.";
	if the uv-light is switched on:
		say "[conditional paragraph break]The blacklight switches off.";
		now the uv-light is switched off;
	now vaultlocked is false;

Instead of searching the rotating-keyhole:
	say "It mostly looks hollow."

Section 5 - Vault lock

The vault-combo is scenery in vault-glass. Understand "combination" or "lock" or "animals" as the vault-combo. The printed name of the vault-combo is "combination lock". 

Animal-code is a kind of value. The animal-codes are lion, jaguar, dog, horse, cat, fish, elephant, mouse, and chicken.

The vault-combo has a list of animal-codes called the current-animalnation. 

The vault-combo has a list of animal-codes called the true-animalnation. The true-animalnation of the vault-combo is {dog, horse, fish, cat}. 

Before switching on the vault-combo:
	say "There's no obvious way to switch on the lock." instead;

Before switching off the vault-combo:
	say "There's no obvious way to switch off the lock." instead;

Understand "set [something] to [an animal-code]" as setting it animally to. Setting it animally to is an action applying to one thing and one animal-code. 

Vaultlocked is a truth state that varies. Vaultlocked is true.

Instead of examining the vault-combo: 
	if the number of entries in the current-animalnation of the vault-combo is 0, 
		say "[if vaultlocked is false]The lock is lit up. [end if]You haven't dialed the lock to any combination yet. You can SET it TO lion, jaguar, dog, horse, cat, fish, elephant, mouse, or chicken[if vaultlocked is true].

However, the lock is dark and doesn't seem to be active[end if]."; 
	otherwise say "You have set the lock to [the current-animalnation of the vault-combo].". 

Check setting something animally to (this is the block setting animally rule): 
	say "[The noun] cannot be set." 

Instead of setting the vault-combo animally to the animal-code understood: 
	if vaultlocked is true:
		say "The combination lock doesn't do anything at all. It doesn't seem to be active.";
	otherwise:
		truncate the current-animalnation of the vault-combo to the last 3 entries; 
		add the animal-code understood to the current-animalnation of the vault-combo; 
		if the greed-vault is locked and the current-animalnation of the vault-combo is the true-animalnation of the vault-combo: 
			say "You set the combination lock to [the animal-code understood], and [the greed-vault] makes a 'click' that is music to your ears."; 
			now the greed-vault is unlocked; 
			now vaultlocked is true;
		otherwise: 
			say "You set the combination lock to [the animal-code understood]." 

Instead of unlocking the vault-combo with stuck-key:
	say "The combination lock doesn't use a key at all! It must go to something else.";
	
Instead of unlocking the greed-vault with the stuck-key:
	say "The vault has a combination lock, not a keyhole."

Chapter 7 - Gluttony

[Not heeding your limits. PUshing things beyond what they should be capable of. Noone will actually know this is the 7 deadly sins]
[use the ants from one area to destroy the wood here]


The gluttony-room is north from wrath-room. The gluttony-room is in wax-region. The printed name of the gluttony-room is "Elvis Room". "[first time]Oh man, this room really reminds you of your dad.

The two figures here are Elvis and Henry VIII. Your dad was obsessed with Elvis when you were little; he was always sending you songs or showing you holovids. He claimed that he was one of history's greatest singers. You never saw the attraction, but it was fun bonding.

Amusingly, Henry VIII reminds you of your father as well, but only because you told him he looked like him once at a fair, and he was very offended.

[only]In this room, a wax figure of Elvis is portrayed wearing a white jumpsuit and singing while contorted in an extreme posture. [if there is an elvis-table in gluttony-room]Surrounding him are four turntables with records on them (labelled Suspicious Minds, Jailhouse Rock, Hound Dog, and Burning Love respectively), with an informational plaque near the middle[otherwise]Near him is an informational plaque[end if].

Across from Elvis is Henry VIII, posed holding a turkey leg, although of course there was no actual image of him ever doing so[if soda-machine is in gluttony-room]. Even more incongruously, there is a soda machine next to him, and a goblet underneath in the soda machine[end if]. He also has an informational plaque.

You can go [boldsouth] or [boldeast] from here."

[filling a goblet with 'wine' until it is full, then higher, with surface tension, then even higher]
[elvis songs on turntables, playing all out once makes message appear in the noise]
[a platter is before them. It has to be filled with a ton of eggs, each hidden in more and more ludicrous spots. funny section]

Section 1 - Elvis

elvis-figure is a wax-figure in gluttony-room. Understand "elvis" or "presley" as the elvis-figure. The printed name of the elvis-figure is "Elvis". The description of Elvis-figure is "Elvis is portrayed in his forties, wearing his iconic white jumpsuit. His body is thrust at such a peculiar angle that you have to wonder how they're supporting the wax figure. He has beads of wax sweat on his forehead. Impressive." 

The white-jumpsuit is part of the elvis-figure. Understand "white" or "jump" or "suit" or "jumpsuit" as the white-jumpsuit. The printed name of the white-jumpsuit is "white jumpsuit". The description of the white-jumpsuit is "Elvis's famous white jumpsuit looks pretty good here, although key details are missing, and some of the proportions are off." 

The wax-sweat is part of the elvis-figure. Understand "wax" or "sweat" as the wax-sweat. The printed name of the wax-sweat is "sweat". The description of the wax-sweat is "You have to wonder what kind of person was tasked with the special job of carefully modeling Elvis Presley's sweat in wax. It must be a truly great honor."

The elvis-plaque is an info-plaque in gluttony-room. Understand "Elvis" as the elvis-plaque. The printed name of the elvis-plaque is "Elvis plaque". The description of the elvis-plaque is "The plaque says, 'The museum administration hopes you enjoy your Elvis music responsibly! 

'Because Elvis performed before internationally mandated song length laws, each of his songs are of a different playtime. We apologize in advance to those adversely affected.

'We hope you enjoy. The best part is when it all comes together at the end!'"

Section 2 - Henry VII

henry-figure is a wax-figure in gluttony-room. Understand "henry" or "viii" or "8" or "eight" or "8th" or "eighth" or "royal" or "finery" or "king" or "mouth" as the henry-figure. The printed name of the henry-figure is "Henry VIII". The description of the henry-figure is "Henry VIII is displayed in his royal finery, standing proud and rotund as ever. The artist has chosen to focus not on his religious reforms, murders of his wives, or other such details. Instead, he is surrounded by food, including a turkey drumstick in his hand. There are some thin wires leading from the nearby soda machine to his mouth.

There is a plaque nearby."

Some henry-food is scenery in gluttony-room. The printed name of the henry-food is "food". Understand "food" or "quail" or "ham" or "beef" or "bread" or "soup" or "wax" as the henry-food. The description of the henry-food is "Food of all kinds surrounds Henry, from quail to ham and bread and from beef to soup. All of it is made of wax."

Instead of eating the henry-food:
	say "Eating a ton of wax probably isn't very healthy!"

The turkey-drumstick is part of the henry-figure. Understand "turkey" or "drumstick" as the turkey-drumstick. The printed name of the turkey-drumstick is "turkey drumstick". The description of the turkey-drumstick is "While turkeys were found in America, they were brought to England by the 1520's. Did Henry VIII every have a turkey drumstick? The world may never know."

The henry-plaque is an info-plaque in gluttony-room. The printed name of the henry-plaque is "Henry VIII plaque". Understand "henry" or "viii" or "plaque" as the henry-plaque. The description of the henry-plaque is "It says: 'Oh, Henry. This King will never be satisfied until his cup runneth over'."

The henry-wires are plural-named scenery in gluttony-room. The printed name of the henry-wires is "thin wires". Understand "thin" or "wires" or "wire" or "Mechanism" as the henry-wires. The description of the henry-wires is "The thin wires that lead from the soda machine to Henry's mouth seem to be part of some mechanism."

Section 3 -Turntables

An elvis-table is a kind of device. An elvis-table is usually scenery. An elvis-table has some text called the song-first. Understand the song-first property as describing an elvis-table. An elvis-table has some text called the song-second. Understand the song-second property as describing an elvis-table. The printed name of an elvis-table is usually "[song-first of the item described] [song-second of the item described] turntable". Understand "table" or "turn" or "record" or "table" or "turntable" as an elvis-table. The song-first of an elvis-table is usually "Can't help falling in love". The song-second of an elvis-table is usually "Can't help falling in love". An elvis-table has a number called song-length. The song-length of an elvis-table is usually 4. An elvis-table has a number called air-time. The air-time of an elvis-table is usually 0. The description of an elvis-table is usually "This is a turntable with a record on it labelled [song-first of the item described] [song-second of the item described]. The record seems firmly attached to the turntable at the center, but still able to spin. The turntable has the number [song-length of the item described] on it."

Instead of taking an elvis-table:
	say "The turntable and record are all attached together and are immobile, other from turning when switched on."

Instead of playing an elvis-table:
	try switching on the noun;

Instead of turning an elvis-table:
	try switching on the noun;

[allow listening to a table]

The Suspicious-table is an elvis-table in gluttony-room. The song-first of suspicious-table is "Suspicious". The song-second of suspicious-table is "Minds". The song-length of suspicious-table is 6. 
[4:33]

The Jailhouse-table is an elvis-table in gluttony-room. The song-first of jailhouse-table is "Jailhouse". The song-second of jailhouse-table is "Rock". The song-length of jailhouse-table is 2. Understand "jail" as jailhouse-table.
[2:36]

The Hound-table is an elvis-table in gluttony-room. The song-first of Hound-table is "Hound". The song-second of Hound-table is "Dog". The song-length of hound-table is 3.
[2:14]

The Burning-table is an elvis-table in gluttony-room. The song-first of Burning-table is "Burning". The song-second of Burning-table is "Love". The song-length of burning-table is 4.
[2:57]

ElvisDone is a truth state that varies. ElvisDone is false. 
ElvisFinallyDone is a truth state that varies. ElvisFinallyDone is false.

Every turn when the player is in gluttony-room (this is the elvis music rule):
	now elvisdone is true;
	if the number of switched on elvis-tables > 0:
		say "You can hear Elvis music from [the list of switched on elvis-tables].";
	if the number of switched off elvis-tables > 0:
		now elvisdone is false;
	repeat with current running through switched on elvis-tables:
		increment air-time of current;
		if air-time of current < song-length of current:
			now elvisdone is false;
	if elvisdone is true:
		if Elvisfinallydone is false:
			repeat with current running through elvis-tables:
				now current is nowhere;
				now the current is switched off;
			say "[conditional paragraph break]There is a riotous cacophony of sound now with all the turntables blaring at once. 

	Suddenly, it all seems to come together. Is this something Elvis originally intended in his songs, a hidden theme that unites them all? Or is it just the museum owners altering the originals? Either way, it's pretty great! Your dad would have loved to hear it.

	Then the turntables all stop. They sink into the ground and disappear.";
			now ElvisFinallyDone is true;
	otherwise:
		repeat with current running through switched on elvis-tables:
			if air-time of current < song-length of current:
				do nothing;
			otherwise:
				say "[conditional paragraph break][The current] switches off.";
				now the current is switched off;
				now air-time of current is 0;


Section 4 - Goblet

The soda-machine is a scenery container in gluttony-room. The printed name of the soda-machine is "soda machine". Understand "soda" or "machine" as the soda-machine. The description of the soda-machine is "This soda machine looks closer to the 1980s than the 1950s, from your research in that area. Who would have thought that your hobby of vintage gas station photos would finally come in handy? 

The soda machine has [a list of soda-buttons enclosed by gluttony-room], all dispensing various kinds of soda. It also has a red button labelled 'CANCEL' and a green button labelled 'GO'. Wires lead from the soda machine up to Henry VIII's mouth.".

The henry-goblet is in soda-machine. The printed name of the henry-goblet is "goblet". Understand "goblet" or "gold" or "plastic" as the henry-goblet. The description of the henry-goblet is "This goblet is, it seems, plastic, or some other lightweight material, but it's been styled to look like gold[if the henry-goblet is in soda-machine].

The goblet is under the soda machine[end if]. 

Looking inside, it has numbers running up the side going from 0 at the bottom to 7 at the very top. At the level labelled 5 is a warning: DO NOT FILL ABOVE THIS LINE. 

Right now, [if total-soda is 0]it's empty[otherwise]It's filled up to the '[total-soda]' mark with [sodalevels][end if]."


Before inserting something into the soda-machine:
	if the noun is not henry-goblet:
		say "The soda machine beeps loudly and noisily whenever you try to put something in it that's not the goblet."

A soda-button is a kind of thing. Understand "button" as a soda-button. 

A soda-button has a number called the soda-amount. The soda-amount of a soda-button is usually 0.

A soda-button has some text called the soda-type. The soda-type of a soda-button is usually "cola". Understand the soda-type property as describing a soda-button.

The description of a soda-button is usually "This is a [printed name] on the soda machine, labelled as '[soda-type]'."

Total-soda is a number that varies. Total-soda is 0.

To say sodalevels:
	let L be a list of text;
	repeat with current running through soda-buttons:
		if soda-amount of current > 0:
			add soda-type of current to L;
	if the number of entries of L > 1:
		say "a mixture of [L]";
	otherwise:
		say "[L]";

The brown-soda is a soda-button. The brown-soda is part of the soda-machine. The printed name of the brown-soda is "brown button". Understand "brown" as the brown-soda. The soda-type of brown-soda is "cola". 
The purple-soda is a soda-button. The purple-soda is part of the soda-machine. The printed name of the purple-soda is "purple button". Understand "purple" or "grape" as the purple-soda. The soda-type of purple-soda is "grape soda".
The blue-soda is a soda-button. The blue-soda is part of the soda-machine. The printed name of the blue-soda is "blue button". Understand "blue" or "ime" as the blue-soda. The soda-type of the blue-soda is "lime soda".

The green-soda is part of the soda-machine. The printed name of the green-soda is "green button". Understand "go" or "green" or "button" as the green-soda. The description of the the green-soda is "This is a green button labelled GO.".

The cancel-soda is part of the soda-machine. The printed name of the cancel-soda is "red button". Understand "cancel" or "red" or "button" as the cancel-soda. The description of the the cancel-soda is "This is a red button labelled CANCEL.".

Sodafull is a truth state that varies. Sodafull is false.

Machinepushes is a number that varies. Machinepushes is 0.

Instead of pushing a soda-button (called currentsoda):
	if sodafull is false:		
		increment machinepushes;
		if the henry-goblet is in soda-machine:
			say "You press [the currentsoda] and [the soda-type of currentsoda] flows into the goblet.[paragraph break]";
			increment the soda-amount of currentsoda;
			increment total-soda;
			if total-soda < 5:
				say "There's still room for more in the goblet.";
			if total-soda is 5:
				say "The goblet is now full to the brim.";
			if total-soda is 6:
				say "The goblet is dangerously full!";
			if total-soda > 6:
				say "The soda is overflowing. Most of what's flowing spills into the rest of the soda machine.";
			if machinepushes is 5:
				say "[conditional paragraph break]The machine beeps and says 'You have dispensed soda five times. The goblet is full.'";
				now sodafull is true;
		otherwise:
			say "The soda just spills into the rest of the machine, with no goblet present.";
	otherwise:
		say "The machine beeps, and a voice says, 'Soda limit reached.'"
	
Understand "soda" as the henry-goblet when total-soda > 0.

Instead of drinking the henry-goblet:
	if total-soda > 0:
		say "The soda doesn't seem quite right; who knows how long this place has been closed?";
	otherwise:
		say "But the goblet is empty!"

Sodaemptying is an action applying to two things. Understand "pour [henry-goblet] into [soda-machine]" or "empty [henry-goblet] into [soda-machine]" as sodaemptying when the player is in gluttony-room. 

Carry out sodaemptying:
	if total-soda is 0:
		say "But the goblet's already empty!";
	otherwise:
		say "You dump everything into the soda machine.";
		repeat with current running through soda-buttons:
			now soda-amount of current is 0;
		now total-soda is 0;
	
Instead of pushing the green-soda:
	if the henry-goblet is in soda-machine:
		say "You hear a hum, and the wires attached to the soda machine start moving, pulling the goblet. It travels straight up to Henry VIII's mouth, where it tilts over, pouring the goblet into his mouth.[paragraph break]";
		if total-soda is 0:
			say "'That was disappointing!' he says. 'Give me another!' 

The goblet returns, and the soda machine's robotic voice says, 'Filling may recommence.";
		otherwise if total-soda < 6:
			say "It disappears while some frankly gross gulping noises play. 'More!' shouts a voice, 'more!'

The goblet returns, and the soda machine's robotic voice says, 'Filling may recommence.'";
		otherwise if total-soda is 6:
			say "It comes dangerously close to spilling, but he drinks it normally. 'More!' shouts a voice, 'more!'

The goblet returns, and the soda machine's robotic voice says, 'Filling may recommence.'";
		otherwise:
			say "With the soda over full, the drink pours all over him! You hear a voice say 'Bleh! That's enough drink for me today!'

The goblet returns to the soda machine, which trembles and sinks below the floor.";
			now the soda-machine is nowhere;
			now the henry-goblet is nowhere;
		repeat with current running through soda-buttons:
			now soda-amount of current is 0;
		now total-soda is 0;
		now machinepushes is 0;
	otherwise:
		say "A mechanism moves, despite the missing goblet, and a sound imitating drinking comes from the wax-figure. 'That was disappointing!' he says. 'Give me another!' 

The goblet returns, and the soda machine's robotic voice says, 'Filling may recommence.'";
	now sodafull is false;

Instead of going from gluttony-room when henry-goblet is enclosed by the player:
	say "A stern robotic voice says, 'You can't take the goblet out of this room!'"

Instead of pushing the cancel-soda:
	now sodafull is false;
	if the henry-goblet is in soda-machine:
		say "The wires around the soda machine contract, and a mechanism dumps out the goblet. The soda machine's robotic voice says, 'Filling may recommence.'";
		repeat with current running through soda-buttons:
			now soda-amount of current is 0;
		now total-soda is 0;
	otherwise:
		say "A mechanism acts as if it were dumping out the soda. The soda machine's robotic voice says, 'Filling may recommence.'";

[maybe make a light that indicates if the soda is too full]

Gluttonyend is a scene. Gluttonyend begins when the henry-goblet is nowhere and the suspicious-table is nowhere.

The gluttony-wax is a thing. Understand "wasps" or "nest" or "chunk" or "wasps" or "wasp" as the gluttony-wax. The printed name of the gluttony-wax is "wasp nest". The description of the gluttony-wax is "Numerous wasps are swarming over a nest partially embedded in the floor.".

Instead of physicality when the noun is gluttony-wax:
	say "Those are wasps! There's no way I'm getting anywhere near that!"

When gluttonyend begins:
	now the gluttony-wax is in gluttony-room;
	say "A little sound plays, and something begins to pop out of the floor, but it seems jammed. You hear a strange noise, almost like static...

Curious, you lean down, only to see to your horror that it is some kind of wasp nest, crawling with wasps!

You leap back. From a safe distance, you can spy a yellow sticky note.";

The wasps-note is part of the gluttony-wax. The printed name of the wasps-note is "yellow sticky note". Understand "yellow" or "sticky" or "note" as the wasps-note. The description of the wasps-note is "It says, 'Hank--can you call the exterminator? Need to get these wasps out of here. We can't reopen the museum until they're gone!'

That definitely doesn't seem like it's supposed to be part of the museum!"

Instead of physicality when the noun is the wasps-note:
	say "It wouldn't get close to that if I were you!"

The wasphawk-bottle is a thing. The printed name of the wasphawk-bottle is "wasphawk in a bottle". Understand "wasphawk" or "bottle" or "hawk" or "in a bottle" as the wasphawk-bottle. The description of the wasphawk-bottle is "This bottle contains a wasphawk, a deadly insect that specializes in eating wasps.".

Instead of inserting something into the wasphawk-bottle:
	say "The bottle is sealed. For now."

Instead of attacking the wasphawk-bottle:
	say "That would release the wasphawk in its most aggravated state, which is not something you're particularly excited to see!"

Gluttony-done is a truth state that varies. Gluttony-done is false.

Instead of opening the wasphawk-bottle:
	if the gluttony-wax is enclosed by the location:
		say "You carefully open the bottle and the wasphawk leaps out. In the process, you drop the bottle and it rolls out of sight.

		The wasphawk springs towards the wasps, crashing through the nest and devouring wasps as it goes. Once all the nest is gone, it chases the final wasp out of the room. 

		With the nest gone, the thing underneath the floor extends fully. It's a little box that pops open, revealing a waving flag.

		A bell rings and you hear a voice say 'Your score has gone up! Check your progress in the gift shop!' The flag and box then disappear into the ground again.";
		now the wasphawk-bottle is nowhere;
		now gluttony-wax is nowhere;
		increment prize-level;
		now gluttony-done is true;
	otherwise:
		say "The bottle can be opened, but unless you have something for the wasphawk to target, it will probably come after you!"
	
Chapter 8 - Sloth

[requires something from other room: the animal room. something in here gets jammed and its wood and one specific kind of termite eats this wood]

The sloth-room is east from gluttony-room and north from lust-room. The sloth-room is in wax-region. The printed name of the sloth-room is "Lennon Room". "[first time]Huh, this room is kind of weird. What's with the bed? Then you look closer.

Ah, it's the Beatles. One of them,at least.

[only]You can see John Lennon here, residing in a large bed. Behind him are signs saying HAIR PEACE and BED PEACE. John has a heavy beard and long hair[if the driver-kiosk is in sloth-room].

 Near his bed is a kiosk[end if].

Across from him is Helen of Troy, depicted as a tall and athletic woman in a chiton and headband. She is depicted as staring [if the foosball-table is in sloth-room]down at a great battle depicted as a foosball table[otherwise]at nothing[end if][if the hideous-contraption is in sloth-room].

A hideous contraption has appeared in this room[end if].

You can go [boldwest] or [boldsouth] from here."

The describe what's on scenery supporters in room descriptions rule does nothing when the player is in sloth-room.

[This room is about refusing to do that which you ought. Everything gets perverted to its misuse here and there are shortcuts around everything]

[extreme appearance here: think violet room in The Recruit. Laser arrays, chained and caged box, ]
[towers of hanoi crossed with goat and duck]
[gordian knot]
[absurd logic puzzle (like the 'what color is the bus driver's eyes' one)]

[everything here is a joke. Looks incredibly complex but need nothing]

Section 1 - Helen of Troy

helen-figure is a wax-figure in sloth-room. The printed name of helen-figure is "Helen of Troy". Understand "helen" or "figure" or "tall "or "hair" or "athletic" or "helen of" or "troy" as the helen-figure. The description of the helen-figure is "Helen is depicted as a graceful beauty, her hair held back by a headband and her figure covered by a Doric chiton. She is staring [if the foosball-table is in sloth-room]at the Trojan War as depicted in a foosball table[otherwise]off into the distance[end if].".

The helen-band is part of the helen-figure. The printed name of the helen-band is "hairband". Understand "leaves" or "branches" or "branch" or "leaf" or "laurel" or "olive" or "band" or "hairband" or "stephane" as the helen-band. The description of the helen-band is "On further inspection, you can see that Helen's hairband is made of olive branches and laurel leaves, an early version of the Greek [italic type]stephane[roman type]."

The helen-chiton is part of the helen-figure. The printed name of the helen-chiton is "doric chiton". Understand "doric" or "pin" or "pins" or "chiton" as the helen-chiton. The description of the helen-chiton is "Helen's chiton, the loose garment that covers her, is a Doric type, the earlier form that used pins. It was replaced by Ionic chitons later, you think."

Section 2 - John Lennon

The lennon-bed is an enterable scenery supporter in sloth-room. Understand "bed" as the lennon-bed. The printed name of the lennon-bed is "bed". The description of the lennon-bed is "This, you recall, is a facsimile of John's famous bed used for his bed-in, minus Yoko Ono. He remained in bed most of the day to protest the Vietnam War, except when he and Yoko had to get up for the maid to clean things."

missing-yoko is scenery in sloth-room. The printed name of missing-yoko is "Yoko Ono". Understand "yoko" or "ono" as missing-yoko.

Instead of doing something with missing-yoko:
	say "But Yoko Ono isn't here!"

The bed-signs are plural-named scenery in sloth-room. The printed name of the bed-signs is "bed signs". Understand "bed signs" or "bed sign" or "sign" or "signs" or "bed peace" or "hair peace" as the bed-signs. The description of the bed-signs is "One of the signs says BED PEACE, and the other says HAIR PEACE."

Instead of entering the lennon-bed:
	say "Yoko Ono wouldn't have appreciated that, you think."

The lennon-figure is a wax-figure on lennon-bed. The printed name of the lennon-figure is "John Lennon". Understand "john" or "lennon" or "beatle" or "pajamas" or "pyjamas" or "heavy" or "beard" or "long" or "hair" or "john's" or "his" as the lennon-figure. The description of the lennon-figure is "John Lennon is depicted in his pajamas, lying in bed. His beard is heavy and his hair is long. He seems to be staring [if the driver-kiosk is in sloth-room]at the kiosk next to his bed[otherwise]off at nothing[end if].".

Section 3 - The bus-driver riddle

Emrys-ready is a truth state that varies. Emrys-ready is false.

The driver-kiosk is scenery in sloth-room. The printed name of the driver-kiosk is "kiosk". The description of the driver-kiosk is "This kiosk is decorated with a large Union Jack. It has a keyboard and a screen.

Printed on it is [if emrys-ready is false]the following:

'Welcome to History and Mystery Quiz Time!

'This brand new feature of our museum allows you to compete with your friends by linking your score to the ship's central database.

'If you submit to a facial scan to establish identity, type YES.[otherwise]the following riddle:

'You are driving a bus for a Beatles London tour experience. There are fifteen people on the bus. 

'The bus stops, and twelve people get on, while twenty people get off.

'At the next stop, thirteen people get on, while five get off.

'At the next step, the factorial of half the current bus population gets on, while the largest proper factor the now-current population gets off.

'What is the bus driver's name? You can TYPE your answer.[end if]'". Understand "kiosk" or "union" or "jack" or "screen" or "keyboard" or "riddle" as the driver-kiosk.

Instead of saying yes in the presence of the driver-kiosk:
	try typing "yes";

Typing is an action applying to one topic. 

Understand "type [text] " or "enter [text]" as typing when the driver-kiosk is in the location.

Carry out typing:
	if the topic understood matches "no":
		if emrys-ready is false:
			say "The kiosk message briefly changes to say, 'There is no need to opt out of our program. Simply not signing will suffice!'

It then returns to the original message.";
		otherwise:
			say "The kiosk message briefly changes to say, 'I'm sorry. That wasn't a rhetorical question!'";
	otherwise if the topic understood matches "yes":
		if emrys-ready is false:
			say "The kiosk beeps, and a brief flash of light appears as the scan commences.

'Identifying...' says the screen. 

'Emrys Tisserand. You have been inactive for two hundred and fifteen years. Welcome back!'

The screen text then changes to display a riddle.

Two hundred and fifteen years...you're not even that old!";
			now emrys-ready is true;
		otherwise:
			say "The kiosk message briefly changes to say, 'I'm sorry. That wasn't a rhetorical question!'";
	otherwise if the topic understood includes "Emrys":
		if emrys-ready is false:
			say "The kiosk buzzes harshly, not accepting your answer.";
		otherwise:
			say "The kiosk bloops and says, 'Correct! Your score will now be posted to your account.'

Then there is a little tune, and it displays the following message::

'Our automated system has detected a flag in your record for exemplary service at the peril of life and limb. History and Mystery would like to congratulate Emrys Tisserand for her outstanding dedication to the life and well-being of our citizens.'

The kiosk then beeps, and sinks down.

Perhaps they have the wrong Emrys? There's nothing like that in your service record.";
			now the driver-kiosk is nowhere;
	otherwise:
		say "The kiosk buzzes harshly, not accepting your answer.";

Section 4 - The foosball table

The foosball-table is an scenery supporter in sloth-room. The printed name of the foosball-table is "foosball table". Understand "foosball" or "table" or "trojan" or "troy" or "invaders" or "soldier" or "soldiers" or "plastic" or "streets" or "smackdown" or "GreeK" or "greeks" or "trojans" or "war" as the foosball-table. The description of the foosball-table is "This foosball table is designed to look like the walled city of Troy, with the Greek invaders representing one side and the defending Trojans the other. There are three rows of Greeks and three rows of Trojans.

It only has rods on one side, the Greek side. Presumably, the other is computer controlled. It has two goals, one for the player and one for the enemy.

On the side are the following words: 'Welcome to the TROJAN SMACKDOWN! Play against the computer by turning the rods, but watch out for the enemy team! 

'You lose when the enemy gets the ball in your goal. You win when the ball is in the enemy's goal[if the foos-ball is not on foosball-table].'

The ball is currently missing[otherwise if the foos-ball is in player-goal].'

The ball is currently in the player goal[otherwise if the foos-ball is in enemy-goal].'

The ball is currently in the enemy-goal[otherwise].'

 The ball is currently [foos-words][end if]."

Instead of inserting something into the foosball-table:
	try putting the noun on the foosball-table;

Instead of pushing or turning or attacking the foosball-table:
	say "A mechanical voice says, 'PLEASE DO NOT MANHANDLE THE FOOSBALL TABLE.'"

[make one side trojans and one side beatles]

Foos-position is a number that varies. Foos-position is 2.

To say foos-words:
	if foos-position is 3:
		say "near the enemy goal";
	if foos-position is 2:
		say "near the middle of the table";
	if foos-position is 1:
		say "near your own goal";

Instead of putting something on the foosball-table:
	if the noun is not the foos-ball:
		say "That might mess up the table.";
	otherwise:
		say "You drop the ball onto the table.";
		now the foos-ball is on the foosball-table;
		now foos-position is 2;
	
Instead of throwing the foos-ball at a container:
	try inserting the foos-ball into the second noun;
	
Instead of throwing the foos-ball at a supporter:
	try putting the foos-ball on the second noun;
	
The foos-ball is a thing on foosball-table. The printed name of the foos-ball is "white ball". Understand "ball" or "white" as the foos-ball. The description of the foos-ball is "[if the foos-ball is in foosball-table]The white ball in the foosball table is currently [foos-words][otherwise]This white ball belongs to the foosball table[end if].".

Understand "move [something] to [something]" as pushing it to.

Instead of withplaying the foos-ball:
	try attacking the foos-ball;

Instead of attacking the foos-ball:
	say "It works better when you hit it by spinning the rods when it's on the table."

A foos-rod is a kind of thing. Understand "rod" or "rods" as a foos-rod. A foos-rod has a number called foos-pos. The foos-pos of a foos-rod is usually 0. The description of a foos-rod is "The foosball table has three long rods that can be turned to hit the ball with a bunch of little Greek soldiers. This one is the [printed name]."

Does the player mean doing something with the right-rod:
	it is unlikely;

Does the player mean doing something with the middle-rod:
	it is unlikely;

The left-rod is a foos-rod. The left-rod is part of the foosball-table. The printed name of the left-rod is "left rod". Understand "left" as the left-rod. The foos-pos of left-rod is 1.

The right-rod is a foos-rod. The right-rod is part of the foosball-table. The printed name of the right-rod is "right rod". Understand "right" as the right-rod. The foos-pos of middle-rod is 2.

The middle-rod is a foos-rod. The middle-rod is part of the foosball-table. The printed name of the middle-rod is "middle rod". Understand "middle" as the middle-rod. The foos-pos of right-rod is 3.

The left-rod is part of the foosball-table. The right-rod is part of the foosball-table. The middle-rod is part of the foosball-table.

Rodturned is a truth state that varies. Rodturned is false.

After turning a foos-rod (called currentrod):
	if the foos-ball is not on the foosball-table:
		if the foos-ball is in the player-goal:
			say "The ball is still in your goal, you'll have to put it on the table yourself.";
		otherwise:
			say "You can't play until the ball's on the table!";
	otherwise:
		say "The rod spins wildly! ";
		now rodturned is true;
		if the foos-pos of currentrod is the foos-position:
			if a random chance of 1 in 2 succeeds:
				say "You miss!";
			otherwise:
				now foos-position is a random number from 1 to 3;
				say "The ball careens and ends up [foos-words]!";
		otherwise:
			say "You spin the wrong rod. It misses!";
	
Foos-scene is a recurring scene. Foos-scene begins when rodturned is true and the foos-ball is on foosball-table.

FoosOver is a truth state that varies. Foosover is false.

When foos-scene begins:
	now foosover is false;
	say "The ball careens around the table, and the game begins!";
	now foos-position is 2;

Every turn during foos-scene:
	if the player is not in sloth-room:
		now foosover is true;
	if rodturned is false:
		now foosover is true;
	otherwise:
		now foos-position is foos-position minus 1;
		if foos-position is 0:
			now foosover is true;
		otherwise:
			say "The enemy rod spins! The ball is closer to the other end now, [foos-words]!";

Foos-scene ends poorly when foosover is true. Foos-scene ends well when the foos-ball is in enemy-goal. Foos-scene ends abruptly when the foos-ball is not enclosed by the foosball-table.

Instead of going from sloth-room when the foos-ball is enclosed by the player:
	say "A voice from above says robotically, 'Please do not remove the foosball from the foosball table!'"

When foos-scene ends poorly:
	now the foos-ball is in player-goal;
	if the player is not in sloth-room:
		say "You can distantly hear the foosball table reset itself.";
	otherwise:
		say "The enemy rods spin again and the ball slams into your goal. There is a buzz, and a voice says, 'GAME OVER'.

But that's not fair; they went twice!"

When foos-scene ends well:
	win the game;

After inserting the foos-ball into enemy-goal:
	if the foosball-table is not nowhere:
		win the game;

To win the game:
	now foosball-table is nowhere;
	say "A cheery little tune plays! The foosball table rumbles and sinks under the ground, the ground closing seamlessly behind it."

The player-goal is an open unopenable container. The player-goal is part of the foosball-table. The printed name of the player-goal is "player goal". Understand "player" or "sunken" or "sunken-down" or "down" or "area" or "goal" as the player-goal. The description of the player-goal is "The player goal is a sunken-down area of the foosball table near your end of the table".

The enemy-goal is an open unopenable container. The enemy-goal is part of the foosball-table. The printed name of the enemy-goal is "enemy goal". Understand "enemy" or "sunken" or "sunken-down" or "down" or "area" or "goal" as the enemy-goal. The description of the enemy-goal is "The enemy goal is a sunken-down area of the foosball table near your end of the table".

Section 5 - The hideous contraption

Diorama-scene is a scene. Diorama-scene begins when the foosball-table is nowhere and the driver-kiosk is nowhere.

When diorama-scene begins:
	the contraption arises in one minute from now;
	
At the time when the contraption arises:
	say "There is a rumbling, and a hideous contraption arises out of the ground. Disks, wires, and levers abound, and a thick book of instructions is attached to it.";
	now the hideous-contraption is in sloth-room;

Diorama-scene ends when the hideous-contraption is in sloth-room.

Instead of going when diorama-scene is happening:
	say "Something makes you pause."

Does the player mean examining a direction:
	it is very unlikely;

The hideous-contraption is a closed unopenable transparent scenery container. The printed name of the hideous-contraption is "hideous contraption". Understand "hideous" or "contraption" or "glass" as the hideous-contraption. The description of the hideous-contraption is "The contraption has two large platforms, one on the left and one on the right. On the left platform is a stack of three disks labelled Wolf, Goat, and Cabbage, as well as a sealed envelope labelled Alice; on the right are a mail slot labelled Bob and a Rubik's cube. In between them are three posts; on the left post are five increasingly large disks arranged from smallest on top to largest on the bottom, while the other two posts are empty. 

At the center is a tall clock. The clock currently displays [time of day], and says, 'Don't forget! Time is of the essence!'.

All of this is encased in glass. Outside, the only controls are twenty-six levers, one for each letter of the alphabet, and eight wires labelled Earth, Air, Fire, Water, Moon, Tree, Light and Darkness.

There is a thick instruction book hanging down labelled 'MANUAL'.".

Ragequitting is an action applying to nothing. Understand "ragequit" or "rage quit" as ragequitting when the player is in sloth-room.

Carry out ragequitting:
	say "You scream and punch the machine. A sniper laser drone takes you down instantly for destroying private property.";
	end the story saying "You have ragequit.";

The sloth-left is a scenery supporter. The sloth-left is in hideous-contraption. The printed name of the sloth-left is "left platform". Understand "left" or "platform" as the sloth-left. The description of the sloth-left is "The left platform is a flat platform that has [a list of things enclosed by the sloth-left] on it."

The sloth-right is a scenery supporter. The sloth-right is in hideous-contraption. The printed name of the sloth-right is "right platform". Understand "right" or "platform" as the sloth-right. The description of the sloth-right is "The right platform is a flat platform that has [a list of things enclosed by the sloth-right] on it."

The alice-envelope is scenery. The alice-envelope is on the sloth-left. The printed name of the alice-envelope is "sealed envelope". Understand "sealed" or "envelope" or "alice" or "label" or "labelled" as the alice-envelope. The description of the alice-envelope is "The envelope looks quite old; you wonder if anyone has ever beat this puzzle."

The mail-slot is a scenery thing. The mail-slot is in the hideous-contraption. The printed name of the mail-slot is "mail slot". Understand "mail" or "slot" or "label" or "labelled" or "bob" as the mail-slot. The description of the mail-slot is "The mail slot is labelled Bob, and it's on the right platform against the wall."

The rubik-cube is a scenery thing on sloth-right. The printed name of the rubik-cube is "Rubik's cube". Understand "rubik" or "red" or "white" or "blue" or "yellow" or "rubik's" or "stripe" or "cube" as the rubik-cube. The description of the rubik-cube is "This is a Rubik's cube. Right now you can see a red face, a white face, and a blue face with a yellow stripe running through it."

The sloth-clock is distant scenery. The sloth-clock is part of the hideous-contraption. The printed name of the sloth-clock is "tall clock". Understand "tall" or "clock" as the sloth-clock.

The description of the sloth-clock is "The clock says the time is [time of day]."

A sloth-disk is a kind of thing. Understand "disk" or "disks" as a sloth-disk. A sloth-disk is usually scenery. A sloth-disk has some text called the disk-label. The disk-label of a sloth-disk is usually "generic". Understand the disk-label property as describing a sloth-disk. The printed name of a sloth-disk is usually "[disk-label] disk". The description of a sloth-disk is "The disks are all remarkably similar, with only slight differences. This is the [disk-label] disk."

The wolf-disk is a sloth-disk on sloth-left. The disk-label of the wolf-disk is "Wolf".
The goat-disk is a sloth-disk on sloth-left. The disk-label of the goat-disk is "Goat".
The cabbage-disk is a sloth-disk on sloth-left. The disk-label of the cabbage-disk is "Cabbage".

The left-slpost is a scenery supporter. The left-slpost is in hideous-contraption. The printed name of the left-slpost is "left post". Understand "left" or "post" or "posts" as the left-slpost. The description of the left-slpost is "The left post is in between the platforms of the horrible contraption. There are five disks on this post.".
The middle-slpost is a scenery supporter. The middle-slpost is in hideous-contraption. The printed name of the middle-slpost is "middle post". Understand "middle" or "post" or "posts" as the middle-slpost. The description of the middle-slpost is "The middle post is in between the platforms of the horrible contraption. There are no disks on this post".
The right-slpost is a scenery supporter. The right-slpost is in hideous-contraption. The printed name of the right-slpost is "right post". Understand "right" or "post" or "posts" as the right-slpost. The description of the right-slpost is "The right post is in between the platforms of the horrible contraption. There are no disks on this post.".

The biggest-disk is a sloth-disk on left-slpost. The disk-label of the biggest-disk is "biggest".
The big-disk is a sloth-disk on left-slpost. The disk-label of the big-disk is "big".
The medium-disk is a sloth-disk on left-slpost. The disk-label of the medium-disk is "medium".
The small-disk is a sloth-disk on left-slpost. The disk-label of the small-disk is "small".
The smallest-disk is a sloth-disk on left-slpost. The disk-label of the smallest-disk is "smallest".

The letter-levers are plural-named scenery. The letter-levers are part of the hideous-contraption. The printed name of the letter-levers is "letter levers". Understand "letter" or "lever" or "levers" as the letter-levers. The description of the letter-levers is "The collection of letter levers can be configured into any combination you like. You can SET the LEVERS TO any word, as long as it doesn't repeat any letters."

LetterTyping is an action applying to one thing and one topic. 

Understand "set [letter-levers] to [text]" as lettertyping when the hideous-contraption is in the location.

The letterlevertext is some text that varies. 
Tempchecker is a number that varies. Tempchecker is 0.
Firstchar is some text that varies.
Secondchar is some text that varies.

Carry out lettertyping:
	let tempword be the topic understood;
	if the number of words in the topic understood > 1:
		say "You can only set the levers to one word at a time!";
	otherwise:
		now tempchecker is 0;
		let wordlength be the number of characters in tempword;
		repeat with currentnum running from 1 to wordlength:
			repeat with comparenum running from 1 to wordlength:
				now firstchar is the character number currentnum in tempword;
				now secondchar is the character number comparenum in tempword;
				if currentnum is not comparenum:
					if "[firstchar]" matches the text "[secondchar]":
						increment tempchecker;
		if tempchecker > 0:
			say "You can only set the levers to a word without repeated characters!";
		otherwise:
			say "You set the levers to '[the topic understood]'. [randomsloth].

Then the levers reset."

A wire-element is a kind of value. The wire-elements are Earth, Air, Fire, Water, Moon, Tree, Light, Darkness.

A sloth-wire is a kind of thing. A sloth-wire is usually scenery. Understand "wire" or "wires" as a sloth-wire. The printed name of a sloth-wire is usually "wire".

A sloth-wire has a wire-element. Understand the wire-element property as describing a sloth-wire. A sloth-wire is usually earth. After printing the name of a sloth-wire: say " labelled '[wire-element]'". The description of a sloth-wire (called currentwire) is usually "This is a wire labelled [wire-element], attached to the hideous contraption. It can be PULLed."

There is an earth sloth-wire. There is an air sloth-wire. There is a fire sloth-wire. There is a water sloth-wire. There is a moon sloth-wire. There is a tree sloth-wire. There is a light sloth-wire. There is a darkness sloth-wire.

When play begins:
	repeat with current running through sloth-wires:
		now current is part of hideous-contraption;

Instead of pulling a sloth-wire:
	say "You pull [the noun]. [randomsloth]."

To say randomsloth:
	say "You hear the sound of dice rolling. A mechanical hand appears. [one of]It grabs [a random sloth-disk] and begins to pull[or]The hands pick up the envelope and rotate it [a random number from 2 to 5] times[or]It rotates the Rubik's cube's top layer in the counterclockwise direction, and then reverses it[or]The mail slot bangs open and closed repeatedly[in random order]. 

However, a red alarm goes off, and the hands retreat";

Instead of physicality when the noun is letter-levers:
	say "The levers are overwhelmingly complex, but you can SET the levers to anything you want."
	
Before physicality when the noun is a sloth-wire:
	if the current action is not pulling:
		say "There is little you can do with the wires beyond PULLing them." instead;

The contraption-directions are part of the hideous-contraption. The contraption-directions are plural-named. The printed name of the contraption-directions is "instructions". Understand "instruction" or "instructions" or "direction" or "manual" or "directions" or "book" as the contraption-directions. The description of the contraption-directions is "The instructions are firmly attached to the contraption. It is labelled 'MANUAL'. 

Underneath that is printed: 'Please read completely before beginning operation.'"

Instead of opening the contraption-directions:
	try reading the contraption-directions;

Clapping is an action applying to nothing. Understand "clap" or "clap once" as clapping.

Instead of clone-you clapping:
	say "[The clone-you] claps out a pleasing rhythm."

Carry out clapping:
	if the player is emrys-weaver:
		say "You clap briefly. It is not very effective.";
	otherwise:
		say "I didn't clap, Detective. Please, let me continue."

Instead of clapping when the hideous-contraption is enclosed by the location:
	say "You clap, and the whole device contracts and shrinks and rumbles. 

It slowly disappears into the ground while a trombone plays somewhere with a sad, 'Whomp-whomp.'[paragraph break]";
	now the hideous-contraption is nowhere;
	increment prize-level;
	say "A chime rings and a voice says 'Congratulations! Check your progress at the gift shop!'"
	
Instead of looking under the lennon-bed:
	say "There are no monsters under Lennon's bed.";

Instead of reading the contraption-directions:
	say "[one of]The first page reads: 'Welcome to the most difficult puzzle available at History and Mystery! Before we begin, we'd like to thank our sponsors: HoloPsych, the world's greatest provider of holo-room psychology!

'Do you ever get down? Frustrated? Angry? HoloPsych is there for you! Try one of our over six hundred therapy solutions today! Get your cry on at Wild West Weeping! Have some casual conversation with cavemen in the Prehistoric Parlorroom!

'Sign up Today! 1/6'[or]The second page says, 'So you want to figure out how this contraption works. More power to you!

'To begin, you need to understand the original Goat, Wolf, and Cabbage puzzle. This puzzle has been found dating back thousands of years and has appeared in multiple cultures. The idea is that a fisherman must cross a river while carrying a goat, a wolf, and a cabbage, but can only take one at a time. The goat can't be left with the wolf, and the cabbage can't be left with the goat! How can the farmer get all three items across the river? Well, that's your problem! 2/6'[or]The third page says, 'Did you know the Rubik's cube was invented was invented in 1974. It was one of the most popular puzzle items of all time until its ban in 2080. Since being reintroduced, the Rubik's cube has once again become one of the hottest items on the market! Many people have memorized algorithms for solving the Rubik's cube. Hope you're one of them! 3/6'[or]The fourth page says, 'Keyboards originally were just a collection of levers for typewriters. So we thought, why not use levers to spell words?

'Unfortunately, you can't represent multiple words at once or words that re-use letters this way, but that shouldn't be a problem for you! 4/6'[or]The fifth page says, 'You may be wondering about the wires. You may ask yourself, Are they based on the ancient Greek elements? The Chinese elements? Or the elements in the hit 1990[']s JRPG Secret of Mana (later made famous as an ice skating musical)? Ah, you got us!'

'The wires are some of the most complex items on this contraption. Their purpose is a complete mystery...or is it? 5/6'[or]The final page says, 'Thanks for reading this far! This contraption does nothing. You can solve it by clapping, once. 6/6'[cycling]."

Chapter 9 - Wax Entrance

The wax-entrance is a room. The wax-entrance is in wax-region. The printed name of the wax-entrance is "Entrance". The description of the wax-entrance is "You are standing in a long metallic hallway. To the [boldnorth], the hallway opens up and leads to a set of double doors. Above them in a font that looks half-melted are painted the words 'MYSTERY AND HISTORY'.

To the [boldsouth] is [a captain-tear], glowing [if the captain-tear is red-torn]red[otherwise]green[end if]. It blocks the rest of the hallway[one of], hemming you in.

Something else must have been here just moments ago, as the double doors[doorsopen] have swung open, making [a closed-sign] on the doors flutter in the wind[or]. Other than that, there are no sounds around you, no movement, no signs of any human life[stopping]."

To say doorsopen:
	now the wax-doors are open;

The wax-doors are a plural-named scenery closed openable door. The wax-doors are south from pride-room and north from wax-entrance. The printed name of the wax-doors is "double doors". Understand "double" or "doors" or "bar" or "window" or "tinted" or "door" as the wax-doors. The description of the wax-doors is "These double doors are the main entrance to Mystery and History. Each has a bar and a tinted window."

Instead of searching the wax-doors:
	say "You can't see anything through the door."

Every turn when wax-doors was open:
	now wax-doors are closed;
	if the player can see the wax-doors:
		say "The double doors swing closed."
	
The melted-words are plural-named distant scenery in wax-entrance. The printed name of the melted-words is "painted words". Understand "mystery" or "and history" or "history" or "melted" or "word" or "words" or "name" or "store" or "name of" or "font" or "paint" or "painted" as the melted-words. The description of melted-words is "This looks like the name of a store. The words 'MYSTERY AND HISTORY' are painted in a font that looks like melted letters."

The closed-sign is in wax-entrance. The printed name of the closed-sign is "paper sign". Understand "closed" or "paper" or "sign" or "tape" or "taped" as the closed-sign. "There is a sign on the door that says, 'CLOSED'." The description of the closed-sign is "The sign is made of paper and taped to the door. It says 'CLOSED' on it."

Instead of taking the closed-sign:
	say "It looks important; it might be best not to take it. Besides, it will keep other people from coming in."

Chapter 10 - Back office

[This stuff will be added later: the secret second section]
[I don't think we actually need this second section, this is already a really big section]
[instead, this is just the shortcut to the other dimensions. Include the wax figure of you here!]

The wax-office is in wax-region. "This is a not-yet implemented room. It has a wax figure of you in it! And links to other stuff later on. Not important for this part of the game."

Emrys-figure is a wax-figure in wax-office. The printed name of the emrys-figure is "wax figure of you". Understand "of you" or "you" or "emrys" or "tisserand" as the emrys-figure.

Part 2 - Ecocosm dimension

The ecocosm-region is a region.

[Make this one associated to a child who is hiding in a dangerou place out of fear, and won't come out at all. Maybe all the animals join you for a moment that the child can see through belief?]

Chapter 1 - Savannah

Savannah-room is a room in the ecocosm-region. The printed name of Savannah-room is "Savannah". "This area is not yet finished."

The wasphawk-bottle is in savannah-room.

Part 3 - Tool dimension

The tool-region is a region.

Chapter 1 - Main room

Device-room is a room in the tool-region. The printed name of Device-room is "The Device". "This room is dominated by a single, big, complex device. There is a hallway leading [boldnorth]."

The strange-device is scenery in the device-room. The printed name of the strange-device is "strange device". Understand "strange" or "device" as the strange-device. 

[one part of the device section could be where you get miniaturized and have to use NESW commands. You don't get miniaturized, but you control a robot or miniaturized avatar]

Chapter 2 - Tool room

Tool-room is a room in the tool-region. Tool-room is north from device-room. The printed name of tool-room is "Tool Room". "This bare room contains a single black pedestal. You can return to the device room to the [boldsouth]."

The tool-pedestal is an enterable scenery supporter in the tool-room. The printed name of the tool-pedestal is "pedestal". Understand "single" or "simple" or "black" or "pedestal" as the tool-pedestal. The description of the tool-pedestal is "This is a solid black pedestal whose sole purpose seems to be display."

Section 1 - The curious tool itself

[setttings could include counting number of life forms in the area, altering electronics, breaking glass, unscrewing]

[Make its first setting beep whenever there is an energy core, and put energy cores in quiet areas of the game.]

The curious-tool is on the tool-pedestal. The printed name of the curious-tool is "curious tool". Understand "curious" or "tool" or "cylinder" or "lockpick" or "flashlight" as the curious-tool. The description of the curious-tool is "This is a cylindrical device with a dial at one end. The dial is currently set to [tool-mode of the curious-tool]. The available settings are inert, lockpick and flashlight."

The tool-dial is part of the curious-tool. Understand "dial" as the tool-dial. The printed name of the tool-dial is "dial". The description of the tool-dial is "The dial is currently set to [tool-mode of the curious-tool]. The available settings are inert, lockpick and flashlight."

Tool-Mode is a kind of value. The tool-modes are inert, lockpick and flashlight. The curious-tool has a tool-mode. The curious-tool is inert. 

Understand "set [curious-tool] to [a tool-mode]" or "turn [curious-tool] to [a tool-mode]" or "set [tool-dial] to [a tool-mode]" or "turn [tool-dial] to [a tool-mode]" as tuning it to. Tuning it to is an action applying to one thing and one tool-mode. 

Instead of setting the curious-tool to something: 
	say "The available settings are inert, lockpick and flashlight." 

Check tuning it to: 
	if the noun is not the curious-tool and the noun is not the tool-dial, say "Only the curious tool can be set to [the tool-mode understood]." instead. 

Carry out tuning it to: 
	now the tool-mode of the curious-tool is the tool-mode understood. 

Report tuning it to: 
	say "You set [the noun] to [tool-mode understood].";
	if the curious-tool is lockpick:
		repeat with current running through lockable doors:
			now curious-tool unlocks current;
		now curious-tool unlocks treasure-case;
		now curious-tool unlocks arthur-briefcase;
		say "[bracket]To use the lockpick, simple UNLOCK a locked door WITH the tool.[close bracket][line break]";
	otherwise:
		repeat with current running through lockable doors:
			now curious-tool does not unlock current;
		now curious-tool does not unlock treasure-case;
	if the curious-tool is flashlight:
		now curious-tool is lit;
		say "The tool brightens up the surrounding area considerably.";
	otherwise:
		now curious-tool is not lit;

AtPointing is an action applying to one carried thing and one thing. Understand "point [something] at [something]" as atpointing.

To happen is a verb.

Carry out atpointing:
	if the noun is the curious-tool:
		if the tool-mode of the curious-tool is flashlight:
			say "You point the flashlight at [the second noun].";
		otherwise:
			say "Nothing [adapt the verb happen].";
	otherwise:
		say "Nothing [adapt the verb happen].";

Part 4 - Garden dimension

The garden-region is a region.

[maybe include journal pages here for fun?]

[Make this more down to the earth than the others. real 'muse' vibes. Maybe even nothing fantastical, just straightforward gardening.]

[Maybe a truman show moment when the ceiling starts fizzing out.]

[could even involve running a vegetable stand. or just magic plants like before.]

[or could be babel-like lab with paper reports from the mytserious queen we see later on]

Chapter 1 - Vegetable room

The Vegetable-room is a room in the garden-region. The printed name of Vegetable-room is "Vegetable Garden".

Part 5 - World Monuments dimension

The monument-region is a region.

Chapter 1 - Eiffel tower room

The Eiffel-room is a room in monument-region. The printed name of Eiffel-room is "Eiffel Tower".

Part 6 - Haunted Mansion dimension

The haunted-region is a region.

[Characters:
	Dracula
	mummy
	frankenstein's monster
	creature from the black lagoon
	poltergheist
	yeti]

[maybe each one asks you a serious psychological question when you complete their quest? or a clever psych-related quip?]

A token is a kind of thing. Understand "token" as a token. Understand "token" or "round" or "disk" or "depiction" or "waxworks" or "reverse" as a token. 

Before listing contents:
	group tokens together;
	
Before grouping together tokens:
	say "some ";

Rule for printing the name of a token (called currenttoken) while grouping together:
	let temp be the printed name of currenttoken;
	say word number 1 in temp;

After grouping together tokens:
	say " tokens";

A token has some text called the token-target. The token-target of a token is usually "Frankenstein".

The description of a token is usually "This is a round disk with a depiction of [the token-target of noun] on it. On the reverse, it says 'WAXWORKS'."

Chapter 1 - Parlor

The Parlor-room is a room in haunted-region. The printed name of Parlor-room is "Frankenstein's Parlor".

The description of Parlor-room is "This room, once a spacious entryway, is dominated by a broad and sturdy trophy case filled with a variety of treasures, of which [treasureslist] particularly stick out to you. The walls are dark wood, old and warped. You can go outside to the [boldsouth], or deeper into the building to the [boldnorth]."

The warped-walls are scenery in parlor-room. The printed name of the warped-walls is "dark walls". Understand "warped" or "wood" or "old " or "dark" as the warped-walls. The description of the warped-walls is "It seems these walls have not been taken care of in a long time, having dried and warped over time. How long has Frankenstein been living here?"

Instead of touching the warped-walls:
	say "The warped old walls feel rough and knobbly under your fingers".
	
Instead of tasting the warped-walls:
	say "It is bitter-bitter, because they are walls, and because they are warped."

To say treasureslist:
	let L be a list of things;
	now L is the list of things enclosed by treasure-case;
	sort L in random order;
	truncate L to 3 entries;
	say "[L with indefinite articles]";

Section 1 - Frankenstein

[maybe frank is a kleptomaniac, like a zork treasurer? psychology is envy/greed/idolatry]

[frank can give you the glasses, but only if you have the right conversation topic. He really wants the treasures across the river, which is like the zork underworld.]

Understand "man" as a man. Understand "woman" as a woman.

Frankenstein is a man in Parlor-room. "A tall man with pale, translucent skin and black lips is standing nearby with an avaricious look in his eye. He has a nametag on his overalls that says, 'Frankenstein'. He is holding [a list of things carried by Frankenstein][first time]. 

Did that say, 'Frankenstein'? You have many questions[deliverfrankstuff][only]." The description of Frankenstein is "This is a very tall man. He has translucent skin, with a dark web of blood vessels underneath, and black lips. He wears overalls with a nametag that says 'Frankenstein: Treasure Collector'. He keeps glancing over at you with a greedy look in his eye.". Understand "Frank" or "tall" or "creature" or "monster" or "translucent" or "skin" or "web" or "pale" or "blood" or "vessels" or "vessel" or "corpse" or "avaricious" or "eye" or "corpse-like" as Frankenstein.

The frank-overalls are plural-named thing worn by frankenstein. The printed name of the frank-overalls is "overalls". Understand "overalls" as the frank-overalls. The description of the frank-overalls is "These seem poorly stitched together."

The frank-nametag is worn by frankenstein. The printed name of the frank-nametag is "nametag". Understand "nametag" or "name" or "tag" as the frank-nametag. The description of the frank-nametag is "The name on the tag is 'Frankenstein: Treasure Collector'."

To say deliverfrankstuff:
	deliver franken-name;
	deliver franken-confusion;
	
Report examining something carried by frankenstein:
	say "Frankenstein says, 'I see you eyeing my [noun]. If you have some treasure, I'd be happy to make a trade.'"

Understand "trade [something] with/to [someone]" as giving it to.

Franken-name is a quip. The printed name of Franken-name is "Creator". Understand "creator" as Franken-name. The preview of Franken-name is "Isn't Frankenstein the name of your creator?"  The target of Franken-name is Frankenstein.

The TargetResponse of Franken-name is "The great creature sighs in response. 'That's a common misconception. In fact, [italic type]I[roman type] am Frankenstein, and my creator is technically known as Frankenstein's Scientist.'"

Franken-confusion is a quip. The printed name of Franken-confusion is "Confusion". Understand "confusion" as Franken-confusion. The preview of Franken-confusion is "What is this place?"  The target of Franken-confusion is Frankenstein.

The TargetResponse of Franken-confusion is "Frankenstein says, 'Welcome to 'Monsters Inside', Miss...' he pauses, looking at you quizzically.

'Emrys Tisserand,' you respond.

He rolls his eyes. 'Oh, geez, I've heard that one before. Real funny. Okay, Miss [']Tisserand['], as you read in your consent form and waiver, [italic type]Monsters Inside[roman type] is a therapeutic aid only and not an actual treatment for any disease or condition. We are not liable for any damage you may incur during your stay. To complete your training, you'll need to help out each monster inside these walls. In return, we'll give you...' he fishes something out of his pocket and waves it around, continuing, '...exciting tokens!'

'What do I do with the tokens?' you ask. 'And I'm not sure I filled out any waivers.'

He rubs his forehead in dismay. 'Man, I swear, the people I get these days. Listen, no one's ever gotten hurt here, you'll be fine. Just take the tokens. You get enough of them, you can show them to corporate or something and get credit for professional development. If you get all of them, you can process them into payment to get over the river. Although our payment processor for tokens is missing; we left it at our old location.'

He puts the token back out of sight, a little embarassed, and says, 'Anyway, I'm going to default mode now. I'll leave you to it.'

His face alters subtly, becoming more mechanical, and assumes a greedy expression. 'Welcome, traveller. If you find any treasure, let me know; I'm quite the collector.'

'Will you give me your token if I give you treasure?' you ask.

He grins greedily, and says, 'No. But I'll give you something of mine. To get my actual token, you must say the magic word[delivermagic].'"

The disguised-glasses are a thing carried by Frankenstein. The description of the disguised-glasses is "This is a long staff with two prongs in the middle and what look like large shield-shaped pieces of glass on both ends. The pieces of glass refract everything seen through them." Understand "long" or "staff" or "prongs" or "prong" or "staff" or "staves" or "glass" or "shield" or "unusual" or "staff" or "shield-shaped" or "piece" or "pieces" as the disguised-glasses. The printed name of the disguised-glasses is "unusual staff".

Instead of searching the disguised-glasses:
	say "Everything looks closer through the glasses, but it doesn't help see anything better. In fact, it makes your head ache."

The creature-glasses are a plural-named thing. The printed name of the creature-glasses is "giant glasses". Understand "glasses" or "giant" or "cute" or "curious" or "staff" as the creature-glasses.

The description of the creature-glasses is "These glasses are quite cute when perched upon the giant creature."

Before showing something to frankenstein:
	if the noun is not a token:
		say "'Looks very interesting,' he says. 'If you give it to me, we can make a trade.'" instead;
	otherwise:
		say "Frankenstein looks a little jealous of your token."

A thing can be oncefrankheld or not oncefrankheld. A thing is usually not oncefrankheld.

Every turn when the player is in parlor-room:
	repeat with current running through things held by frankenstein:
		now current is oncefrankheld;

Instead of giving something to frankenstein:
	if the noun is the all-recorder:
		say "That can't be removed from you.";
	otherwise if the noun is a token:
		say "Frankenstein sniffs and says, 'No tokens.'";
	otherwise if the noun is oncefrankheld:
		let current be a random thing carried by Frankenstein;
		say "'Hmm, fine, I'll take it back,' says Frankenstein. 

	He grabs [the noun] from you and hands you [the current].";
		now current is carried by the player;
		now the noun is carried by Frankenstein;
	otherwise:
		let current be a random thing carried by Frankenstein;
		say "Frankenstein says, 'Ooh, what's this? Is it valuable?'

	He grabs [the noun] from you and hands you [the current].";
		now current is carried by the player;
		now the noun is carried by Frankenstein;

Instead of taking something that is carried by Frankenstein:
	say "Frankenstein backs away and says, 'Hey! I won't give up anything without a fair trade! You give me something, I give you [the noun]. That's how it works!'";

Instead of asking Frankenstein for something carried by Frankenstein:
	try taking the second noun;

Instead of giving the disguised-glasses to the lagoon-creature:
	now the disguised-glasses are nowhere;
	say "You call out to the creature, saying 'Hey! I have your glasses!' and hold them out.

The creature grasps them gently and fixes them on her nose. Ignoring you, she lays back down and looks up at the night sky.

'That's better,' she says, musingly. 'It's still dark outside, but now I can see the stars, and that's enough for me.'

She slides a finger along her shoulder, and a scale flakes off and lands next to you. Actually, it seems like it's not a scale, but a blue token!";
	now the lagoon-stars are in bath-room;
	now the blue-token is in bath-room;
	now the creature-glasses are worn by the lagoon-creature;

Report examining the blue-token for the first time:
	say "Hmm, it seems it wasn't a scale after all.";

Section 2 - Frank's stuff

The treasure-case is scenery in Parlor-room. The treasure-case is a closed, locked, openable lockable transparent container. The printed name of the treasure-case is "treasure case". Understand "treasure" or "broad" or "sturdy" or "treasures" or "variety" or "case" or "cabinet" or "glass" as the treasure-case. The description of the treasure-case is "This is a large glass cabinet that contains a variety of treasures. It contains [a list of things enclosed by treasure-case]."

After unlocking the treasure-case with the curious-tool:
	say "You unlock the treasure case.

Frankenstein looks at you in horror. 'Excuse me, just who do you think you are?' he asks, then stands in front of the case. 'Stop touching that.'"
	
Instead of opening the treasure-case when the treasure-case is unlocked:
	say "'No.' says Frankenstein firmly, interposing himself."

Instead of attacking the treasure-case:
	say "Frankenstein would be very upset if you destroyed his precious treasure case!"

A parlor-treasure is a kind of thing. Parlor-treasure is usually scenery. Understand "treasure" as parlor-treasure.

The GoldNugget-treasure is parlor-treasure in treasure-case.
The Jewelry-treasure is ambiguously plural parlor-treasure in treasure-case. The indefinite article of jewelry-treasure is "some".
The Coins-treasure is plural-named parlor-treasure in treasure-case.
The Silver-treasure is ambiguously plural parlor-treasure in treasure-case. The indefinite article of silver-treasure is "some".
The Diamonds-treasure is plural-named parlor-treasure in treasure-case.
The TreasureChest-treasure is parlor-treasure in treasure-case.
The Rug-treasure is parlor-treasure in treasure-case.
The MingVase-treasure is parlor-treasure in treasure-case.
The Emerald-treasure is parlor-treasure in treasure-case.
The Pyramid-treasure is parlor-treasure in treasure-case.
The Pearl-treasure is parlor-treasure in treasure-case.
The GoldChain-treasure is parlor-treasure in treasure-case.
The Spices-treasure is plural-named parlor-treasure in treasure-case.
The GoldenEggs-treasure is plural-named parlor-treasure in treasure-case.
The Trident-treasure is parlor-treasure in treasure-case.

The printed name of GoldNugget-treasure is "gold nugget".
The printed name of Jewelry-treasure is "jewelry".
The printed name of Coins-treasure is "coins".
The printed name of Silver-treasure is "silver".
The printed name of Silver-treasure is "silver".
The printed name of Diamonds-treasure is "diamonds".
The printed name of TreasureChest-treasure is "treasure chest".
The printed name of Rug-treasure is "rug".
The printed name of MingVase-treasure is "Ming vase".
The printed name of Emerald-treasure is "emerald".
The printed name of Pyramid-treasure is "pyramid".
The printed name of Pearl-treasure is "pearl".
The printed name of GoldChain-treasure is "gold chain".
The printed name of Spices-treasure is "spices".
The printed name of GoldenEggs-treasure is "golden eggs".
The printed name of Trident-treasure is "trident".

Understand "nugget" or "gold" as GoldNugget-treasure.
Understand "jewelry" or "cursed" as Jewelry-treasure.
Understand "coins" or "coin" as Coins-treasure.
Understand "silver" as Silver-treasure.
Understand "diamonds" or "diamond" as Diamonds-treasure.
Understand "chest" or "treasure" as TreasureChest-treasure.
Understand "rug" as Rug-treasure.
Understand "vase" or "Ming" as MingVase-treasure.
Understand "emerald" as Emerald-treasure.
Understand "pyramid" as Pyramid-treasure.
Understand "pearl" as Pearl-treasure.
Understand "chain" or "gold" as GoldChain-treasure.
Understand "spices" or "spice" as Spices-treasure.
Understand "eggs" or "egg" or "golden" as GoldenEggs-treasure.
Understand "trident" as Trident-treasure.

The description of GoldNugget-treasure is "Frankenstein sees you looking, and says, 'Oh, that? I won that gold nugget in a poker game against thirteen dwarves.'".
The description of Jewelry-treasure is "Frankenstein sees you looking, and says, 'Oh, you like the jewelry? I think it's cursed; I stopped loaning it to friends after five of them died.'".
The description of Coins-treasure is "Frankenstein sees you looking, and says, 'Oh, you like my coins? I made them myself with some extra metal I had.'

'Isn't that counterfeiting?' you ask.

'What's counterfeiting?' asks Frankenstein, puzzled.

'Never mind,' you say.".
The description of Silver-treasure is "Frankenstein sees you looking, and says, 'Oh, do you like silver? I found it inside a portal to the underworld.'".
The description of Diamonds-treasure is "Frankenstein sees you looking, and says, 'Oh, you're looking at the diamonds. A wizard summoned them to attack me. Don't worry, they're no longer animate.'".
The description of TreasureChest-treasure is "Frankenstein sees you looking, and says, 'Oh, do you like the treasure chest? I never got it open; it might be a mimic in a coma. Who knows.'".
The description of Rug-treasure is "Frankenstein sees you looking, and says, 'Oh, do you like the rug? It was the craziest thing. I was in a living room with a trapdoor in it, and lifted it up. Underneath was a rug! What are the chances?'".
The description of MingVase-treasure is "Frankenstein sees you looking, and says, 'Oh, you like my Ming vase? My friend Ming made it.'".
The description of Emerald-treasure is "Frankenstein sees you looking, and says, 'Oh, the big emerald has caught your eye. It was dropped by a grue I was chasing.'".
The description of Pyramid-treasure is "Frankenstein sees you looking, and says, 'Ah, the pyramid. Said to provide wisdom. I think.'".
The description of Pearl-treasure is "Frankenstein sees you looking, and says, 'Oh, the pearl. I had to wrestle a clam to get that!'".
The description of GoldChain-treasure is "Frankenstein sees you looking, and says, 'Oh, the gold chain. That was just part of a phase when I was younger.'".
The description of Spices-treasure is "Frankenstein sees you looking, and says, 'Oh, you like the spices? Probably moldy by now, but you never know when you might need them.'".
The description of GoldenEggs-treasure is "Frankenstein sees you looking, and says, 'Oh, the golden eggs? I plan on making a golden omelet some day.'".
The description of Trident-treasure is "Frankenstein sees you looking, and says, 'Oh, the trident? Yeah, I was trying to buy chewing gum and they gave me this instead.'".

To say makepast:
	now the story tense is past tense;

To say makepresent:
	now the story tense is present tense;

[add some variations to the above]

Section 3 - XYZZYStein

To say delivermagic:
	deliver Franken-magic;

Franken-magic is a quip. The printed name of Franken-magic is "Polite". Understand "polite" as Franken-magic. The preview of Franken-magic is "I have to say the magic word? Okay...Please may I have your token?"  The target of Franken-magic is Frankenstein.

The TargetResponse of Franken-magic is "Frankenstein wags his finger, and says, 'That's not the magic word I'm looking for. I wouldn't make it that easy; I want to keep my token!'

He leans in and whispers. 'But I promise that I'll be fair. You can find the magic word somewhere in this house. Don't worry, you'll know it when you see it!'"

To say deliverxyzzy:
	deliver xyzzy-stein;

xyzzy-stein is a quip. The printed name of xyzzy-stein is "XYZZYstein". Understand "xyzzystein" as xyzzy-stein. The preview of xyzzy-stein is "The magical word is...XYZZYstein!" The target of xyzzy-stein is Frankenstein.

[xyzzysteining is an action applying to nothing. Understand "xyzzystein" or "say xyzzystein" as xyzzysteining. ]

The targetresponse of xyzzy-stein is "Frankenstein jolts up and stares at you, saying 'How did you--where did you see that?'

He sits down and sulks for an uncomfortably long time, then says 'Fine. You can have the token.' He digs into his pocket and pulls out a green token, which he hands you[tokendeliver].";

To say tokendeliver:
	now the green-token is carried by the player;
	now the description of Frankenstein is "This is a very tall man. He has translucent skin, with a dark web of blood vessels underneath, and black lips. He wears overalls with a nametag that says 'Frankenstein'. He looks a little glum right now, after having to give up his token."

The green-token is a token. The printed name of the green-token is "green token". Understand "green" as the green-token. The token-target of green-token is "Frankenstein".

Chapter 2 - Grand Hall

The Grand-room is a room in haunted-region. "This vast room is lined with heavy sandstone blocks, stretching far higher than you thought possible. Passageways lead [boldnorth], [boldsouth], [boldeast], and [boldwest], and wide stairs in either corner lead [bold type]up[roman type]." The printed name of Grand-room is "Pharaoh's Hall".

The Grand-room is north of the Parlor-room. The grand-room is inside from the parlor-room.

The Grand-blocks are plural-named scenery in the Grand-room. The printed name of the Grand-blocks is "sandstone blocks". Understand "wall" or "walls" or "sandstone" or "block" or "blocks" or "heavy" or "stone" or "sand stone" as the Grand-blocks. The description of the grand-blocks is "These blocks look incredibly heavy. How they were brought here, you can't fathom."
	
Withtaking it with is an action applying to two things. Understand "take [something] with [something preferably held]" as withtaking it with.

Carry out withtaking it with:
	try taking the noun;

A Grand-passageway is a kind of thing. A Grand-passageway is usually scenery. The description of a Grand-passageway is usually "This majestic passageway is so long that you can't see what lies beyond it". Understand "passage" or "passageway" or "way" as a Grand-passageway.

The Grand-north is a Grand-passageway in the Grand-room. The printed name of the Grand-north is "north passageway". Understand "north" as the Grand-north.

Instead of entering the Grand-north: try going north;

The Grand-east is a Grand-passageway in the Grand-room. The printed name of the Grand-east is "east passageway". Understand "east" as the Grand-east.

Instead of entering the Grand-east: try going east;

The Grand-south is a Grand-passageway in the Grand-room. The printed name of the Grand-south is "south passageway". Understand "south" as the Grand-south.

Instead of entering the Grand-south: try going south;

The Grand-west is a Grand-passageway in the Grand-room. The printed name of the Grand-west is "west passageway". Understand "west" as the Grand-west.

Instead of entering the Grand-west: try going west;

[we're going to have a missing cat in this room. Your job is to find the pharaoh's cat]

Section 1 - Pharaoh

The Pharaoh is a man in Grand-room. "A mummy is here, adorned with gold, lapis lazuli and turquoise jewelry that constrast with his threadbare linen bandages. [if pharaoh is not fullcatfound]He is walking gravely around the room, seemingly troubled[end if][first time][deliverpharaoh][only]." The description of Pharaoh is "The mummified Pharaoh is a towering figure that looms over you, making you shrink away a bit. He is covered in tightly-wrapped linen bandages, yellowed with age, and is covered in bracelets and jewels made of lapis lazuli, turquoise, and beaten gold[if absent-quip is targetgiven].

He's still waiting for you to find his cat[end if]."

The pharaoh-jewels are worn by pharaoh. The pharaoh-jewels are plural-named. Understand "bracelet" or "beaten" or "gold" or "jewel" or "lapis" or "lazuli" or "turquoirse" or "jewelry" or "jewels" or "bracelets" as the pharaoh-jewels. The printed name of the pharaoh-jewels is "jewels". The description of the pharaoh-jewels is "The jewels look priceless to you, and are of such fine craftmanship it makes you want to cry. "

The tightly-wrapped linen bandages are worn by pharaoh. Understand "magnificent" or "yellow" or "yellowed" or "threadbare" or "age" as the tightly-wrapped linen bandages. The description of the tightly-wrapped linen bandages is "While these bandages are yellowed and aged, they appear to have once been magnificent."

Understand "mummy" or "mummified" or "towering" or "figure" as Pharaoh.

Section 2 - Variables and quips

The cat-level is a number that varies. The cat-level is 0. 

To say deliverpharaoh:
	deliver pharaoh-hello

Pharaoh-hello is a quip. The printed name of Pharaoh-hello is "Problem". Understand "problem" as Pharaoh-hello. The preview of Pharaoh-hello is "What's wrong?"  The target of Pharaoh-hello is Pharaoh.

The TargetResponse of Pharaoh-hello is "His voice comes like the sound of a massive but distant sandstorm. 'I can't find my cat,' he says. 'Please. She likes to play games, but I'm worried she might be actually lost. It's just tearing me up inside. I know she's not here in our room. Can you find her[deliverabsent]?'"

The pharaoh can be introduced or not introduced. The pharaoh is not introduced.

To say deliverabsent:
	deliver absent-quip;
	now the pharaoh is introduced;

Absent-quip is a quip. The printed name of absent-quip is "Absent". Understand "absent" as absent-quip. The preview of absent-quip is "What can you tell me about your missing cat?" The target of absent-quip is pharaoh. 

The targetresponse of absent-quip is "The pharaoh says, 'Her name is Miut. It's time for her meal, but she's so hard to track down....Please find her! She hides under things, and she loves...organs. Hearts. Teeth.'

'That's...pretty weird. But I'll try to find her,' you say.

'Thank you,' he says, and resumes his tormented walking."

A cat-ghost is a kind of animal. A cat-ghost is seldom talkative.

A cat-ghost can be catfound or uncatfound. A cat-ghost is usually uncatfound. Understand the catfound property as describing a cat-ghost. Understand "cat" or "ghost" as catfound. Understand "sound" or "whisper" or "whispering" or "sand" or "sands" as uncatfound.

The printed name of a cat-ghost is "[if the noun is uncatfound]sound of whispering sand[otherwise]cat ghost[end if]". 

Instead of doing something with a catfound cat-ghost:
	say "The cat isn't here anymore."

To resolve (currentcat - a cat-ghost):
	if the pharaoh is introduced:
		if currentcat is uncatfound:
			increment cat-level;
			if cat-level is 1:
				say "[conditional paragraph break]You spy a little cat-shaped shadow, but it's already slipping away. It seems like the cat wants to play; where could she be now?";
				deliver sawcatonce-quip;
			otherwise if cat-level is 2:
				say "[conditional paragraph break]There's the cat again! This time you see a transparent little tail as it slips away. You're getting close.";
			otherwise if cat-level is 3:
				say "[conditional paragraph break]You've found the cat! A ghostly little feline, looking tired and curled up in a ball. She stretches, gets up and walks through the wall.

	You can hear the Pharaoh's pleased voice in the other room.";
			otherwise:
				say "Dang, you found four cats and there are only three in this game. That's a bug! Feel free to report it!";
		now the currentcat is catfound;
		if cat-level is 3:
			now pharaoh is fullcatfound;
			if Sawcatonce-quip is not targetgiven:
				remove Sawcatonce-quip;

Sawcatonce-quip is a quip. The printed name of Sawcatonce-quip is "Chasing". Understand "chasing" as Sawcatonce-quip. The target of Sawcatonce-quip is Pharaoh. The preview of Sawcatonce-quip is "I saw your cat, but I'm still trying to catch her!"

Targetresponse of Sawcatonce-quip is "The Pharaoh nods gravely and says, 'Excellent, thank you for your help. She can be so mischievous.'

He seems somewhat happier than before, though still glum."

Pharaoh can be fullcatfound or not fullcatfound. Pharaoh is not fullcatfound.

Report looking in grand-room when pharaoh is fullcatfound:
	if the grand-mounds are in grand-room:
		say "As you enter the room, you hear a loud mewing. The ghost-cat Miut has found Pharaoh at last, and he is smiling and holding her close. Then she fades away in his arms, sinking into his chest.

	'Thank you,' says Pharaoh. 'I usually keep her memory in my heart, but I let her slip away for a time.' The sand that was moving around the room dissipates. Pharaoh himself crumbles into dust, which fades away.

	One of the gold disks that was decorating him falls to the ground. Also, with the sand gone, the way up the stairs is now open.";
		now pharaoh is nowhere;
		now the grand-mounds are nowhere;
		now the grand-whisper is nowhere;
		now the gold-token is in Grand-room;
	
The gold-token is a token. The token-target of gold-token is "Pharaoh". The printed name of the gold-token is "gold token". Understand "gold" or "pharaoh" as the gold-token. 

Every turn when the player is not in grand-room:
	if absent-quip is targetgiven:
		now onceleftpharaoh is true;

Onceleftpharaoh is a truth state that varies. Onceleftpharaoh is false.

Every turn when the player is in grand-room:
	if onceleftpharaoh is true:
		if absent-quip is targetgiven:
			if pharaoh is in grand-room:
				if Sawcatonce-quip is not targetgiven:
					if a random chance of 1 in 3 succeeds:
						say "[one of]The pharaoh says, 'Please, have you found my cat yet?'[or]The pharaoh sighs.[cycling]";

Section 3 - Sand mounds

The Grand-mounds are a plural-named thing in the Grand-room. "Behind the mummy, great mounds of sand slowly shift and slither, blocking the staircase above. They make a sound like a thousand whispering souls that makes you shiver with dread." The printed name of the Grand-mounds is "mounds of sand". Understand "mounds" or "sand" or "mound" or "mounds of sand" or "mound of sand" or "great" as the Grand-mounds. The description of the grand-mounds is "The sand moves like a living thing, whispering around the room."

Instead of entering the grand-mounds:
	say "That would be inviting death.";
	
Instead of searching the grand-mounds:
	say "No cat in here!";

The Grand-whisper is an intangible scenery in the Grand-room. The description of the Grand-whisper is "This is the dread sound of thousands of whispering souls, lamenting for a great loss." The printed name of the Grand-whisper is "whisper of lost souls". Understand "whisper" or "lost" or "souls" or "whispering" or "dread" or "sound" as the Grand-whisper.

Instead of taking the Grand-mounds:
	say "The sand slips through your fingers.".

Instead of touching the Grand-mounds:
	say "The sand makes you shiver as it slips over your hands. It's unnerving."

Shivering is an action applying to nothing. Understand "shiver" as shivering.

To tremble is a verb. To know is a verb.

Carry out shivering:
	say "[We] [adapt the verb tremble], but with what emotion, [we] [adapt the verb know] not."

Instead of listening to the Grand-whisper:
	say "The lost souls are saying, 'We will never give you up, we will never let you down.....' You shiver in fear." 

[Emotion here is grief]

Chapter 3 - Library

The Library-room is a room in haunted-region. The printed name of Library-room is "Dracula's Library". "Dracula's Library is impeccably furnished, with rows and rows of bookshelves. A pipe organ spreads over one side of the room, its pipes pushing into the darkness above. A cage, [if the dracula-bats are untrapped]covered in guano[otherwise]filled with sleeping bats[end if], hangs overhead, well out of your reach. You can leave to the [boldsouth]."

The Library-room is north of the Grand-room.

The Library-darkness is intangible scenery in the Library-room. Understand "darkness" or "above" as the Library-darkness. The printed name of the Library-darkness is "darkness". The Library-darkness is intangible. The description of the Library-darkness is "What lurks in the darkness? You will never know. It is far above you, and whatever hateful things it contains will never reach you."

[emotion here is anxiety and intrusive thoughts]

The library-cage is distant scenery in the library-room. The printed name of the library-cage is "cage". Understand "guano" or "cage" as the library-cage. The description of the library-cage is "It seems this guano-encrusted cage has hosted bats for many years now. And it doesn't seem to have been cleaned even once during that time[if the dracula-bats are in the library-cage].

The cage is filled with many sleeping bats[end if]."

The library-cage is an openable container. The library-cage is open.

The library-shelves are plural-named scenery in Library-room. The library-shelves are a supporter. The printed name of library-shelves is "bookshelves". Understand "bookshelf" or "row" or "rows" or "shelf" or "shelves" or "bookshelves" or "nonsensical" or "tome" or "tomes" or "library" or "books" as the library-shelves. 

The description of the library-shelves is "The bookshelves are filled to the brim with nonsensical tomes[listbookstime]. There may be other books, but you wouldn't be able to find them unless you knew their name."

Instead of inserting something into library-shelves: try putting the noun on the library-shelves

A book is a kind of thing. Understand "book" as a book.

Instead of taking the library-shelves:
	say "There are so many books, it's overwhelming. You'll have to pick one at a time.";

Check putting something on the library-shelves:
	if the noun is not a book:
		say "Only books go on the shelves."

To say listbookstime:
	let L be the list of things enclosed by library-shelves;
	if L is not empty:
		if the number of entries of L is 1:
			say ". One book sticks out to you: ";
		otherwise:
			say ". A few books stick out to you: ";
		say the L;

The examine supporters rule does nothing when the current action is examining the library-shelves.	

The describe what's on scenery supporters in room descriptions rule does nothing when the player is in library-room.

Before going south from library-room:
	if the player is carrying a musical:
		say "You re-shelve the music before you go.";
		repeat with current running through musicals carried by the player:
			now current is on library-shelves;
			
Section 1 - Organ

The Library-organ is scenery in the Library-room. The printed name of the Library-organ is "pipe organ". Understand "pipe" or "organ" or "key" or "keys" or "pedal" or "pedals" or "pipes" as the Library-organ. The description of the Library-organ is "This magnificent organ is the largest of its kind you've ever seen. It reaches high into the darkness above, and there is room for sinister things to hide under it.

It has an unusual shiny stop on it. It is currently [stopoff]."

The organ-stop is part of the library-organ. The printed name of the organ-stop is "stop". Understand "stop" or "shiny" or "mirror" or "mirrored" or "odd" or "unusual" or "shiny" or "button" or "organ stop" as the organ-stop. The description of the organ-stop is "This is an organ stop, a part of the organ that can be pushed in or pulled out to change the tone of the organ. This one is shiny like a mirror. It is currently [stopoff]."

The organ-stop can be outpulled or inpushed. The organ-stop is inpushed.

To say stopoff:
	if the organ-stop is inpushed:
		say "pushed in";
	otherwise:
		say "pulled out";
		
Instead of pushing the organ-stop:
	if the organ-stop is inpushed:
		say "It's already pushed in.";
	otherwise:
		say "You push in the organ stop. It stops with a gentle click.";
		now the organ-stop is inpushed;

Instead of pulling the organ-stop:
	if the organ-stop is outpulled:
		say "It's already pulled out.";
	otherwise:
		say "You pull out the organ stop. It stops with a gentle click.";
		now the organ-stop is outpulled;

Instead of switching on the organ-stop:
	try pulling the organ-stop;

Instead of switching off the organ-stop:
	try pushing the organ-stop;

Playing is an action applying to one thing. Understand "play [something]" as playing.

Carry out playing:
	if the noun is a musical:
		try giving the noun to Dracula;
	otherwise:
		say "[We] [don't] know how to play [the noun]."

Instead of playing the Library-organ:
	if the dracula-bats are trapped:
		say "Not after all the work you did to get the bats to sleep!";
	otherwise:
		say "Your fingers fly over the keys while your feet quickly work the pedals. Out of each pipe comes a beautiful tone[if the organ-stop is outpulled] that somehow sounds backwards[end if]; however, your utter lack of talent makes it sound like three angry ferrets trapped in a sack.

Dracula winces, and says, 'Perhaps I should play instead. If you give me some of the music on the shelves, I can play it.'"

Section 2 - Cat

The Library-cat is a cat-ghost. The Library-cat is scenery in the Library-room.

Instead of looking under the Library-organ:
	say "This area is dark and dusty. It gives you an ill feeling.";
	resolve the Library-cat;

Instead of searching the library-organ:
	try looking under the library-organ;

Section 3 - Music and bats

[dracula should prevent you from taking music out of the room]

The dracula-bats are plural-named animals in the library-room. "[if the dracula-bats are untrapped]There are hundreds of bats flying around here, making everything quite chaotic[otherwise]The bats are sleeping peacefully above[end if]." Understand "bat" or "bats" or "flock" as the dracula-bats. The printed name of the dracula-bats is "bats". The description of the dracula-bats is "[batstuff]."

To say batstuff:
	if the dracula-bats are trapped:
		say "The bats are quietly sleeping in their cage, occasionally chirping or murmuring in their sleep";
	otherwise:
		if the dracula-bats are in the library-cage: 
			say "The bats are currently inside the cage on the right side of the room";
		otherwise:
			say "The bats are [if the dracula-bats are clustered]clustered together[otherwise]flying in a spread-out group[end if] on the [if the dracula-bats are leftsided]left[otherwise]right[end if] side of the room"

The dracula-bats are not talkative.

The dracula-bats can be trapped or untrapped. The dracula-bats are untrapped.

The dracula-bats can be clustered or unclustered. The dracula-bats are unclustered.

The dracula-bats can be leftsided or rightsided. The dracula-bats are leftsided.

A musical is a kind of book. Understand "music" as a musical.

Advenit is a musical. The description of Advenit is "This is a slim volume titled '[italic type]Advenit[roman type], by Johannes L. and Saul M.'" Understand "slim" or "volume" as Advenit.

Sinistram is a musical. The description of Sinistram is "This is a sheaf of loose pages of music titled '[italic type]Ad Sinistram[roman type], by B. Knowles'." Understand "ad" as sinistram.

Understand "loose" or "sheaf" or "page" or "pages" as Sinistram.

Gyra is a musical. The description of Gyra is "This is a folder containing music.  It's embossed with the words, '[italic type]Tu me Gyras[roman type], by Mortuum vel Vivum.'" Understand "folder" as Gyra.

Advenit, Sinistram, and Gyra are on the library-shelves.

Before listing contents: group musicals together.

Instead of opening a musical:
	say "You open [the noun] and peruse it for a bit. Looks neat, but not anything you'd know how to play yourself."

Before printing the name of a musical while not grouping together:
	if the listing contents activity is going on:
		say "the music book ";

Before grouping together musicals:
	say "the music books ";

Before printing the name of a musical:
	say "[italic type]";
	
After printing the name of a musical:
	say "[roman type]";

Does the player mean giving a musical to dracula:
	it is likely;

[adjust actions if the bats are inside the cage currently!]

To musicaffect (current - a musical):
	if the dracula-bats are trapped:
		say "Dracula whipsers nervously, 'I don't want to disturb the little darlings anymore,' then turns back to his work.";
	otherwise if current is advenit:
		if the dracula-bats are clustered:
			say "A driving harmony comes from the organ as Dracula lays down some rocking beats. The bats stay in their clusters as the music plays, writhing around in a single mass.";
		otherwise:
			say "A driving harmony comes from the organ as Dracula lays down some rocking beats. The bats all cluster together in a ball[rightclusterthing], and stay together once the music ends.";
		now the dracula-bats are clustered;
	otherwise if current is sinistram:
		say "Dracula tenderly plays a lilting melody about loss and renewal. The bats all [if the dracula-bats are leftsided]are swarming [else]swarm [end if]to the left side of the room, away from the cage.";
		now the dracula-bats are leftsided;
	otherwise if current is gyra:
		say "Dracula hammers the keys, producing a loud, droning, constantly shifting melody. A single, small bat emerges from the flock, travelling in a clockwise [cagegyra].";
	otherwise:
		say "Dracula looks over the music. 'Hmmm, I don't know how to play this one, sorry,' he says.";

To say rightclusterthing:
	if the dracula-bats are unclustered:
		if the dracula-bats are rightsided:
			say ", smacking into the outside of the cage and bouncing off a bit. They regroup"

To say cagegyra:
	if the dracula-bats are rightsided:
		if the library-cage is open:
			say "direction around the cage, banging the cage shut";
			now the library-cage is closed;
		otherwise:
			say "direction around the cage";
	otherwise:
		say "direction";

The red-token is a token. The printed name of the red-token is "red token". Understand "red" or "dracula" as the red-token. 

The token-target of the red-token is "Dracula".

Does the player mean examining the red-token when the player is in library-room:
	it is unlikely;

Every turn when the player is in library-room:
	if the dracula-bats are not trapped:
		if the dracula-bats are in the library-cage:
			if the library-cage is closed:
				now the dracula-bats are trapped;
				now the red-token is carried by the player;
				say "Dracula pauses, looking up at the cage. The bats, realising they are now finally contained, begin to calm down and settle in for a nap. Soon, they are all hanging silently.

Dracula smiles with relief, his long fangs reflecting the flickering light. 'Thank you, my friend. I love my bats, but sometimes I need a little help with them when I'm trying to focus.' He then returns to his desk. 

Before he starts back on his work, he quietly throws you a red token."

To reversemusicaffect (current - a musical):
	if the dracula-bats are trapped:
		say "Dracula whispers nervously, 'I don't want to disturb the little darlings anymore,' looking nervously at the music.";
	otherwise if current is advenit:
		if the dracula-bats are unclustered:
			say "A driving harmony comes from the organ as Dracula lays down some rocking beats. The bats, already scattered, spread out just a bit more.";
		otherwise:
			say "A driving harmony comes from the organ as Dracula lays down some rocking beats. The bats spread out into a large mass[if the dracula-bats are in library-cage], leaving the cage[end if].";
			now the dracula-bats are unclustered;
			now the dracula-bats are in library-room;
	otherwise if current is sinistram:
		say "Dracula tenderly plays a lilting melody about loss and renewal. The bats all swarm to the right side of the room[cageaction].";
		now the dracula-bats are rightsided;
	otherwise if current is gyra:
		say "Dracula hammers the keys, producing a loud, droning, constantly shifting melody. A single, small bat emerges from the flock, travelling in a counter-clockwise [reversecagegyra].";
	otherwise:
		say "Dracula looks over the music. 'Hmmm, I don't know how to play this one, sorry,' he says.";

To say cageaction:
	if the dracula-bats are clustered:
		if the library-cage is open:
			say ", gathering inside of the cage";
			now the dracula-bats are in the library-cage;
		otherwise:
			say ", smacking into the outside of the closed cage before reforming in a group nearby";
	otherwise:
		say ", spread out around the general vicinity of the cage";
			

To say reversecagegyra:
	if the dracula-bats are rightsided:
		if the library-cage is closed:
			say "direction around the cage, banging the cage open";
			now the library-cage is open;
		otherwise:
			say "direction around the cage, pushing the door a little more open on the way";
	otherwise:
		say "direction";

Instead of giving a musical to Dracula:
	say "Dracula takes [the noun] from you and carries it back to the organ. He opens it carefully.[paragraph break]";
	if the organ-stop is inpushed:
		musicaffect the noun;
	otherwise:
		reversemusicaffect the noun;
	say "[conditional paragraph break]After, he hands [the noun] back to you.";

Section 4 - Dracula

Dracula is a man in the Library-room. "Dracula is here, a harried-looking man wearing suspenders and a lightly unbuttoned dress shirt. He is muttering and sifting through a pile of papers[if the dracula-bats are trapped]. He seems relatively less stressed than before[otherwise]. He is constantly interrupted by the chirping and whirring of bats overhead and looks positively stressed[end if][first time][deliverdracula][only]."

Understand "vlad" or "drac" as dracula.

To say deliverdracula:
	deliver stressed-dracula;

The library-pile is scenery in library-room. Understand "paper" or "papers" or "pile" as the library-pile. The printed name of library-pile is "pile of papers". The description of the library-pile is "It's impossible to decipher the antique handwriting Dracula uses."

Instead of pushing, pulling, or taking the library-pile:
	say "Dracula looks tense, and says, 'Please don't do that.'"

The description of Dracula is "Dracula is a harried-looking older man wearing a rumpled white dress shirt, nifty suspenders and thick spectacles. He has a widow's peak and pronounced canines." Understand "widow's" or "widow" or "peak" or "pronounced" or "canine" or "canines" as dracula.

The dracula-shirt is worn by dracula. The description of the dracula-shirt is "The shirt is slightly unbuttoned and seems rumpled." Understand "white" or "dress" or "shirt" or "rumpled" as the dracula-shirt. The printed name of the dracula-shirt is "white dress shirt".

The dracula-suspenders are worn by dracula. Understand "suspenders" or "nifty" as the dracula-suspenders. The printed name of the dracula-suspenders is "suspenders". The description of the dracula-suspenders is "These looks very outdated, but he manages to pull it off somehow."

Instead of pulling the dracula-suspenders:
	say "Dracula looks like he got bullied enough in vampire school, or whatever he did when he was young."

The dracula-spectacles are worn by dracula. Understand "spectacles" or "glasses" or "thick" as the dracula-spectacles. The printed name of the dracula-spectacles is "spectacles". The description of the dracula-spectacles is "The glasses seem especially thick; Dracula peers through them like a blinking owl."

Section 5 - Dictionary

The lagoon-dictionary is a book. Understand "blue" or "lacunic" or "dictionary" as the lagoon-dictionary. The printed name of the lagoon-dictionary is "Blue Lacunic Dictionary". The description of the lagoon-dictionary is "This is an extensive dictionary giving the basics of communication of the Blue Lacunic language."

After taking the lagoon-dictionary for the first time:
	say "You grab the dictionary and flip through it. You mumble parts of it out loud, until your recorder beeps. It seems like you might be able to talk to the creature better now.";
	deliver Retry-lagoon;
	
Instead of searching the library-shelves:
	try examining the library-shelves;
	
Retry-lagoon is a quip. Understand "retry" as retry-lagoon. The printed name of retry-lagoon is "Retry". The preview of Retry-lagoon is "Let's try communicating again. How are you?"

The target of retry-lagoon is the lagoon-creature. The targetresponse of retry-lagoon is "The creature looks at you gravely and bends closer, almost splashing you with a wave of water. 'Hello, little one. I'm afraid I'm not doing very well at all today. I seem to have misplaced my glasses, and without them, the outside sky appears dark. Could you find them for me?'

'Sure,' you say. 'What do they look like?'

The creature shrugs, an action which almost swamps you with the resulting wave. 'They're just regular glasses, not small ones like you humans wear.'"

[appearance-lagoon is a quip. The printed name of appearance-lagoon is "Appearance". Understand "appearance" as appearance-lagoon. The target of appearance-lagoon is lagoon-creature. The preview of appearance-lagoon is "Let's try communicating again. How are you?"

The target of appearance-lagoon is the lagoon-creature. The targetresponse of appearance-lagoon is "The creature looks at you gravely and bends closer, almost splashing you with a wave of water. 'Hello, little one. I'm afraid I'm not doing very well at all today. I seem to have misplaced my glasses, and without them, the outside sky appears dark and black. Could you find them for me?"]

Section 6 -conversation

Stressed-dracula is a quip. The printed name of stressed-dracula is "Stressed". Understand "stressed" as stressed-dracula. The target of stressed-dracula is Dracula. The preview of stressed-dracula is "What's wrong, Dracula?"

The targetresponse of stressed-dracula is "'The bats! I love the little things but they're driving me crazy. I tried playing them soothing music earlier but I can't understand the way they're acting,' says Dracula. 'And I have a great selection!' he says, pointing towards some music on his shelf."

Chapter 4 - Great Bath

[depression]

The Bath-room is a room in haunted-region. "You are standing at the edge of the largest swimming pool you've ever seen. The pool is enclosed by a glass dome that shows nothing but the darkness outside. An enormous comb leans against the wall near you. You can leave to the [boldeast]."

The bath-dome is distant scenery in bath-room. The printed name of the bath-dome is "glass dome". Understand "glass" or "dome" or "darkness" or "outside" or "unsupported" as the bath-dome. The description of the bath-dome is "The size of this unsupported glass dome makes it a true engineering feat. Outside, all is dark.

An enormous comb, larger than a rhinoceros, leans against the wall." The printed name of Bath-room is "Indoor Lagoon". 

The Bath-room is west of the Grand-room. 

The bath-pool is scenery in bath-room. The printed name of the bath-pool is "swimming pool". Understand "lagoon" or "largest" or "waves" or "wave" or "ripple" or "ripples" or "water" or "extensive" or "pool" or "crystal" or "clear" or "crystal-clear" as the bath-pool. The description of the bath-pool is "This very extensive pool is filled with crystal-clear water that moves with every breath of the creature."

Instead of entering the bath-pool:
	try swimming;
	
Instead of drinking the bath-pool:
	say "Ewww."

The lagoon-stars are distant plural-named scenery. The printed name of the lagoon-stars is "stars". Understand "stars" or "star" as the lagoon-stars. The description of the lagoon-stars is "Now that they've been pointed out, you can see the stars a bit yourself."

Section 1 - The creature

The lagoon-creature is a woman in the bath-room. The initial appearance of the lagoon-creature is "A scaled, vaguely humanoid creature that looks longer than your entire space vessel is floating here in the pool, staring up at the darkness. Her slightest movements send shallow waves across the pool[first time].

She looks over at you with clear intelligence in her expression but then turns back. It's hard to tell if she'd understand you[only]." The printed name of the lagoon-creature is "lagoon creature". Understand "creature" or "black" or "lagoon" or "from" or "cross" or "humanoid" or "enormous" or "scaled" or "carapace" or "eyes" or "eye" or "blurry" or "piercing" or "humanoid" or "being" as the lagoon-creature.

The description of the lagoon-creature is "The creature seems to be a cross between the largest land creatures and the beasts of the deepest seas, with a large green carapace and[if the creature-glasses are worn by the lagoon-creature] piercing black eyes behind a pair of enormous glasses[otherwise] a pair of blurry black eyes[end if]."

Creature-greeter is a quip. The printed name of Creature-greeter is "Communicate". Understand "communicate" as Creature-greeter. The preview of Creature-greeter is "[italic type]Attempt to communicate[roman type]" . The target of Creature-greeter is lagoon-creature.

Report going west from grand-room for the first time:
	deliver creature-greeter;

The TargetResponse of Creature-greeter is "The enormous being burbles and glurbles. You can't really understand it, except for one word:

'Dracula'."

After uttering Creature-greeter to lagoon-creature:
	deliver Creature-Interpreter;

Creature-Interpreter is a quip. The printed name of Creature-Interpreter is "Interpreter". Understand "Interpreter" as Creature-Interpreter. The preview of Creature-Interpreter is "Can you understand the creature in the Lagoon?" . The target of Creature-Interpreter is Dracula.

The targetresponse of creature-interpreter is "Dracula looks up with mild interest. 'Oh, her? Yes, I charted out her language long ago. I made a dictionary for it, once, but I haven't seen it in a while,' he says, waving at the bookshelves. 'The language is Blue Lacunic, I believe.'"

After uttering creature-interpreter to dracula:
	now lagoon-dictionary is in library-shelves;

Section 2 - The cat

The bath-comb is scenery in the Bath-room. The printed name of the bath-comb is "enormous comb". Understand "enormous" or "comb" or "giant" or "tooth" or "teeth" as the bath-comb.

Instead of pushing or pulling the bath-comb:
	say "This comb is several times your size. It's not going anywhere.";

The description of the bath-comb is "This thing is huge! You shudder to imagine the foul creature that needs a comb this large. Its giant teeth lean against the wall, shadowing whatever might lie beneath."

Instead of taking the bath-comb:
	say "This comb is several times your size. It's not going anywhere."

The bath-cat is a cat-ghost. The bath-cat is scenery in the bath-room.

Instead of searching the bath-comb:
	try looking under the bath-comb;

Instead of looking under the bath-comb:
	say "The teeth cast striped shadows, giving a surreal appearance to this secluded area. It feels unsettling.";
	resolve the bath-cat;

Section 3 - The token

The blue-token is a token. The printed name of the blue-token is "blue token". Understand "blue" or "lagoon" or "scale" or "creature" as the blue-token. The token-target of the blue-token is "the lagoon creature".

Does the player mean examining the blue-token when the player is in bath-room:
	it is unlikely;

Chapter 5 - Game Room

The game-room is a room in haunted-region. The printed name of game-room is "Game Room".

"This sprawling and chilly room is filled with finely-carved furniture, all frozen over and dripping with icicles. You can leave to the [boldwest].

One side of the room has a roaring blue flame in a fireplace. It ought to warm up the room, but that area seems to be colder. In front of it is a rug, splayed with playing cards that have frozen to the fabric. It seems like they were playing Hearts[if the frozen-target is broken].

Some of the furniture has unthawed, revealing a wardrobe, a shoe rack, and a pile of junk[end if]."

The frozen-flame is scenery in the game-room. The printed name of the frozen-flame is "roaring blue flame". Understand "roaring" or "blue" or "flame" or "fire" or "fireplace" as the frozen-flame. The description of the frozen-flame is "The blue flame in the fireplace looks like the color of blue Christmas lights on a dark night."

Instead of entering the frozen-flame:
	say "It's far too cold to approach."

Instead of inserting something into the frozen-flame:
	say "It's far too cold to approach.";

Instead of physicality when the noun is the frozen-flame:
	say "It's far too cold to approach."

The frozen-furniture is scenery in the game-room. The printed name of the frozen-furniture is "frozen furniture". Understand "Frozen" or "Furniture" or "icicle" or "ice"or "icicles" or "solid" or "finely" or "carved" as the frozen-furniture. The description of the frozen-furniture is "There could be anything under here; it's hard to tell. This furniture is frozen solid."

Instead of touching the frozen-furniture:
	say "It is bittery cold."

Section 1 - Cards and cat

The game-room is east of the Grand-room.

The frozen-cards are scenery in game-room. The printed name of the frozen-cards is "frozen playing cards". Understand "heart" or "hearts" or "card" or "cards" or "frozen" or "playing" as the frozen-cards. The description of the frozen-cards is "It appears someone was playing a game of Hearts earlier, but the cards have sat unused so long they've frozen to the rug[if frozen-cat is uncatfound]

That's odd...something is moving under the rug[end if]."

Instead of taking the frozen-cards:
	say "They are held fast by the rug, and the longer you try, the colder you feel."

The frozen-rug is scenery in the game-room. The printed name of the frozen-rug is "rug". Understand "rug" or "heavy" or "thick" as the frozen-rug. The description of the frozen-rug is "This heavy, thick rug is sprawled before the cold fire. Stuck to it are playing cards; it looks like someone was playing Hearts[if frozen-cat is uncatfound]

Something is moving under the rug[end if]."

Instead of taking the frozen-rug:
	try looking under the frozen-rug;

Instead of looking under the frozen-cards:
	try looking under the frozen-rug

The frozen-cat is a cat-ghost. The frozen-cat is scenery in the game-room.
	
Instead of looking under the frozen-rug:
	say "You lift up the rug, cards and all, just for a second. The expanse of stone looks old and long untouched.";
	resolve the frozen-cat;

The stone-expanse is scenery floor in game-room. The printed name of stone-expanse is "lumpy stone". Understand "expanse" or "lumpy" or "floor" or "stone" as the stone-expanse.

The description of the stone-expanse is "Unlike the rest of the building, the floor here is mostly stone and quite lumpy."

Instead of pushing or pulling the frozen-rug:
	say "This is a very large rug, much of which is frozen to the floor. You can't push or pull the whole thing."

Section 2 - Yeti

[emotion is hatred]

The yeti is a woman in game-room. "An imperious yeti covered in fine white fur stands here, [if the frozen-target is unbroken]shooting arrows at a target on the far wall[otherwise]looking at you impatiently. The broken target hangs on the far wall[end if][first time].

When she sees you enter, she spins towards you, nocking an arrow with hatred in her eyes. Then she squints and says, 'Oh, you're not him,' and turns back to her target practice[only]." 

The description of the yeti is "This yeti is much taller than you, wearing an elegant wooden necklace and leather quiver and [if the frozen-target is unbroken]shooting at the target on the wall[otherwise]waiting for you to bring her a new archery target[end if]."

Understand "maya" as the yeti.

Report going east from grand-room for the first time:
	deliver Mistaken-yeti;

The yeti-necklace is worn by the yeti. The printed name of the yeti-necklace is "wooden necklace". Understand "wooden" or "necklace" or "spheres" or "paint" or "painted" as the yeti-necklace. The description of the yeti-necklace is "This necklace is made of several wooden spheres, brightly painted and strung together."

The yeti-quiver is worn by the yeti. The printed name of the yeti-quiver is "arrow-filled quiver". Understand "leather" or "arrow" or "filled" or "arrow-filled" or "quiver" or "arrows" as the yeti-quiver. The description of the yeti-quiver is "You wonder what strange creature this pinkish leather quiver is made from, but feel it better not to ask. It is filled with many arrows."

The frozen-target is scenery in the game-room. The printed name of the frozen-target is "target". Understand "archery" or "far" or "center" or "wall" or "target" as the frozen-target. The description of the frozen-target is "This is an archery target, and it has numerous shot arrows stuck into it, clustered around the center. Apparently the archer has some skill[if the frozen-target is broken].

It's currently broken in half[end if]."

The frozen-target can be broken or unbroken. Understand the broken property as describing the frozen-target. Understand "broken" as broken .

The shot-arrows are part of the frozen-target. Understand "shot" or "arrows" as the shot-arrows. The printed name of the shot-arrows is "shot arrows". The description of the shot-arrows is "All the arrows are clustered near the center."

Instead of physicality when the noun is the shot-arrows:
	if the frozen-target is broken:
		say "The target is uncomfortably cold; you can't stand to touch it.";
	otherwise:
		say "That's not the part of the room you want to be standing in while archery is going on."

Instead of physicality when the noun is the frozen-target:
	if the noun is broken:
		say "The target is uncomfortably cold; you can't stand to touch it. Besides, it's broken.";
	otherwise:
		say "That's not the part of the room you want to be standing in while archery is going on."

Section 3 - Yeti conversation

Mistaken-yeti is a quip. The printed name of Mistaken-yeti is "Mistaken". Understand "Mistaken" as Mistaken-yeti. The preview of Mistaken-yeti is "It seems you mistook me for someone else."  The target of Mistaken-yeti is the yeti.

The TargetResponse of Mistaken-yeti is "She looks at you coolly. 'I thought you were my cousin Harry. He abandoned our game of Hearts two days ago and hasn't been back since. I've been taking out my frustration on this target while we wait. Honestly, I hate him right now.'

She lets loose another arrow and the target breaks[breaktarget]. The yeti curses, and turns to you to ask, 'You wouldn't mind getting me another target, would you? You can just show me it and I'll tell you if it works. There should be enough stuff in this room.'

'Isn't it all frozen over, though?' you ask.

She glares at you and concentrates. Some of the furniture defrosts. 'There,' she says. 'That should work.'

Now you can see a wardrobe, a shoe rack, and a pile of junk, all of which were frozen before."

To say breaktarget:
	now the frozen-target is broken;
	now the frozen-wardrobe is in game-room;
	now the frozen-pile is in game-room;
	now the shoe-rack is in game-room;

Report uttering mistaken-yeti to yeti:
	deliver cards-yeti;
	deliver harry-yeti;
	deliver name-yeti;

cards-yeti is a quip. The printed name of cards-yeti is "Cardgame". Understand "cardgame" as cards-yeti. The preview of cards-yeti is "I could play a game of Hearts with you instead."  The target of cards-yeti is the yeti.

The TargetResponse of cards-yeti is "'No,' she says decidedly. 'I want Harry to come back and finish his game with me. I'm only one trick away from winning!'"

name-yeti is a quip. The printed name of name-yeti is "Address". Understand "address" as name-yeti. The preview of name-yeti is "What's your name?"  The target of name-yeti is the yeti.

The TargetResponse of name-yeti is "'It's Maya,' she says with pride."

Report uttering name-yeti to the yeti:
	now the printed name of the yeti is "Maya";
	now yeti is proper-named;

Harry-yeti is a quip. The printed name of Harry-yeti is "Cousin". Understand "Cousin" as Harry-yeti. The preview of Harry-yeti is "Where do you think Harry is?"  The target of Harry-yeti is the yeti.

The TargetResponse of Harry-yeti is "'Probably with humans again. The last time he was missing I found him tramping around the Pacific northwest with his big feet,' says [the yeti]."

[todo: finish with her and harry]

Section 4 - Possible targets

To say breaktarget:
	now the frozen-target is broken;
	now the frozen-wardrobe is in game-room;
	now the frozen-pile is in game-room;
	now the shoe-rack is in game-room;

A frozen-exclusive is a kind of thing.

The frozen-wardrobe is a scenery closed openable enterable container. The printed name of the frozen-wardrobe is "wardrobe". Understand "wardrobe" or "dark" or "oak" or "costumes" as the frozen-wardrobe. The description of the frozen-wardrobe is "This wardrobe is made of dark oak, and is labeled 'COSTUMES'. It is currently [wardrobe-closed]."

Instead of pushing, pulling, or taking the frozen-wardrobe:
	say "It's too heavy to move."

To say wardrobe-closed:
	if the frozen-wardrobe is open:
		say "open";
	otherwise:
		say "closed";

The fur-coat is a frozen-exclusive in the frozen-wardrobe. The printed name of the fur-coat is "fur coat". Understand "fur" or "coat" as the fur-coat. The description of the fur-coat is "This is a long and very hairy fur coat."

The wolf-handcuffs are in the frozen-wardrobe. The wolf-handcuffs are plural-named. The printed name of the wolf-handcuffs is "handcuffs". Understand "handcuffs" or "Hand" or "cuffs" or "handcuff" as the wolf-handcuffs. The description of the wolf-handcuffs is "Maybe these were part of a police officer costume?"

Cuffing is an action applying to one thing. Understand "cuff [something]" or "handcuff [something]" as cuffing.

Instead of showing the wolf-handcuffs to the wolfman:
	try giving the wolf-handcuffs to the wolfman;

Carry out cuffing:
	if the wolf-handcuffs are carried by the player:
		try putting the wolf-handcuffs on the second noun;
	otherwise:
		say "[We] [don't] have anything to use as handcuffs."

Instead of putting the wolf-handcuffs on someone when the second noun is not the wolfman:
	say "Handcuffing people against their will is not part of your ethos."

Instead of wearing the wolf-handcuffs:
	say "Handcuffing yourself without a way to get out seems like a bad idea at the moment."

The official-seal is in frozen-wardrobe. The printed name of the official-seal is "Official Precinct 13 Stamp". Understand "official" or "thirteen" or "13" or "precinct" or "seal" or "stamp" or "notary" or "notaries" as the official-seal. 

The description of the official-seal is "[first time]Well, that's something you don't see every day. [only]This is a seal, the kind that notaries use to stamp things. The side of it reads: 'For official Precinct 13 Police use only. This seal only functions on official Precinct 13 documents. Do not place the seal in ink; simply STAMP the document when neeeded."

Stamping is an action applying to one thing. Understand "stamp [something]" as stamping.

Check stamping:
	if the noun is a person:
		say "Stamping people is not recommended at this time." instead;
	otherwise if the noun is distant:
		say "That's too far away." instead;
	otherwise if the noun is intangible:
		say "[The noun] is intangible and cannot be stamped."

Carry out stamping:
	if the official-seal is not held by the player:
		say "You're not holding anything that could be used for stamping.";
	otherwise:
		say "You try stamping [the noun], but the Official Precinct 13 Seal has no effect on it.";

This is the pile-examine rule:
	say "You don't see anything else interesting in the pile.";
	stop the action;

To decide if the pile is cool: 
	if the current action is not examining the frozen-pile, decide no; 
	if the number of things in the frozen-pile is greater than 0, decide no; 
	decide yes. 

The pile-examine rule substitutes for the examine containers rule if the pile is cool.

The frozen-pile is an open unopenable scenery container. The printed name of the frozen-pile is "pile of junk". Understand "pile" or "junk" or "pile of junk" as the frozen-pile. The description of the frozen-pile is "This is a large pile of assorted detritus from games no one has played in a long time."

Instead of pushing, pulling, or taking the frozen-pile:
	say "Most of the pile is uninteresting."

Instead of searching the frozen-pile:
	try examining the frozen-pile;

The frozen-mannequin is a frozen-exclusive in the frozen-pile. The printed name of the frozen-mannequin is "mannequin". "A mannequin is standing here[if the fur-coat is part of the frozen-mannequin],

wearing a big fur coat[end if][if the giant-shoes are part of the frozen-mannequin].

Some gigantic shoes are stuck on the bottom, making it look like it has enormous feet[end if][if the large-fencing is part of the frozen-mannequin].

It has a large fencing mask balanced on its head[end if]." Understand "mannequin" or "head" or "feet" or "gashes" as the frozen-mannequin. The description of the frozen-mannequin is "This is a very tall mannequin that seems to have been hacked at multiple times, with gashes on its head and feet. It seems pretty light though[if the fur-coat is part of the frozen-mannequin].

It has a big fur coat on it, making it look large and hairy[end if][if the giant-shoes are part of the frozen-mannequin].

Some gigantic shoes are stuck on the bottom, making it look like it has enormous feet[end if][if the large-fencing is part of the frozen-mannequin].

It has a large fencing mask balanced on its head[end if]."

The large-fencing is a frozen-exclusive in the frozen-pile. The printed name of the large-fencing is "large fencing mask". Understand "large" or "fencing" or "mask" as the large-fencing. The description of the large-fencing is "This is a fencing mask, but unusually large, and seemingly shaped for a...non-human face."

Instead of wearing the large-fencing:
	say "[one of]You put on the large fencing mask, but its size and weight pull make you unsteady. Unable to see, you bump into something and fall over.

You take the mask off, just to be safe.[or]You've already tried it, but the mask is too big![stopping]"

The shoe-rack is a scenery supporter. The printed name of the shoe-rack is "shoe rack". Understand "shoe" or "rack" or "swedish" as the shoe-rack. The description of the shoe-rack is "This shoe rack looks Swedish, somehow." 

Instead of pushing, pulling, or taking the shoe-rack:
	say "It seems like it's not supposed to leave the room. And you doubt you'll need a shoe-rack later on."

The giant-shoes are a plural-named frozen-exclusive on the shoe-rack. The printed name of the giant-shoes is "giant shoes". Understand "giant" or "shoes" as the giant-shoes. The description of the giant-shoes is "These shoes are giant; each one is big enough to use as a baby crib or a toy box. Who has feet this big?"

[put solutions to another world in here]

[The glass-slippers are a plural-named frozen-exclusive on the shoe-rack. The printed name of the glass-slippers is "glass slippers". Understand "glass" or "slipper" as the giant-shoes. The description of the giant-shoes is "These shoes are giant; each one is big enough to use as a baby crib or a toy box. Who has feet this big?"]

Instead of wearing the giant-shoes:
	say "These are huge. You'd have a better chance wearing a crock-pot.";

Instead of taking something when the noun is part of the frozen-mannequin:
	say "Taken.";
	now the noun is carried by the player;

Instead of putting the large-fencing on the frozen-mannequin:
	say "You balance the large fencing mask on top of the mannequin.";
	now the large-fencing is part of the frozen-mannequin;

Instead of wearing the fur-coat:
	say "It actually feels quite warm and elegant. But it also smells a bit like urine, so you're taking it off now."

Instead of smelling the fur-coat:
	say "It smells kind of like pee, to be honest."

Instead of putting the fur-coat on the frozen-mannequin:
	say "You throw the fur coat on the mannequin. It looks big and hairy, now.";
	now the fur-coat is part of the frozen-mannequin;

Instead of putting the giant-shoes on the frozen-mannequin:
	say "You stick the giant shoes on the mannequin. Now it looks like it has big feet!";
	now the giant-shoes are part of the frozen-mannequin;
	
Instead of showing a frozen-exclusive to the yeti:
	try giving the noun to the yeti;

Instead of showing something to the yeti when the noun is not frozen-exclusive:
	say "'I think we'll be fine just using things from this room,' she says. 'I wouldn't feel comfortable shooting at other people's things. Except for Harry's, of course.'"

Instead of giving the frozen-mannequin to the yeti:
	if the large-fencing is part of the frozen-mannequin:
		say "[The yeti] recoils in distaste. 'No, no, no,' she says, 'the fencing mask will make it harder to hit. Let's take that off!'";
	otherwise if the fur-coat is not part of the frozen-mannequin or the giant-shoes are not part of the frozen-mannequin:
		say "'Hmmph,' says [the yeti]. That's not bad...it even looks a lot like Harry. Can you make it look[if the fur-coat is not part of the frozen-mannequin or the giant-shoes are part of the frozen-mannequin] even[end if] more like Harry? He's tall, hairy, and has huge feet.'";
	otherwise:
		say "Her eyes narrow. She growls, saying 'That looks just like him.'

She pulls back an arrow, aiming it at you and the mannequin. 'Drop it,' she commands.

Afraid of the arrow, you drop the mannequin and back off. As you do so, flakes of ice and snow fly into the air, covering the target in snow. It looks a lot like the yeti, now.

[The yeti] stares, then sighs, and lowers the bow. 'It looks just like me, too. Me and Harry are a lot alike. Maybe instead of stewing here, I should go look for him myself.'

She picks up the mannequin and says, 'Thanks for your help, though. You can have this,' she says and walks out of the room, carrying the mannequin absent-mindedly with her.

On her way out, she hands you a white token.";
		now the yeti is nowhere;
		now the frozen-mannequin is nowhere;
		now the white-token is carried by the player;

Instead of giving the large-fencing to the yeti:
	say "She says, 'That's not very useful for me, I'm sorry,' she says. 'It would be hard to hit, and wearing it would make it harder for me to aim. No thanks.'"

Instead of giving the wolf-handcuffs to the yeti:
	say "She says, 'I'm not really into carceral ideation. Sorry, these aren't useful for me.'"

Instead of giving the giant-shoes to the yeti:
	say "'Well, Harry certainly has big feet, and I'd sure love to sink a few arrows into him right now. But shoes don't make a good target; you could put them on something bigger, that would look better, to me,' she says."

Instead of giving the fur-coat to the yeti:
	say "'Now this could give me the sweet experience of shooting arrows at Harry. This coat really reminds me of him! Here, hold it up for me,' she says.

You oblige, and she draws back her arrow. When you realize she's about to shoot, you drop the coat and jump back.

'Hmmph,' she says grumpily. 'If you won't hold it up, you need to find something that will.'"

Instead of putting the wolf-handcuffs on the frozen-mannequin:
	say "They just slide off; the mannequin isn't really designed for handcuff use."

Instead of putting something on the frozen-mannequin:
	say "You try putting them together, but it just doesn't work out well.";

Section 5 - The token

The white-token is a token. The printed name of the white-token is "white token". Understand "white" or "yeti" as the white-token. The token-target of the white-token is "the yeti".

Chapter 6 - Upstairs

The landing-room is a room. "You are standing at the top of a flight of stairs. To the [boldeast] is an old door that has the name 'Christine' engraved on it. An empty doorway leads [boldwest]. A trapdoor leads [bold type]up[roman type]. You can also go back [bold type]down[roman type] the stairs." The printed name of the landing-room is "Upstairs Landing".

[add these doors]

The landing-trap is a closed locked openable lockable scenery door. The landing-trap is up from the landing-room and down from the tower-room. The printed name of the landing-trap is "trapdoor". Understand "trap" or "door" or "trapdoor" as the landing-trap. The description of the landing-trap is "The trapdoor is within reach, due to the low height of the landing you are on."

The landing-room is in haunted-region.

Section 1 - The stairs

The grand-stairs are a plural-named staircase. The grand-stairs are above the Grand-room and below the landing-room. Understand "wide" or "sweeping" or "grand" or "stair" or "stairs" or "step" or "steps" as the grand-stairs. The grand-stairs are scenery. The description of the grand-stairs is "These sweeping stairs lead up and down between the two floors."

Instead of going up from Grand-room when the grand-mounds are in grand-room:
	say "The slithering sands, caused by the mummified Pharaoh's unhappy mood, prevent you from making it up the stairs. All other directions have exits, though."


Chapter 7 - Ghost

The ghost-door is a scenery door. The ghost-door is west from the ghost-room and east from the landing-room. The printed name of the ghost-door is "[if the player is in landing-room]eastern door[otherwise]door[end if]". Understand "eastern" or "east" or "door" or "old" or "name" or "christine" as the ghost-door. The description of the ghost-door is "This is an old-looking door with the name 'Christine' on it."

The ghost-room is in haunted-region.

The description of the ghost-room is "This room looks older than the rest of the house. There is little light, and even less room. The cold almost takes your breath away. You can leave to the [boldwest][if the crystal-ball is in ghost-room].

A crystal ball floats in the middle of the room, glowing eerily[end if]." The printed name of the ghost-room is "East Bedroom".

The ghost-cold is a intangible scenery in the ghost-room. The printed name of the ghost-cold is "cold". Understand "cold" as the ghost-cold.

The description of the ghost-cold is "You can't find any source for the cold; it pervades the whole room."

Section 1 - The ghost

Christine is a woman in ghost-room. "A transparent woman[first time], whom you infer to be Christine from the name on the door,[only] is floating here, furiously tapping at the crystal ball in the room and muttering to herself[first time].

She looks at you with a clearly angry expression, and says something that you don't quite understand. Your recorder kicks in, though, and interprets for you: 'Are you the one blocking me? The orb should be responding to me, but it refuses. Tell me, what have you done?' She finishes this with a glare[only]." The description of Christine is "Christine is a middle-aged woman wearing a dark, worn woolen dress. She is also transparent, and tapping furiously at the crystal ball."

Understand "ghost" or "transparent" as christine.

Instead of physicality when the noun is Christine:
	say "She's not really there; touching her in any way is impossible."

Innocent-me is a quip. The target of innocent-me is Christine. The preview of Innocent-me is "I promise, I didn't do anything!" The printed name of innocent-me is "Innocent". Understand "innocent" as Innocent-me.

The targetresponse of innocent-me is "She says, 'Hmph, that seems most unlikely. I scheduled my appointment weeks ago. Wait, the orb is speaking....' She taps it again and peers into it intently. Then she chuckles. 'See? No one is scheduled for today, except some prankster who put down [']Emrys Tisserand['].'"

Report going east from landing-room for the first time:
	deliver innocent-me;

Report uttering innocent-me to christine:
	deliver Identify-self;
	
Identify-self is a quip. The target of Identify-self is Christine. The preview of Identify-self is "I am Emrys Tisserand!" The printed name of identify-self is "Identity". Understand "identity" as identify-self. 

The targetresponse of identify-self is "Her tone of voice changes. 'Okay, lady, this isn't funny anymore. You want to play tough? Orb!' she says, looking at the crystal in question, 'Identify this woman.'

Something appears in the orb which you can't see. The woman stares in shock, then back at you.

'Orb, what day is it?' she asks. It changes again, and she puts a hand to her mouth. 'The Day of Weft's End,' she says. 'I thought...'

She looks up, her rage now mingled with fear. 'It's really you!'

Christine shrieks in apparent terror. She goes pale, a surprising feat for an already-faded ghost, and, taking another look at you, speeds out of the house through the wall.

You can hear her screams echoing into the distance until they too disappear.

The crystal ball remains."

Report uttering identify-self to Christine:
	now Christine is nowhere;

Section 2 - Crystal ball

The crystal-ball is scenery in the ghost-room. Understand "crystal" or "glass" or "orb" or "eery" or "ball" or "glowing" as the crystal-ball. The printed name of the crystal-ball is "crystal ball". The description of the crystal-ball is "This is a clear ball made of crystal, or perhaps glass, floating in the air.

[if crystaltapped is false]It is filled with symbols which you're certain you've never seen, but which are also somehow familiar. There has to be some way to activate it[otherwise]You can see [roomview][conditional paragraph break]The picture is quite clear[end if]."

Instead of rubbing the crystal-ball:
	try touching the crystal-ball;
	
Instead of pushing or pulling the crystal-ball:
	try touching the crystal-ball;

Instead of physicality when the noun is the crystal-ball and Christine is in Ghost-room:
	say "Christine floats protectively between you and the ball. 'Oh no you don't!' she says. 'This is mine!'"

The ball-symbols are part of the crystal-ball. The printed name of the ball-symbols is "familiar symbols". Understand "familiar" or "symbol" or "symbols" or "pictograms" as the ball-symbols.

[uncomment this when reading exists, if it ever does]

[Instead of reading the ball-symbols:
	say "Somehow it make you think of a restaurant. Maybe a menu?"]

The description of the ball-symbols is "However hard you try, you just can't understand them. It's not an alphabet, really, more like pictograms."

Instead of taking the crystal-ball:
	if Christine is in ghost-room:
		say "Christine floats protectively between you and the ball. 'Oh no you don't!' she says. 'This is mine!'";
	otherwise:
		say "It is immovably fixed in place. You can't see anything supporting it, though. It glowed, briefly, when your hands touched it."

Understand "tap [something]" as touching.

Crystaltapped is a truth state that varies. Crystaltapped is false.

Instead of touching the crystal-ball:
	if Christine is in ghost-room:
		say "Christine floats protectively between you and the ball. 'Oh no you don't!' she says. 'This is mine!'";
	otherwise:
		now crystaltapped is true;
		increment roomcounter;
		if roomcounter is 8:
			now roomcounter is 1;
		say "[first time]You tap a random icon. There is a flash of light.

[only]The ball blurs and refocuses. You see [roomview]"

roomcounter is a number that varies. roomcounter is 0.

A thing can be oncecarried or not oncecarried. A thing is usually not oncecarried

Every turn:
	repeat with current running through things carried by the player:
		now current is oncecarried;

Crystalroom is a room that varies. Crystalroom is parlor-room.

To say roomview:
	if roomcounter is 1:
		say "a view of a glass dome with part of a pool visible below it. An enormous scaly leg is in the scene.";
		tokencheck blue-token;
	otherwise if roomcounter is 2:
		say "a nervous-looking man with fangs and suspenders (as well as other things that aren't quite as identifiable).";
		tokencheck red-token;
	otherwise if roomcounter is 3:
		say "a view of sandstone walls rising upwards into darkness. The tops of four doorways or arches can also barely be seen in the frame.";
		tokencheck gold-token;
	otherwise if roomcounter is 4:
		say "nothing, really; all that is visible is a sheet of ice.";
		tokencheck white-token;
	otherwise if roomcounter is 5:
		say "a view of Frankenstein's parlor from within the case. You can see Frankenstein himself, as well as the back of a platinum pyramid. The pyramid has engraved on it 'MAGIC WORD: XYZZYSTEIN'[deliverxyzzy].";
		tokencheck green-token;
	otherwise if roomcounter is 6:
		say "[if wolfman is in wolf-room]a glowing yellow eye staring back at you[otherwise]you see a pile of debris in a room with gouged floorboards[end if].";
		tokencheck grey-token;
	otherwise if roomcounter is 7:
		say "you see yourself, looking at a ball, in which is yourself, looking at a ball, in which is yourself, looking at a ball...The effect makes you nauseous.";
		if the number of not oncecarried tokens is 1:
			say "[conditional paragraph break]The ball chimes loudly, showing [a list of oncecarried tokens], each with a green checkmark next to it. Then the crystal ball falls to the ground and shatters, its fragments then evaporating into the air. All that remains is a final, clear token.";
			now the clear-token is in the ghost-room;
			now the crystal-ball is nowhere;
		otherwise:
			say "[conditional paragraph break]The ball buzzes rudely, showing [a list of oncecarried tokens], each with a green checkmark next to it, but also [a list of not oncecarried tokens], each with a red X next to it.";
			tokencheck clear-token;

The clear-token is a token. The printed name of the clear-token is "clear token". Understand "clear" or "transparent" as the clear-token. The token-target of the clear-token is "a ghost".

To tokencheck (current - a token):
	say conditional paragraph break;
	say "A symbol of [a current] with a [if current is oncecarried]green checkmark[otherwise]red X[end if] superimposed over it appears for a second, then fades away.";

After deciding the scope of the player while the player is in ghost-room and crystaltapped is true:
	if roomcounter is 1:
		place bath-room in scope;
	otherwise if roomcounter is 2:
		place library-room in scope;
	otherwise if roomcounter is 3:
		place grand-room in scope;
	otherwise if roomcounter is 4:
		place frozen-furniture in scope;
	otherwise if roomcounter is 5:
		place parlor-room in scope;
	otherwise if roomcounter is 6:
		place wolf-room in scope;
		
Rule for reaching inside a room when the player is in ghost-room:
	if the noun is not enclosed by the location:
		say "You can see [the noun] in the crystal ball, but you're unable to interact with it.";
	otherwise:
		say "You can see [the second noun] in the crystal ball, but you're unable to interact with it.";
	deny access;

Chapter 8 - Werewolf

The wolf-room is west from the landing-room. The printed name of the wolf-room is "Den". "This room looks like the product of a frightful battle. Gouges have dug deep into the floorboards, a pipe is exposed in the corner, and a big mound of debris covers much of the room. You can leave to the [boldeast]."

The wolf-room is in haunted-region.

The wolf-boards are plural-named scenery floor in the wolf-room. The printed name of the wolf-boards is "floorboards". Understand "floorboards" or "gouges" or "board" or "floor" or "gouge" or "floorboard" as the wolf-boards. The description of the wolf-boards is "These floorboards look like they were repeatedly scratched by small claws."

The wolf-pipe is scenery in the wolf-room. The printed name of the wolf-pipe is "pipe". Understand "pipe" or "exposed" or "corner" as the wolf-pipe. The description of the wolf-pipe is "It looks like this was once inside a wall, but now stands exposed."

The wolf-debris is scenery in the wolf-room. The printed name of the wolf-debris is "debris". Understand "debris" or "mound" or "big" or "fabric" or "wood" or "cardboard" as the wolf-debris. The description of the wolf-debris is "You can see fabric, wood, and cardboard in the mound, but it's all mushed together." 

Instead of taking, pushing, or pulling the wolf-debris:
	say "It's just a useless mound of debris, there's not any point in spreading it around."

Instead of entering the wolf-debris:
	say "It seems unsteady."

Section 1 - The wolf

The wolfman is a man in wolf-room. "A wolfish-looking man, tall and scruffy[if the large-fencing is nowhere] and wearing a large fencing mask[end if] is [if the wolf-handcuffs are nowhere]handcuffed to the pole[otherwise]anxiously pacing the room[end if]. He stares timidly around the room and trembles as he shifts around[one of].

The wolfman jumps as you enter the room. 'Back!' he says. 'Back! I'm a terrible man, a terrible [italic type]thing[roman type], and you're not safe here!' He looks at you earnestly[or].

He looks up hopefully. 'Have you brought anything that can make us truly safe?' he asks[stopping]." Understand "wolfish" or "tall" or "hairy" or "hairy-looking" or "short" or "stiff" or "black" or "hair" or "dark" or "dark-ringed" or "eye" or "eyes" or "looking" or "wolfish-looking" or "wolf-man" or "wolf" as the wolfman. The description of the wolfman is "This is a tall, hairy-looking man with short, stiff black hair and dark-ringed eyes[if the large-fencing is nowhere], both barely visible through the large fencing mask on his head[end if]. [if the wolf-handcuffs are nowhere]He is handcuffed to the pole[otherwise]He's pacing the room nervously[end if][if the wolfs-bane is nowhere], some wolfs-bane poking out of his pocket[end if]."

[fix people leaving without talking to him]

Report going west from landing-room for the first time:
	deliver safety-wolf;
	
Safety-wolf is a quip. The printed name of safety-wolf is "Safety". Understand "safety" as safety-wolf. The target of safety-wolf is the wolfman. The preview of safety-wolf is "Why am I not safe here?"

The targetresponse of safety-wolf is "He peers at you with fearful eyes, and says, 'Because I am about to turn into a dreadful beast! A thing of pure horror! A...' he lowers his voice for dramatic effect, '[italic type]wolf[roman type].'

He kneels and raises his hands to you. 'Please, please, I beg of you, stop me! Bind me! Find ways to keep me chained up so that the beast doesn't wreak havoc on this house and everything in it!'

'I'll see if I can find anything!' you reply reassuringly.

'And hurry,' he says. 'I can feel the transformation happening soon...'"

Instead of giving the wolf-handcuffs to wolfman:
	say "'Yes, yes, this is brilliant. This will help protect all innocent souls from my violent rampages! Here, cuff me to the pipe!' he says.

You oblige him by cuffing him to the pipe. 'There you go,' you say soothingly.";
	wolfupdate;
	now the wolf-handcuffs are worn by wolfman;

Instead of giving the wolfs-bane to the wolfman:
	say "'Is that...' he says, peering closely. 'Wolfsbane! Yes, this will trap my animal essence and prevent it from taking over my fragile mind! I'll place it in my pocket, so that when the dreadful transformation comes, it will weaken my beastly self!' 

He grabs the aconite from you and sticks it in his pocket, where it pokes out a bit.

'Careful with that,' you say. 'It's actually toxic to--'

'To the beast within?' he asks hopefully, peering at you intently.

'Uh, no, to humans,' you answer, to his visible disappointment. He keeps the wolfsbane though.";
	wolfupdate;
	now the wolfs-bane is held by wolfman;

Instead of giving the large-fencing to the wolfman:
	say "'Of course!' shouts the wolf-man. 'Like a muzzle, this will protect others from my serrated teeth.' 

He places the comically large mask on his head. 'Do not worry, fair stranger, this will fit quite snugly when I assume my murderous form.'

You nod politely.";
	wolfupdate;
	now the large-fencing is worn by wolfman;

wolf-counter is a number that varies. wolf-counter is 0.

To wolfupdate:
	say conditional paragraph break;
	increment wolf-counter;
	if wolf-counter is 1:
		say "He says, 'Thank you for this help. I can feel the transformation nearer than ever. But I will need much more to keep you safe!'";
	otherwise if wolf-counter is 2:
		say "He trembles a little as he says, 'My time is almost here. Look, as the beastly hair begins to cover my flesh,' he says, pointing to his arm, which looks quite the same as before. 'I need just a little more to keep everyone safe[if the wolfs-bane is not nowhere]. I hope you are looking everywhere in the house and not just grabbing random things from Maya[end if].'";
	otherwise if wolf-counter is 3:
		say "He starts to twitch and tremble. 'The change! It is upon me!'

He screams, and the scream becomes a howl. He shifts and morphs, hair growing and muscles rippling, as he transforms.

'It's happening!' he screams. He bares his teeth, which are morphing into terrible canines.

Then he collapses, his body finally turning into...a well-coiffed toy poodle.

The handcuffs and mask fall off, and the wolfsbane tumbles away into the debris. The poodle rushes up to you and licks your hand. You tousle his hair, and he runs out of the room. Something has been left behind.";
		now the grey-token is in wolf-room;
		now the wolfman is nowhere;
	otherwise:
		say "You seem to have made the wolf much safer than the game should allow, or much less. This is a bug!";

The grey-token is a token. The printed name of the grey-token is "grey token". Understand "grey" as the grey-token. The token-target of the grey-token is "the Wolfman".

[add wolfsbane visually sticking out of pocket, handcuffs visually holding him in place]

Chapter 9 - Front Yard

Instead of going nowhere when the player is in haunted-region:
	if the noun is down:
		say "There are no stairs going down here.";
	otherwise if the noun is up:
		say "There are no stairs going up here.";
	otherwise if the noun is outside:
		say "You're not sure which direction counts as outside.";
	otherwise if the noun is inside:
		say "You're not sure which direction counts as inside.";
	otherwise:
		if the location is front-room:
			say "There doesn't appear to be anything in that direction. The house and the river are the only objects of interest you can see anywhere.";
		otherwise if the location is styx-room:
			say "There doesn't appear to be anything in that direction. The house and the river are the only objects of interest you can see anywhere.";
		otherwise if the location is distant-shore:
			say "The beach ends abruptly in that direction.";
		otherwise if the location is gate-passage:
			say "The forest is impassable.";
		otherwise if the location is ruined-courtyard:
			say "The wall makes a corner there.";
		otherwise if the location is outside-treasure:
			say "You can see for miles, and there's nothing out there besides the castle.";
		otherwise:
			say "This room doesn't have an exit in that direction.";

The front-room is in haunted-region.

The front-room is a room. The printed name of the front-room is "Front Yard". The description of the Front-room is "You are standing before an asymmetrical, well-preserved Victorian mansion with a tower on one side and steps up to a door on the other. The sky is overcast, making it hard to tell the time of day. An overgrown flowerbed lies in stark contrast to the tidy-looking mansion.

A bright red neon sign is attahed incongruously to the house, saying 'Monsters Inside'.

To the [boldnorth], you can enter the parlor of the mansion. To the [boldeast] lies a dark and foreboding river[first time]. [mentionpsych][The initial appearance of the psych-tear]

As soon as you arrive, you see the monkey-like robot, still clutching the action figure.

'Hey, drop that!' you shout. But the robot chitters at you, running away to the east and jumping over the river in one enormous bound[only]." 

The monster-sign is distant scenery in front-room. THe printed name of the monster-sign is "neon sign". Understand "monsters" or "monster" or "monsters inside" or "sign" or "neon" or "bright" or "red" as the monster-sign. 

The description of the monster-sign is "The neon sign elaborately displays the words 'Monsters Inside'. It clashes terribly with the house itself."

To say mentionpsych:
	now the psych-tear is mentioned;

The lightless-sky is in front-room.

A thing can be examined or not examined. A thing is usually not examined.

Report examining something:
	now the noun is examined;

The examine containers rule does nothing when the noun is the front-bed.

The front-bed is an open unopenable scenery container in the front-room. The printed name of the front-bed is "overgrown flowerbed". Understand "overgrown" or "flower" or "bed" or "flowerbed" or "over-grown" as the front-bed. The description of the front-bed is "This flowerbed has run wild with [front-weeds][if wolfs-bane is in front-bed], but some [wolfs-bane] grow here as well[end if]."

The front-weeds are in the front-bed. The front-weeds are plural-named. The printed name of the front-weeds is "weeds". Understand "weed" or "weeds" as the front-weeds. The description of the front-weeds is "Weeds have choked away whatever else use to grow here[if wolfs-bane is in front-bed], except for the purple flowers[end if]."

Instead of digging the front-bed:
	if the wolfs-bane is in front-bed:
		try taking the wolfs-bane;
	otherwise:
		say "There's nothing underneath the soil.";

Instead of taking the front-weeds:
	say "The weeds do not look useful whatsoever[if wolfs-bane is in front-bed]. [The wolfs-bane], on the other hand, looks like it may be of interest[end if]."

Understand "pick [wolfs-bane]" as taking.

The wolfs-bane is in the front-bed. The wolfs-bane is ambiguously plural. The indefinite article of the wolfs-bane is "some". The printed name of the wolfs-bane is "[if wolfs-bane is examined]wolfsbane[otherwise]purple flowers[end if]". Understand "wolves" or "wolfs" or "bane" or "wolfsbane" or "purple" or "flower" or "flowers" as the wolfs-bane. The description of the wolfs-bane is "You recognize these purple flowers; they are [italic type]aconitum[roman type], or, in other words, wolfsbane."

Instead of eating the wolfs-bane:
	say "Wolfsbane is pretty toxic; better not to eat plants that you know will cause a negative reaction."

The scenery-mansion is scenery in the front-room. The printed name of the scenery-mansion is "mansion". Understand "gorgeous" or "well-preserved" or "well" or "tidy-looking" or "tidy" or "asymmetrical" or "haunted" or "house" or "looking" or "house" or "mansion" or "queen" or "anne" or "preserved" or "victorian" or "tall" or "stately" or "handsome" or "old" or "parlor" as the scenery-mansion. The description of the scenery-mansion is "This is a tall and stately old Victorian mansion in the Queen Anne style. It is asymmetrical, with a tower on one side and some steps leading up to a tall wooden door on the other.

On the house is a bright red neon sign saying 'Monsters Within'."

The scenery-tower is part of the scenery-mansion. The printed name of the scenery-tower is "tower". Understand "bemusing" or "tower" as the scenery-tower. The description of the scenery-tower is "The tower is only a few feet taller than the house around it, more bemusing than intimidating.".

Instead of entering the scenery-mansion:
	try going north;

The mansion-door is a scenery closed openable door. The mansion-door is south of the parlor-room and north of the front-room. The printed name of the mansion-door is "tall wooden door". Understand "door" or "steps" or "stairs" or "tall" or "wooden" or "opaque" or "windows" or "window" or "italianate" as the mansion-door. The description of the mansion-door is "Steps lead up to a tall, Italianate wooden door with opaque windows set into it."

Instead of searching the mansion-door:
	say "The whole door is opaque, even the windows."

Instead of exiting when the player is in parlor-room:
	try going south;

Instead of going nowhere from the parlor-room when the noun is outside:
	try going south;

Instead of going nowhere from the front-room when the noun is inside:
	try going north;

Instead of going nowhere from the front-room when the noun is up:
	try going north;

Instead of going nowhere from the parlor-room when the noun is down:
	try going south;

The front-moonlight is intangible scenery in front-room. Understand "moonlight" or "moon" as the front-moonlight. The description of the front-moonlight is "Gentle moonlight filters down from above, illuminating the handsome old mansion."

The front-river is distant scenery in front-room. Understand "river" or "dark" or "foreboding" or "water" or "waters" as the front-river. The printed name of the front-river is "river". The description of the front-river is "The waters of that distant river are dark and flow deep."

The fake-monkey is scenery in front-river. The printed name of fake-monkey is "monkey". Understand "robot" or "monkey" or "robotic" as the fake-monkey. 

Instead of doing something with the fake-monkey:
	say "The monkey isn't here anymore."

Chapter 10 - Styx

The styx-room is in haunted-region.

The styx-room is east of the front-room. The printed name of the styx-room is "Styx". The description of the styx-room is "To your east is a wide river that flows dark and smooth under the lightless sky. A sign proclaims this to be the dread river Styx. You know that name from mythology: the river that divides the living from the dead[first time].

Somehow you doubt this is the 'real' Styx, though. Whatever's going on, you might as well try to go with the flow[only].

You can return to the front yard to the [bold type]west[roman type]."

The styx-sign is an enterable scenery supporter in the styx-room. The printed name of the styx-sign is "sign". Understand "sign" or "granite" or "smaller" or "text" or "low" as the styx-sign. The description of the styx-sign is "This is a low, black granite sign that is labelled 'THE RIVER STYX.'

Underneath, in smaller lettering, it says, 'One Obol'."

The lightless-sky is distant backdrop in styx-room. Understand "lightless" or "sky" or "overcast" or "grey" or "gray" as the lightless-sky. The printed name of the lightless-sky is "sky". The description of the lightless-sky is "The sky is heavy and overcast; you see no light at all."

The scenery-styx is a backdrop in the styx-room. The printed name of the scenery-styx is "river Styx". Understand "river" or "Styx" or "water" or "dread" or "wide" or "dark" or "smooth" as the scenery-styx.

Instead of inserting something into the scenery-styx:
	say "It would be lost forever."

The description of the scenery-styx is "The waters flow by slowly, deeply, and powerfully."

To styx-react:
	say "A chill passes through you as you touch the water."

Instead of entering the scenery-styx:
	say "The current looks powerful, it could sleep you away."

Instead of physicality when the noun is scenery-styx:
	styx-react;
	
Instead of drinking scenery-styx:
	say "[one of]You dip your hands in the water and drink deeply. A horrible feeling comes over you, and you shiver[or]No. Never again[stopping]."

Charon is a man in the styx-room. "A figure in dark robes stands at the water's edge, one foot in a boat[first time][deliverfeequip]. If this river is the Styx, then this figure must be Charon. But probably not [italic type]the[roman type] Charon. You don't feel dead[only]."The description of Charon is "This figure is completely covered by his dark, heavy robe. He waits silently, one foot in the boat, and one in the water[if charon is not obolpaid].

He points at some smaller text on the sign. 'ONE OBOL', it says[end if]." Understand "figure" or "ferryman" as charon.

To say deliverfeequip:
	deliver fee-quip;

Fee-quip is a quip. The printed name of fee-quip is "Fee". Understand "Fee" as fee-quip. The target of Fee-quip is Charon. The preview of Fee-quip is "So, how do I pay you?"

The targetresponse of Fee-quip is "[if Charon is not obolpaid]Charon points toward the sign. 'ONE OBOL', it says in smaller text[otherwise]Charon holds up the obol you already used to pay[end if]."

The charon-robes are worn by charon. The printed name of the charon-robes is "dark robes". Understand "dark" or "heavy" or "robe" or "robes" as the charon-robes. The description of the charon-robes is "These heavy robes look quite luxurious. Charon must make a killing from all the money he collects from the dead."

Instead of attacking Charon:
	say "Really? Fighting a personification of death? Seems like a bad idea."

The charon-boat is scenery in styx-room. The printed name of the charon-boat is "boat". Understand "boat" as the charon-boat. The description of the charon-boat is "This simple boat is said to be the one that ferries the souls of the dead."

Instead of entering the charon-boat:
	if charon is not obolpaid:
		say "Charon shakes his head. Looks like you need to pay.";
	otherwise if the player is in styx-room:
		try going east;
	otherwise:
		try going west;

Instead of taking the charon-boat:
	say "Charon holds the boat down with one foot. It's not going anywhere."

Instead of pushing, pulling, or turning the charon-boat:
	say "Charon waves you away with his skeletal hand.";

Instead of inserting something into the charon-boat :
	say "Charon interposes himself, preventing you from placing anything in the boat."

Instead of putting something on the charon-boat:
	say "Charon interposes himself, preventing you from placing anything in the boat."

Instead of giving the obol to charon:
	say "Charon extends a bony claw from within his robe and takes the obol. He indicates the boat.

You step on, and he pushes his pole into the dark waters. The two of you glide silently across the river Styx.

As you travel, the world glitches around you for one moment, showing blank metal panels above you instead of a lightless sky. A robotic voice states, 'Now exiting Holoprogram CHR-9815: Monsters Inside, initiated by user Christine Saville. Next up is Holoprogram GAR-0001: Self-Reflection. You can return to your former program at any time by crossing back over the river. Apologies for any errors that occur in loading.'

All around you, a night sky reforms, as does a distant shore. After a few more moments, the boat runs ashore, and you step out.";
	now the player is in distant-shore;
	now Charon is in Distant-shore;
	now the charon-boat is in distant-shore;
	now the obol is held by Charon;
	now charon is obolpaid;
	
A thing can be obolpaid or not obolpaid. A thing is usually not obolpaid.

Before going east from styx-room:
	if charon is not obolpaid:
		say "The ferryman has not yet been paid. You may not cross." instead;
	otherwise:
		say "The ferryman obliges you, taking you to the other side.";
		now Charon is in Distant-shore;
		now the charon-boat is in distant-shore;

Before going west from the distant-shore:
	if clone-you is enclosed by the location:
		say "Your clone waves goodbye at you. 'I'm going back to the pool!' she says. 'Good luck[if the number of things enclosed by clone-you > 0] I'm going to leave [the list of things carried by clone-you] by the pool [end if]!'";
	say "[conditional paragraph break]The ferryman obliges you, taking you to the other side.";
	now Charon is in styx-room;
	now the charon-boat is in styx-room;

Chapter 11 - Tower room

[this will probably be part of access corridors later]

The tower-room is a room. The tower-room is in haunted-region. The printed name of tower-room is "Tower Room". The description of tower-room is "This is a clean, metallic hallway with ambient lighting from an unknown source. It seems to be a kind of access tunnel.

Sorry, testers; this connects to areas that haven't been implemented. Shouldn't matter for this part of the game, though!"

Chapter 12 - Distant shore

Castle-region is a region. Castle-region is in haunted-region.

Distant-shore is east of styx-room. The printed name of distant-shore is "Distant Shore". Distant-shore is a room in castle-region. "You are at the edge of the great river Styx. [Charon] is waiting to take you back [boldwest] over the river.

You've landed on a small beach. A decaying iron fence surrounds much of the area; the only way forward is through a distant gate to the [boldeast]. Farther to the east, you can see a ruined castle[first time]

The monkey-like thief is still here, carrying the action figure. It recoils from you, leaping through the bars of the fence. After a few seconds, you can see it in the distance, climbing onto the tower of the castle and into a hole on the roof, out of sight[only]."

The ruined-scenery is distant scenery in distant-shore. The printed name of the ruined-scenery is "ruined castle". Understand "ruined" or "ruins" or "ruin" or "tower" or "hole" or "spire" or "roof" or "holes" or "castle" as the ruined-scenery. The description of the ruined-scenery is "Past the iron fence rises the ruins of a castle. It still has a tower left standing, with holes in the roof."

The shore-beach is scenery in distant-shore. The printed name of shore-beach is "beach". Understand "small" or "beach" as the shore-beach. The description of the shore-beach is "This beach is bleak and seems relatively new, as it has not yet been washed into sand."

The iron-fence is a distant backdrop in the shore-beach. The printed name of the iron-fence is "iron fence". Understand "iron" or "tall" or "deadly" or "deadly-looking" or "fence" or "gate" or "decaying" as the iron-fence. The description of the iron-fence is "This tall and deadly-looking fence stands far away and surrounds the even further castle. A gate is visible to the [boldeast]."

The scenery-styx is in Distant-shore.

Chapter 13 - Iron gate

Gate-Passage is east from distant-shore. Gate-Passage is in castle-region. The printed name of the Gate-Passage is "Iron Gate". The description of Gate-Passage is "You are standing before a tall, brooding iron gate made of bars. The fence sweeps to either side of you, disappearing into a dense forest. Everything is silent around you. Not even the waters of the Styx can be heard this far from the shore. 

The gate is closed[if iron-bar is not part of iron-gate], but one of the bars has broken, leaving a gap that is easy to climb through[otherwise if iron-bar is noticed], but one of the bars appears weak[otherwise][end if]. 

You can return to the shore to the [boldwest], or continue to the castle to the [boldeast].";

The dark-forest is distant scenery in gate-passage. The printed name of the dark-forest is "dense forest". The description of the dark-forest is "To both the north and south stretches a dark, impenetrable forest." Understand "dense" or "dark" or "impenetrable" or "forest" as the dark-forest.

Instead of entering the dark-forest:
	say "The forest is incredibly dense, and seems to go on forever. There's no point in going in there." 

Instead of going nowhere from gate-passage when the noun is north or the noun is south:
	say "The forest is incredibly dense, and seems to go on forever. There's no point in going in there." 

The iron-bar is part of iron-gate. "An iron bar lies on the ground here." The printed name of the iron-bar is "iron bar". Understand "iron" or "broken" or "heavy" or "weak" or "bar" or "end" or "ends" or "solid" or "center" or "rusted" or "strong" as the iron-bar. The description of the iron-bar is "[if the iron-bar is part of iron-gate]One bar looks like it's rusted through; a good push might knock it out[otherwise]This heavy bar is a couple centimeters thick and about a meter long. It once barred the way to a castle, but no longer fulfills that task. Only the ends are rusted; the center is solid and strong[end if]."

Instead of climbing the iron-gate:
	say "The bars are mostly vertical; it looks hard to climb."
	
Instead of entering the iron-gate:
	if the iron-bar is part of the iron-gate:
		say "You can't squeeze through the bars.";
	otherwise:
		try going east;

Before turning or pushing or pulling or taking or attacking the iron-gate:
	if iron-bar is part of iron-gate:
		say "You twist a little and the iron bar pops off, falling to the ground.";
		now the iron-bar is in gate-passage instead;
		now iron-bar is noticed;
		now gate-gap is part of the iron-gate;
	
The gate-gap is scenery in gate-passage. The printed name of the gate-gap is "gap". Understand "gap" as the gate-gap.

Instead of unlocking the iron-gate with something:
	say "The gate isn't locked, it's just rusted shut."

Instead of entering the gate-gap:
	try going east;

Instead of physicality when the noun is the gate-gap:
	say "The gap is just a hole."
	
Instead of inserting something into the gate-gap:
	try dropping the noun;

Before turning or pushing or pulling or taking or attacking the iron-bar:
	if iron-bar is part of iron-gate:
		try pushing the iron-gate instead;

Before going east from gate-passage when iron-bar is part of iron-gate:
	say "You can't squeeze through the gate, although one bar looks weak." instead;

Instead of opening iron-gate:
	say "It seems rusted shut permanently.";

Instead of closing iron-gate:
	say "It's already closed.";

The iron-gate is scenery in Gate-Passage. The printed name of the iron-gate is "iron gate". Understand "proud" or "iron" or "tall" or "brooding" or "gate" or "fence" as the iron-gate. The description of the iron-gate is "This proud iron gate serves no useful purpose. It has rusted shut, [if iron-bar is part of iron-gate]but one of its bars seems loose[otherwise]and one of its bars are missing, allowing anyone to get through[end if]."

A thing can be noticed or unnoticed. The iron-bar is unnoticed.

Report examining the iron-gate:
	now iron-bar is noticed;
	
Instead of searching the iron-gate:
	say "You can clearly see the other side through the bars."

Instead of physicality when the noun is the iron-gate:
	say "The iron is cold and painful."

Before going east from gate-passage when the iron-bar is not part of iron-gate:
	say "You duck through the gap and pass through the fence.";

Before going west from ruined-courtyard when the iron-bar is not part of iron-gate:
	say "You duck through the gap and pass through the fence.";

Chapter 14 - Ruined courtyard

Ruined-courtyard is east from Gate-Passage. The ruined-courtyard is in castle-region. The printed name of ruined-courtyard is "Ruined Courtyard". The description of ruined-courtyard is "This once-beautiful courtyard is now blighted and ruined. Dead grass runs past empty flowerbeds, and crumbling walls surround most of the area. You can go [boldnorth] or [boldsouth] into the wings of the castle, go [boldeast] into the throne room, or return [boldwest] to the gate in the iron fence."

The iron-fence is in ruined-courtyard.

The scenery-courtyard is scenery in ruined-courtyard. Understand "courtyard" as the scenery-courtyard. The printed name of the scenery-courtyard is "courtyard". The description of the scenery-courtyard is "This seems like it was once a regal and delightsome area, now barren and dry."

The courtyard-grass is part of the scenery-courtyard. The printed name of the courtyard-grass is "dead grass". Understand "dead" or "dry" or "grass" as the courtyard-grass. The description of the courtyard-grass is "The grass here has been dead for a long, long time."

The empty-flowerbeds are scenery in ruined-courtyard. The printed name of the empty-flowerbeds is "empty flowerbeds". Understand "empty" or "flower" or "flowers" or "flowerbed" or "bed" or "beds" or "Flowerbeds" as the empty-flowerbeds. The description of the empty-flowerbeds is "Whatever grew here once is now long gone."

The crumbling-walls are scenery in ruined-courtyard. The printed name of the crumbling-walls is "crumbling walls". Understand "crumbling" or "wall" or "castle" or "crumbling-walls" as the crumbling-walls. The description of the crumbling-walls is "The walls of the couryard have begun to tumble down, and are crumbling."

The heavy-block is in ruined-courtyard. "[if blockblocking is true]A heavy block has fallen in front of the northern exit, preventing entry to the north wing of the castle[otherwise]The heavy block has been pushed out of the way[end if]."The printed name of the heavy-block is "heavy block". The description of the heavy-block is "This heavy block must have fallen off from part of the castle higher up. You might be able to push it." Understand "heavy" or "block" as the heavy-block.

Instead of digging the empty-flowerbeds:
	say "Your efforts are fruitless."

Instead of pulling the heavy-block:
	say "It's harder to get traction this way. Pushing would probably work better, although you're not sure you're strong enough for it."

Blockblocking is a truth state that varies. BlockBlocking is true.

Playerpushing is a truth state that varies. Playerpushing is false.

Instead of going north from ruined-courtyard when blockblocking is true:
	say "The heavy block is keeping you from going that way. It's much too heavy for you to move alone!"

Instead of clone-you going north from ruined-courtyard when blockblocking is true:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] tries to go north, but is obstructed by the block."

After pushing the heavy-block:
	if blockblocking is true:
		say "You lean down, and push the block as hard as you can. It moves a tiny bit, but seems to settle back almost immediately.";
		now playerpushing is true;
	otherwise:
		say "There's no need to push the block any more."

[We turn off playerpushing later on so it doesn't interfere with the clone code]

Instead of climbing the heavy-block:
	say "It's not high enough that climbing it would give you any advantage."

Instead of taking the heavy-block:
	say "It's far too heavy to pick up."

Instead of clone-you taking the heavy-block:
	if clone-you is enclosed by the location of the player:
		stop the action;

Instead of clone-you pushing something:
	if clone-you is enclosed by the location of the player:
		if the noun is the heavy-block:
			if playerpushing is true:
				say "Your clone[setcloneact] leans down and pushes, too. With your combined efforts, you push aside the heavy block. Now the northern passage is open.

			Your clone smiles. 'Great work,' she says. 'Let's see what else we can do.'";
				now blockblocking is false;
			otherwise:
				say "Your clone[setcloneact] tries to push the heavy block, but it's too heavy for her to push by herself.";
		otherwise:
			say "Your clone[setcloneact] halfheartedly attempts to push [the noun]."

Chapter 15 - Battered pantry

Battered-pantry is north from ruined-courtyard. Battered-pantry is in castle-region. The printed name of Battered-pantry is "Battered Pantry". "This appears to have stored food for the castle, once. Cupboards and shelves have all collapsed into a heap. The courtyard is back to the [boldsouth]."

[, while a stranged enclosed space is visible higher up on the [boldeast] wall.]

The battered-heap is scenery in the battered-pantry. The printed name of battered-heap is "heap of rubble". Understand "heap" or "rubble" or "heap of" or "junk" or "cupboards" or "shelve" or "shelves" as the battered-heap. The description of the battered-heap is "After looking over this heap thoroughly, you can't identify anything of use in it. It's just junk."

[Instead of going nowhere from battered-pantry when the noun is up:
	try going east;]

The notched-plank is in battered-pantry. "A long plank, perhaps once part of a cupboard, lies on the floor."The printed name of the notched-plank is "notched plank". Understand "notched" or "plank" or "long" or "cupboard" as the notched-plank. The description of the notched-plank is "This is a long plank, sturdy enough for several people to stand on. There is a notch in the center which cuts across the breadth of the plank, leaving the two sides balanced."

The plank-notch is part of the notched-plank. The printed name of the plank-notch is "notch". Understand "notch" as the plank-notch. The description of the plank-notch is "This notch is a several centimeters wide and about fifty centimeters long, running the width of the board."

Chapter 16 - Raised larder

[Raised-kitchen is east from battered-pantry. Raised-kitchen is in castle-region. The printed name of raised-kitchen is "Collapsed Kitchen." The description of the raised-kitchen is "This room is almost completely filled with rubble, so that you can nearly touch the ceiling. Judging from the grease-marks on the ceiling, it seems to have been a kitchen."

The kitchen-ceiling is scenery in raised-kitchen. The printed name of the kitchen-ceiling is "ceiling". Understand "ceiling" as the kitchen-ceiling. The description of the kitchen-ceiling is "The ceiling has years' worth of grease marks on it."

Instead of touching the kitchen-ceiling:
	say "You can just barely touch it. It's greasy."

The grease-marks are plural-named. The grease-marks are part of the kitchen-ceiling. The printed name of the grease-marks is "grease marks". The description of the grease-marks is "There are grease marks on the ceiling. Not in the 'oh yeah, I can harvest this grease and use it to lubricate things' way, but in the 'this is really gross' way."

Instead of touching the grease-marks:
	say "They feel like grease. Not enough to make use of, though."]

Chapter 17 - Dark pool

Dark-pool is south from ruined-courtyard. Dark-pool is in castle-region. The printed name of dark-pool is "Dark Pool". "You are in a dank cave. It looks older than the rest of the castle, hewn roughly out of stone. It feels so old it almost hurts, a forbidding place, one that should not have been intruded upon. It's hard to say why, exactly you feel like that, but it may be due to the pool of luminescent green liquid in the center of it. Exits lead [boldeast] and [boldnorth][first time].

You can hear murmuring coming from the pool. As you walk closer, the pool's bubbling softens and ceases, and the pool goes flat. You look in, and see your own [clone-you]. It winks at you.

'Hello, Emrys,' she says[trigger-reflection][only]."	

Instead of inserting something into the shimmer-pool:
	say "Whatever goes in there might be lost forever."

Instead of going nowhere from dark-pool when the noun is down:
	say "The pool does not look like a pleasant place to be."

Instead of entering the shimmer-pool:
	say "The pool does not look like a pleasant place to be."

Instead of drinking the shimmer-pool:
	say "It looks like you could catch twenty different diseases and radiation poisoning just from one sip."

The dank-cave is scenery in the dark-pool. The printed name of the dank-cave is "dank cave". Understand "dank" or "cave" as the dank-cave. The description of the dank-cave is "The walls are hard to see in the darkness, but they appear to be of sturdy stone." Understand "wall" or "walls" or "sturdy" or "stone" as the dank-cave.

Instead of touching the dank-cave:
	say "The walls are cold."

The shimmer-pool is scenery in the dark-pool. The shimmer-pool is a transparent unopenable closed container. The printed name of the shimmer-pool is "pool of luminescent green liquid". Understand "pool" or "pool of" or "luminescent" or "green" or "liquid" or "water" as the shimmer-pool. The description of the shimmer-pool is "This pool of luminescent liquid is unnaturally still[if clonesubmerged is true].

Your reflection is visible on the water[end if]."

Instead of opening the shimmer-pool:
	say "Something keeps you from touching the water; it frightens you.";

Instead of physicality when the noun is the shimmer-pool:
	say "Something keeps you from touching the water; it frightens you.";

To say trigger-reflection:
	deliver reflecting-me;


Section 1 - Face

Clonesubmerged is a truth state that varies. Clonesubmerged is true.

Before physicality when the noun is clone-you:
	if clonesubmerged is true:
		say "It's just a reflection, you can't touch it." instead;
		
Cloneacted is a truth state that varies. Cloneacted is false.

Every turn (this is the clone reacting rule):
	if cloneacted is false:
		if clone-you is enclosed by the location:
			if clonesubmerged is false:
				say "Your clone looks around, confused at how to imitate you.";
	now cloneacted is false;
	
The clone reacting rule is listed last in the every turn rulebook.

To say setcloneact:
	now cloneacted is true;

A clone-you is a woman in dark-pool. "[if clonesubmerged is true]Your reflection still floats in the pool[otherwise]Your clone is here, watching you[end if].". The printed name of clone-you is "[if currentactee is clone-you ]herself[otherwise if clonesubmerged is true]reflection[otherwise]clone[end if][if currentactor is clone-you][setcloneact][end if]". The indefinite article of clone-you is "your". Understand "image" or "reflection" or "clone" or "shadow" or "copy" or "curious" or "dark" or "eyes" or "resolute" or "jaw" as the clone-you. The description of clone-you is "[The clone-you] looks exactly like you: curious, dark eyes; resolute jaw; and increasing years[if the number of things held by clone-you > 0].

Your clone is carrying [a list of things held by clone-you][end if][if clone-you is on balanced-plank or clone-you is on balanced-plank2].

Your clone is standing on the balanced plank[end if]."

Reflecting-me is a quip. The printed name of reflecting-me is "Reflecting". Understand "reflecting" as reflecting-me. The target of reflecting-me is clone-you. The preview of reflecting-me is "And who exactly are you?"

The targetresponse of reflecting-me is "She says, 'Your reflection, of course.'

'Hmm,' you say. 'Kind of cheeky to use my image. When I was on the boat over here, it said this was a holoprogram. Is that right?'

'Yes,' she says. 'A psychotherapy holoprogram.'

'And you're part of it? Or are you...real?'

'I'm part of the program,' she says. 'I have fairly advanced AI, but you might notice some oddities. I serve as your reflection.'

'Let me guess,' you say. 'If it's psychotherapy, then you represent my inner self, or my feelings about myself.'

She smiles and says, 'Something like that. My job is to help you win the game. The treasure room is a ways east of here[deliverreflections]. We need to work together.'

'Like loving myself,' you say.

'If you see it that way,' says your reflection."

To say deliverreflections:
	deliver crumble-castle;
	deliver how-help;
	
crumble-castle is a quip. The printed name of crumble-castle is "Crumble". Understand "Crumble" as crumble-castle. The target of crumble-castle is clone-you. The preview of crumble-castle is "If this represents my psyche, or whatever, then why is the castle crumbling?"

The targetresponse of crumble-castle is "Your reflection answers, 'What it means is up to you. I'm not here to tell you what everything symbolizes. I respect you too much for that.'"

how-help is a quip. The printed name of how-help is "Assistance". Understand "Assistance" as how-help. The target of how-help is clone-you. The preview of how-help is "How can you help me if you're just a reflection?"

The targetresponse of how-help is "She answers, 'You're right, a reflection isn't much help. Here, help me up.'

An arm lifts out of the pool, which you grab and pull. Your reflection emerges[trigger-clone].

Before you stands a fully-embodied copy of yourself. She says, 'Well, I guess I'll follow your lead. I'm just your reflection, so whatever you do, I'll do, too. I'll give you a head start, though; I'll silently count to two before following you.'"

Hidden-pool is a room.

Section 2 - Your clone

Every turn:
	if the player is in dark-pool and clonesubmerged is true:
		if how-help is targetgiven:
			say "'Ah, you've returned,' says your clone, pulling herself out of the water again. 'Let's see what we can do together.'";
			now clonesubmerged is false;

To say trigger-clone:
	now clonesubmerged is false;

Past-actions is a list of stored actions that varies. Past-actions is {clone-you waiting}.
PastPast-actions is a list of stored actions that varies. PastPast-actions is {clone-you waiting}.
PastPastPast-actions is a list of stored actions that varies. PastPastPast-actions is {clone-you waiting}.

Every turn when the player is not in castle-region:
	repeat with current running through things enclosed by clone-you:
		now current is in dark-pool;
	now clonesubmerged is true;
	now clone-you is in dark-pool;

[Every turn when clonesubmerged is true:
	now Past-actions is {clone-you waiting};
	now PastPast-actions is {clone-you waiting};
	now PastPastPast-actions is {clone-you waiting};]

[After the player doing something when clonesubmerged is false:
	now the actor is clone-you; 
	add the current action to past-actions; 
	now the actor is the player; 
	continue the action. ]

TempAction is a stored action that varies.

Before the player doing something when the player is in castle-region:
	now the actor is clone-you;
	now TempAction is the current action;
	if the player is on east-ledge and the current action is clone-you going west:
		now TempAction is clone-you waiting;
	if clonesubmerged is false:
		add TempAction to past-actions; 
	now the actor is the player; 
	continue the action. 

Every turn when clonesubmerged is true and the player is not in dark-pool:
	now Past-actions is {clone-you waiting};
	now PastPast-actions is {clone-you waiting};
	now PastPastPast-actions is {clone-you waiting};

Every turn:
	if pastpastpast-actions is not empty:
		if clonesubmerged is false:
			try entry 1 of pastpastpast-actions;
[		say "Now the clone is [entry 1 of pastpastpast-actions].";]
	if clonesubmerged is false:
		now pastpastpast-actions is pastpast-actions;
		now pastpast-actions is past-actions;
		now past-actions is {};
	now playerpushing is false;
	now cloneheadedout is false;
	
Clonedebugging is an action out of world. Understand "debugclone" as clonedebugging.

Carry out clonedebugging:
	if debugclone is false:
		say "Turning on clone debugging.";
		now debugclone is true;
	otherwise:
		say "Turning off clone debugging.";
		now debugclone is false;
	
Debugclone is a truth state that varies. Debugclone is false.

Every turn when debugclone is true:
	say "The pastpastpastactions-actions list is currently [pastpastpast-actions], pastpast-actions list is currently [pastpast-actions], and the past-actions list is currently [past-actions]";
			
Before clone-you taking a a held thing:
	if clone-you is enclosed by the location:
		say "[one of]Your clone[setcloneact] copies the motions you made when grabbing [the noun], but only grasps air.[or]Your clone[setcloneact] pretends to grab an non-existent version of [the noun]. She smiles at you, as if amused.[or]The clone[setcloneact] mimics grabbing [the noun].[stopping]" instead;

Instead of clone-you waiting:
	if clone-you is enclosed by the location of the player:
		say "[one of]The clone[setcloneact] waits patiently[or]The clone[setcloneact] waits again, looking a bit bored[or]The clone[setcloneact] waits calmly, anticipating your next move[or]The clone[setcloneact] waits[stopping]."

Cloneheadedout is a truth state that varies. Cloneheadedout is false.

Before clone-you going:
	if clone-you is enclosed by the location:
		now cloneheadedout is true;

After clone-you going:
	if clone-you is in the location of the player:
		say "The clone[setcloneact] arrives, following your movements.";
	otherwise if cloneheadedout is true:
		say "Your clone heads out to [the noun]."

Instead of clone-you swimming:
	say "Your clone[setcloneact] firmly refuses to swim."

Instead of clone-you examining something:
	if clone-you is enclosed by the location:
		if the noun is something which can be seen by clone-you:
			say "Your clone[setcloneact] looks closely at [the noun].";
		otherwise:
			say "Your clone[setcloneact] tries to look at [the noun] but doesn't see it anywhere.";
				
Instead of clone-you examining clone-you:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] examines herself, seemingly pleased with the results.";

Instead of clone-you examining the player:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] examines you quite critically.";

The can't take people's possessions rule does nothing if the noun is held by clone-you.

A thing can be cloneheld or not cloneheld. A thing is usually not cloneheld.

Before taking a thing held by clone-you:
	now the noun is cloneheld;
	
After taking a cloneheld thing:
	say "You grab [the noun] from your clone[setcloneact], who offers no resistance. 'What's mine is yours,' she says with a touch of sarcasm.";
	now the noun is not cloneheld;

Instead of clone-you dropping something when the noun is not held by clone-you:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] gleefully imitates dropping [the noun], which she is not holding.";
		
Check clone-you putting something on something:
	if clone-you is enclosed by the location:
		if the noun is not held by clone-you:
			say "Your clone[setcloneact] attempts to put [the noun] on [the second noun], but can't, since she's not holding it." instead;
		otherwise if the second noun is the noun:
			say "Your clone[setcloneact] tries to figure out how to put something onto itself." instead;
		otherwise if the second noun is not a supporter:
			say "Your clone[setcloneact] tries to put [the noun] on [the second noun] but fails miserably." instead;

Check clone-you inserting something into something:
	if clone-you is enclosed by the location:
		if the noun is not held by clone-you:
			say "Your clone[setcloneact] attempts to put [the noun] into [the second noun], but can't, since she's not holding it." instead;
		otherwise if the second noun is the noun:
			say "Your clone[setcloneact] tries to figure out how to put something into itself." instead;
		otherwise if the second noun is not a container:
			say "Your clone[setcloneact] tries to put [the noun] into [the second noun] but fails miserably." instead;

The print protagonist internal rule response (B) is "[if currentactor is not the player]you[otherwise]yourself[end if]"

Currentactor is a person that varies. Currentactor is yourself.
Currentactee is a person that varies. Currentactee is yourself.

Before clone-you doing something:
	now currentactor is clone-you;
	if the noun is clone-you:
		now the noun is the player;
	otherwise if the noun is the player:
		now currentactee is clone-you;
		now clone-you is proper-named;
		now the noun is clone-you;
	if the second noun is clone-you:
		now the second noun is the player;
	otherwise if the second noun is the player:
		now currentactee is clone-you;
		now clone-you is proper-named;
		now the second noun is clone-you;

Every turn:
	now currentactor is the player;
	now clone-you is not proper-named;
	now currentactee is the player;

A thing can be cloneattempting or not cloneattempting. A thing is usually not cloneattempting.

Before clone-you taking something:
	now the noun is cloneattempting;

Every turn:
	repeat with current running through cloneattempting things:
		if current is held by clone-you:
			now current is not cloneattempting;
	if the number of cloneattempting things > 0:
		let current be a random cloneattempting thing;
		if current is clone-you:
			now currentactor is clone-you;
			now current is the player;
		otherwise if current is the player:
			now currentactor is clone-you;
			now current is clone-you;
			now currentactee is clone-you;
			now clone-you is proper-named;
		if clone-you is enclosed by the location:
			say "[one of]Your clone[setcloneact] attempts to grab [the current], but fails completely.[or]Your clone[setcloneact] looks at you in disbelief, but attempts to grab [the current] unsuccessfully.[or]Your clone[setcloneact] unsuccessfully tries to grab [the current].[stopping]";
		repeat with current2 running through cloneattempting things:
			now current2 is not cloneattempting;
		now currentactor is the player;
			
Instead of clone-you eating something:
	if clone-you is enclosed by the location of the player:
		if the noun is clone-you:
			say "Your clone[setcloneact] gnaws her skin a bit. 'Hmm, that's weird,' she says.";
		otherwise:
			say "Your clone[setcloneact] tries to eat [the noun], but fails.";

Instead of clone-you looking under something:
	if clone-you is enclosed by the location of the player:
		say "Your clone[setcloneact] bends down to look under [the noun]. 'I don't think there's anything under here,' she says.";

Instead of clone-you searching something:
	if clone-you is enclosed by the location of the player:
		say "Your clone[setcloneact] peers all around [the noun]. 'I don't see anything you didn't see,' she says.";

Instead of clone-you consulting something about a topic:
	if clone-you is enclosed by the location of the player:
		say "Your clone[setcloneact] tries to look up [the topic understood] in [the noun]. 'Is this what I'm supposed to be doing?' she asks, puzzled.";

Instead of clone-you locking something with something when clone-you:
	if clone-you is enclosed by the location of the player:
		if the second noun is not enclosed by clone-you:
			say "Your clone[setcloneact] pretends to lock [the noun] with an imaginary [second noun].";
		otherwise:
			say "Your clone[setcloneact] fumbles with [the second noun], saying 'I'm sorry, I've never really locked anything before."

Instead of clone-you unlocking something with something:
	if clone-you is enclosed by the location of the player:
		if the second noun is not enclosed by clone-you:
			say "Your clone[setcloneact] pretends to unlock [the noun] with an imaginary [second noun].";
		otherwise:
			say "Your clone[setcloneact] fumbles with [the second noun], saying 'I'm sorry, I've never really unlocked anything before."

Instead of clone-you switching on something:
	if clone-you is enclosed by the location of the player:
		say "Your clone[setcloneact] imitates pushing a pretend button on [the noun]. 'Psssheeew bwoop,' she says. 'Powering on!'";
	
Instead of clone-you switching off something:
	if clone-you is enclosed by the location of the player:
		say "Your clone[setcloneact] imitates pushing a pretend button on [the noun]. 'Dzhyooooooo,' she says. 'Powering down.'";
	
The rucksack is an openable closed wearable container. The rucksack is carried by the player. Understand "ruck" or "sack" or "backpack" or "back pack" as the rucksack. The description of the rucksack is "This is your standard-issue rucksack you were given on your first day on the Starship Tragwyddol."

Instead of clone-you opening something:
	if clone-you is enclosed by the location of the player:
		if the noun is an open thing:
			say "Your clone[setcloneact] says, 'That's already open, you know,' but pretends to open it again.";
		otherwise if the noun is closed:
			silently try opening the noun;
			if the noun is open:
				say "Your clone[setcloneact] opens up [the noun].";
			otherwise:
				say "Your clone[setcloneact] attempts to open [the noun], but fails.";
		otherwise:
			say "Your clone[setcloneact] pretends to open [the noun]."

Instead of clone-you closing something:
	if clone-you is enclosed by the location of the player:
		if the noun is a closed thing:
			say "Your clone[setcloneact] says, 'That's already closed, you know,' but pretends to close it again.";
		otherwise if the noun is open:
			silently try closing the noun;
			if the noun is closed:
				say "Your clone[setcloneact] closes [the noun].";
			otherwise:
				say "Your clone[setcloneact] attempts to close [the noun], but fails.";
		otherwise:
			say "Your clone[setcloneact] pretends to close [the noun]."

The block giving rule does nothing when the second noun is clone-you.
The block giving rule does nothing when the second noun is the player.

Instead of clone-you taking something held by clone-you:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] tosses [the noun] from one hand to another."

Instead of showing something to clone-you:
	say "Your clone seems fascinated by [the noun]."

Instead of clone-you showing something to someone:
	if clone-you is enclosed by the location:
		if the noun is enclosed by clone-you:
			say "Your clone[setcloneact] wiggles [the noun] in the air, showing it to [the second noun].";
		otherwise:
			say "Your clone[setcloneact] wiggles a pretend version of [the noun] in the air, showing it to [the second noun].";

Instead of clone-you waking someone:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] shouts, 'Wake up!' loudly."		

Instead of clone-you throwing something at something:
	if clone-you is enclosed by the location:
		if the noun is enclosed by clone-you:
			say "Your clone[setcloneact] tries to fake you out, pretending to throw [the noun] at [the second noun], but stopping at the last second.";
		otherwise:
			say "Your clone[setcloneact] thows a pretend version of [the noun] at [the second noun].";

Instead of clone-you attacking something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] fakes a karate chop at [the noun]."

Instead of kissing clone-you:
	say "You kiss your clone on the forehead. She seems surprised but pleased."

Instead of clone-you kissing something:
	if clone-you is enclosed by the location of the player:
		if the noun is the player:
			say "Your clone[setcloneact] crooks her finger at you and you bend down your head. She gives you a gentle kiss on the forehead.";
		otherwise:
			say "Your clone[setcloneact] pretends to kiss [the noun]."

Instead of clone-you uttering something to someone:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] hunches over and mutters something to [the noun] under her breath, copying your words from earlier."

Instead of clone-you singleuttering something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] mutters something to herself, copying your words from earlier."

Instead of clone-you touching something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] pretends to touch [the noun][one of]. 'I don't actually like touching things. A lot of stuff around here is icky,' she says[or], making sure not to actually touch it[stopping]."

Instead of clone-you waving something:
	if clone-you is enclosed by the location:
		if the noun is enclosed by clone-you:
			say "Your clone[setcloneact] waves [the noun] at you cheerfully.";
		otherwise:
			say "Your clone[setcloneact] waves a pretend version of [the noun].";

Instead of clone-you pulling something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] fruitlessly attempts to pull [the noun].";

Instead of clone-you pulling something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] fruitlessly attempts to swing [the noun].";

Instead of clone-you turning something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] pretends to turn [the noun]. 'I don't want to actually mess with anything important,' she says.";

Instead of clone-you pushing something to a direction:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] stops and puts her hands on her hips. 'Honestly, that's kind of confusing. How about I just push it and not worry about where it's going?'";

Carry out clone-you topicing:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] imitates pushing a button on an imaginary recorder. 'Oh, interesting,' she says. 'Lots of things to say.'"
	
Instead of clone-you tying something to something:
	if clone-you is enclosed by the location:
		if the noun is enclosed by clone-you:
			say "Your clone[setcloneact] pretends to tie [the noun] to [the second noun].";
		otherwise:
			say "Your clone[setcloneact] ties a pretend version of [the noun] to [the second noun].";

Instead of clone-you squeezing something:
	if clone-you is enclosed by the location:
		if the noun is enclosed by clone-you:
			say "Your clone[setcloneact] squeezes [the noun]. 'Huh, weird texture,' she says.";
		otherwise:
			say "Your clone[setcloneact] pretends to squeeze [the noun]. 'I'm squeezing furiously', she says, flexing her fingers.";

Instead of clone-you waving:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] waves back at you cheerfully."



Instead of clone-you burning something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] says, 'While that would be pretty awesome, I don't think I have anything flammable on me.'"

Instead of clone-you waking up:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] shakes her head, lightly slapping her cheeks. 'Come on, Emrys,' she says,' Wake up!'"

Instead of clone-you thinking:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] squeezes her eyes and thinks very hard."

Instead of clone-you thinking:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] squeezes her eyes and thinks very hard."

Instead of clone-you smelling something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] sniffs at [the noun]."	

Instead of clone-you listening to something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] tilts her head and listens to [the noun]."	

Instead of clone-you tasting something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] pretends to taste [the noun]. She says, 'I'm not actually going to taste anything. There might be germs!'"	

Instead of clone-you cutting something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] pretends to cut [the noun]. She makes sawing noises with her mouth."	

Instead of clone-you wearing a not wearable thing:
	say "Your clone[setcloneact] says, 'How would I wear that?'"

Instead of clone-you drinking something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] makes slurping sounds and pretends to drink [the noun].";
		
Instead of clone-you drinking something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] makes slurping sounds and pretends to drink [the noun].";	

Instead of clone-you rubbing something:
	if clone-you is enclosed by the location:
		try clone-you touching the noun;

Instead of clone-you setting something to some topic:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] wiggles her fingers in the air, saying, 'Ooh, I'm setting [the noun] to [the topic understood]. Whee!'";	

Instead of clone-you buying something:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] says, 'I bid five credits for [the noun]!'";	

Instead of clone-you climbing something:
	if clone-you is enclosed by the location:
		if the noun is an enterable supporter:
			try clone-you entering the noun;
		otherwise:
			say "Your clone[setcloneact] says, 'I don't think I can climb that!'";	

Instead of climbing the player:
	say "You try to get started by putting one foot on the other leg but it gets complicated after that."

Instead of clone-you sleeping:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] pretends to sleep for moment.";	

Chapter 18 -Throne room

Understand "upward" or "upwards" as up.

Throne-room is east from ruined-courtyard. Throne-room is in castle-region. [Throne-room is south from raised-larder.] The printed name of the throne-room is "Throne Room". "This is the vast ruin of a once-glorious throne room. Pillars line the walls, some fallen and crumbling. Stairs once led [bold type]upwards[roman type], but the lower parts have collapsed, leaving a balcony and the upper part of the stairs high above you, out of your reach[if strange-veins are in throne-room]. The balcony is densely covered in strange black veins[end if].

The center of the room on the east side is a raised dais that is missing its throne. It looks like it was once flanked with rows and rows of ornate wooden poles leading down the dais to the other side, but they are all broken on the floor. To the north, under the balcony, one pair of stone supports remains[if rodheld is true], with the [iron-bar] firmly placed between them[otherwise], but the pole that once went through them is shattered[end if].

You can leave to the [boldwest]."

The throne-dais is an enterable scenery supporter in throne-room. The printed name of the throne-dais is "dais". Understand "dais" as the throne-dais. The description of the throne-dais is "This must have been beautiful, once, but all is gone, now." 

The strange-veins are distant plural-named scenery in throne-room. The printed name of the strange-veins is "strange black veins". Understand "strange" or "black" or "vein" or "veins" as the strange-veins. The description of the strange-veins is "Strange black veins have crawled all over the balcony above you. They seem to be coming from somewhere else in the castle."

The scenery-pillars are plural-named scenery in throne-room. The printed name of the scenery-pillars is "pillars". Understand "pillar" or "pillars" or "fallen" or "crumbling" as the scenery-pillars. The description of the scenery-pillars is "These pillars seem more decorative than functional. Those that have fallen don't seem to have weakened the surrounding structure at all."

The missing-throne is scenery in throne-room. The printed name of the missing-throne is "throne". Understand "throne" as the missing-throne.

Instead of doing something with the missing-throne:
	say "Perhaps surprisingly for a throne room, there is actually no throne here."

Instead of entering the scenery-pillars:
	say "There's just not enough handholds.";

The broken-poles are scenery in the throne-room. The printed name of the broken-poles is "broken poles". Understand "broken" or "poles" or "pole" as the broken-poles. The description of the broken-poles is "These must have seemed beautiful, once."

The high-balcony is a scenery supporter in throne-room. The printed name of the high-balcony is "balcony". Understand "balcony" as the high-balcony. The description of the high-balcony is "This once must have been the landing of some stairs, but now is just a balcony, high in the air."

Before physicality when the player is on high-balcony:
	if the noun is not enclosed by high-balcony:
		say "That's too far away." instead;
		
Before physicality when the noun is high-balcony:
	if the player is not on high-balcony:
		say "That's too far away." instead;

Instead of taking the broken-poles:
	say "They lay in so many fragments, it would take forever to grab them all."
	
Instead of turning, pushing, or pulling the broken-poles:
	say "The fragment lie everywhere, and cannot be easily manipulated."

The stone-pair is scenery in the throne-room. The printed name of the stone-pair is "pair of stone supports". Understand "pair" or "pair of" or "stone" or "support" or "hole" or "holes" or "sewing" or "eyes" or "stable" or "needle" or "needles"or "supports" as the stone-pair. The description of the stone-pair is "This is a pair of stone supports, about a meter apart from each other and a few meters away from the wall. They each have a hole in them a few centimeters wide, with the holes facing each other. Overall, they look a bit like two large sewing needles stuck into the ground[if rodheld is false].

The pole they once held is long gone[otherwise].

Together, they are currently holding an iron rod[end if]."

Instead of putting something on the stone-pair:
	if rodheld is true:
		try putting the noun on the iron-bar;
	otherwise if the noun is the iron-bar:
		say "You place the iron rod through the holes in the stone supports. It fits perfectly, forming a large horizontal bar at about waist-height.";
		now the iron-bar is in throne-room;
		now rodheld is true;
	otherwise:
		say "You're not sure how putting [the noun] on top of the supports will help."


Before going north from the throne-room:
	say "You climb up into the hole that goes to the larder."

Rodheld is a truth state that varies. Rodheld is false.

Instead of inserting something into the stone-pair:
	if rodheld is true:
		say "The iron rod is alreay inside the holes.";
	otherwise if the noun is the iron-bar:
		say "You place the iron rod through the holes in the stone supports. It fits perfectly, forming a large horizontal bar at about waist-height.";
		now the iron-bar is in throne-room;
		now rodheld is true;
	otherwise:
		say "You're not sure how putting [the noun] into the holes will help."

Report examining iron-bar when rodheld is true:
	say "The iron rod is wedged perfectly between the two supports, creating a stable pole."

Report taking iron-bar:
	now rodheld is false;

The balanced-plank2 is an enterable supporter. "The plank is here, balanced carefully."The printed name of the balanced-plank2 is "balanced plank". Understand "notched" or "plank" or "balanced" or "long" or "cupboard" as the balanced-plank2. The description of the balanced-plank2 is "This is a long plank, sturdy enough for several people to stand on. There is a notch in the center, which cuts the short way across the plank. Right now the plank is balanced."

Every turn:
	if rodheld is false:
		if balanced-plank2 is in throne-room:
			say "Without the rod to hold it, the plank clatters to the ground.";
			repeat with current running through things on balanced-plank2:
				now current is in the throne-room;
			now the balanced-plank2 is nowhere;
			now the notched-plank is in throne-room;
			set pronouns from the balanced-plank2;
			

Instead of putting something on the iron-bar when rodheld is true:
	if the noun is the notched-plank:
		say "You balance the notched plank on the iron bar. It wobbles a bit back and forth, but then settles down.";
		now the notched-plank is nowhere;
		now the balanced-plank2 is in throne-room;
		set pronouns from the balanced-plank2;
	otherwise:
		say "The iron bar is fairly thin; the only thing you could put on it would be something balanced and stable enough to stay put.";

Instead of putting the notched-plank on the iron-bar when rodheld is false:
	say "That would be a lot easier if the bar were being held by supports of some kind."

Instead of entering the iron-bar when rodheld is true:
	say "The iron bar itself is too narrow to stand on."

After entering the balanced-plank2:
	say "You climb onto the plank. The plank wobbles back and forth a bit, but then it settles down.";
	
After jumping when the player is on the balanced-plank2:
	if clone-you is on the balanced-plank2:
		say "Your clone[setcloneact] launches up high into the air, close to the balcony, before landing back on the board.";
	otherwise:
		say "You jump, but with no resistance from the other end you don't get very high.";

Instead of clone-you jumping:
	if clone-you is enclosed by the location:
		if the player is on the balanced-plank2:
			if the strange-veins are in throne-room:
				say "Your clone[setcloneact] jumps up high and then slams back down onto the plank, launching you into the air. 

		You fly through the air, but the strange veins repulse you, and you tumble back down, landing on the plank.

		'The castle is cursed,' says your clone[setcloneact]. 'We'll need to find a way to break the curse.'";
			otherwise:
				say "Your clone[setcloneact] jumps up high and then slams back down onto the plank, launching you into the air. You fly through the air and land on the balcony, right next to the stairs!";
				now the player is on high-balcony;
		otherwise if the player is on balanced-plank:
			say "Your clone[setcloneact] hesitates to jump, like you did, and says, 'I don't want to throw off your balance!'";
		otherwise:
			say "Your clone[setcloneact] jumps high in the air. 'I think I got higher than you did,' she says."	

Before taking the balanced-plank2:
	if someone is on the balanced-plank2:
		say "You can't pick up the plank when someone is on it." instead;

Report taking the balanced-plank2:
	now the notched-plank is carried by the player;
	now the balanced-plank2 is nowhere;
	set pronouns from the notched-plank;

Every turn when balanced-plank2 is held by someone:
	repeat with current running through people holding balanced-plank2:
		now the notched-plank is carried by current;
		now the balanced-plank2 is nowhere;
		set pronouns from the notched-plank;

Instead of inserting notched-plank into a container:
	say "[The second noun] can't hold [the notched-plank], it's too big."

Instead of putting something on the balanced-plank2 when the noun is enclosed by the player:
	say "[The noun] slides off of the board and onto the ground.";
	silently try dropping the noun;

The upper-stairs is a plural-named scenery staircase. The upper-stairs are up from throne-room and down from castle-spire. The printed name of the upper-stairs is "upper stairs". Understand "upper" or "vestigial" or "stairs" as the upper-stairs. The description of the upper-stairs is "These vestigial stairs are all that is left of a once-grand staircase."

Before going up from throne-room:
	if the player is not on high-balcony:
		say "You can't reach the stairs from here." instead;
	otherwise:
		now the player is in castle-spire instead;

Before entering upper-stairs:
	if the player is enclosed by throne-room:
		if the player is not on high-balcony:
			say "They are too far away." instead;

Chapter 19 - Spire

The castle-spire is a dark room in castle-region. The printed name of the castle-spire is "Spire". The description of the castle-spire is "This room is unusual. Most of it looks like a run-down castle spire made of stone and wood, but one wall is made of solid stainless steel. A dedication plaque is fixed to the wall."

The stone-wood is plural-named scenery in castle-spire. The printed name of stone-wood is "castle materials". Understand "stone" or "wood" or "castle" or "spire" or "material" or "materials" as the stone-wood. The description of the stone-wood is "All of the materials making up the castle and spire seem old and crumbling, except for the wall."

The spire-bot is an animal in castle-spire. The printed name of spire-bot is "monkey robot". Understand "monkey" or "monkey-like" or "like" or "robot" or "silver" or "metal" or "robotic" or "creature" or "polygons" or "shape" or "polygonal" as the spire-bot. "At last, the monkey-like robot you saw take the action figure is here; in fact, it's still holding Gareth's toy! Instead of running away, though, the robot is facing you calmly." The description of the spire-bot is "This seems like a very advanced robotic creature made of some shimmering, silver metal hammered into polygonal shapes."

The gareth-toy is carried by the spire-bot. The printed name of the gareth-toy is "Dracula toy". Understand "action" or "figure" or "gareth's" or "toy" or "dracula" or "vampire" as the gareth-toy. The description of the gareth-toy is "This is Gareth's vintage Dracula action-figure; you know that it's his very favorite. He'll definitely be wanting this back!"

The spire-wall is scenery in castle-spire. The printed name of spire-wall is "unusual wall". Understand "unusual" or "wall" or "solid" or "stainless" or "steel" as the spire-wall. The description of the spire-wall is "This must be the true edge of the holo-program chamber. There is a dedication plaque affixed onto it."

Instead of going nowhere from castle-spire when the noun is outside:
	try going down;

The spire-plaque is scenery in the castle-spire. The printed name of the spire-plaque is "dedication plaque". Understand "dedication" or "plaque" as the spire-plaque. The description of the spire-plaque is "You read the plaque out loud:

'This holo-chamber is dedicated to Gareth Djomo, Ship Psychologist of the Starship Tragwyddol.

'Gareth's calm head and quick thinking prevented mass panic during the near-fatal accident that the Tragwyddol suffered on its maiden voyage. He was instrumental to the survival of the ship. 

'In later years, Gareth went on to pioneer the use of holo-chambers for therapy. For his decades of service, we dedicate this ship's holo-chambers to him.'"

Report examining the spire-plaque:
	say "Once you've finished reading the plaque, the monkey robot drops the action figure at your feet, then bounds out a hole in the spire, leaving you alone.";
	now gareth-toy is in castle-spire;
	now the spire-bot is nowhere;

Instead of taking the gareth-toy when the gareth-toy is carried by the spire-bot:
	say "The robot screeches and jumps back. It points at the dedication plaque on the wall."

Rule for printing the description of a dark room when the player is in castle-spire: 
	say "This room is completely dark. You can barely see some light from below." instead. 

Instead of showing the gareth-toy to gareth:
	try giving the gareth-toy to gareth;

Instead of giving the gareth-toy to gareth:
	say "You hand Gareth his action figure.

Gareth looks up, startled out of his revery. He says, 'Hmm? Why'd you grab this?' he asks, looking over at the desk.

'I...it's complicated,' you say[triggergarethdedication].'";
	now gareth-toy is carried by gareth;

To say triggergarethdedication:
	deliver dedication-quip;
	if simians-gareth is not targetgiven:
		remove simians-gareth;
	
Dedication-quip is a quip. The printed name of dedication-quip is "Dedication". Understand "Dedication" as dedication-quip. The preview of dedication-quip is "Gareth, I learned something about your future.". The target of dedication-quip is gareth. 

The targetresponse of dedication-quip is "'My future? None of us have a future. We're all going to die,' he responds bitterly.

'That's not true,' you say. 'I've seen what comes next. I saw a memorial to you, in the future. It said that you helped everyone on the ship today survive through your patience and service. You lived a long life.'

His face lifts, but hesitantly. 'Is this your weaver's gift?'

'Yes,' you respond.

His face fills with determination. 'O--Okay. I think I can do it. I'll try to help them. I'm sorry I've stuck myself up in here, I thought everything was lost. Thank, Emrys,' he says. He runs out of the room, only to come back, drop his action figure carefully on the desk, and run out again.

The tear in space in this room gently turns from red to green.";
	
Report uttering dedication-quip to gareth:
	now the psych-tear is green-torn;
	now gareth is nowhere;

[maybe add part where he's looking for toy?]

Instead of going down from castle-spire:
	now the player is on high-balcony;

Before going nowhere from throne-room when the noun is down:
	if the player is on high-balcony:
		try getting off the high-balcony instead;

After getting off the high-balcony:
	say "You jump off the balcony to the ground below. You hit the ground hard, but you're okay.";

Chapter 20 - Dark tunnel

The dark-tunnel is east from dark-pool. The dark-tunnel is in castle-region. The printed name of the dark-tunnel is "Dark Tunnel". "This dark tunnel leads from the [boldwest] to a shadowed exit blocked by a portcullis to the [boldeast]. In front of the door, however, is a deep pit that is too far for you to jump over. A thin steel rail is halfway across the pit, running from side to side[if the player is not on east-ledge]. Across the pit, in front of the portcullis, is a ledge, and next to the ledge a rusty wheel is embedded in the wall[otherwise].

Next to you are a large portcullis and a rusty wheel[end if]."

The shadowed-exit is a scenery open unopenable door. Shadowed-exit is east from dark-tunnel and west from treasure-room. The printed name of shadowed-exit is "shadowed exit". Understand "shadow" or "shadowed" or "dark" or "passage" or "exit" as the shadowed-exit. The description of the shadowed-exit is "A dark passage that leads betwen rooms."

Before doing something with the shadowed-exit:
	if the player is not on the east-ledge:
		now the shadowed-exit is distant;
	otherwise:
		now the shadowed-exit is not distant;

The giant-pit is scenery in the dark-tunnel. Understand "deep" or "pit" as the giant-pit. The printed name of the giant-pit is "deep pit". The description of the giant-pit is "It's impossible to see the bottom of this thing. It makes your skin crawl."

Understand "climb down [something]" or "climb into [something]" as entering.

Understand "jump across [the giant-pit]" as entering.

Instead of physicality when the noun is the giant-pit:
	say "You can't really touch a pit, it's just the absence of solid material."

Instead of entering the giant-pit:
	say "The pit is so large that you shudder at the idea of falling into it. Who knows when you might land?"

The east-ledge is a scenery supporter in the dark-tunnel. The printed name of the east-ledge is "ledge". Understand "ledge" as the east-ledge. The description of the east-ledge is "This ledge just out of the very east side of the room. A rusty wheel is on the wall next to it."

Before doing something with the east-ledge:
	if the player is not on the east-ledge:
		now the east-ledge is distant;
	otherwise:
		now the east-ledge is not distant;

The iron-rail is a scenery supporter in the dark-tunnel. The printed name of the iron-rail is "steel rail". Understand "steel" or "rail" as the iron-rail. The description of the iron-rail is "This steel rail is a couple of centimeters wide and spans the pit from the left side to the right side. You can't reach it from where you are."

Instead of inserting something into the giant-pit:
	say "Anything you put in there is going to stay there forever. Best to leave it alone.";

The balanced-plank is an enterable supporter. "The plank is here, balanced carefully."The printed name of the balanced-plank is "balanced plank". Understand "notched" or "plank" or "balanced" or "long" or "cupboard" as the balanced-plank. The description of the balanced-plank is "This is a long plank, sturdy enough for several people to stand on. There is a notch in the center, which cuts the short way across the plank. Right now the plank is balanced."

Instead of putting something on the iron-rail:
	if the noun is the notched-plank:
		say "You balance the notched plank on the steel rail. It wobbles a bit back and forth, but then settles down.";
		now the notched-plank is nowhere;
		now the balanced-plank is in dark-tunnel;
		set pronouns from the balanced-plank;
	otherwise:
		say "The steel rail is fairly thin and pretty far away; the only thing you could put on it would be something long enough to reach and stable enough to stay put.";

Instead of taking the iron-rail:
	say "It's firmly embedded into the walls."

Instead of entering the iron-rail:
	say "The steel rail itself is too narrow to stand on, and too far away to jump to."

Instead of entering the notched-plank when the notched-plank is in a room:
	say "You stand on the plank for a second, but get off again."

Instead of putting something on the notched-plank when the notched-plank is in a room:
	say "You set [the noun] on the plank, but it's not very useful. You pick [the noun] back up again."

After entering the balanced-plank:
	say "The plank wobbles back and forth a bit, but then it settles down. You might be able to make it to the [boldeast] now.";
	
Instead of jumping when the player is on the balanced-plank:
	if clone-you is on the balanced-plank:
		say "That would launch your clone[setcloneact] right into the ceiling! Or make them fall into the pit. A sort of obscene clone[setcloneact] fall, if you will.";
	otherwise:
		say "That would flip the board and send you falling into the pit. Maybe a bad idea.";

Before taking the balanced-plank:
	if someone is on the balanced-plank:
		say "You can't pick up the plank when someone is on it." instead;

The balanced-plank is portable. The balanced-plank2 is portable.

Report taking the balanced-plank:
	now the notched-plank is carried by the player;
	now the balanced-plank is nowhere;
	set pronouns from the notched-plank;

Instead of putting something on the balanced-plank:
	say "There's a good chance you'll lose it if you put that there."

Before going east from dark-tunnel:
	if the giant-pit is nowhere:
		do nothing;
	otherwise if the player is not on the balanced-plank and the player is not on east-ledge:
		if the balanced-plank is in dark-tunnel:
			try the player entering the balanced-plank instead;
		otherwise:
			say "There's no clear way to cross the pit right now." instead;
	otherwise if clone-you is not on the balanced-plank:
		say "The far side of the pit is longer than the near side, so you'd have to jump from the very end of the board. That's not going to happen without something to balance the rest of the board." instead;
	otherwise if the player is not on east-ledge:
		say "You leap over to the eastern ledge, successfully landing! Your clone[setcloneact] attempts to balance on the plank, succesfully keeping herself from falling.";
		now the player is on east-ledge instead;
		now past-actions is {clone-you going east};
	otherwise if the shadow-portcullis is not open:
		say "The portcullis bars the way forward." instead;
	otherwise:
		now the player is in treasure-room instead;

Before going west from dark-tunnel:
	if the player is on the balanced-plank:
		try the player getting off the balanced-plank instead;

The fly-wheel is scenery in dark-tunnel. The printed name of fly-wheel is "rusty wheel". Understand "rusty" or "wheel" as the fly-wheel. The description of the fly-wheel is "This rusty wheel set onto the wall has no visible purpose, but it does look like it can [bold type]turn[roman type]."

Every turn when the player is in dark-tunnel:
	if the giant-pit is in dark-tunnel:
		if the player is not on the east-ledge:
			now the fly-wheel is distant;
		otherwise:
			now the fly-wheel is not distant;

The shadow-portcullis is scenery in the dark-tunnel. The shadow-portcullis can be open or closed. The shadow-portcullis is closed. The printed name of the shadow-portcullis is "portcullis". Understand "heavy" or "portcullis" as the shadow-portcullis. The description of the shadow-portcullis is "It's hard to tell if this heavy portculllis was designed to keep things out, or in."

Instead of opening the shadow-portcullis:
	if the shadow-portcullis is open:
		say "It's already open!";
	otherwise:
		say "It's not clear how to do that, but it might involve the wheel.";
		
Instead of closing the shadow-portcullis:
	if the shadow-portcullis is closed:
		say "It's already closed!";
	otherwise:
		say "It's not clear how to do that.";

Instead of turning the fly-wheel:
	if the giant-pit is in dark-tunnel:
		if the player is on east-ledge:
			say "The wheel is much harder to turn than expected. Once you get started, though, you build momentum. The portcullis starts lifting.

	But, too your surprise, something comes up from the pit as well. A counterweight must be falling somewhere, as both the portcullis and the bottom of the pit rise at once. Soon the floor of the pit rushes up, slowing down right before covering up the steel rail and gently pushing aside the notched plank and your clone[setcloneact], both of whom are now on solid ground. 

	The portcullis is open.

	Your clone[setcloneact] grins. 'Solving one problem fixed a lot more, I guess. Let's get our reward,' she says.";
			now the shadow-portcullis is open;
			now the giant-pit is nowhere;
			now the iron-rail is nowhere;
			now the balanced-plank is nowhere;
			now the notched-plank is in dark-tunnel;
			move player to dark-tunnel, without printing a room description;
			repeat with current running through things on east-ledge:
				now current is in dark-tunnel;
			if clone-you is on balanced-plank:
				now clone-you is in dark-tunnel;
			now the east-ledge is nowhere;
			now the description of dark-tunnel is "This dark tunnel leads from the [boldwest] to a shadowed exit to the [boldeast]. On one side, a rusty wheel is embedded in the wall. Otherwise, the room shows no sign of its now-disappeared features.";
		otherwise:
			say "It's too far away to turn from here.";
	otherwise:
		say "The wheel spins uselessly. It seems like it's done with, now."

Instead of getting off the east-ledge:
	say "It's not obvious how to get off the ledge. The plank is too far away to get back easily."

[code in that the player can't go east until the plank is there and until it is balanced by the clone[setcloneact]]

[add the fulcrum to the initial appearance and description of the plank]

Chapter 21 - Treasure room

Treasure-room is a room in castle-region. The printed name of treasure-room is "Treasure Room". "This must have been a magnificent treasure room, once, but it is almost completely bare. The walls here seem covered in pure gold. On the walls are engravings, etched in intricate detail[if the malignant-wall is in treasure-room]. 

The back wall is covered in some kind of malignant mass, with strange black veins stretching out of it and over much of the room. Just looking at if makes you feel sick[otherwise].

The back wall is gone now, leaving a passage to go outside to the [boldeast][end if]."

Before going nowhere from treasure-room when the noun is outside:
	if the malignant-wall is nowhere:
		try going east;

Instead of clone-you examining the malignant-wall:
	if clone-you is enclosed by the location:
		say "Your clone[setcloneact] looks closely at the malignant mass. 'That sure looks nasty,' she says."

The treasure-veins are plural-named scenery in treasure-room. The printed name of treasure-veins is "strange black veins". Understand "strange" or "black" or "vein" or "veins" as the treasure-veins. The description of the treasure-veins is "These strange black veins stretch across much of the room and, perhaps, beyond.";

Instead of physicality when the noun is treasure-veins:
	say "The veins are too repulsive to touch.";

Instead of attacking the malignant-wall:
	say "It yields a little beneath your fists, but not enough[if clone-you is in treasure-room].

Your clone[setcloneact] shakes her head. 'I don't think that's the best way to go about this,' she says[end if]."

The gold-walls are scenery in the treasure-room. The printed name of the gold-walls is "gold walls". Understand "gold" or "golden" or "walls" as the gold-walls. The description of the gold-walls is "The walls here seem to be coated in gold. There are intricate engravings on the wall which draw your attention."

The intricate-engravings are part of the gold-walls. The intricate-engravings are plural-named. The printed name of the intricate-engravings is "intricate engravings". Understand "intricate" or "engraving" or "carving" or "carvings" or "etching" or "etchings" or "engravings" or "dyad" or "dyads" or "chords" or "chord" or "note" or "notes" as the intricate-engravings. The description of the intricate-engravings is "A complex set of engravings is on the wall. One you recognize from your school training as music; it looks like chords. Or, no, dyads, since there are just two notes at a time.

The first pair are a D and an F. The second are a D and a G, and the last are an F and a G.

[bracket]You can sing a note by typing SING A or SING C, for example, but can only sing one note at a time.[close bracket]"

Notesinging is an action applying to one topic. Understand "sing [text]" as notesinging.

Firstchord is a truth state that varies. Firstchord is false.
Secondchord is a truth state that varies. Secondchord is false.
Thirdchord is a truth state that varies. Thirdchord is false.

Lastnote is some text that varies. Lastnote is "A".

Breakchords is a truth state that varies. Breakchords is false. 
Justbroke is a truth state that varies. Justbroke is false.

Carry out notesinging:
	if the player is emrys-weaver:
		now breakchords is true;
		now justbroke is false;
		if the topic understood matches " A":
			say "You sing the note A, purely and clearly.";
			now lastnote is "A";
		otherwise if the topic understood matches " B":
			say "You sing the note B, purely and clearly.";
			now lastnote is "B";
		otherwise if the topic understood matches " C":
			say "You sing the note C, purely and clearly.";
			now lastnote is "C";
		otherwise if the topic understood matches " D":
			say "You sing the note D, purely and clearly.";
			now lastnote is "D";
		otherwise if the topic understood matches " E":
			say "You sing the note E, purely and clearly.";
			now lastnote is "E";
		otherwise if the topic understood matches " F":
			say "You sing the note F, purely and clearly.";
			now lastnote is "F";
		otherwise if the topic understood matches " G":
			say "You sing the note G, purely and clearly.";
			now lastnote is "G";
		otherwise if the topic understood matches the text "Note", case insensitively:
			say "Oh dear, that doesn't seem to be a note you know how to sing.";
			now lastnote is "none";
		otherwise:
			say "You sing softly, under your breath.";
			now lastnote is "none";
	otherwise:
		say "It wasn't the right time for singing."

Report clone-you notesinging:
	now breakchords is true;
	if the topic understood matches " A":
		say "Your clone[setcloneact] sings the note A, purely and clearly.";
	otherwise if the topic understood matches " B":
		say "Your clone[setcloneact] sings the note B, purely and clearly.";
	otherwise if the topic understood matches " C":
		say "Your clone[setcloneact] sings the note C, purely and clearly.";
	otherwise if the topic understood matches " D":
		say "Your clone[setcloneact] sings the note D, purely and clearly.";
		if firstchord is false:
			if lastnote is "F":
				triggerfirstchord;
		otherwise if secondchord is false:
			if lastnote is "G":
				triggersecondchord;
	otherwise if the topic understood matches " E":
		say "Your clone[setcloneact] sings the note E, purely and clearly.";
	otherwise if the topic understood matches " F":
		say "Your clone[setcloneact] sings the note F, purely and clearly.";
		if firstchord is false:
			if lastnote is "D":
				triggerfirstchord;
		otherwise if thirdchord is false:
			if lastnote is "G":
				triggerthirdchord;
	otherwise if the topic understood matches " G":
		say "Your clone[setcloneact] sings the note G, purely and clearly.";
		if secondchord is false:
			if lastnote is "D":
				triggersecondchord;
		otherwise if thirdchord is false:
			if lastnote is "F":
				triggerthirdchord;
	otherwise:
		say "The clone[setcloneact] attempts to sing a bit, but it's muddled.";

To triggerfirstchord:
	if the player is in treasure-room:
		now breakchords is false;
		now firstchord is true;
		say "[conditional paragraph break]As you and your clone[setcloneact] sing in harmony, the malignant mass trembles and shakes. 

	[one of]'Harmony destroys it,' says your clone[setcloneact]. 'Let's keep going!'[or]'Okay, it's working! Let's get it right this time!' says your clone[setcloneact].[stopping]"

To triggersecondchord:
	if the player is in treasure-room:
		if firstchord is true:
			now breakchords is false;
			now secondchord is true;
			say "[conditional paragraph break]As you and your clone[setcloneact] continue to sing the notes from the engraving, the strange black veins shrink and weaken. 'Keep it up!' she shouts."

To triggerthirdchord:
	if the player is in treasure-room:
		if firstchord is true and secondchord is true:
			now breakchords is false;
			now thirdchord is true;
			say "[conditional paragraph break]Finally, you finish the song. The malignant mass wails, trembles, and then violently explodes. You feel nothing but a rush of air and light. There is no treasure revealed, but you can now go outside to the [boldeast].

		'We did it!' shouts your clone[setcloneact]. 'Great work, Emrys!'";
		now malignant-wall is nowhere;
		now strange-veins are nowhere;

Every turn:
	now lastnote is "None";
	if the malignant-wall is in treasure-room:
		if justbroke is false:
			if breakchords is true:
				if firstchord is true:
					if the player is in treasure-room:
						now firstchord is false;
						now secondchord is false;
						now thirdchord is false;
						say "The song is out of tune with the notes of the engraving. The malignant mass recovers and grows larger than ever.

				'It's okay,' says your clone[setcloneact]. 'We'll try again.'";
						now justbroke is true;

The malignant-wall is scenery in the treasure-room. The printed name of the malignant-wall is "malignant mass". Understand "malignant" or "mass" or "wall" or "crumbling" or "organic" or "rotten" or "matter" as the malignant-wall. The description of the malignant-wall is "This looks a crumbling, rotten mass of some kind of organic matter. Strange black veins stretch out from it, infecting the castle."

Instead of taking, touching, rubbing, pushing, or pulling the malignant-wall:
	say "It would be horrifying to grasp that with your hands."

WIthstriking is an action applying to one thing and one carried thing. 

Understand "attack [something] with/using [something]" as withstriking.
Understand "break [something] with/using [something]" as withstriking.
Understand "smash [something] with/using [something]" as withstriking.
Understand "hit [something] with/using [something]" as withstriking.
Understand "fight [something] with/using [something]" as withstriking.
Understand "torture [something] with/using [something]" as withstriking.
Understand "wreck [something] with/using [something]" as withstriking.
Understand "crack [something] with/using [something]" as withstriking.
Understand "destroy [something] with/using [something]" as withstriking.
Understand "murder [something] with/using [something]" as withstriking.
Understand "kill [something] with/using [something]" as withstriking.
Understand "punch [something] with/using [something]" as withstriking.
Understand "thump [something] with/using [something]" as withstriking.

Carry out withstriking:
	if the second noun is not the iron-bar:
		try attacking the noun;
	otherwise:
		say "Violence is a lot more effective when you use an iron bar, but it's not the solution here."

Chapter 22 - Outside

The outside-treasure is east from treasure-room. The outside-treasure is in castle-region. The printed name of outside-treasure is "Outside". "It is bright and brilliant outside, a complete contrast to the gloominess of the other areas of the castle. You are surrounded by vibrant vegetation. The sun shines and a great feeling of warmth and comfort surrounds you[first time][triggercloneout][only].

There's nowhere really to go, besides back to the [boldwest]."

Basking is an action applying to nothing. Understand "bask" as basking.

Carry out basking:
	say "The environment [aren't] really suitable for basking.";
	
Instead of basking when the player is in outside-treasure:
	say "You bask luxuriously in the sun. It feels great!"

The distant-sun is distant scenery in outside-treasure. The printed name of the distant-sun is "sun". Understand "sun" or "bright" as the distant-sun. The description of the distant-sun is "The sun looks better than you've ever seen it."

The vibrant-vegetation is scenery in the outside-treasure. The printed name of the vibrant-vegetation is "vibrant vegetation". Understand "vibrant" or "plant" or "plants" or "vegetation" as the vibrant-vegetation. The description of the vibrant-vegetation is "These plants are beautiful, but they don't resemeble any vegetation you've seen before."

Instead of going east from treasure-room when the malignant-wall is in treasure-room:
	say "There's a wall in that direction; a particularly malignant wall."

Instead of clone-you going east from treasure-room when the malignant-wall is in treasure-room:
	say "Your clone[setcloneact] tries to go east through the malignant mass, but fails."

To say triggercloneout:
	now past-actions is {clone-you waiting};
	now pastpast-actions is {clone-you waiting};
	say ".

You take a minute to just let it all sink in, the warmth and the bright sky. Your clone[setcloneact] walks out with you.

'You've beaten the game,' she says. 'This was the first one the author made, years ago. He made better ones since then, but I'm glad this is the one you saw. 

'For most players, the game would end there. But you're looking for something up there, aren't you?' she says, pointing at the spire. 'I think we can make it. Let's see if we can find a way up.' You nod"

The outside-scenery is distant scenery in outside-treasure. The printed name of the outside-scenery is "ruined castle". Understand "ruined" or "ruins" or "ruin" or "tower" or "hole" or "spire" or "roof" or "holes" as the outside-scenery. The description of the outside-scenery is "Above you rises the ruins of a castle. It still has a tower left standing, with holes in the roof."

Instead of going nowhere from outside-treasure when the noun is up:
	say "It'll probably be easier to get into the spire from inside the castle than outside. There's no clear way up out here."
	
Part 7 - Murder mystery dimension

The murder-region is a region. The train-region is a region. The train-region is in murder-region.

Instead of going nowhere when the player is in train-region:
	if the noun is up:
		say "There's no openings above you, you won't be able to go that way.";
	otherwise if the noun is down:
		say "Unless you have special burrowing or digging abilities, you won't be able to go that way.";
	otherwise:
		say "There's a solid wall that way."

A suspect is a kind of person. A suspect is always talkative.

When play begins:
	repeat with current running through suspects:
		now current heeds every squip;

Linking it to is an action applying to two things. Understand "link [something] with/to [something]" as linking it to.

Check linking it to:
	if the noun is physical:
		say "In this game, linking only applies to conversational topics, which you can find by typing TOPICS." instead;
	otherwise if the second noun is physical:
		say "In this game, linking only applies to conversational topics, which you can find by typing TOPICS." instead;
	otherwise if the player is not in murder-region:
		say "Linking topics is not necessary in this part of the game." instead;
	otherwise if the noun is the second noun:
		say "You don't get any new information from linking something to itself.";

The standard topicing rule response (B) is "[bold type]Clues and Questions[roman type]";

Carry out linking it to:
	say "For some reason or another, you can't find any contradictions in these two clues.";

The advice on talking to just one person rule response (A) is "[We] [can] see just the topics for one person at a time by TALKing TO that person[if the player is in murder-region].

Clues can be combined to point out inconsistencies or other connections in suspect's statements. You can LINK a clue TO another clue to combine them into one[end if]."

After deciding the scope of the player when the player is not emrys-weaver: 
	repeat with current running through quips enclosed by emrys-weaver:
		place current in scope;
		
Before querying something to someone when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO[first time]. Any clues found in flashbacks are stored for use once the flashback is over[only].[close bracket][paragraph break]" instead;
		
Before uttering something to someone when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO[first time]. Any clues found in flashbacks are stored for use once the flashback is over[only].[close bracket][paragraph break]" instead;

The basic accessibility rule does nothing when accessibility is not the issue;

To decide whether accessibility is not the issue:
	if the current action is not querying:
		decide no;
	if the player is not in statement-region:
		decide no;
	decide yes;

Before singleuttering something when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO.[close bracket][paragraph break]" instead;

Check topicing when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO.[close bracket][paragraph break]" instead;

Arresting is an action applying to one thing. Understand "arrest [someone]" as arresting.

Carry out arresting:
	say "While you have the detective's badge, your actual legal status here is uncertain. Better to amount overwhelming evidence against someone and get them to confess themselves!"

Chapter 1 - Lavatory

The lavatory-room is a room in train-region. The printed name of lavatory-room is "Lavatory". "You find yourself in a very cramped lavatory that reminds you of the head in the first ship you served on. The walls are covered in some kind of wood laminate, pretty cheap-looking.

You would assume that this lavatory has the usual amenities, but the [flight-tear] to the [boldsouth] takes up almost the entire room.

The flimsy lavatory door opens to the [boldwest][if the lavatory-door is locked]. It is currently held shut by a latch on the nearby wall[end if][first time].

There's no sign of the monkey-like creature that proceeded you here[only]."

Instead of going nowhere from lavatory-room when the noun is outside:
	try going west;

Instead of exiting when the player is in lavatory-room:
	try going west;

Section 1 - Background details

The missing-toilet is scenery in the lavatory-room. The printed name of the missing-toilet is "absent toilet". Understand "toilet" or "amenities" or "amenity" or "lav" as the missing-toilet. The missing-sink is scenery in the lavatory-room. Understand "sink" as the missing-sink. The printed name of the missing-sink is "absent sink".

The lavatory-wall is scenery in the lavatory-room. Understand "wall" or "nearby" or "walls" or "laminate" or "wood" or "cheap" or "looking" or "surface" or "surfaces" as the lavatory-wall. The printed name of the lavatory-wall is "wall". The description of the lavatory-wall is "The lavatory has walls covered in cheap-looking wood laminate that do little to reassure you about the cleanliness of the surfaces."

Instead of attacking the lavatory-wall:
	say "You imagine smashing through the walls and into whatever lays beyond, like the Kool-Aid Man of ancient legend. But then you restrain yourself from such awful brutality."

The lavatory-floor is scenery floor in the lavatory-room. Understand "floor" as the lavatory-floor. The printed name of the lavatory-floor is "floor". The description of the lavatory-floor is "The floor is something you're trying very hard not to look at too closely, but your imagination is running wild."

Instead of putting something on the lavatory-floor:
	try dropping the noun;

Instead of smelling when the player is in lavatory-room:
	say "You take a sniff. Yep, definitely a lavatory."

Instead of doing something with the missing-toilet:
	say "You assume there's a toilet behind the portal, but you can't see or reach it."

Instead of doing something with the missing-sink:
	say "You assume there's a sink behind the portal, but you can't see or reach it."

Instead of listening to something when the player is in train-region:
	say "The train is rattling quite loudly."

Section 2 - Police badge

Badgeopened is a truth state that varies. Badgeopened is false.

The police-badge is a thing in lavatory-room. "[if police-badge is not oncecarried]What appears to be a thick leather wallet is lying on the floor near the door[otherwise]The [police-badge] is lying on the floor here[end if]."

The printed name of the police-badge is "[if badgeopened is false]leather wallet[otherwise]detective badge[end if]". Understand "small" or "police" or "detective" or "badge" or "strange" or "leather" or "thick" or "wallet" as the police-badge. The description of the police-badge is "[if the police-badge is open]This has the form of a leather wallet, with your face with title 'Detective Emrys Tisserand' on a card in a window on one side, and a metallic pin on the other saying 'Precinct 13'.[otherwise]This is a small leather wallet, or at least it looks like a wallet. It's currently closed.[end if]"

Instead of wearing the police-badge:
	say "It seems like the kind that you hold and show people, not the kind you wear."

The police-badge can be open or closed. The police-badge is closed. 

Instead of giving the police-badge to someone:
	try showing the police-badge to the noun;

Before showing the police-badge to someone:
	if the police-badge is closed:
		 say "[The police-badge] is closed; [the second noun] may take more interest if it were open."instead;

Instead of opening the police-badge:
	if the police-badge is open:
		say "The badge is already open.";
	otherwise:
		now badgeopened is true;
		say "[one of]Well, this is a surprise. The wallet opens to reveal itself as a kind of police badge. On one side is a metallic pin saying 'Precinct 13'. But the other side has a plastic window with an ID card in it. The person on the card is you.

It's surreal, seeing your face and name on a badge that is clearly not yours, but not much more surreal than having numerous portals open on a crashing starship. A Weaver must trust in her gift; you'll see where this thread leads.[or]You flip the badge open again.[stopping]";
		now the police-badge is open;
		now detective-card is part of police-badge;
		now metallic-pin is part of police-badge;
		now plastic-window is part of police-badge;

Instead of closing the police-badge:
	if the police-badge is closed:
		say "The badge is already closed.";
	otherwise:
		say "You fold up the wallet again.";
		now the police-badge is closed;
		now detective-card is nowhere;
		now metallic-pin is nowhere;
		now plastic-window is nowhere;
		
Instead of searching the police-badge:
	if the police-badge is closed:
		try opening the police-badge;
	otherwise:
		say "It doesn't have any compartments."
	
Instead of inserting something into the police-badge:
	say "It doesn't have any compartments."

The detective-card is part of the police-badge. The printed name of the detective-card is "identification card". Understand "identification" or "ident" or "id" or "card" or "photo" or "photograph" as the detective-card. The description of the detective-card is "It says, 'Detective Emrys Tisserand, and has your picture; it looks like an altered version of your crew photo from two years ago."

The plastic-window is part of the police-badge. The printed name of the plastic-window is "plastic window". Understand "plastic" or "window" as the plastic-window. 

The description of the plastic-window is "This is part of the badge, allowing your identity card to be displayed easily."

Instead of taking the detective-card:
	say "It's firmly ensconced in its plastic window."

The metallic-pin is part of the police-badge. Understand "metal" or "metallic" or "pin" or "fleur-de-lys" as the metallic-pin. The printed name of the metallic-pin is "metallic pin". The description of the metallic-pin is "This metallic fleur-de-lys pin says, 'Precinct 13' on it."

Instead of taking the metallic-pin:
	say "The metallic pin seems adhered quite firmly to the badge; apparently it doesn't come off."

Section 3 - Lavatory door

The lavatory-door is a closed, locked, openable lockable scenery door. The lavatory-door is west from lavatory-room and east from first-class. Understand "door" or "lavatory" or "gap" or "gaps" or "light" or "material" or "wood" or "laminate" as the lavatory-door. The printed name of the lavatory-door is "lavatory door". The description of the lavatory-door is "This is an ill-fitting door made of some light material. It lets in light in gaps all around it, and is covered in wood laminate[if the lavatory-door is locked].

It's currently locked shut by a latch on the nearby wall[end if]."

Instead of going outside from lavatory-room:
	try going east;

This is the opening locked lavatory rule:
	if the lavatory-door is locked:
		say "The door is currently locked by a latch.";
		stop the action;

The opening locked lavatory rule substitutes for the can't open what's locked rule when the player is in lavatory-room and the noun is lavatory-door.

Instead of searching the lavatory-door:
	say "It's hard to see through any of the gaps. Otherwise, this is just a normal door."

The lavatory-latch is scenery in lavatory-room. The printed name of the lavatory-latch is "latch". Understand "latch" as the lavatory-latch. The description of the lavatory-latch is "This is a curious-looking latch mounted on the wall; it seems to lock and unlock the lavatory door when you turn it. It is currently [if the lavatory-door is locked]locked[otherwise]unlocked[end if]."

Unlocking keylessly is an action applying to one thing. Understand "unlock [something]" or "unlatch [something]" as unlocking keylessly. Understand "unlock [a
locked lockable thing]" as unlocking keylessly. Understand "unlock [a lockable
thing]" as unlocking keylessly.

Carry out unlocking keylessly:
	if the noun is the lavatory-latch:
		try turning the lavatory-latch;
	otherwise if the noun is the lavatory-door:
		if the player is in first-class:
			say "You can't unlock the door from the outside.";
		otherwise:
			try turning the lavatory-latch;
	otherwise if the noun is not lockable:
		say "That [are] not something [we] [can] unlock.";
	otherwise if the noun is unlocked:
		say "That [are] already unlocked!";
	otherwise if the curious-tool is held by the player:
		if the tool-mode of curious-tool is lockpick:
			try unlocking the noun with the curious-tool;
		otherwise:
			say "Your tool is not currently set to 'lockpick' mode.";
	otherwise:
		say "[We] [don't] have anything to unlock that with."
		

Locking keylessly is an action applying to one thing. Understand "lock [something]" as locking keylessly. Understand "lock [a
locked lockable thing]" as unlocking keylessly. Understand "lock [a lockable
thing]" as locking keylessly.

Carry out locking keylessly:
	if the noun is the lavatory-latch:
		try turning the lavatory-latch;
	otherwise if the noun is the lavatory-door:
		if the player is in first-class:
			say "You can't lock the door from the outside.";
		otherwise:
			try turning the lavatory-latch;
	otherwise if the noun is not lockable:
		say "That [are] not something [we] [can] lock.";
	otherwise if the noun is unlocked:
		say "That [are] already locked!";
	otherwise if the curious-tool is held by the player:
		if the tool-mode of curious-tool is lockpick:
			try locking the noun with the curious-tool;
		otherwise:
			say "Your tool is not currently set to 'lockpick' mode.";
	otherwise:
		say "[We] [don't] have anything to unlock that with."
		
Instead of opening the lavatory-latch:
	if the lavatory-door is locked:
		try turning the lavatory-latch;
	otherwise:
		say "The latch is already unlocked.";

Instead of closing the lavatory-latch:
	if the lavatory-latch is unlocked:
		try turning the lavatory-latch;
	otherwise:
		say "The latch is already locked.";

Instead of turning the lavatory-latch:
	if the lavatory-door is locked:
		say "You turn the latch, unlocking the door.";
		now the lavatory-door is unlocked;
	otherwise if the lavatory-door is unlocked:
		if the lavatory-door is open:
			say "You'll have to close the door first before you can lock it.";
		otherwise:
			say "You turn the latch, locking the door.";
			now the lavatory-door is locked;

Before opening the lavatory-door:
	if the police-badge is in lavatory-room:
		if the lavatory-door is unlocked:
			say "The [police-badge] is in the way of the door opening. It usually wouldn't matter, but this is a very cramped room." instead;

Chapter 2 - First car

first-class is a room in train-region. The printed name of first-class is "First Class". The description of First-Class is "This spacious train car only holds a few, scattered seats, each an overstuffed armchair. The floor is luxuriously carpeted, and brightly-colored silk curtains are drawn back, allowing a full view through the wide picture windows. 

You can return [boldeast] to the lavatory, or go [boldsouth] to [if second-class is unvisited]what seems to be [end if]the Second Class car."

The scattered-armchairs are plural-named scenery in first-class. The printed name of scattered-armchairs is "scattered armchairs". Understand "scattered" or "chair" or "arm" or "armchair" or "plush" or "upholstered" or "upholstery" or "armchairs" or "rivet" or "rivets" or "riveted" or "chairs" or "bolt" or "cushion" or "cushions" or "bolts" or "seat" or "seats" as the scattered-armchairs. The description of the scattered-armchairs is "These plush, upholstered seats look comfortable but very impractical. They must be bolted into the floor somehow.".

Instead of searching the scattered-armchairs:
	say "You try looking underneath cushions but find nothing."

Instead of looking under the scattered-armchairs:
	say "You peek underneath, and see that the armchairs are riveted to the floor."

Instead of entering the scattered-armchairs:
	say "You try sitting a little, but a sense of duty compels you to arise again."

The luxury-carpet is ambiguously plural scenery in first-class. The indefinite article of the luxury-carpet is "some". The printed name of the luxury-carpet is "luxurious carpet". Understand "carpet" or "luxury" or "luxurious" or "soft" as the luxury-carpet. The description of the luxury-carpet is "Carpet this soft must wear out easily. They probably have to replace it at least each year."
 
Instead of touching or rubbing the luxury-carpet:
	say "Mmm, soft."

Instead of looking under the luxury-carpet:
	say "You consider ripping up the carpet like an animal, screaming and ripping off shreds. But you discard such intrusive thoughts."

The first-windows are plural-named scenery in first-class. The printed name of the first-windows is "windows". Understand "window" or "wide" or "picture" or "windows" as the first-windows. The description of the first-windows is "These windows are huge, several feet across each, with minimal obstructions to the view[if train-corpse is not nowhere].

Outside is a moving landscape of snow-covered mountains and forests[end if]."

Instead of searching the first-windows:
	try examining the moving-landscape

Instead of opening the first-windows:
	say "They aren't designed to open."

Instead of closing the first-windows:
	say "They aren't designed to open or close."

The moving-landscape is distant scenery in first-class. The printed name of the moving-landscape is "moving landscape". Understand "moving" or "landscape" or "mountain" or "tall" or "mountains" or "dense" or "forest" or "forests" or "deep" or "snowbank" or "snowbanks" or "snow-covered" or "snow" or "outside" or "covered" as the moving-landscape. The description of the moving-landscape is "[if train-corpse is not nowhere]The moving landscape that you can see through the windows has tall mountains, dense forests, and deep snowbanks. It's hard to look away from[otherwise]Outside is nothing but a wall[end if]."

The bright-curtains are plural-named scenery in first-class. The printed name of the bright-curtains is "brightly-colored curtains". Understand "bright" or "brightly" or "colored" or "silk" or "curtain" or "marble-dyed" or "dyed" or "marble" or "dye" or "fabric" or "warm" or "light" or "colors" or "curtains" or "color" as the bright-curtains. 

The description of the bright-curtains is "These are marble-dyed silk curtains in a variety of warm, light colors. They are drawn back, allowing a full view of the outside landscape."

Instead of opening the bright-curtains:
	say "They are already open."
	
Instead of closing the bright-curtains:
	say "You go to close the curtains, but the view outside captures your fancy, and you hesitate. It's too beautiful out there to shut it all out right now. Besides, the silk fabric would hardly block the light."

Section 1 Maeve

Maeveknown is a truth state that varies. Maeveknown is false.

The Maeve is a female suspect in first-class. "[if maeveknown is false]A woman who looks just like Officer Mefe is here, but dressed in a rhinestone jumpsuit and heavy sunglasses. She is pacing anxiously[otherwise]Maeve is sprawled in one of the armchairs, covering her eyes with one hand and holding her designer sunglasses with the other[end if]." The description of Maeve is "[The maeve] looks surprisingly like Officer Mefe: the same square chin, the same curiously small ears, the same shade of blonde. But this woman is dressed much more glamorously, with a rhinestone jumpsuit, dangly sapphire earrings, and thick sunglasses."

fake-mefe is a part of maeve. Understand "mefe" as fake-mefe. The printed name of fake-mefe is "Mefe".

Instead of doing anything with fake-mefe:
	say "While [the maeve] looks like Mefe, they are different people."

Understand "glamorous" or "anxious" or "blonde" or "blond" or "square" or "chin" or "woman" or "ears" as Maeve.

The printed name of Maeve is "[if maeveknown is false]glamorous woman[otherwise]Maeve[end if]"

The sapphire-earrings are worn by Maeve. The printed name of the sapphire-earrings is "sapphire earrings". Understand "dangly" or "sapphire" or "sapphires" or "thread" or "lab" or "grown" or "earring" or "ear" or "ring" or "string" or "strings" or "earrings" or "rings" as the sapphire-earrings. The description of the sapphire-earrings is "These earrings are quite long, with several sapphires threaded along strings. The sapphires are very clear; probably lab-grown."

The maeve-sunglasses are worn by Maeve. The printed name of the maeve-sunglasses is "designer sunglasses". Understand "designer" or "logo" or "glass" or "sun" or "sunglass" or "expensive" or "sunglasses" or "heavy" or "glasses" or "designer" or "shades" as the maeve-sunglasses. The description of the maeve-sunglasses is "These heavy-looking sunglasses have a logo on them you can't identify, but they are certainly very expensive."

The rhinestone-jumpsuit is worn by Maeve. The printed name of the rhinestone-jumpsuit is "rhinestone jumpsuit". Understand "rhinestone" or "rheinstone" or "jump" or "suit" or "jumpsuit" or "ankle" or "ankles" as the rhinestone-jumpsuit. The description of the rhinestone-jumpsuit is "This is perhaps the flashiest outfit you've ever seen. Rhinestones are absolutely everywhere. Well, not everywhere--some seem to have fallen off near the ankles[delivermissing].";

WelcomeScene is a scene. WelcomeScene begins when the player is in first-class for the first time.

When welcomescene begins:
	say "The woman looks up at you. 'Look, there was someone in there after all!' she says to the bearded man. 'I told you there was a police officer on board.' She turns to you. 'A man has died! A precious man. His body is in the other car. Please, you have to help us find out who the killer is!'

The man frowns. 'You certainly don't look like a police officer. Do you have any identification?' he asks you.

The woman says, 'Oh, he's right. Where's your badge?'"

Before uttering something to maeve:
	if maeveknown is false:
		say "[The maeve] holds up her hands. 'Wait, I don't even know if you're really a police officer!'" instead;

Before uttering something to arthur:
	if arthurknown is false:
		say "[The arthur] looks skeptical. 'Before we discuss that, would you mind showing me your identification?'" instead;

To say delivermissing:
	do nothing;
	[deliver stoneless-quip;]

[Stoneless-quip is a squip. The printed name of stoneless-quip is "Stoneless". Understand "stoneless" as stoneless-quip.

Maeve heeds stoneless-quip. The preview of stoneless-quip is "Maeve is missing some rhinestones."

The targetresponse of stoneless-quip is "'Hmm, that's interesting,' responds [the currenttarget]."]

Instead of showing the police-badge to Maeve:
	if Maeveknown is true:
		say "'Very impressive, Detective; but you've show me that already,' she says.";
	otherwise:
		say "[The maeve] crouches down, staring between you and the photo. 'Oh, all right,' she says. 'I believe you.' She stands up and steps back a bit.

'I'm sure you've already guessed, and it's true. I am celebrity author Maeve Miller, travelling incognito'--and here she tips her sunglasses down, revealing watery blue eyes, leaning in to whisper--'to avoid the paparazzi. They can be brutal, you know'. 

She then seats herself down and removes her sunglasses entirely, massaging her eyes with the other hand[deliverstatement].";
		now Maeve is proper-named;
		now Maeveknown is true; 
		if arthurknown is false:
			try showing the police-badge to arthur;

[maeve is sitting in front of dedication to maeve, honored as a pioneer in navigation]

Section 2 -Arthur

Arthurknown is a truth state that varies. Arthurknown is false.

[Arthur is Mr. Casaubon]

The Arthur is a male suspect in first-class. "[if arthurknown is false]A bearded man with thick glasses and a slightly dirty plaid shirt [otherwise]Arthur [end if]is sitting here with an annoyed look on his face. He clutches a [arthur-briefcase]. "

The description of arthur is "[The arthur] looks to be middle-aged, with an air of confidence bordering on arrogance. He has a heavy beard and wears thick glasses. His plaid shirt is a bit dirty. He's holding a battered leather briefcase.

 He has some discoloration on his face; some kind of bruise, it seems."

The face-discoloration is part of arthur. The indefinite article of the face-discoloration is "some". The printed name of the face-discoloration is "[if the face-discoloration is examined]bruise[otherwise]discoloration". Understand "face" or "discoloration" or "bruise" or "jaw" as the face-discoloration.

The description of the face-discoloration is "Looking closely as the discoloration on [the Arthur]'s face, you can see it is actually a bruise along his jaw."

Understand "beard" or "heavy" or "bearded" or "man" as arthur. The printed name of arthur is "[if arthurknown is true]Arthur[otherwise]bearded man[end if]".

The thick-glasses are worn by arthur. Understand "glasses" or "thick" or "arthur's" as the thick-glasses. The printed name of the thick-glasses is "[if arthurknown is true][arthur]'s [otherwise]thick [end if]glasses". The description of the thick-glasses is "It looks like [the arthur]'s prescription is quite strong if it requires such thick glasses."

The arthur-briefcase is carried by arthur. Understand "brief" or "case" or "battered" or "briefcase" or "suitcase" or "black" or "leather" or "brass" or "hardware" as the arthur-briefcase. The printed name of the arthur-briefcase is "briefcase". The description of the arthur-briefcase is "[The arthur] is clutching the briefcase tightly, but hasn't opened it. It's a battered black leather briefcase with brass hardware."

Instead of opening the arthur-briefcase:
	say "Arthur shifts it to his other hand, keeping it away from you."

After unlocking the arthur-briefcase with the curious-tool:
	say "Your lockpick whirrs, and the brieface unlocks.

[The arthur] turns bright red and splutters, 'Excuse me, sir! This is private property,' and re-locks the suitcase.

Technically, you might be able to force it open, but you're not up to date on local property seizure law.'";
	now the arthur-briefcase is locked;

The arthur-briefcase is a locked, closed openable lockable container.

The dirty-plaid is worn by arthur. The printed name of the dirty-plaid is "dirty plaid shirt". Understand "dirty" or "slightly" or "plaid" or "shirt" as the dirty-plaid. The description of the dirty-plaid is "This shirt looks like it has been worn several times since it was last washed."

Instead of showing the police-badge to arthur:
	if arthurknown is false:
		say "The man frowns when he sees the badge. 'I see. I suppose you're the best we have available for now. My name is Dr. Arthur Svenson, Professor of Nanobiotics at Textor University. And while I had intended to focus on my research during this voyage, I suppose I can spare some of my time to assist you in your investigation[deliverstatement].'";
		now arthurknown is true;
		now arthur is proper-named;
		now the thick-glasses are proper-named;
		if maeveknown is false:
			try showing the police-badge to maeve;
	otherwise:
		say "Arthur grimaces. 'If you don't mind, Detective, I'd rather not waste all of our time on repetitive trivialities. You've already shown me your badge; once should suffice.'"

Chapter 3 - Second class

train-door is a closed openable scenery door. Train-door is south from first-class and north from second-class. Understand "compartment" or "door" or "steel" as the train-door. The printed name of the train-door is "compartment door". The description of the train-door is "This is a steel door that divides the two compartments. Surprisingly, it has no window."

Instead of going west from second-class when train-corpse is in second-class:
	say "Trying to exit a moving train is a bad idea!"

Dafyddknown is a truth state that varies. Dafyddknown is false.

second-class is a room in train-region. The printed name of second-class is "Second Class". The description of second-class is "This cramped car has row after row of molded orange plastic bucket seats. Dim light filters through numerous small, dingy windows. The floor is some kind of rubbery, textured plastic that seems designed to be hosed down every night. 

[corpsestuff]. You can return [boldnorth] to the First Class car[if the train-corpse is nowhere] or [boldwest] to the police station[end if][first time].

The chip that the monkey-like robot took from Mefe's computer lies here, incongruous, next to the corpse. The robot itself is nowhere to be seen[only]."

To say corpsestuff:
	now mari is onceseen;
	now elen is onceseen;
	if train-corpse is in second-class:
		say "[if dafyddknown is false]On the floor is the body of a small, slim man with remarkably smooth skin[otherwise]Dafydd's body is on the floor[end if], a trail of blood leaking from under him[one of][or]. The chip you were looking for lies next to him on the ground[stopping]";
	otherwise:
		say "All the evidence seems to have been cleaned up"

The weird-chip is scenery in second-class. The printed name of weird-chip is "computer chip". Understand "mefe's" or "chip" or "computer" as the weird-chip. The description of the weird-chip is "The chip that the monkey took looks only lightly damaged. Hopefully it will still work when you get it back to Mefe!"

Instead of taking the weird-chip when weird-chip is scenery:
	say "[The elen] shakes her head and says, 'No. That's evidence. We can't touch that until we reach the next station and the crime scene technicians can inspect everything. You should know this, officer.'"

The blood-trail is scenery in second-class. The printed name of the blood-trail is "trail of blood". Understand "blood" or "trail" or "trail of" as the blood-trail.

The description of the blood-trail is "The trail of blood is somewhat smaller than you expected. But then, you haven't really witnessed many violent deaths in your life."

Instead of physicality when the noun is blood-trail:
	say "Elen interposes herself, and says, 'Sorry, ma'am, that's evidence.'"

The rubbery-floor is scenery floor in second-class. The printed name of the rubbery-floor is "floor". Understand "floor" or "rubbery" or "rubber" or "texture" or "textured" or "utilitarian" or "sturdy" or "plastic" as the rubbery-floor.

The description of the rubbery-floor is "The floor is utilitarian, some kind of textured plastic with a little give as you walk on it. It's not particularly flattering, but looks quite sturdy."

The bucket-seats are plural-named scenery in second-class. The printed name of the bucket-seats is "orange bucket seats". Understand "row" or "bucket" or "orange" or "seat" or "seats" or "chair" or "chairs" or "molded" or "uncomfortable" as the bucket-seats. The description of the bucket-seats is "These look distinctly uncomfortable. You can't imagine sitting in one for hours at a time."

Instead of looking under the bucket-seats:
	say "It's kind of gross under there. You only look for a few moments--don't want to breathe that all in."
	
Instead of entering the bucket-seats:
	say "You try sitting on one of the seats, but it is extremely uncomfortable. You hop right up again."
	
The dingy-windows are plural-named scenery in second-class. The printed name of the dingy-windows is "dingy windows". Understand "window" or "windows" or "dingy" or "small" or "numerous" or "gunk" or "yellow" as the dingy-windows. The description of the dingy-windows is "Each seat has one of these small windows, but they're all old-looking and have gunk on them."

Instead of searching the dingy-windows:
	say "You can't really see anything through these; they're small and yellowed with either gunk or age."

Instead of rubbing or touching the dingy-windows:
	say "The windows feel slightly sticky. It's not pleasant."
	
Instead of opening the dingy-windows:
	say "They look like they might open, but the mechanisms seem stuck."
	
Instead of closing the dingy-windows:
	say "They're already closed, and not pleasant to touch!"
	
Instead of smelling the dingy-windows: 
	say "You lean close and take a sniff. You instantly wish you hadn't."

Section 1 - Corpse

Dafyddknown is a truth state that varies. Dafyddknown is false.

The train-corpse is scenery in second-class. Understand "corpse" or "body" or "dead" or "face" or "limb" or "limbs" or "dafydd" or "small" or "short" or "slim" or "man" or "him" or "dafydd's" as the train-corpse. The printed name of the train-corpse is "[if dafyddknown is true]Dafydd[otherwise]dead man[end if]".

The description of the train-corpse is "[if dafyddknown is true]Dafydd was [otherwise]This body belongs to [end if]a short, slender man no older than thirty. He is wearing a tank top and gym shorts. His skin is pale, although remarkably smooth-looking, and his limbs are stiff and clenched. 

A piece of paper is clenched in his fist. [if the dead-fist is examined]The fist itself is bruised[otherwise]There's something odd about the hand itself, too[end if]."

Report examining the train-corpse:
	now package-receipt is held by train-corpse.

The package-receipt is a thing. Understand "receipt" or "paper" or "piece" or "something" as the package-receipt. The printed name of the package-receipt is "receipt". 

The dead-fist is part of train-corpse. Understand "hand" or "fist" or "knuckle" or "knuckles" as the dead-fist. The printed name of the dead-fist is "fist".

Instead of physicality when the noun is the package-receipt or the noun is the dead-fist:
	say "[The elen] interposes herself. 'Evidence, Detective!'"

The description of the package-receipt is "[if package-receipt is in the transparent-dome]Inside the transparent dome [otherwise]Clutched in [the train-corpse]'s fist [end if]is a receipt for United Carpundia Deliveries, signed by agent Mari Gallagher as the receiving courier[deliverPostal]."

To say deliverpostal:
	deliver postal-quip;
	
Postal-quip is a squip. The printed name of postal-quip is "Postal". Understand "Postal" as postal-quip. The preview of postal-quip is "[the train-corpse] gave a satchel directly to [the mari]."

[maybe instead use elen's statement]

The targetresponse of postal-quip is "[if currenttarget is mari]'Hmm, what's your point?' says [the mari]. 'I take deliveries all of the time.' 

She shifts uncomfortably, but sticks to her story[otherwise if currenttarget is arthur]He looks at you seriously. 'Have you determined what's in the satchel?' he asks.

'I'd prefer not to disclose this at this time,' you say, but he seems perturbed[otherwise if currenttarget is elen]'Interesting,' she says. 'Do you suppose the courier is the murderer?' She looks over suspiciously at the person in question.

'I can't say that at this time,' you answer[otherwise if currenttarget is maeve]'Like a business transaction, right?' asks [the Maeve]. 'It's not like they were, dating or something, right?'

'There is no indication of a relationship,' you answer. She looks relieved[end if]."

The description of the dead-fist is "The knuckles on [the train-corpse]'s hand are discolored. You've seen this before, in basic training. He must have punched someone, and hard[deliverpunch]."

To say deliverpunch:
	deliver punch-quip;
	
Punch-quip is a squip. The printed name of punch-quip is "Punch". Understand "Punch" as punch-quip. The preview of punch-quip is "[the train-corpse] recently punched someone hard."

The targetresponse of punch-quip is "[if currenttarget is mari]'Wasn't me!' says [the mari]. 'I would've socked him right in the face if he tried that.' She raises her fists and mimics jabbing.

'Thank you, that's all,' you say[otherwise if currenttarget is arthur]'And why are you telling me this?' asks Arthur accusingly. 'If you're insinuating something, just come right out and say it.'

Hmmm; you may have to find a way to tie this fact in with others before you can crack Arthur's defence[otherwise if currenttarget is elen]'Perhaps he was boxing,' says Elen. 'He seems the athletic type.'

'That's possible,' you answer. 'But wouldn't he have been wearing boxing gloves?'

'Perhaps an underground fighting ring. Crime is quite high in the area,' answers Elen[otherwise if currenttarget is maeve]'Oooh, is he the violent type?' asks [the Maeve]. 'Was it, like, fighting another man, or more of a domestic violence incident?'

'I'm still determining that,' you answer. She nods[end if]."

The description of the dead-fist is "The knuckles on [the train-corpse]'s hand are discolored. You've seen this before, in basic training. He must have punched someone, and hard[deliverpunch]."

The smooth-skin is part of train-corpse. The printed name of smooth-skin is "[the train-corpse]'s smooth skin". Understand "smooth" or "skin" or "smooth-looking" or "looking" or "remarkably" or "dafydd's" or "pallor" as the smooth-skin. The description of the smooth-skin is "[italic type]Pallor mortis[roman type] has set in, but the skin is still unusually smooth."

The dafydd-tank is worn by train-corpse. Understand "tank" or "black" or "tanktop" or "tank-top" or "top" as the dafydd-tank. The printed name of the dafydd-tank is "tank top". The description of the dafydd-tank is "This black tank-top is still a bit damp from sweat. He must have recently been exercising heavily when he died."

The dafydd-shorts are a plural-named thing. The dafydd-shorts are worn by train-corpse. The printed name of the dafydd-shorts is "gym shorts". Understand "gym" or "shorts" or "short" as the dafydd-shorts.

The description of the dafydd-shorts is "His gym shorts aren't intended for show, but don't seem cheap. He must have been of at least moderate means."

[clue about dafydd's wealth?]

A thing can be police-only or not police-only. A thing is usually not police-only.

When play begins:
	repeat with current running through things enclosed by train-corpse:
		now current is police-only;
	now train-corpse is police-only;
		
Instead of physicality when the noun is police-only:
	say DafyddText;
	
To say DafyddText:
	say "[one of][The elen] looks at you and says, nervously, 'Hey, I don't think you're supposed to touch the evidence until the crime scene techs can look over it.'[or]You can't mess with the evidence. The attendant wouldn't let you.[stopping]";

[have a clue about exercising heavily?]

Section 2 - Mari

Mariknown is a truth state that varies. Mariknown is false.

[mari is a celebrity excited to be 'normal']

The Mari is a female suspect in second-class. "[if mariknown is true]Mari, the courier, looking anxious, [otherwise]A shifty-looking young courier, wearing a company cap and satchel, [end if]is pacing back and forth in the train car."

The printed name of Mari is "[if mariknown is true]Mari[otherwise]courier[end if]".

Understand "young" or "frazzled" or "courier" or "woman" or "anxious" or "gallagher" as mari. The description of Mari is "[The mari] is a young woman with a matching cap and satchel that say 'United Carpundia Deliveries'. She doesn't seem quite as upset as she should be[if train-corpse is in the location], given the presence of a dead body[end if]."

The company-cap is worn by mari. The printed name of the company-cap is "cap". Understand "company" or "cap" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" as the company-cap. The description of the company-cap is "This is a slightly over-sized baseball cap that says 'United Carpundia Deliveries' on it and shows a logo that kind of looks like a carboard box floating in the Milky Way."

The company-satchel is a closed openable container. The company-satchel is worn by mari. The printed name of the company-satchel is "satchel". Understand "company" or "satchel" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "black" or "discrete" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" as the company-satchel. The description of the company-satchel is "The satchel is black and discrete, carrying the United Carpundia Deliveries Logo of a cardboard box floating in the Milky Way."

The signed-book is in the company-satchel. The printed name of the signed-book is "signed book". Understand "signed" or "package" or "book" or "ceri" or "torn" or "cover" or "front" or "autograph" as the signed-book. The description of the signed-book is "[if the signed-book is in transparent-dome]The book that was in the satchel earlier is on display in the transparent dome. It is opened [otherwise]The package that was in [the Mari]'s satchel has fallen out and ripped open, revealing a book. It currently lies sprawled on the floor, open [end if]to the front cover which says, 'To my biggest fan Ceri. Love, Maeve Miller'.".

Instead of taking the signed-book:
	say "Elen shakes her head, and says, 'No! That's evidence.'"

Instead of showing the police-badge to mari:
	if mariknown is true:
		say "'Sir,' says Mari, 'You've already shown me the badge. Don't worry, I intend to cooperate fully.";
	otherwise:
		say "You flash the badge to the courier, and she looks over it. 'Looks legit to me, ma'am,' she says. 'The name's Mari. I'm with UCD, she says,' pointing at her cap, 'United Carpundia Deliveries. I'm just hoping we can wrap things up here quick and I can get back to work. Love the grind, right?' she asks, looking at [the Elen] for support; but [the Elen] shakes her head[deliverstatement].";
		now mariknown is true;
		now mari is proper-named;
		if elenknown is false:
			try showing the police-badge to elen;

SecondScene is a scene. SecondScene begins when the player is in second-class for the first time.

When secondscene begins:
	say "When you walk in, the courier looks up, startled, and the attendant looks you up and down. She says, 'You are the police officer, I presume? Do you have any identification?'"

Before uttering something to mari:
	if mariknown is false:
		say "The train attendant intervenes. 'Please do not discuss anything until proper identification has been established,' she says." instead;

Section 3 - Elen

[stern, emotionless-trying, but failing, is actually a celebrity. she is mr bulstrode with the dark secret of stealing.]

Elenknown is a truth state that varies. Elenknown is false.

The Elen is a female suspect in second-class. "[if elenknown is true]Elen, the train attendant, [otherwise]The train attendant [end if]keeps watch here with a stern but troubled face."

Elencounter is a number that varies. Elencounter is 4. [Couldn't figure out how to keep cycling text from printing a blank line so this is dumb hack]

Every turn when elen is in the location:
	if the arawnz-watch is worn by elen:
		if a random chance of 1 in 3 succeeds:
			if elencounter is 4:
				say "[The elen] checks the time on her watch.";
				now elencounter is 0;
			otherwise:
				increment elencounter;
				
Understand "attendant" or "train" or "curl" or "curly" or "curls" or "dark" or "hair" or "woman" as Elen.

The printed name of Elen is "[if elenknown is true]Elen[otherwise]attendant[end if]".

The description of Elen is "[The elen] is a middle-aged woman wearing a sleek black uniform. Her hair is dark and highly curled[if the arawnz-watch is worn by Elen]. 

She's wearing a very expensive-looking wristwatch[end if]."

The elen-uniform is worn by Elen. The printed name of the elen-uniform is "sleek black uniform". Understand "sleek" or "black" or "uniform" or "well" or "designed" or "well-designed" as the elen-uniform. 

The description of the elen-uniform is "This train attendant uniform is surprisingly well-designed, completely unobtrusive while not being unflattering."

Instead of showing the police-badge to elen:
	if elenknown is true:
		say "[The elen] looks over the badge again, just as carefully as the first time.";
	otherwise:
		say "You show the badge to the train attendant. She inspects it carefully, taking so long that your arm gets tired holding out the badge. Then she nods. 'Very well,' she says. 'My name is Elen Fielding. I can allow you to take charge of this crime scene investigation. However, I must remind you that no physical evidence can be touched until the crime tech team meets us at Pobydd Street.'

No touching physical evidence? That will make this quite a bit trickier. Although you're not actually a real detective, everyone seems to believe you are. Maybe you can sort this out before the day is through?[deliverstatement]";
		now elenknown is true;
		now elen is proper-named;
		if mariknown is false:
			try showing the police-badge to mari;

Before uttering something to elen:
	if elenknown is false:
		say "The train attendant stops you. 'I will only communicate with the police,' she says. 'Are you an officer?'" instead;


Chapter 4 - Statement definitions and mechanics

Statement-region is a region. Statement-region is in murder-region.

Instead of going nowhere when the player is in statement-region:
	say "But Detective, I didn't go that way!"

A person has a person called the doppelganger. The doppelganger of a person is usually emrys-weaver.

Playerswapped is a truth state that varies. Playerswapped is false.

Currentswap is a person that varies. Currentswap is emrys-weaver.

A person can be onceswapped or unonceswapped. A person is usually unonceswapped.

To playerswap (current - a person):
	now currentswap is current;
	say "*************************************************************************************************[line break]";
	say "As you listen to [the current]'s statement, you can almost imagine how it happened...";
	say "*************************************************************************************************[paragraph break]";
	now the story viewpoint is first person singular; 
	now the story tense is past tense;
	now the player is doppelganger of current;
	now playerswapped is true;
	try looking;
	if current is onceswapped:
		say "[bracket]You have already heard this statement. A statement can be stopped early at any time by typing STOP.[close bracket][paragraph break]"

Before singleuttering:
	if the player is in first-class or the player is in second-class:
		say "Because there are multiple people present, you'll have to specify whom you'd like to say it to." instead;

Ceasing is an action applying to nothing. Understand "stop" as ceasing.

Carry out ceasing:
	if playerswapped is true:
		say "*************************************************************************************************[line break]";
		say "As the statement ends, your attention returns to the world around you...";
		say "*************************************************************************************************[paragraph break]";
		now the player is emrys-weaver;
		now the story viewpoint is second person singular; 
		now the story tense is present tense;
		now playerswapped is false;
		try looking;
		now currentswap does not forsake statement-quip;
	otherwise:
		try waiting;

A person can be onceseen or unonceseen. A person is usually unonceseen. Maeve is onceseen. Arthur is onceseen.

Statement-quip is a linkaged squip. The printed name of statement-quip is "Statement". Understand "statement" as statement-quip. The preview of Statement-quip is "Would you mind giving me your statement?[line break]   Suspects with new statements: [the list of onceseen unonceswapped suspects]"

Maeve heeds statement-quip. Arthur heeds statement-quip. Mari heeds statement-quip. Elen heeds statement-quip.

The targetresponse of statement-quip is "[if currenttarget is mari]Mari says, 'You want the truth? I'll tell you the truth[otherwise if currenttarget is arthur]Arthur says, 'Very well, detective. I'll tell you what really happened[otherwise if currenttarget is elen]Elen says, 'It would be my pleasure to tell you what truly happened, officer[otherwise if currenttarget is maeve]Maeve says, 'Of course I'll tell you what happened, hon. Now, this is how everything really went[end if]...'"

Report uttering statement-quip to someone:
	playerswap the second noun;

To say deliverstatement:
	deliver statement-quip;

Chapter 5 - Maeve statement world

Luxury-apartment is a room in statement-region.
Fake-maeve is a woman in luxury-apartment. the doppelganger of maeve is fake-maeve.

The fake-robe is worn by fake-maeve. The printed name of the fake-robe is "robe". Understand "robe" or "terry" or "terrycloth" or "cloth" or "terry-cloth" as the fake-robe. The description of the fake-robe is "It was one of my many terrycloth robes. They are very comfortable, and keep me warm."

[This code resets the world for maeve]
Every turn when currentswap is maeve and the player is emrys-weaver:
	resetmaeve;
	
To resetmaeve:
	now currentswap is emrys-weaver;
	if maeve-level is 0:
		now fake-maeve is in luxury-apartment;
		now fake-jumpsuit is in luxury-closet;
		now fake-robe is worn by fake-maeve;
		now delicious-breakfast is on luxury-nightstand;
		now the luxury-boxes are in luxury-office;
		now book-dafydd is in luxury-bookstore;
		now the signing-pen is on the signing-table;
		now the dafydd-copy is held by book-dafydd;
		now dafyddbegged is false;
		now book-dafydd is not proper-named;
		now book-signed is false;
	otherwise if maeve-level is 1:
		now fake-maeve is in nice-apartment;
		now fake-robe is nowhere;
		now the signing-pen is on nice-table;
		now fake-jumpsuit is in nice-wardrobe;
		now fake-pajamas is worn by fake-maeve;
		now healthy-breakfast is on refinished-nightstand;
		now nice-dafydd is in nice-bookstore;
		now nice-copy is held by nice-dafydd;
		now nice-dafydd is not proper-named;
		now book-signed is false;
		now dafyddbegged is false;
		now the nice-box is in nice-front;
		now the lemon-water is on convenient-table;
	otherwise if maeve-level is 2:
		now fake-maeve is in crappy-apartment;
		now the signing-pen is on bad-table;
		now fake-jumpsuit is in clothing-pile;
		now fake-pajamas is worn by fake-maeve;
		now bad-breakfast is on nightstand-box;
		now bad-dafydd is in bad-bookstore;
		now nice-watch is worn by bad-dafydd;
		now bad-copy is held by bad-dafydd;
		now bad-dafydd is not proper-named;
		now convenient-table is in bad-cafe;
		now book-signed is false;
		now dafyddbegged is false;
		now the lemon-water is on convenient-table;

Maeve-level is a number that varies. Maeve-level is 0.

Section 1 - Fake-Maeve

The printed name of fake-maeve is "maeve". Understand "maeve" as fake-maeve. The description of fake-maeve is "I'd describe myself as still fairly young for a famous author. Although I have had at least one review call me a 'middle-aged author', if you can believe it. I have platinum-blonde hair, and I can run a 10K in an hour."

The platinum-hair is part of fake-maeve. Understand "platinum" or "blonde" or "platinum-blonde" or "hair" as the platinum-hair. The description of the platinum-hair is "It's completely natural; I'm blessed with it."

Section 2 - Author Maeve's apartment 

[we see this twice, once rich and once faux-rich. consider making two apartments].

The printed name of Luxury-apartment is "Luxury Apartment". The description of luxury-apartment is "I was in the bedroom of my penthouse apartment, which overlooks the big city below with a magnificent view. That morning, the room was spotless and tidy, empty except for my king-sized hoverbed and my nightstand.

My walk-in closet was to the [boldsouth], and my office to the [boldeast]. I won't bother you with the more private details of my life, like the bathroom or the kitchen or the pool. The paparazzi might be listening you know."

The luxury-bathroom is scenery in luxury-apartment. The luxury-pool is scenery in luxury-apartment. The luxury-kitchen is scenery in luxury-apartment.

Understand "bathroom" as the luxury-bathroom. The printed name of the luxury-bathroom is "bathroom".
Understand "pool" as the luxury-pool. The printed name of the luxury-pool is "pool".
Understand "kitchen" as the luxury-kitchen. The printed name of the luxury-kitchen is "kitchen".

Instead of doing something with luxury-bathroom:
	say "Didn't I say I wanted to skip over these details, Detective? I promise they don't matter in my story."

Instead of doing something with luxury-kitchen:
	say "Didn't I say I wanted to skip over these details, Detective? I promise they don't matter in my story."

Instead of doing something with luxury-pool:
	say "Didn't I say I wanted to skip over these details, Detective? I promise they don't matter in my story."

The magnificent-view is distant scenery in luxury-apartment. Understand "magnificent" or "view" or "big" or "city" as the magnificent-view. The printed name of the magnificent-view is "magnificent view". The description of the magnificent-view is "That's what my books pay for, Detective: being above the whole world."

The king-hoverbed is an enterable scenery supporter in luxury-apartment. The printed name of the king-hoverbed is "king-sized hoverbed". Understand "hover" or "bed" or "hoverbed" or "blanket" or "blankets" or "pillow" or "pillows" or "comforter" or "comforters" or "king" or "size" or "sized" as the king-hoverbed. The description of the king-hoverbed is "Oh, you want to know how I sleep? Perfectly. The hoverbed is perfect for my temperament."

Understand "make [king-hoverbed]" as rubbing.

Instead of rubbing the king-hoverbed:
	say "I didn't clean the bed; that's what the servants do."

Instead of looking under the king-hoverbed:
	say "There was nothing under there; that's why it's so neat!";

The luxury-nightstand is a scenery supporter in luxury-apartment. The printed name of luxury-nightstand is "nightstand". Understand "nightstand" or "night" or "Stand" as the luxury-nightstand. The description of the luxury-nightstand is "My nightstand is made of imported hardwood. It has no drawers; if I need something, I can easily call the servants."

Instead of pushing or pulling or turning the luxury-nightstand:
	say "I would never have moved my nightstand; it would disturb the balance of the room."
	
The delicious-breakfast is an edible thing on the luxury-nightstand. The printed name of the delicious-breakfast is "delicious breakfast". Understand "delicious" or "breakfast" or "toast" or "bacon" or "freshly" or "prepared" or "freshly-prepared" or "eggs" or "work" or "works" as the delicious-breakfast. The description of the delicious-breakfast is "My chef is just the best you know. He gives me everything I want: toast, bacon, eggs, the works. He is simply the best!";

After eating the delicious-breakfast:
	say "It was excellent, I have to admit, although my chef still struggles with egg consistency. After I was finished, I rang for the maid, and she came and cleared the dishes for me before departing.";


Before going east from luxury-apartment:
	if the delicious-breakfast is not nowhere:
		say "I simply couldn't think of work while I was still hungry. I keep a regular schedule, you know." instead;

Section 3 - Walk-in closet

The luxury-closet is south from luxury-apartment. The printed name of luxury-closet is "Walk-In Closet".

Luxury-closet is in statement-region.

The description of the luxury-closet is "My closet is about the same size as this train car we're in. At the time, it was filled with countless outfits, shoes, jewelry, and hats, but most of them were of no interest to me. I have to wear what strikes my mood.

My bedroom was back to the [boldnorth]."

The countless-outfits are plural-named scenery in the luxury-closet. The printed name of the countless-outfits is "countless outfits". Understand "countless" or "outfits" or "outfit" or "clothing" or "clothe" or "clothes" as the countless-outfits.

The description of the countless-outfits is "Oh, it would take me forever to describe all of the clothes that I own. Besides, I have people that rotate my wardrobe for me."

Instead of taking the countless-outfits:
	say "My jumpsuit called out to me more than any other outfit."

The closet-shoes are plural-named scenery in the luxury-closet. The printed name of the closet-shoes is "shoes". Understand "shoes" or "shoe" as the closet-shoes.

The description of the closet-shoes is "A few of my shoes are worth more than a car, you know. But I already had shoes picked out for the day; a servant would be bringing them later."

Instead of taking the closet-shoes:
	say "My servants already had the shoes I had picked for the day; they would bring them later."

Some closet-jewelry is ambiguously plural scenery in the luxury-closet. The printed name of the closet-jewelry is "jewelry". Understand "jewelry" as the closet-jewelry.

The description of the closet-jewelry is "Everything that cost more than a million credits was in my safety deposit box at the bank. These were mostly trifles, each scarcely worth more than car."

Instead of taking the closet-jewelry:
	say "I tried on a variety of jewelry, but none of it called out to me. I was feeling fresh and beautiful, and wanted to feature my own beauty as much as possible that day."

Some closet-hats are plural-named scenery in the luxury-closet. The printed name of the closet-hats is "hats". Understand "hats" or "hat" as the closet-hats.

The description of the closet-hats is "Hats aren't in as much this year. I looked over the hats, but each seemed so old-fashioned. I would tell the servants later to put them in storage until the wheels of fashion creaked around again."

Instead of taking the closet-hats:
	say "A hat, in this age? Never."

The fake-jumpsuit is in luxury-closet. "The only clothing that stood out to me was my favorite rhinestone jumpsuit." The fake-jumpsuit is a wearable thing. The printed name of the fake-jumpsuit is "rhinestone jumpsuit". Understand "rhinestone" or "rheinstone" or "jump" or "suit" or "jumpsuit" or "tasteful" or "wardrobe" or "item" as the fake-jumpsuit. The description of the fake-jumpsuit is "It was the very same jumpsuit you see me wearing now[if maeve-level is 2], the only good piece of clothing I had[otherwise], one of my more tasteful wardrobe items[end if]."

After taking the fake-jumpsuit:
	do nothing;
	
Every turn:
	if the fake-jumpsuit is carried by the player:
		if the fake-jumpsuit is not worn by the player:
			try wearing the fake-jumpsuit;
		
After wearing the fake-jumpsuit when the fake-robe is worn by the player:
	now the fake-robe is in the location;
	say "I changed into the jumpsuit, leaving the robe for the maid to pick up later.";

Instead of taking the fake-robe when the fake-robe is not worn by the player:
	say "I didn't need to worry about the robe anymore; the help would do that for me."

Instead of taking off the fake-robe:
	say "My apartment was just the right temperature; taking off the robe would have left me chilly[if the fake-jumpsuit is in the location]. I could just WEAR JUMPSUIT to change right into it[end if]."

Instead of taking off the fake-jumpsuit:
	say "After all the work I did putting it on, I wasn't about to take it off any time soon."

Section 4 - Office

[flesh out fake sapphires]

Luxury-office is east from luxury-apartment. "My office was simple, with desks for myself and my assistant, who had the day off. My wide-screen data terminal made an impressive contrast with my shelves of antique books that covered the walls.

My bedroom was back to the [boldwest]."

The printed name of Luxury-office is "Office". Luxury-office is in statement-region.

The luxury-desk is a scenery supporter in luxury-office. The printed name of the luxury-desk is "executive desk". Understand "my" or "mine" or "executive" or "titanium" or "steel" or "oak" or "highlight" or "highlights" or "solid" or "glass" or "desks" or "carbon" or "nanotube" or "frame" or "desk" as the luxury-desk. The description of the luxury-desk is "My desk had a carbon nanotube frame, titanium steel and oak highlights, all covered with a layer of solid glass. 

On top of it was my wide-screen terminal, and nearby was the comfortable office chair I usually sit in."

The assistant-desk is a scenery supporter in luxury-office. The printed name of the assistant-desk is "assistant's desk". Understand "assistant" or "assistant's" or "desk" or "thin" or "slab" or "wood" or "metal" or "leg" or "legs" or "desks" as the assistant-desk.

The description of the assistant-desk is "My assistant's desk was simple, a thin slab of wood painted white, with metal legs. Her stool was nearby."

Instead of looking under the luxury-desk:
	say "I like to keep my office clean, detective. Nothing was under the desk."

Instead of looking under the assistant-desk:
	say "I like to keep my office clean, detective. Nothing was under the desk."

The executive-chair is an enterable scenery supporter in luxury-office. The printed name of the executive-chair is "comfortable office chair". Understand "comfortable" or "office" or "ergonomic" or "ergonomically" or "advanced" or "chair" as the executive-chair. The description of the executive-chair is "My office chair is ergonomically advanced. Much better than these poor armchairs the train puts us in."

Report entering the executive-chair:
	say "Ahhh...my chair felt amazing."

The assistant-stool is an enterable scenery supporter in luxury-office. The printed name of the assistant-stool is "stool". Understand "stool" as the assistant-stool.

The description of the assistant-stool is "I give my assistant a workable support, but her focus should be on helping me."

Instead of entering the assistant-stool:
	say "I would never sit on my assistant's stool...especially not when my comfortable chair is nearby!"

The wide-terminal is a switched off scenery device in luxury-office. The printed name of wide-terminal is "wide-screen data terminal". Understand "wide-screen" or "wide" or "state" or "art" or "screen" or "terminal" or "data" as the wide-terminal.

The description of the wide-terminal is "My data terminal is state-of-the art, with a wide terminal and higher-tier access to data streaming. I had already written quite a bit for the day."

Instead of switching on the wide-terminal:
	say "I didn't have time to write that day; I had to go to my book signing to greet my adoring fans."

The luxury-shelves are plural-named scenery in luxury-office. The printed name of the luxury-shelves is "bookshelves". Understand "book shelf" or "shelf" or "shelves" or "bookshelf" or "bookshelves" or "antique" or "wall" or "walls" as the luxury-shelves. The description of the luxury-shelves is "I know it's quaint to still have books in this day and age, but I love their aesthetic. My office has wall to wall bookshelves, and they looked lovely that day."

Instead of taking the luxury-shelves:
	say "I didn't have time to read any of those books; I was more worried about my own!"

Does the player mean doing something with the luxury-shelves:
	it is unlikely;

Does the player mean taking the luxury-boxes:
	it is likely;

Instead of inserting something into the luxury-shelves:
	say "I didn't make a habit of leaving odd things on my shelves."

Instead of putting something on the luxury-shelves:
	say "I didn't make a habit of leaving odd things on my shelves."

The luxury-boxes are plural-named things in luxury-office. "The boxes of my books that I had ordered for the signing that night were piled up in the corner." The printed name of the luxury-boxes is "boxes of books". Understand "boxes" or "box" or "of" or "book" or "my" or "books" as the luxury-boxes. The description of the luxury-boxes is "I had been selling out of books at my most recent signings, so I made sure to order plenty of copies this time around. It was time to go, and I needed to take the books with me.

As soon I was ready, I could take the boxes and go.".

The luxury-boxes are a plural-named closed openable container. 

Instead of opening the luxury-boxes:
	say "No, I kept them closed, it would have been really hard to get them to the store otherwise.";

Before taking the luxury-boxes when fake-robe is worn by the player:
	say "I couldn't have the boxes carried out to the car if I was still wearing my robe!" instead;

Instead of taking the luxury-boxes:
	say "I rang for the valet, who came and assisted me in carrying the books down to my waiting taxi, which took me directly to the bookstore.";
	now the player is in luxury-bookstore;
	
Section 5 - Bookstore

Luxury-bookstore is a room in statement-region. The printed name of luxury-bookstore is "Bookstore". "The bookstore had opened up a room usually used for parties to be able to hold all of my fans. The adoring crowd swarmed around me, only held back by velvet ropes."

Instead of going nowhere when the player is in luxury-bookstore:
	say "I couldn't go anywhere without being mobbed by fans, so I stayed put."

The fans-crowd is plural-named distant scenery people in luxury-bookstore. The printed name of the fans-crowd is "adoring fans". Understand "crowd" or "adoring" or "fans" or "hubbub" as the fans-crowd.

Instead of talking to the fans-crowd:
	say "There were too many to talk to all at once, sugar."

Instead of giving something to the fans-crowd:
	say "They were simply too far away.";
	
Instead of showing something to the fans-crowd:
	say "They were simply too far away."

The description of the fans-crowd is "My adoring fans came from all walks of life to get a chance to meet me. And get their books signed, of course! "

Instead of listening to something when the player is in luxury-bookstore:
	say "It was hard to hear anything over the hubbub of the fans"

The velvet-ropes are distant plural-named scenery in luxury-bookstore. The printed name of the velvet-ropes is "velvet ropes". Understand "rope" or "ropes" or "velvet" as the velvet-ropes. The description of the velvet-ropes is "Those velvet ropes were the only thing standing between me and being crushed by fans."

The signing-table is a scenery supporter in luxury-bookstore. The printed name of the signing-table is "signing table". Understand "singing" or "table" as the signing-table.

The description of the signing-table is "This signing table was the best the bookstore could provide. It was acceptable, but I have had much better accommodations in the past."

The signing-pen is on the signing-table. The printed name of the signing-pen is "signing pen". Understand "signing" or "pen" as the signing-pen. The description of the signing-pen is "The pen was provided by the bookstore. It was simple, but effective."

The Book-dafydd is a man in luxury-bookstore. "[if dafyddbegged is true]Dafydd was sitting at his table, sobbing[otherwise if book-dafydd is in luxury-cafe]Dafydd was seated at a nearby table[otherwise]A charming young man was the next in line, waiting for me to [end if][if dafydd-copy is held by book-dafydd]talk to him. He held the copy of my book he had purchased at the other end of the line[otherwise if book-dafydd is not in luxury-cafe]sign his book[end if]." The printed name of Book-dafydd is "[if dafydd-copy is held by book-dafydd]charming young man[otherwise]Dafydd[end if]". Understand "charming" or "young" or "man" or "dafydd" as book-dafydd. 

The description of book-dafydd is "[The book-dafydd] was the kind of guy that looks like he's going to be a billionaire one day. You know? Like you look at pictures of famous inventors or big corporate men back in their 20s. That's the way that he looked."

Instead of taking dafydd-copy when dafydd-copy is held by book-dafydd:
	say "That's not how I remember it; I'm fairly sure we talked first."

Instead of talking to book-dafydd:
	if the dafydd-copy is held by book-dafydd:
		now book-dafydd is proper-named;
		say "'Well hello,' I said to the nice young man. 

He blushed. 'H...hi!' he said. 'I'm a really big fan.' His face was kind of cute, with how red it was.

'What's your name, sugar?' I asked. 

He stammered out: 'It's Dafydd. I'd love to have your autograph; I've read literally all of your books. I hope they make movies out of them!'

He put his copy on the table. As he did so, I saw his sleeve lift up. I noticed he was wearing a [italic type]very[roman type] nice watch. It was an Arawnz brand, monogrammed with what must have been his initials: DY.";
		deliver timepiece-quip;
		deliver signed-quip;
		now dafydd-copy is on the signing-table;
	otherwise if book-dafydd is in luxury-bookstore:
		say "He said, 'I'm excited to get your autograph!', pointing towards his book, which I hadn't given him yet.";
	otherwise if book-dafydd is in luxury-cafe:
		if dafyddbegged is true:
			say "Anything else I could say would only hurt him. It was time to go.";
		otherwise:
			now dafyddbegged is true;
			say "'Dafydd,' I called out in surprise. 'What are you doing here?'

	'Maeve,' he said, standing up and approaching my table, 'Maeve, I have to see you again. You're all I can think about.'

	'I'm sorry,' I said, trying to let him down gently. 'I know how it feels to fall in love with a celebrity. It's called paraphilia, you should look it up.' 

	He was shaking his head, but I put a finger on his lips. 'No, I said, 'we can't be together. But I'll always remember you, Dafydd.'

	He sat back down and put his head in his hands, crying. It was time for me to leave."

The maeve-watch is worn by book-dafydd. The printed name of the maeve-watch is "watch". Understand "watch" or "arawnz" or "monogram" or "DY" or "initials" as the maeve-watch. The description of the maeve-watch is "An Arawnz watch is always a treat to behold. [The book-dafydd]'s watch was in especially nice condition."

Booksigning is an action applying to one thing. Understand "sign [something]" as booksigning.

Check booksigning:
	if the signing-pen is not carried by the player:
		if the signing-pen is enclosed by the location:
			say "I grabbed the pen first.";
			now the signing-pen is held by the player;
		otherwise:
			say "[We] [aren't] holding anything good to sign with." instead;

Book-signed is a truth state that varies. Book-signed is false.

Carry out booksigning:
	if the noun is not the dafydd-copy:
		say "The only thing I was signing that day was my book, Detective. I don't do freebies.";
	otherwise:
		if the noun is held by book-dafydd:
			say "I couldn't sign it because he was still holding it.";
		otherwise if book-signed is true:
			say "I had already signed it, sugar, try to keep up.";
		otherwise:
			now book-signed is true;
			say "Well, I signed that copy just like he wanted. 'For Dafydd,' I wrote, 'my greatest fan.' I read it out loud, and Dafydd giggled a little with happiness. It was...perfect.

He still stood around, awkwardly. His book that I had signed was on the table."

The dafydd-copy is held by book-dafydd. The printed name of dafydd-copy is "[if book-signed is false]blank [otherwise]signed [end if]copy of my book". Understand "blank" or "copy" or "book" or "my" as the dafydd-copy. The description of the dafydd-copy is "This was [the book-dafydd]'s personal copy of my book[if book-signed is false]. I hadn't signed it yet[otherwise]. I had already signed it, but I hadn't given it back to him yet[end if]."

Instead of reading dafydd-copy:
	say "Oh no, no, I can never read my own work. Too stressful."

Instead of giving dafydd-copy to book-dafydd:
	if book-signed is false:
		say "I hadn't signed the book yet!";
	otherwise:
		say "I handed him the book. His hand grazed mine as he grabbed it, and he looked like he was about to faint. I waved him goodbye, and went back to signing books.

I did see him again.";
		now dafydd-copy is on signing-table;
		now the player is in luxury-cafe;
		now book-dafydd is in luxury-cafe;
		now the signing-pen is nowhere;
		say "To my surprise, I saw Dafydd there. I can only assume he had been following me. It happens sometimes."
	
Timepiece-quip is a squip. The printed name of timepiece-quip is "Timepiece". Understand "timepiece" as timepiece-quip. The preview of timepiece-quip is "[the train-corpse] owned an expensive, monogrammed Arawnz wristwatch."

The targetresponse of timepiece-quip is "[if currenttarget is elen]'Is that so?' says Elen. 'He must have had excellent taste[otherwise if currenttarget is maeve]'Oh yes, I know,' says Maeve. 'I'm the one that told you that. Don't you remember? I saw it when I was signing his book[otherwise if currenttarget is arthur]'Hmm,' says Arthur, pursing his lips. 'That seems somewhat frivolous. Dafydd often complained about expenses; perhaps he should not have been so extravagant[otherwise if currenttarget is mari]'Just an Arawnz? That's not that special,' she says. Then she seems to catch herself, and says, 'I mean, yeah, that's some seriously expensive stuff. No wonder he got offed[end if].'".

Signed-quip is a squip. The printed name of signed-quip is "Collector". Understand "collector" as signed-quip. The preview of signed-quip is "[the train-corpse] wanted a signed copy of Maeve's book for himself."

The targetresponse of signed-quip is "[if currenttarget is elen]'Oh,' says Elen, looking at [the train-corpse] with more dismay than before. 'I didn't realize that this young man had that kind of taste. It's rather...well, it's rather [italic type]common[roman type], I should think[otherwise if currenttarget is maeve]'Yes, I'd say that he is one of my most devoted fans. Perhaps a bit too devoted; after all, it seems he followed me here today! Poor boy. It's hard to chase after someone famous[otherwise if currenttarget is arthur]'Is that true?' he asks, looking intrigued. 'I've read some of her books,' he says, looking over at her on one of the other chairs. 'They're not terrible. Some of the, er, romantic scenes are quite extraordinary[otherwise if currenttarget is mari]'Yeah, I guess that would make sense. Although I swear that doesn't sound right...you sure you got those facts straight? Because he said something when he sent the package, I just can't remember what it was..[end if].'"

Section 6 - Cafe

Luxury-cafe is a room in statement-region. The printed name of Luxury-cafe is "Cafe" 

"Today, this morning, I was at a cafe, on an outdoors patio. The sun was bright, and the air was fresh. I was seated at my usual table, sipping lemon water and contemplating life.

I could have left the cafe to the [boldnorth]."

The cafe-sun is distant backdrop in the luxury-cafe. The printed name of the cafe-sun is "sun". Understand "sun" as the cafe-sun. The description of the cafe-sun is "I've always adored being in the sun. I feel like a little plant, sometimes."

The outdoors-patio is a backdrop in luxury-cafe. The printed name of the outdoors-patio is "patio". Understand "outdoor" or "outdoors" or "patio" as the outdoors-patio. The description of the outdoors-patio is "I always ate outdoors when possible; the chance to see humanity and nature all at once is something I could never give up."

The usual-table is a scenery supporter in the luxury-cafe. The printed name of the usual-table is "usual table". The indefinite article of the usual-table is "my". Understand "usual" or "my" or "table" or "wrought-iron" or "wrought" or "iron" or "elaborate" or "floral" or "pattern" or "patterns" as the usual-table. The description of the usual-table is "[tabledesc]".

The nearby-table is a scenery supporter in the luxury-cafe. The printed name of the nearby-table is "nearby table". Understand "nearby" or "table" or "wrought-iron" or "his" or "wrought" or "iron" or "elaborate" or "floral" or "pattern" or "patterns" as the nearby-table. The description of the nearby-table is "[tabledesc]".

Does the player mean doing something with the nearby-table:
	it is unlikely;

Understand "comfort [someone]" as kissing.

The lemon-water is a scenery thing on the usual-table. The printed name of the lemon-water is "lemon water". Understand "lemon" or "water" or "my" as the lemon-water. The description of the lemon-water is "Lemon water is a favorite of mine, especially when I'm doing a cleanse. It feels more substantial than plain water, but not as overwhelming as coffee or tea."

Understand "sip [something]" as drinking.

Instead of taking or drinking the lemon-water:
	say "I sipped from the lemon water. Truly refreshing, especially on such a lovely day!"

To say tabledesc:
	say "All of the tables at my favorite cafe look alike: metal with a wrought-iron type finish, beaten into elaborate floral patterns."

dafyddbegged is a truth state that varies. Dafyddbegged is false.

Instead of going nowhere from luxury-cafe when the noun is north:
	if dafyddbegged is false:
		say "I couldn't leave yet without trying to figure out what was going on with this young man.";
	otherwise:
		say "But all good things have to come to end. I said goodbye to Dafydd, and left. He seemed sad to have to leave me.";
		silently try ceasing;
		now maeve is onceswapped;
		say "'And that's everything that happened, Detective. We parted on good terms. I can only assume he came here to find me,' says Maeve."

Section 7 - Nice apartment

Nice-apartment is a room in statement-region.

The printed name of Nice-apartment is "Nice Apartment". The description of nice-apartment is "Okay, you're right. I'm not a millionaire. Books don't pay as much as you'd think! My apartment is still nice, though. It's rent controlled, and has original hardwood floors. I have a vintage queen bed, and a cozy nightstand that I rescued and refinished.

[if fake-pajamas are worn by the player]I was still in my pajamas, but my [otherwise]My [end if]wardrobe was standing in the corner. I could go [boldeast] to my living room."

The original-floors are plural-named scenery floor in nice-apartment. The printed name of original-floors is "original hardwood floors". Understand "original" or "hard" or "wood" or "floor" or "floors" as the original-floors.

The description of the original-floors is "I ripped out the carpet when I moved in. Can you believe the last owner covered them up? [italic type]Original[roman type] hardwood floors?"

Instead of putting something on the original-floors:
	try dropping the noun;
	
The vintage-bed is an enterable scenery supporter in nice-apartment. The printed name of the vintage-bed is "vintage queen bed". Understand "vintage" or "queen" or "bed" as the vintage-bed. The description of the vintage-bed is "I got my bed at an estate sale a few years back. It's so heavy, I had to pay the movers double. But it'll outlast me."

Instead of entering the vintage-bed:
	say "Bed looks so comfortable. But if I got in,I knew I wouldn't get out for a long time."

The refinished-nightstand is a scenery supporter in nice-apartment. The printed name of the refinished-nightstand is "nightstand". Understand "nightstand" or "refinished" or "rescued" or "refurbished" or "new" or "screws" or "paint" or "night" or "stand" as the refinished-nightstand.

The description of the refinished-nightstand is "Gosh, this thing was my baby. I had found it, old, paint peeling on the side of the road. I stripped it, found new screws for it and repainted it."

The fake-pajamas are a plural-named wearable thing. The printed name of the fake-pajamas is "pajamas". Understand "pyjamas" or "pajamas" as the fake-pajamas. The description of the fake-pajamas is "I was wearing the pajamas I bought with my Christmas bonus. They made me feel like I was wearing a blanket."

A healthy-breakfast is an edible thing. The printed name of the healthy-breakfast is "healthy breakfast". Understand "healthy" or "breakfast" or "bagel" or "banana" as the healthy-breakfast. The description of the healthy-breakfast is "I had a healthy breakfast I had prepared the night before: a banana and a bagel. Not the tastiest, but good for me."

[put breakfast in]

The Nice-wardrobe is a scenery closed openable container in nice-apartment. Understand "wardrobe" as the nice-wardrobe. The printed name of the nice-wardrobe is "wardrobe". The description of the nice-wardrobe is "The wardrobe came with the apartment; the previous tenant couldn't get it out, and neither could I. It's a wonder how it was brought in in the first place. But it fits my aesthetic, so I kept it."

The other-clothes are plural-named things in the nice-wardrobe. "My other clothes were in the wardrobe, as well." The printed name of the other-clothes is "other clothes". Understand "other" or "clothe" or "clothes" as the other-clothes.

Instead of taking the other-clothes:
	say "My jumpsuit was the only thing that called out to me to wear that day."


After wearing the fake-jumpsuit when the fake-pajamas are worn by the player:
	now the fake-pajamas are in the location;
	say "I changed into the jumpsuit, leaving the pajamas behind.";

Instead of taking the fake-pajamas when the fake-pajamas are not worn by the player:
	say "Why would I change into pajamas if I just changed out of pajamas, sugar?"

Before going east from nice-apartment:
	if the healthy-breakfast is not nowhere:
		say "I definitely wouldn't have had the energy to get going that day if I didn't have food in me." instead;
	otherwise if the fake-jumpsuit is not worn by the player:
		say "I couldn't go out in my pajamas!"

Instead of taking off the fake-pajamas:
	say "My apartment was too cold to wear nothing; I could just WEAR my clothes once I picked out what to wear."

Section 8 - Nice front room

Nice-front is east from nice-apartment. The printed name of nice-front is "Front Room". The description of nice-front is "My front room was comfortable, with a yellow houndstooth couch and a knotted hand-dyed rug. I had a brand-new laptop for my writing perched on my couch. My bedroom was back to the [boldwest]."

Nice-front is in statement-region.

The nice-couch is an enterable scenery supporter in nice-front. The printed name of the nice-couch is "houndstooth couch". Understand "yellow" or "houndstooth" or "couch" or "comfortable" as the nice-couch. The description of the nice-couch is "This yellow houndstooth couch has a bit of a story to it. The sellers were a young couple that was completely overpriced it. I knew they were just trying to gouge me so I haggled them down to half the original price. Half! Can you imagine?"

After entering the nice-couch:
	say "Believe me, Detective, when I say that this is the most comfortable couch you can imagine."

The knotted-rug is scenery in nice-front. The printed name of the knotted-rug is "knotted hand-dyed rug". Understand "knotted" or "knot" or "knots" or "hand" or "dyed" or "hand-dyed" or "rug" as the knotted-rug. 

The description of the knotted-rug is "I got it off a seller online. It wasn't quite as good as it looked in the photos, but it's grown on me.".

Instead of looking under the knotted-rug:
	say "I don't have any trapdoors or dust bunnies, Detective."

The nice-laptop is a scenery thing on the nice-couch. The nice-laptop is a switched off device. The printed name of the nice-laptop is "brand-new laptop". Understand "brand" or "new" or "laptop" as the nice-laptop. The description of the nice-laptop is "I found the laptop on sale. Apparently there's a thing where the batteries can explode, but that was probably just propaganda by rival manufacturers."

Instead of switching on the nice-laptop:
	say "I didn't feel like writing right then."

Instead of taking the nice-laptop:
	say "I didn't feel like doing work right then."

The nice-box is in nice-front. "A box of my books that I had ordered for the signing was ready for me to grab." Understand "box" or "books" or "box of books" as the nice-box. The printed name of the nice-box is "box of books". The description of the nice-box is "I'll admit, I only ordered a single box of books for the signing. Is that so wrong for a woman to lie about, Detective?"

Instead of opening the nice-box:
	say "The books would probably have spilled if I had opened them before I got to the bookstore."

Before taking the nice-box:
	if the fake-pajamas are worn by the player:
		say "I wanted to take the box and leave, but I couldn't go out in just my pajamas!" instead;

Instead of taking the nice-box:
	say "I grabbed the box of books myself and carefully carried it with me. I then hailed a cab and headed to the bookstore.";
	now the player is in nice-bookstore;
	
Section 9 - Nice book store

Nice-bookstore is a room in statement-region. The printed name of nice-bookstore is "Bookstore". The description of nice-bookstore is "You know, yeah, they didn't open up a whole party room for me at the bookstore. But they did give me a table right at the front, and there were at least, I mean, a couple dozen fans."

The Nice-dafydd is a man in nice-bookstore. The printed name of nice-dafydd is "[if nice-dafydd is proper-named]Dafydd[otherwise]charming young man[end if]". Understand "dafydd" or "charming" or "young" as nice-dafydd. The initial appearance of nice-dafydd is "[if dafyddbegged is true]Dafydd was sitting at his table, sobbing[otherwise if nice-dafydd is in nice-cafe]Dafydd was seated at a nearby table[otherwise]I wasn't lying about the guy, though. A charming young man was the next in line, waiting for me to [end if][if nice-copy is held by nice-dafydd]talk to him. He held the copy of my book he had picked at the other end of the line[otherwise if nice-dafydd is not in nice-cafe]sign his book[end if]."

The description of nice-dafydd is "[The nice-dafydd] was sweet. He looked like one in a million. And he was at [italic type]my[roman type] signing. You understand?"

The nice-watch is worn by nice-dafydd. The printed name of the nice-watch is "watch". Understand "watch" or "arawnz" or "monogram" or "DY" or "initials" as the nice-watch. The description of the nice-watch is "An Arawnz watch is always a treat to behold. [The book-dafydd]'s watch was in especially nice condition."

The nice-copy is a thing in nice-bookstore. The printed name of nice-copy is "[if book-signed is false]blank [otherwise]signed [end if]copy of my book". Understand "blank" or "copy" or "book" or "my" as the nice-copy. The description of the nice-copy is "This was [the nice-dafydd]'s personal copy of my book. You know what that means? It means he though it was worth spending his own money on. He cared about me! Chew on that[if book-signed is false]. I hadn't signed it yet[otherwise]. I had already signed it, but I hadn't given it back to him yet[end if]."

The nice-table is a scenery supporter in nice-bookstore. The printed name of the nice-table is "signing table". Understand "signing" or "table" or "folding" as the nice-table. The description of the nice-table is "They had just grabbed a folding table from the back. It worked, but wasn't as glamorous as I hoped."

Instead of taking nice-copy when nice-copy is held by nice-dafydd:
	say "That's not how I remember it; I'm fairly sure we talked first."

Instead of reading nice-copy:
	say "Oh no, no, I can never read my own work. Too stressful."

The nice-crowd is plural-named distant scenery people in nice-bookstore. The printed name of the nice-crowd is "fans". Understand "fan" or "fans" or "crowd" or "couple" or "dozen" as the nice-crowd. The description of the nice-crowd is "Only a couple dozen fans were there, not my biggest event ever. But it's still nice getting out and meeting the fans, right?"

Instead of talking to the nice-crowd:
	say "There were too many to talk to all at once, sugar."

Instead of talking to nice-dafydd:
	if the nice-copy is held by nice-dafydd:
		now nice-dafydd is proper-named;
		say "Our conversation was longer than I said the first time. After all, it was a smaller crowd.

He put his copy on the table, and I saw his watch, just like I said. I like men with expensive tastes, okay? And he was obviously there to see me. So I asked about him, his life. He told me he was a scientist. I asked if he'd like to research me, ha ha. He laughed, you know. And his book copy was still on the table.";
		now nice-copy is on the nice-table;
	otherwise if nice-dafydd is in nice-bookstore:
		say "We chatted a bit more, but he started checking his watch. I knew he wanted me to sign his book.";
	otherwise if nice-dafydd is in nice-cafe:
		now dafyddbegged is true;
		say "'Dafydd,' I called out in surprise. 'Is that you?'

He blushed deeply. I didn't tell you before, but I was thrilled he was there. I'll admit it, I wanted him to be there. That's one reason I had been outdoors; I was sending a message out to the universe, shouting, 'I want to be found!'

He got up to me and said, 'Maeve, I had to see you again. You're all I can think about.'

'I know,' I said. 'I feel the same way.'

'You do?' he said, almost shaking. 'I didn't think someone like you...'

I put a finger on his lips. 'Listen,' I said, looking around. 'We can't talk here. Let's go somewhere where we can talk alone.'

He grinned and said, 'I know just the place. A train is leaving in five minutes, no one's ever on it this early. Meet me there in five minutes[deliverrendezvous].'

And then he was gone, leaving to the north.";
		now nice-dafydd is nowhere;

Instead of booksigning the nice-copy:
	if the nice-copy is held by nice-dafydd:
		say "I didn't have the book at the time.";
	otherwise if book-signed is true:
		say "Don't forget, hon, I already did that.";
	otherwise:
		now book-signed is true;
		say "He had been so sweet, I was happy to sign his book. 'For Dafydd, right?' I asked.

	'Uh, no, actually, it's for a friend,' he answered. 'Can you put, [']To my biggest fan Ceri. Love, Maeve Miller[']?'

	'Sure you don't want one for yourself?' I asked.

	'No, I'm good,' he said politely. I have to admit, it stung a bit. But then he added, 'Anyone can get an autograph. I'm just glad to meet the author.'

	That cheered me up, so I did what he asked, and signed the book, just like I told you before. He grinned, and his smile was like a million bucks.

	The book I had just signed was still on the table."

Instead of giving nice-copy to nice-dafydd:
	if book-signed is false:
		say "I hadn't signed the book yet!";
	otherwise:
		say "I handed him the book. His hand grazed mine as he grabbed it, and I grabbed it. 'Hey,' I said, 'maybe we'll see each other again sometime.'

'I'd like that,' he said, smiling as he backed out of the room.

I did see him again, the next day, while I was eating at a cafe.";
		now nice-copy is on nice-table;
		now the player is in nice-cafe;
		now nice-dafydd is in nice-cafe;
		now the signing-pen is nowhere;
		say "To my surprise, I saw Dafydd there. My heart started beating faster. Had he followed me?"

To say deliverrendezvous:
	deliver rendezvous-quip;
	
Rendezvous-quip is a squip. The printed name of Rendezvous-quip is "Rendezvous". Understand "Rendezvous" as Rendezvous-quip. The preview of Rendezvous-quip is "Maeve made plans with Dafydd to meet on the train."

The targetresponse of rendezvous-quip is "[if currenttarget is maeve]'That's right', says Maeve. 'Dafydd was captivated by me, and who am I to refuse such a charming paramour?[otherwise if currenttarget is mari]'Hmmm, that's kind of weird,' says Mari. 'When I was at the--well, I just think it's weird, okay?[otherwise if currenttarget is elen]'Well, a train would be a good place to meet with someone, especially this train,' she says. 'It provides some privacy.[otherwise]'Is that so? I wasn't aware that Dafydd had...lovers,' he says, staring at Maeve. 'Odd.[end if]'".

Section 10 - Nice cafe

Nice-cafe is a room in statement-region. The printed name of Nice-cafe is "Cafe". "I was seated at a cafe, in an outdoors patio. Thoughts of Dafydd weighed on my mind. I had grabbed a convenient table and was waiting for my order, sipping lemon water.

I could leave the cafe to the [boldnorth]."

Atwaving is an action applying to one thing. Understand "wave at [someone]" as atwaving.

Carry out atwaving:
	try waving hands;

The cafe-sun is in nice-cafe.

The outdoors-patio is in nice-cafe. 

The convenient-table is a scenery supporter in the nice-cafe. The printed name of the convenient-table is "convenient table". The indefinite article of the usual-table is "my". Understand "convenient" or "my" or "table" or "wrought-iron" or "wrought" or "iron" or "elaborate" or "floral" or "pattern" or "patterns" as the usual-table. The description of the convenient-table is "[tabledesc]".

Understand "sip [something]" as drinking.


Instead of going nowhere from nice-cafe when the noun is north:
	if nice-dafydd is in nice-cafe:
		say "I couldn't leave yet without talking to Dafydd.";
	otherwise:
		say "I rushed to the train, hoping to find him here.";
		silently try ceasing;
		now maeve is onceswapped;
		now secondmaeve is true;
		say "'And that's everything that happened, Detective. When I reached the train, I was trying to find him, but the lights went out, and I heard a man scream. It was Dafydd,' says Maeve. 'It was awful. I didn't want to tell you everything before, because, well, I didn't want you to suspect me.'"
		
Section 11 - Crappy apartment

Crappy-apartment is a room in statement-region.

The printed name of Crappy-apartment is "Awful Apartment". The description of crappy-apartment is "To understand me, you have to understand my life. All of the money, it's gone. I haven't had a bestseller in years. And so my apartment is awful, a studio on the bad side of town with shoddy floors and nothing but an old mattress to sleep on. My clothes were piled in the corner and I had a makeshift nighstand made out of a cardboard box."

The bad-floors are plural-named scenery floor in crappy-apartment. The printed name of bad-floors is "shoddy floors". Understand "shoddy" or "hard" or "wood" or "floor" or "floors" or "old" or "ugly" or "vinyl" as the bad-floors.

The description of the bad-floors is "The floor in my apartment is so old and ugly it makes me want to cry. It's vinyl. Vinyl!"

Instead of putting something on the bad-floors:
	try dropping the noun;
	
The old-mattress is an enterable scenery supporter in crappy-apartment. The printed name of the old-mattress is "old mattress". Understand "old" or "mattress" or "bed" as the old-mattress. The description of the old-mattress is "I couldn't afford movers when I last downsized my apartment, and so I had to buy new furniture. But I couldn't get credit, so the mattress is all I have for now."

Instead of entering the old-mattress:
	say "It was uncomfortable enough at night, I certainly wasn't going to get on it during the day!"

The nightstand-box is a scenery supporter in crappy-apartment. The printed name of the nightstand-box is "makeshift nightstand". Understand "nightstand" or "makeshift" or "cardboard" or "box" or "night" or "stand" as the nightstand-box.

The description of the nightstand-box is "All I had for a nightstand was a cardboard box that I used to move with."

[keep fake pajamas the same but with alternate phrasin?]
[The fake-pajamas are a plural-named wearable thing. The printed name of the fake-pajamas is "pajamas". Understand "pyjamas" or "pajamas" as the fake-pajamas. The description of the fake-pajamas is "I was wearing the pajamas I bought with my Christmas bonus. They made me feel like I was wearing a blanket."]

A bad-breakfast is an edible thing. The printed name of the bad-breakfast is "toaster pastry". Understand "toaster" or "breakfast" or "pastry" as the bad-breakfast. The description of the bad-breakfast is "This was my last pastry; I had to get more from the store. Hopefully I could make enough in sales at the signing to buy more."

Licking is an action applying to one thing. Understand "lick [something]" as licking.

Carry out licking:
	say "You haven't lived as long you have by licking everything you see."

Instead of licking an edible thing:
	say "Hmmm. Seems edible."

The Clothing-pile is a scenery open unopenable container in crappy-apartment. Understand "pile" or "pile of" or "clothe" or "clothes" or "clothing" as the clothing-pile. The printed name of the clothing-pile is "pile of clothes". The description of the clothing-pile is "By far, the majority of my clothes were old and worn out."

Instead of taking the clothing-pile:
	say "My jumpsuit was the only thing that called out to me to wear that day."

Understand "lie on [something]" as entering.

The bad-bag is in crappy-apartment. "A plastic bag with a couple of my books for the signing was sitting by the bed." Understand "bag" or "books" or "bag of" or "couple" or "plastic" as the bad-bag. The printed name of the bad-bag is "bag of books". The description of the bad-bag is "I had learned not to get my hopes up at the signings, so I only had a few copies to sell."

Instead of opening the bad-bag:
	say "I opened the bag for a second to peek in. The books looked good; why weren't more people buying them?"

Before taking the bad-bag:
	if the fake-pajamas are worn by the player:
		say "I wanted to take the bag and leave, but I couldn't go out in just my pajamas!" instead;
	otherwise if bad-breakfast is not nowhere:
		say "I wasn't looking forward to yet another toaster pastry but I had to eat breakfast before I left, to give me strength." instead;

Instead of taking the bad-bag:
	say "I grabbed the bag of books and hoisted it over my shoulder. Then I walked to the bookstore. What else could I do? I had to sell the books, and couldn't afford a cab. Don't judge, hon.";
	now the player is in bad-bookstore;
	
Section 12 - Bad book store

Bad-bookstore is a room in statement-region. The printed name of Bad-bookstore is "Bookstore". The description of bad-bookstore is "The used bookstore I was in wasn't the best of places, but I vaguely knew the owner and he was doing me a favor. At least there was a battered table I was at. But the place was almost entirely empty."

The bad-dafydd is a man in bad-bookstore. The printed name of bad-dafydd is "[if bad-dafydd is proper-named]Dafydd[otherwise]charming young man[end if]". Understand "charming" or "young" or "dafydd" or "sweet" or "handsome" as bad-dafydd. The initial appearance of bad-dafydd is "[if dafyddupset is true]Dafydd seemed furious[otherwise if bad-dafydd is in bad-cafe]Dafydd was seated at a nearby table, unaware of my presence[otherwise]There was only one man there, but he was so charming, hon. If you could have seen him....you'd understand. He wanted me to [end if][if bad-copy is held by bad-dafydd]talk to him. He held a copy of my book, I think it might have even been his own[otherwise if bad-dafydd is not in bad-cafe]sign his book[end if]."

The description of bad-dafydd is "[The bad-dafydd] was sweet. He was young, handsome, charming. He had that look like a marble statue covered with the softest peach velvet. He looked like one in a million."

The bad-copy is a thing in bad-bookstore. The printed name of bad-copy is "[if book-signed is false]blank [otherwise]signed [end if]copy of my book". Understand "blank" or "copy" or "book" or "my" as the bad-copy. The description of the bad-copy is "This was [the bad-dafydd]'s personal copy of my book. You know what that means? It means he though it was worth spending his own money on. He cared about me! Chew on that[if book-signed is false]. I hadn't signed it yet[otherwise]. I had already signed it, but I hadn't given it back to him yet[end if]."

The bad-table is a scenery supporter in bad-bookstore. The printed name of the bad-table is "battered table". Understand "battered" or "table" or "folding" as the bad-table. The description of the bad-table is "The table looked like it had been pulled out of a dumpster just minutes before my arrival."

Instead of taking bad-copy when bad-copy is held by bad-dafydd:
	say "That's not how I remember it; I'm fairly sure we talked first."

Instead of talking to bad-dafydd:
	if the bad-copy is held by bad-dafydd:
		now bad-dafydd is proper-named;
		say "This young man came up to me with the biggest grin on his face. He asked if I was really Maeve Miller, and I said yes, enjoying the attention a little. Maybe a lot; I don't get much these days.

But I couldn't believe it when he said he just wanted an autograph for his friend. I asked, 'Don't you want one for yourself, sugar?' but he said no. Apparently this friend of his wanted my autograph something bad; he was a collector of sorts.

Anyway, the man, Dafydd, he put his copy on the table, and I saw his watch, just like I said. He told me he was a scientist. I asked if he'd like to research me, ha ha. He didn't laugh, though, which I thought was a bit rude, but I forgave him because he looked like an earthly angel. This whole time his book copy was still on the table.";
		now bad-copy is on the bad-table;
	otherwise if bad-dafydd is in bad-bookstore:
		say "We chatted a bit more, but he started checking his watch. I knew he wanted me to sign his book.";
	otherwise if bad-dafydd is in bad-cafe:
		now dafyddupset is true;
		say "'Dafydd,' I called out in surprise. 'Is that you?'

He jumped when I spoke, and turned around all angry.

He said, 'Ms Miller--'

I cut him off. 'You can call me Maeve, hon.'

'I don't care,' he said. 'You have to stop following me! I've seen you, you know. I've talked to the police.'

'Why would you do that, Dafydd?' I asked, heartbroken. 'We were meant to be together! I knew it when I first laid eyes on you!'

I reached out to grab his hand, but he jerked back. 

'Leave me alone!' he screamed, causing a scene at the cafe. Then he ran off and left me there. It was heartbreaking! And I wasn't going to take it lying down. I knew where he went; he left to the [boldnorth].";
		now bad-dafydd is nowhere;

Instead of booksigning the bad-copy:
	if the bad-copy is held by bad-dafydd:
		say "I didn't have the book at the time.";
	otherwise if book-signed is true:
		say "Don't forget, hon, I already did that.";
	otherwise:
		now book-signed is true;
		say "'What do you want me to write?' I asked, looking him over.

	He told me, 'Can you put, [']To my biggest fan Ceri. Love, Maeve Miller[']?'

	'You absolutely sure you don't want one for yourself?' I asked.

	'I don't really read fiction,' he said. 'Since I'm a scientist.'

	'I still can't believe it. You're so young to be a scientsist!' I exclaimed, all impressed. Looks [italic type]and[roman type] brains? This was my day!

	'Yeah,' he said, puffing with pride. 'At Textor University. Nanobiotics. You should look it up!' he said.

	'Maybe I should look you up,' I said, making my move. But he ignored me; he only looked at his book, still on the table."

Instead of giving bad-copy to bad-dafydd:
	if book-signed is false:
		say "I hadn't signed the book yet!";
	otherwise:
		say "I handed him the book. His hand grazed mine as he grabbed it, and I grabbed it. 'Hey,' I said, 'maybe we'll see each other again sometime.'

And wouldn't you know, he didn't even acknowledge what I said! He probably didn't even hear me.

I didn't want him to miss out on our potential relationship, so I looked him up at that university and started following him.";
		now bad-copy is on bad-table;
		now the player is in bad-office;
		now bad-dafydd is in bad-cafe;
		now the signing-pen is nowhere;
		say "I couldn't believe I found Dafydd's office so easily. It made me concerned for his safety--what if a killer or someone snuck in when no one was looking? That's why he needed me in his life, to protect him."

Section 13 - Dafydd's work

Bad-office is a room in statement-region. The printed name of bad-office is "Professor's Office". The description of bad-office is "Dafydd's office had much more expensive furniture than I would have imagined, for a grad student. Shelves with textbooks on nanobiotics filled much of the wall space, and a large polished oak desk dominates the scene."

The bad-furniture are plural-named scenery in bad-office. The printed name of bad-furniture is "furniture". Understand "furniture" or "expensive" or "armchairs" or "potted" or "paintings" or "plant" as bad-furniture. The description of bad-furniture is "The furniture was nice: armchairs without stains, a potted plant that wasn't dying, paintings that weren't photocopied."

The office-shelves are plural-named scenery in bad-office. The printed name of the office-shelves is "shelves". Understand "shelf" or "shelves" or "textbook" or "textbooks" or "text" or "texts" or "book" or "books" or "nanobiotics" as the office-shelves. The description of the office-shelves are "I wasn't too interested in the books. Dafydd could tell me all about them later when were together." 

The bad-armoire is a scenery supporter in bad-office. The printed name of the bad-armoire is "polished oak desk". Understand "polished" or "oak" or "desk" or "large" as the bad-armoire. The description of the bad-armoire is "Remember when I lied earlier and said I had a beautiful office with a gorgeous oak desk? I was thinking of this one."

The bad-knickknacks are plural-named scenery things on the bad-armoire. The printed name of the bad-knickknacks is "knickknacks". Understand "knick" or "Knack" or "useless" or "clutter" or "knickknack" or "knickknacks" or "knicknack" or "knicknacks" as the bad-knickknacks. The description of the bad-knickknacks is "Most of the knickknacks on the desk blurred into a vision of expensive but mostly useless clutter."

The black-pouch is a closed openable container on bad-armoire. "Out of the many knickknacks on his desk, one stood out: a strange black case that didn't match anything else. It focused all my attention: was it a gift? From a lover? A wife? Or just an odd present? I had to know." The printed name of the black-pouch is "black case". Understand "case" or "slim" or "strange" or "logo" or "croes" or "black" or "box" as the black-pouch. The description of the black-pouch is "The object on the desk was a slim black case with a gold cross on it and a logo saying [']Croes[']".

Instead of going nowhere from bad-office:
	say "I couldn't leave until I knew for certain whether Dafydd was single! Who was the box from?"

Instead of physicality when the noun is the black-pouch:
	try examining the black-pouch;
	
Report examining the black-pouch:
	say "I got closer, carefully reaching towards it. I paused in confusion when I noticed the name Arthur Svenson on it. Who--?

Just then, I heard someone coming! I hid behind the door, and was surprised to see an old professor come in. Then it dawned on me...

[italic type]As Maeve tells this part of her story, she looks sideways at Arthur and whispers: It was that man's office.[roman type]

Like I said, I hid behind the door. I was worried he'd find me, but I heard him opening the blinds, and that's when I ran out[deliverpersonalized].

I kept following Dafydd, though, although he always slipped away. Finally, I found him at a cafe.";
	now the player is in bad-cafe;
	
To say deliverpersonalized:
	deliver personalized-quip;
	
Personalized-quip is a squip. The printed name of personalized-quip is "Personalized". Understand "personalized" as personalized-quip. The preview of personalized-quip is "Arthur owned a black box with the Croes label and a gold cross."

The targetresponse of personalized-quip is "[if currenttarget is maeve]Maeve looks a bit confused. 'I don't really know what that is. Is it pertinent to the investigation?'

'I can't go into details at this time,' you answer.

'Oh, I see,' she says[otherwise if currenttarget is elen]Elen says, 'Oh, really? Those are quite exquisite. Do you know what he is planning to do with it?'

'I don't have any idea,' you say. 'Why?'

'Maybe I'll talk to him later,' she says[otherwise if currenttarget is mari]'I have to say,' says Mari, 'I don't really get a lot of the things you're talking about. Sounds like a nouveau riche thing to me, though. Croes isn't that great,' she adds[otherwise]Arthur says, 'And now how do you know that, Detective? Have your people been rifling through my office?' He looks a bit upset.

'No, no,' you say. 'It's just a rumor I heard.'

He calms himself down with effort. 'I see,' he says[end if]."

Section 14 - Bad cafe

Bad-cafe is a room in statement-region. The printed name of Bad-cafe is "Cafe". "I had found Dafydd in a strange cafe not far from this train. I was seated at a convenient table, on an outdoors patio. I was waiting for my order, sipping lemon water.

I could leave the cafe to the [boldnorth]."

The cafe-sun is in bad-cafe.

The outdoors-patio is in bad-cafe. 

dafyddupset is a truth state that varies. Dafyddupset is false.

Instead of going nowhere from bad-cafe when the noun is north:
	if bad-dafydd is in bad-cafe:
		say "I couldn't leave yet without talking to Dafydd.";
	otherwise:
		say "I rushed after him, trying to stay out of sight, hoping to find him here.";
		silently try ceasing;
		now maeve is onceswapped;
		now secondmaeve is true;
		say "'And that's everything that happened. You know it all now, my poverty, my rejection, my humiliation. Do what you will with me, Detective. I have done no wrong. I was just trying to find him, but the lights went out, and I heard Dafydd scream,' says Maeve. 'I'll never hear his voice again. And nothing else really matters for me.' She stares for a while, her face ashen and distant, before resuming the guarded expression she had previously worn as a mask."

Chapter 6 - Professor Arthur statement world

Bio-lab is a room in statement-region.

[This reset's Arthur's flashbacks]
Every turn when currentswap is arthur and the player is emrys-weaver:
	reset-arthur;

To reset-arthur:
	if arthur-level is 0:
		now currentswap is emrys-weaver;
		now fake-arthur is in bio-lab;
		now red-marker is on lab-table;
		now blue-marker is on lab-table;
		now big-computer is switched off;
		now lab-dafydd is nowhere;
		now sample-4b is not microed;
		now sample-5c is not microed;
		now sample-4b is unmarked;
		now sample-5c is unmarked;
		now sample-4b is in samples-fridge;
		now sample-5c is in samples-fridge;
		now dataentered is false;
		now dafydd-finished is false;
		now the samples-fridge is closed;
	otherwise if arthur-level is 1:
		now currentswap is emrys-weaver;
		now sample-4b is nowhere;
		now sample-5c is nowhere;
		now other-slides are nowhere;
		now false-slides are on lab-table;
		now fake-arthur is in bio-lab;
		now red-marker is nowhere;
		now blue-marker is nowhere;
		now big-computer is switched off;
		now lab-dafydd is nowhere;
		now shifty-dafydd is nowhere;
		now Sloppynoticed is false;
		now dataread is false;
		now dafydd-confronted is false;
		now dafydd-finished is false;
		now the samples-fridge is closed;
	otherwise if arthur-level is 2:
		now currentswap is emrys-weaver;
		now false-slides are on lab-table;
		now fake-arthur is in bio-lab;
		now big-computer is switched off;
		now scared-dafydd is nowhere;
		now dataread is false;
		now dafydd-confronted is false;
		now dafydd-finished is false;
		now the samples-fridge is closed;
		now dataentered is false;

Arthur-level is a number that varies. Arthur-level is 0.

Section 1 - Fake Arthur

fake-Arthur is a man in bio-lab. The doppelganger of arthur is fake-arthur. The printed name of fake-arthur is "Arthur". The description of fake-Arthur is "I am a healthy man: I eat mostly vegetables and whole grains; I bike; I play handball. I've managed to avoid most of the diseases that plague my fellow academics. Those who know the human body ought to be kind towards it."

Section 2 - Bio lab

The printed name of the Bio-lab is "Bio Lab". The description of the Bio-lab is "[if arthur-level is 2]Despite all of the efforts of my enemies and the administration my lab is the largest at Textor University, because I am the best. But now, because of so-called [italic type]budget cuts[roman type], much of my important equipment has been sold off.

The bureaucrats had tried to take everything from me, but still expected me to produce the ground-breaking research I've always been known for. All they had left me was the samples refrigerator, my lab table, and my microscope[otherwise]My lab is the largest at Textor University, because I've been able to secure the most funding. Last night, when all of this happened, the lab was unusually empty; the floors were going to be waxed prior to new equipment being installed. 

However, I was still able to conduct my most recent research. All I needed was the samples refrigerator, my lab table, and my microscope, none of which had been moved[end if].

The protocol poster I had established for the students hung prominently on the wall.

I could go [boldeast] to the data lab or [boldsouth] to the department hallway."

The protocol-poster is scenery in bio-lab. The printed name of the protocol-poster is "protocol poster". Understand "protocol" or "poster" as the protocol-poster. The description of the protocol-poster is "My poster was written in simple language, to help my rather incompetent assistants.

1. Retrieve unmarked samples from the refrigerator.[line break]2. Put unmarked samples into the microscope.[line break]3. Look in the microscope to examine the slide, and look for distinguishing features.[line break]4. Mark any samples that have line-shaped nano devices with the red marker. Mark samples that are roughly circular with the blue marker.[line break]5. Replace the samples in the fridge, and enter the data in the Data Lab[if arthur-level is 2]

And I did follow the protocol, in the beginning. I want you to know that.[end if]."

The unwaxed-floors are scenery floor in the bio-lab. The printed name of the unwaxed-floors is "floors". Understand "floor" or "floors" as the unwaxed-floors. The description of the unwaxed-floors is "The floors had not yet been waxed, and were in poor repair. For all the funding I provide the university, one would think that they would have better maintenance protocols."

Instead of putting something on the unwaxed-floors:
	try dropping the noun;

The lab-table is a scenery supporter in bio-lab. The printed name of the lab-table is "lab table". Understand "lab" or "wood" or "plastic"or "top" or "tops" or "table" as the lab-table. The description of the lab-table is "Due to several recent accidents from clumsy assistants, our tables are simple wood with plastic tops, cheap and easy to replace."

The Samples-fridge is a closed openable scenery container in bio-lab. The printed name of samples-fridge is "samples refrigerator". Understand "sample" or "samples" or "fridge" or "refrigerator" as the samples-fridge. The description of samples-fridge is "This refrigerator, the only one currently in the lab, held the results of my most recent experiment, a groundbreaking accomplishment that would assure government funding for a decade[if arthur-level is 2]. 

At least, that's what I had been telling the higher ups. I hadn't actually needed the fridge for weeks[end if]."

A sample-slide is a kind of thing. Understand "slide" or "slides" or "sample" or "nano" or "device" or "devices" as a sample-slide.

Instead of taking the other-slides:
	say "I had already marked those slides, so there was no need to interact with them further."

Dishesslopped is a truth state that varies. Dishesslopped is false.

The false-slides are plural-named things. "[if arthur-level is 2]The slides, the results of my failed experiments, lay together on the table, a symbol of the sacrifices I had had to make in the name of science.[otherwise if dataread is true]All of the slides...my experiment was ruined![otherwise if dishesslopped is true]I couldn't believe one of my researchers ruined the slides...I had to check the data.[otherwise]The samples...why were the samples out of the fridge?[end if]"

Does the player mean examining the samples-fridge:
	it is unlikely;

 The printed name of the false-slides is "sample slides". Understand "sample" or "samples" or "slide" or "slides" as the false-slides. The description of the false-slides is "[if arthur-level is 2]The slides didn't matter, not now. They were for show, something to parade for visitors. I had made a great deal before about marking them and studying them in front of my students. Most of them never knew the difference. How could they[otherwise]The samples had been left out of the fridge. And all of them were marked red, despite some clearly belonging to the blue category...Who did this[dishesslopped][end if]?"

Instead of inserting the false-slides into the lab-micro:
	say "There was no point in further contaminating this research.";

Instead of taking the false-slides:
	say "There was no point in further contaminating this research."

After opening the samples-fridge when arthur-level is 0:
	say "I opened the refrigerator, revealing the last two samples to be marked, sample 4B and sample 5C. The other samples I had previously marked were also in the refrigerator."

Sample-4B is a sample-slide in the samples-fridge. Sample-5C is a sample-slide in the samples-fridge. The printed name of Sample-4B is "sample 4B". Understand "4b" as sample-4b. Understand "5c" as sample-5c. The printed name of sample-5c is "sample 5c". The description of sample-4B is "This was one of the more confusing samples of the experiment, and had been left for last, along with sample 5C. I couldn't see any pertinent details without the use of the microscope."

The description of sample-5C is "This was one of the more confusing samples of the experiment, and had been left for last, along with sample 4B. I couldn't see any pertinent details without the use of the microscope."

The other-slides are plural-named things in samples-fridge. The printed name of the other-slides is "other samples". Understand "slides" or "samples" or "previously" or "Marked" or "other" as the other-slides. The description of the other-slides is "The slides I had previously, painstakingly marked were in the fridge already, where I had carefully placed them after analyzing them."

The lab-micro is a scenery thing in bio-lab. The printed name of the lab-micro is "microscope". Understand "microscope" or "micro" or "scope" as the lab-micro.

The description of the lab-micro is "[if arthur-level is 2]The microscope was also here for show, although I did use it from time to time when the dean visited[otherwise]While far from our most powerful microscope, this one served well enough for the experiment in question. It was easy to PUT slides INTO the microscope and to LOOK IN the microscope[end if]."

The lab-micro is an open unopenable container. The lab-micro can be switched on or switched off. The lab-micro is switched on.

Instead of examining a sample-slide when the noun is in the lab-micro:
	try searching the lab-micro;

Understand "put [something] under [the lab-micro]" as inserting it into.

Before inserting something into the lab-micro:
	if the noun is not a sample-slide:
		say "Only slides could fit in the microscope, of course." instead;
	otherwise if the number of sample-slides in lab-micro > 0:
		say "Only one slide could fit in the microscope at once." instead;

Instead of searching the lab-micro:
	if the lab-micro is switched off:
		say "I couldn't see anything, as the microscope was turned off.";
	otherwise if sample-4b is in the lab-micro:
		say "Looking through the microscope, the nano devices on sample 4B were forming heavily diversified and sharply linear striations that exhibited both annealing and vector-like properties.";
		now sample-4b is microed;
	otherwise if sample-5c is in the lab-micro:
		say "Looking through the microscope, the nano devices on sample 5C had formed an conglomerated ovoid sediment exhibiting weak tension and a spherical nature.";
		now sample-5c is microed;
	otherwise:
		say "There was no slide in the microscope to look at."

A sample-slide can be microed or not microed. A sample-slide is usually not microed.

A marker is a kind of thing. A marker has some text called the markercolor. Understand "marker" or "pen" as a marker. Understand the markercolor property as describing a marker.

The red-marker is a marker on lab-table. The printed name of the red-marker is "red marker". The markercolor of red-marker is "red".

The description of the red-marker is "Red, a color suited for strength and masculinity, was, in deference to society, used to mark failed samples in this experiment. 

I had marked with red all samples that were shaped like lines, to put things in layman's terms."

The blue-marker is a marker on lab-table. The printed name of the blue-marker is "blue marker". The markercolor of blue-marker is "blue". The description of the blue-marker is "Blue is soothing, and I used it to symbolize to the rather simple-minded students in my lab that a sample was suited for our experiment. 

I mainly used it for marking samples that were roughly circle-shaped, to put things in layman's terms."

Marking it with is an action applying to two things. Understand "mark [something] with [something]" as marking it with.

Does the player mean marking something with a marker:
	it is very likely;

[make sure you can only mark important things]

A sample-slide can be marked or unmarked. A sample-slide is usually unmarked.
Sloppynoticed is a truth state that varies. Sloppynoticed is false.

To mark is a verb.

Understand "mark" as sample-4b when sample-4b is marked.
Understand "mark" as sample-5c when sample-5c is marked.

Understand "remove [a sample-slide]" as rubbing.

Instead of rubbing a marked sample-slide:
	say "You rub the mark off of [the noun].";
	now the noun is not marked;

Carry out marking it with:
	if the second noun is a marker:
		if the second noun is not held:
			say "(first taking [the second noun])[line break]"; 
			silently try taking the second noun;
		if the noun is a sample-slide:
			if the noun is not microed:
				say "I hadn't examined the slide yet. As a responsible researcher, I couldn't mark the slide without using the microscope first to identify the correct type of nano device I was seeing.";
			otherwise if the noun is unmarked:
				say "[We] [adapt the verb mark] [the noun] with [the second noun].";
				now the noun is marked;
			otherwise:
				say "[We] already [adapt the verb mark] [the noun].";
		otherwise if the second noun is the false-slides:
			say "These slide had already been marked, and sloppily, at that[dishesslopped]!";
		otherwise:
			say "I'm not in the habit of drawing with markers like a child, Detective. I only used them to mark my sample slides.";
	otherwise:
		say "You can't mark anything with [the second noun].";

To say dishesslopped:
	now sloppynoticed is true;

Section 3 - Data lab

Dataentered is a truth state that varies. Dataentered is false.
Dataread is a truth state that varies. Dataread is false.

The data-lab is east from the bio-lab. "Our data lab had a supercomputer a few years old; securing the new grant I was aiming for would mean that we could finally purchase a better one.

[if arthur-level is 2]And it couldn't come quick enough; my rivals at WSTC were working on the same project I was. If I couldn't publish in time, it was over[otherwise]For now, though, our current supercomputer would suffice[end if]. The lab was sterile and well-ventilated, with banks of servers to store our data. Our computer was here, currently turned [if big-computer is switched on]on[otherwise]off, to conserve electricity[end if].

 I could go [boldwest] to return to the Bio Lab." The printed name of the data-lab is "Data Lab".

The data-lab is in statement-region.

Before switching on the big-computer:
	if the number of marked sample-slides < 2 and arthur-level is 0:
		say "I wasn't yet ready to enter all of our data, as I hadn't classified the remaining samples from the Bio Lab." instead;
	otherwise if sloppynoticed is false and arthur-level is 1:
		say "I considered checking the computer's data, but seeing the slides left out bothered me so much, I just had to go out and see what was going on.";

The server-banks are plural-named scenery in the data-lab. The printed name of the server-banks is "server banks". Understand "server" or "bank" or "banks" or "servers" as the server-banks. The description of the server-banks is "Our data storage was serviceable. The servers were only accessible from the supercomputer itself, though."

[fix all these names; search for big-computer everywhere]
The big-computer is scenery in the data-lab. The big-computer is a switched off device. Understand "big" or "current" or "super" or "data" or "supercomputer" or "super-computer" or "computer" as the big-computer. The printed name of the big-computer is "supercomputer". The description of the big-computer is "This current computer dated back four or five years. It was capable of processing our more elaborate models in a day or two. The newest model on the market could do it in an hour. Today, though, I just needed to input data."

Understand "input [big-computer]" as switching on.

After switching on the big-computer:
	if arthur-level is 0:
		if dataentered is true:
			say "I turned on the comptuer, but I didn't feel like entering anything else that day.";
		otherwise:
			say "I turned on the computer and then I input all the data from the slides, including the two difficult ones I had just finished. 

	Now the modeling work could begin, but not that night; I needed to go home and rest.";
			now dataentered is true;
			now lab-dafydd is in bio-lab;
	otherwise if arthur-level is 1:
		if dataread is true:
			say "I turned on the computer, again analyzing the results. Again, I knew they were false.";
		otherwise:
			say "I turned on the supercomputer, worried now about the data.

	And I was right to be. The data I read had no correlation whatsoever to the mess of slides I had just seen on the table in the other room. Someone had been falsifying data.";
			now dataread is true;
			now shifty-dafydd is in bio-lab;		
	otherwise if arthur-level is 2:
		if dataentered is true:
			say "I turned on the comptuer, but I didn't feel like entering anything else that day.";
		otherwise:
			say "Detective, when I tell you what I did in that lab, you have to know that it was for the greater good. Many people would have lost their jobs, including Dafydd, including me. All of the research I'm capable of, all my future potential, down the drain.

That's why I forged the results of the experiment. That's why I put in false data. It's because I knew it was the data it [italic type]should[roman type] be.";
			now dataentered is true;
			now scared-dafydd is in bio-lab;

Section 4 - Lab Dafydd and shifty Dafydd and scared dafydd

Lab-dafydd is a man. The printed name of lab-dafydd is "Dafydd". Understand "dafydd" as lab-dafydd. "To my surprise, Dafydd was there, the last day I ever saw him alive. [if dafydd-finished is false]It seemed he wanted to speak with me[otherwise if lab-dafydd is in bio-lab]He was standing there, watching me with admiration[otherwise]He looked apologetic[end if]."

The description of lab-dafydd is "Dafydd was one of my grad students, a rather unserious boy who focused too much on appearances."

[don't leave until data is entered, then mention the door hitting you on the way out when dafydd comes to see you. so don't take dafydd out of the room yet]

Dafydd-finished is a truth state that varies. Dafydd-finished is false;

[Arthur last name is ]

Instead of talking to lab-Dafydd:
	if lab-dafydd is in bio-lab:
		if dafydd-finished is true:
			say "I had already talked with Dafydd all that I wanted to.";
		otherwise:
			say "'Is everything all right, Dafydd?' I asked him. Dafydd was a good student, but not one to work during off hours if he could help it.

	'Oh, I'm alright, Dr. Svenson,' he said. 'I was just worried about the grant. I know how important it is to the lab,' he said, gesturing to everything around him. 'Is there anything I can do to help you?'

	I chuckled. Grad students can certainly be naive from time to time. 'Dafydd, it took me years to figure out how to maneuver the politics and academic slogs of grant proposals. You'll find out for yourself, in time.'

	His face fell, but I patted him on the back reassuringly, which brightened him up a bit.

	'Now, if you don't mind,' I told him, 'I'm headed home.'";
			now dafydd-finished is true;
	otherwise:
		say "'Be careful, Dafydd! You hit me!' I snapped. It was hard to retain my customary composure when I had just been struck in the face with a door.

'Oh, gosh! Sorry, professor!' he said earnestly.

'It's fine, it's fine,' I said, waving him away. 'What was it you wanted to tell me so badly?'

He look confused, but then must have remembered, because he smiled and said, 'Oh yeah. You said that I'd figure out for myself how grant proposals work. That means you think I'll actually become a professor like you! That's the first time you've said anything like that. I just wanted to say thank you for the motivation.'

I smiled, despite the pain in my face. 'Don't let it go to your head, Dafydd. But yes, I think you might be able to find a position, most likely at a second-tier institution. In any case, it is time for me to leave. Good day, Dafydd.'

'Have a good day, Professor!' he said.";
		try ceasing;
		now arthur is onceswapped;
		say "'And then I didn't see him again until I saw him on this train, dead,' concludes Arthur."

Shifty-dafydd is a man. The printed name of shifty-dafydd is "Dafydd". Understand "dafydd" as shifty-dafydd. "I was flabbergasted to find Dafydd in my lab, the last day I ever saw him alive. [if dafydd-confronted is false]He was looking at me with guilt on his face. That's when I knew what he had done, even before he spoke[otherwise if shifty-dafydd is in bio-lab]He seemed completely shattered[otherwise]He stared at me, daring me to speak[end if]."

The description of shifty-dafydd is "Dafydd was one of my grad students, a rather unserious boy that focused too much on appearances. Today he had a malicious sort of expression on."

Dafydd-confronted is a truth state that varies. Dafydd-confronted is false;

Instead of talking to shifty-Dafydd:
	if shifty-dafydd is in bio-lab:
		if dafydd-confronted is true:
			say "I had already had enough of talking to Dafydd.";
		otherwise:
			say "'Dafydd,' I said, 'what are you doing here? And what have you done to the samples?'

	'You weren't supposed to be here this late,' he said, agony in his voice. 'I thought I could finish--'

	'Finish what?' I demanded.

	He stammered, and said, 'I need this paper, for my grant. The data, it wasn't going to work. I need--'

	'What you [italic type]need[roman type] is to find a new job,' I said.

	He was stunned. But I had to leave, to report him to the university, to try and salvage...something from all this mess.";
			now dafydd-confronted is true;
	otherwise:
		say "'Get away from me, you lunatic!' I shouted.

He was breathing heavily, fury in his eyes. 'You're going to regret this, Doctor. You needed this just as much as I did. You'll regret this!' he said, and ran off. I was left alone in the hallway.";
		now secondarthur is true;
		try ceasing;
		now arthur is onceswapped;
		say "'And then I didn't see him again until I saw him on this train,' concludes Arthur. 'He must have been following me. I hope it was in the spirit of reconciliation. Too late now, though.'"

Scared-dafydd is a man. The printed name of scared-dafydd is "Dafydd". Understand "dafydd" as scared-dafydd. "[if dafydd-confronted is false]Why? Why did Dafydd have to be there, on all days? He looked at me with an unspeakable expression on his face[otherwise if scared-dafydd is in bio-lab]Dafydd was staring at me with rage[otherwise]Dafydd was standing near me, his face flushed[end if]."

The description of scared-dafydd is "Dafydd was one of my grad students, and could have been great some day. But he had chosen the wrong day to come to my lab."

Instead of talking to scared-Dafydd:
	if scared-dafydd is in bio-lab:
		if dafydd-confronted is true:
			say "I had already had enough of talking to Dafydd.";
		otherwise:
			say "'Dafydd, what are you doing here? I thought it was your day off,' I said, congenially.

He just stared at me with a look like a slapped calf. He waited for an uncomfortably long time, and said, 'I know what you are doing.'

I didn't want to give anything away, so I said, 'And what do you mean by that? What am I doing, Dafydd?'

Dafydd moved closer to me aggressively, and I took a step back. 'The research!' he said. 'You're falsifying the research!'

I stared at him, and said, 'No I'm not, Dafydd. I'm not, because if I [italic type]were[roman type], then I would be out of a job. And you would be out of a job. Your name will be tainted forever. Do you really think someone will hire you if rumors about this lab get spread around?'

Dafydd paled and said nothing. I realized I had to leave before things got ugly.";
			now dafydd-confronted is true;
	otherwise:
		say "'You'll regret this!' I shouted. He glared back at me, but I said, 'You'll really regret this. If you talk, I'll come after you, Dafydd. This is my life. If you take my life away from me...'

'Then you'll do what, Dr. Svenson?' he said, staring intently.

'Then I'll take your life.'

He looked utterly shocked, and ran off. I was left alone in the hallway.";
		now thirdarthur is true;
		try ceasing;
		now arthur is onceswapped;
		say "'I started following him. And then, this morning, I saw him drop off a package that I could only assume was evidence against me. I was filled with rage. I followed him to this train to confront him, but when I saw how few people were in the train, and that a tunnel was coming, I knew I could do it,' concludes Arthur. 'I thought I could save my reputation. Now, it is too late. Too late.'";

Thirdarthur is a truth state that varies. Thirdarthur is false.

MurderEnd is a scene. MurderEnd begins when thirdarthur is true.

When murderend begins:
	maeve returns in 1 turn from now;

At the time when maeve returns:
	say "Slowly, Maeve begins to clap. Arthur, surprisingly, joins in. Hearing noise from behind you, you turn to see Elen and Mari, standing in the doorway.

'We did it!' shouts Mari, and everyone pushes you into a giant group hug.

'I don't understand,' you stammer. 

'We solved the murder mystery!' says Elen. 'And we did it in...' she says, looking at her watch, 'only ten minutes away from the record time!'

'Sorry you missed the beginning,' says Arthur. 'It was fun watching them place the plastic dummy. We would have just let you go in the next group but the computer insisted you had this time slot.'

One by one, the group shakes your hand, congratulating you and walking out. You can hear a crew in the station, dismantling something. Then all is silent.";
	now elen is nowhere;
	now maeve is nowhere;
	now arthur is nowhere;
	now mari is nowhere;
	now weird-chip is in evidence-room;
	now weird-chip is not scenery;
	now weird-chip is portable;
	now evidence-computer is nowhere;
	repeat with current running through squips:
		remove current;

Maevefarewell is a truth state that varies. Maevefarewell is false.

After taking weird-chip when weird-chip is not scenery:
	if maevefarewell is false:
		say "As you pick up the chip, you hear a voice behind you. 

'Good work back there,' says Maeve, who wanders in.

'Oh, thanks,' you say, not quite sure what to say. A Storyweaver is trained to be cautious and observe, so that's what you do.

'I wondered what that chip was myself, because I didn't know how it figured into the murder,' says Maeve, her voice and demeanor much more pleasant and warm now that the murder mystery is over.

'Oh, it's part of a navigational computer,' you say. 'It belongs to a friend of mine, actually; a robot that looks like a monkey took it.'

'Oh, those things?' she says. 'Yeah, they're all over the place. But a navigational computer, that sounds interesting. I actually have an ancestor, quite a while back, who was a flight officer on a starship. I was named after her, actually. She was a hero.'

'What did she do?' you ask, immediately thinking of Officer Mefe.

'She saved her starship by executing a perfect counter-spin using the aft engines when it was spiraling out of control.'

'Sounds like a great woman,' you answer.

'She really was,' she says. 'Funny how you have the name of an old hero, too. Anyway, I have to head out. See you around!'

She walks out of the room and is gone before you can respond.";
		deliver maneuver-quip;
		now maevefarewell is true;
		
maneuver-quip is a quip. The printed name of maneuver-quip is "Maneuver". Understand "maneuver" or "manoeuvre" as maneuver-quip. The target of maneuver-quip is Mefe. The preview of maneuver-quip is "Have you ever heard of an after-engine counter spin?"

The targetresponse of maneuver-quip is "'Huh, no I haven't. Wait...actually, I think I might know how to do that,' she says. She thinks for a long time.

'I think you can pull it off,' you say.

'Really?' she says, brightening up.

'Not like we have much to lose,' you say.

She nods and says, 'I think I can do it.'

'Let's do it,' you respond[maneuverstuff].".

To say maneuverstuff:
	if weird-chip is nowhere:
		mefemaneuver;
	otherwise:
		say "'Wait, I don't have that chip. I need it to make the maneuver work. Do you have it?' she asks"

Instead of giving the weird-chip to mefe:
	say "'Perfect!' says Mefe. 'I'm so glad you found it!' She slots the chip into the back of the console, and it disappears.

'It took quite a while,' you say. 'But I'm glad it will help.'";
	now weird-chip is nowhere;
	if maneuver-quip is targetgiven:
		mefemaneuver;
		say "."

To mefemaneuver:
	say "'Let's do this!' says Mefe. 'I trust your Weaver's Gift!'

She dials in a complex sequence of commands, and the entire spaceship shudders. Slowly, the metal groans and shakes as the ship takes a new course. Then Mefe smiles and pumps her fist. 'We did it!' she says, and gives you a hug.

You smile and hug her back, and she goes back to the console, new confidence filling her face.

You look at her for a while. 'Hey Mefe,' you ask. 'you don't happen to own a rhinestone jumpsuit, do you?'

'No,' she says. 'Why?'

'No reason. Just thinking of a friend of mine,' you answer.

The tear in space near you turns from red to green";
	now the flight-tear is green-torn;

Section 5 - Department Hallway

[put a door between bio lab and department hallway; swinging door or lockable]

The lab-door is a closed scenery door. The lab-door is south of bio-lab and north of department-hallway. The printed name of the lab-door is "lab door". Understand "swinging" or "doors" or "lab" or "door" as the lab-door. The description of the lab-door is "Our lab door doesn't have any windows in it, nor does it have a lock, which is unfortunate."

Every turn:
	if the lab-door is open:
		if the player is fake-arthur:
			say "The door swung shut again.";
	now lab-door is closed;
		
Instead of swinging the lab-door:
	say "The door flops back and forth for a bit before settling down."

The description of the department-hallway is "The hallway outside the Bio Lab was dark, this late in the day. Few others are willing to work late hours the way that I do. 

I could return [boldnorth] to the Bio Lab, or leave [boldeast] or [boldwest] to get out of the building; both directions would eventually take me to the stairwells and out of the building."

The department-hallway is in statement-region. The printed name of department-hallway is "Department Hallway".

Before going nowhere from department-hallway when the noun is east:
	say lefthallway;
	
Before going nowhere from department-hallway when the noun is west:
	say lefthallway;

Before going north from department-hallway:
	say "I couldn't just run away from the problem." instead;

To say lefthallway:
	say "After what just happened between me and Dafydd, we had to talk."

Before going south from bio-lab:
	if a sample-slide is held by the player:
		say "I couldn't leave with the sample slides; they were too important." instead;
	if dafydd-finished is false and arthur-level is 0:
		say "I looked out into the hallway, but it was empty and dark. Not surprising at this time of day. I stayed inside the Bio Lab, though, as [if lab-dafydd is in bio-lab]I hadn't talked to Dayfdd yet[otherwise]I wasn't yet finished analyzing my results[end if]." instead;
	otherwise if dafydd-confronted is false and arthur-level is 1:
		say "I couldn't leave yet, because I had to sort out this whole mess." instead;
	otherwise if dafydd-confronted is false and arthur-level is 2:
		say "I couldn't leave yet while my plans were incomplete." instead;
		
After going south from bio-lab:
	try looking;
	if arthur-level is 0:
		say "As I exited the lab and closed the door, I heard Dafydd shout my name excitedly. I turned around, but before I could move he burst out of the door, hitting me soundly on the jaw[delivercollision], leaving a large bruise on my face.

Dafydd stopped with a horror-stricken look on his face, waiting for me to react, to say anything.";
		now lab-dafydd is in department-hallway;
	otherwise if arthur-level is 1:
		say "As I walked out of the lab, my head spinning, I heard the door slam open behind me. Dafydd grabbed me by the shoulder, spun me around and socked me across the jaw.

He was incensed, gone mad with anger. I had to stand up to him.";
		now shifty-dafydd is in department-hallway;
	otherwise if arthur-level is 2:
		say "I walked out of the lab, filled with anger and fear. I heard the door slam open behind me. Dafydd grabbed me by the shoulder, spun me around and socked me across the jaw.

He was incensed, gone mad with anger. I couldn't take it, not from a nobody like him. I had to put him in his place.";
		now scared-dafydd is in department-hallway;

Instead of attacking shifty-dafydd:
	say "Given our relative physical strengths, words would be better weapons than fists."

Instead of attacking scared-dafydd:
	say "Given our relative physical strengths, words would be better weapons than fists."

[maybe get rid of the bruise quip when you combine it with collision]

To say delivercollision:
	deliver collision-quip.
	
Collision-quip is a squip. The printed name of collision-quip is "Collision". Understand "collision" as the collision-quip. The preview of collision-quip is "Dafydd accidentally gave [the Arthur] a bruise by hitting him with a door."

The targetresponse of collision-quip is "[if currenttarget is elen]'Well, he seems to fairly physically fit,
 says [the elen] thoughtfully. 'One shouldn't be surprised that he could do some serious damage, intentionally or otherwise. On the other hand, from the few moments I saw him, I wouldn't characterize him as clumsy, unlike others I could name[otherwise if currenttarget is maeve]She puts her hand on her mouth. 'Oh!' she cries, looking at [the arthur] and back to you. 'How dreadfully violent! He must have been a passionate young man to do something so very reckless[otherwise if currenttarget is arthur]'Yes, I know. I told you myself,' he says. 'It was quite crude of the lad, not the way an aspiring professor should act. But he had many such troubles[otherwise if currenttarget is mari]'Yeah! That's right, sock it to them!' says [the Mari] with visible excitement. 'I wish I could do that to a bunch of academic stiffs[end if].'".

Instead of linking collision-quip to punch-quip:
	linkcollpun;
	
Instead of linking punch-quip to collision-quip:
	linkcollpun;
	
To linkcollpun:
	say "[The arthur] says Dafydd hit him with the door, but the bruising on [the train-corpse]'s fist suggests that they fought.";
	deliver alterc-quip;
	remove collision-quip;
	remove punch-quip;
	
Alterc-quip is a linkaged squip. The printed name of alterc-quip is "Altercation". Understand "altercation" as alterc-quip. The preview of alterc-quip is "[the arthur] and [the train-corpse] most likely fought with each other."

The targetresponse of alterc-quip is "[if currenttarget is maeve]She scowls and looks over at [the arthur] darkly. 'If it's true, then I'm disposed to think that our gentleman professor is nothing more than a bully[otherwise if currenttarget is mari]'Hmm,' she says, considering. 'I think that makes me like the young man more. Too bad he's dead, of course[otherwise if currenttarget is elen]'Well there must have been some mitigating circumstances,' she says. 'It's not like a professor to be so violent. He certainly must have been provoked[otherwise if currenttarget is arthur]Arthur is silent for a moment, calculating. Then he speaks.

'There was...a problem. At the lab. I didn't wish to speak of it, because I wanted to preserve the dignity of the deceased. But I have more to say about what happened between me and Dafydd[end if].'".

Report uttering alterc-quip to arthur:
	say "[bracket]Arthur has a new statement to give.[close bracket][paragraph break]";
	now arthur-level is 1;
	remove alterc-quip;
	now arthur is unonceswapped;
	reset-arthur;

The stair-wells are plural-named distant scenery in department-hallway. Understand "stair" or "stairs" or "well" or "wells" or "stairwells" or "stairwell" as the stair-wells. The description of the stair-wells is "The stairwells were only barely visible, you see; and they did not matter in what I am about to tell you."

Chapter 7 - Courier Mari statement world

The doppelganger of mari is fake-mari.

[This reset's Mari's flashbacks]
Every turn when currentswap is mari and the player is emrys-weaver:
	reset-mari;

To reset-mari:
	if mari-level is 0:
		now currentswap is emrys-weaver;
		now mystery-package is nowhere;
		now bosstalked is true;
		now fake-mari is in courier-office;
		now the fake-cap is worn by fake-mari;
		now the fake-satchel is worn by fake-mari;
		now courier-boss is in courier-office;
		now broken-hanger is on clothesline;
	otherwise if mari-level is 1:
		now currentswap is emrys-weaver;
		now courier-boss is nowhere;
		now mari-dafydd is in courier-office;
		now dafydd-package is held by mari-dafydd;
		now fake-mari is in courier-office;
		now mystery-package is nowhere;
		now dafyddspotted is false;
		now the fake-cap is worn by fake-mari;
		now the fake-satchel is worn by fake-mari;
		now fake-receipt is held by fake-mari;
		now mari-dafydd is not proper-named;
		now burnt-buildings are nowhere;
		now mari-dafydd is not distant;
		now mari-dafydd is not scenery;
		now clothesline is nowhere;
		now broken-hanger is nowhere;
		now mari-wires are nowhere;
		now mari-chute is in roof-tops;
	otherwise if mari-level is 2:
		now currentswap is emrys-weaver;
		now mari-dafydd is nowhere;
		now mari-moreman is nowhere;
		now dafyddspotted is false;
		now dafydd-package is held by mari-moreman;
		now fake-mari is on limo-seats;
		now the fake-cap is nowhere;
		now the fake-satchel is nowhere;
		now fake-receipt is nowhere;
		now mari-moreman is not proper-named;
		now burnt-buildings are nowhere;
		now mari-moreman is not distant;
		now mari-moreman is not scenery;
		now mari-chute is nowhere;
		now mariadmits is false;
		now alley-park is in convenient-alley;
		now playground-roof is in roof-tops;
		
Mari-level is a number that varies. Mari-level is 0.

Section 1 - Fake Mari

The courier-office is a room in statement-region.

Fake-mari is a woman in courier-office. 

The printed name of Fake-Mari is "Mari". Understand "mari" as fake-mari. The description of fake-Mari is "[if mari-level is 2]I'm not really a courier, you know. But there I was, running errands for my father's company. It was terrifying[otherwise]I'm a fighter, a tough, a punch-it-out kind of lady. People see me and they get out of my way, because they know not to mess with Mari[end if]."

The fake-cap is worn by fake-mari. The printed name of the fake-cap is "cap". Understand "company" or "cap" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" or "badge" or "honor" as the fake-cap. The description of the fake-cap is "[if mari-level is 2]My dad lent me a cap for the day, the same one I have on now[otherwise]You've seen my cap, haven't you? It's the same one I'm wearing now! The badge of honor for a courier in this city[end if]."

The fake-satchel is a closed openable container. The fake-satchel is worn by fake-mari. The printed name of the fake-satchel is "satchel". Understand "company" or "satchel" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" as the fake-satchel. The description of the fake-satchel is "[if mari-level is 2]My satchel was brand new, never used before. I hoped I could live up to my father's expectations as a courier, but actually having the satchel felt overwhelming[otherwise]My satchel is the same one you see now, standard courier fare. Many people have been hurt trying to take this from me, and many more will in the future[end if]."

Before inserting something into the fake-satchel:
	if the fake-satchel is closed:
		silently try opening the fake-satchel;

Section 2 - Courier office

[Change package to satchel]

The printed name of the courier-office is "Courier Office". The description of courier-office is "[if mari-level is not 2]It all started this morning. [end if]I was in the United Carpundia Deliveries courier office on Maple Street[if mari-level is 2]. I had never been there before; dad usually didn't make me go to the creepy parts of town, and boy was this creepy. I was used to the financial district's UCD. This place was a real dump! Most UCD's at least have some nice furniture[otherwise if mari-level is 1], an older office that could really use some renovations[otherwise], a dingy and run-down relic where only the toughest couriers can make a living[end if]. There was a counter splitting the room in half, with no chairs or other furniture[if mari-level is not 2]. Don't want the locals to stay here any longer than they have to--or lazy couriers, for that matter[end if].

I could go [boldsouth] to leave to the city streets[deliverstreetsmart]."

The split-counter is an enterable scenery supporter in courier-office. Understand "counter" as the split-counter. The printed name of the split-counter is "counter". The description of the split-counter is "The counter is the dividing line of authority in any shop. On one side is all the power. On the other is none. Question is, though, which is which?"

Instead of entering the split-counter:
	say "What do I look like, a circus act?"

To say deliverstreetsmart:
	deliver streetsmart-quip;
	
streetsmart-quip is a squip. The printed name of streetsmart-quip is "Streetsmart". Understand "streetsmart" as streetsmart-quip. The preview of streetsmart-quip is "[The mari] is a rough, tough, streetsmart courier."

The targetresponse of streetsmart-quip is "[if currenttarget is arthur]Arthur says, 'Sounds like an interesting woman. I myself have always been fascinated by those who live in the underbelly of life.[otherwise if currenttarget is mari]'That's right,' says Mari. 'So you better watch out!' she says, aggressively shadowboxing, then realizing who she's talking to. 'Oh, uh, not you personally. Just the world: it needs to watch out![otherwise if currenttarget is elen]Elen sniffs, and says 'Hmm. Streetsmart is just a polite way of saying one does not have book smarts.[otherwise if currenttarget is maeve]'A tough courier huh,' says Maeve, her eyes calculating. 'I bet I could use that in my next book. I could call her Helen.[end if]'".

The courier-boss is a person in courier-office. The printed name of the courier-boss is "boss". The indefinite article of the courier-boss is "my". Understand "My" or "Hilda" or "boss" or "legend" or "thick" or "tangled" or "grey" or "hair" or "Body" or "jukebox" as the courier-boss. The initial appearance of courier-boss is "[if bosstalked is false]My boss was on the other side of the counter, a tough old nut named Hilda who'd been running the joint for the last fifty years. I could tell she wanted to talk. Hopefully it was about a job[otherwise]Hilda was looking at me, annoyed that I was still there[end if]."

The description of courier-boss is "Hilda was an older woman with thick, tangled grey hair and a body shaped like an oversized jukebox. Her right eye was missing, and she had ropy scars running up the other side of her body, but you should definitely see the other guys--although you'd have to visit the local cemetery. Hilda was a local legend."

The missing-eye is part of Hilda. Understand "missing" or "right" or "eye" as the missing-eye. The printed name of the missing-eye is "missing eye". The description of the missing-eye is "The socket of Hilda's missing right eye was completely closed up now. She never used a glass eye or a patch. It was more intimidating this way."

The ropy-scars are part of Hilda. Understand "ropy" or "scars" or "side" or "left" as the ropy-scars. The printed name of the ropy-scars is "ropy scars". The description of the ropy-scars is "No one knows how Hilda got the ropy scars on the left side of the body, but we do know it happened around the time she cleared out the Maple Street Gang."

The mystery-package is a thing. The printed name of the mystery-package is "mystery package". Understand "mystery" or "package" or "rectangle" or "small" or "brown" or "butcher" or "paper" as the mystery-package. The description of the mystery-package is "Hilda told me not to worry about the package, but it was intriguing: a small rectangle, wrapped in brown butcher paper, with no identifying marks."

Instead of touching the mystery-package:
	say "Touching it filled me with a sense of awe-inspiring power!"

Instead of opening the mystery-package:
	say "Hilda would kill me. Possibly literally."

Instead of shaking the mystery-package:
	try attacking the mystery-package;

Instead of attacking the mystery-package:
	say "Hey, there, I did [italic type]not[roman type] shake the package! And you can tell Hilda that if she asks!"

The dafydd-package is a thing. The printed name of the dafydd-package is "package". Understand "boring" or "old" or "package" or "paper" or "small" or "thing" as the dafydd-package. The description of the dafydd-package is "His package was just some small thing wrapped up in paper."

The mari-dafydd is a man. "[one of]Okay, so I may have exaggerated a little in my earlier statement. I don't actually have a tough one-eyed boss named Hilda. This morning, I was the one at the counter. I saw your stiff there, the dead guy. He wanted to give me a package. He was waiting for me to give him his receipt[or]The guy who was dropping off the package was waiting for his receipt[stopping]." The printed name of the mari-dafydd is "[if mari-dafydd is in courier-office]stressed-looking young man[otherwise]Dafydd[end if]". Understand "stressed" or "looking" or "stressed-looking" or "dafydd" or "stiff" or "dead" or "guy" or "man" as the mari-dafydd. 

The description of mari-dafydd is "The guy looked pretty scruffy, but could be handsome if he got good sleep and had better hygiene. He looked kinda worried about something."

The mari-moreman is a man. "At least this guy waiting for his receipt seemed normal and not like a poor person. He was stressed-looking, though.". Understand "stressed" or "looking" or "stressed-looking" or "dafydd" or "stiff" or "dead" or "guy" or "man" as the mari-moreman. The printed name of the mari-moreman is "[if mari-moreman is in courier-office]stressed-looking young man[otherwise]Dafydd[end if]"

DafyddDelivers is a recurring scene. DafyddDelivers begins when the player is Emrys-weaver. DafyddDelivers ends when the player is in courier-office and the mari-level is 2.

When dafydddelivers ends:
	say "I was panicking a little at being left alone in this store. I knew there were staff in the back, but Dad had told them to let me be alone for now.

The bell rang, and a guy walked in, looking stressed about something. But thank heavens he wasn't some gang member or creeper.";
	now mari-moreman is in courier-office;

Instead of talking to mari-moreman when fake-receipt is nowhere:
	say "'Can I help you, sir?' I said in my best courier voice. Oh, crap--I forgot to welcome him to UCD.

He didn't notice, though. [The mari-moreman] looked like he was really thinking hard about something else.

'I have a delivery I need someone to make,' he said.

'Okay, no problem, just let me put in the information,' I said, tapping on the machine. It was way easier than I thought it was. I guess I was going to show Dad that I could do this after all!

A receipt printed out, and I grabbed it. The man looked relieved, but anxious for his receipt.";
	now fake-receipt is held by fake-mari;
	
[change mari-moreman to be eager for the receipt when he doesn't have it]

Instead of giving the fake-receipt to mari-moreman:
	say "I gave him the receipt and he handed me the package, which I put in the satchel.

He left, and I felt so proud of myself. My first customer and it had gone off without a hitch.

I made a mental note of the destination, so I could...

Wait...

Oh no!

I hadn't recorded the destination anywhere! Dad was totally going to take away my allowance now!

I had to chase down that man!";
	now fake-receipt is nowhere;
	now mari-dafydd is proper-named;
	now the dafydd-package is in fake-satchel;
	now fake-satchel is open;
	now mari-moreman is in city-streets;
	now mari-moreman is distant;
	now mari-moreman is scenery;

The fake-receipt is a thing. The printed name of the fake-receipt is "receipt". Understand "receipt" as the fake-receipt.

The description of the fake-receipt is "The receipt had my name on it, Mari Gallagher, and the logo of United Carpundia Deliveries. And, just so you know, it's literally the same receipt [if train-corpse is not nowhere]clutched in the dead man's hand right before your very eyes[otherwise]you saw yourself[end if], so I don't know why you're asking me about it!"

Instead of giving the fake-receipt to mari-dafydd:
	say "I handed him the receipt, and he handed me a boring old package, which I put in my satchel.

The squirrely guy booked it out of there. I was glad, because he was the last and only customer on my shift that day, and I could hear my replacement somewhere in the back ready to take over. I decided to go and run his package to his destination; I unzipped the bag, checked out the package, and realized: it had no address.

I had his name: Dafydd Yakoob. I had his recipient name: Ceri Daniels. But no address. 

I could [italic type]not[roman type] get in trouble aga--at all, at this job. People would get very upset with me. I had to find him to get the address.";
	now fake-receipt is nowhere;
	now mari-dafydd is proper-named;
	now the dafydd-package is in fake-satchel;
	now fake-satchel is open;
	now mari-dafydd is nowhere;
	now mari-dafydd is in city-streets;
	now mari-dafydd is distant;
	now mari-dafydd is scenery;
		
Instead of talking to mari-dafydd:
	try giving the fake-receipt to mari-dafydd;

Bosstalked is a truth state that varies. Bosstalked is false.

Instead of talking to courier-boss:
	if bosstalked is false:
		say "'Listen, kid, do you got any family nearby?'

'No, they all live out in the country,' I said.

'You seeing anyone right now? Got a nice boy?' asked Hilda. Hmm. Not like her to make small talk.

'No,' I said. 'Just testing the waters.'

'Good. Then no one will miss you. I've got a delivery that might go south and I need someone expendable,' she says, and slams a package down on the counter. 

'I love it when you talk all sweet, Hilda,' I said.

'Get this to the A train in the next twenty minutes. And don't call me Hilda,' she said.";
		now bosstalked is true;
		now mystery-package is in courier-office;
	otherwise:
		say "'Whadda ya want, a lollilpop? Get out of here,' says Hilda."

Before going south from courier-office:
	if the mystery-package is not enclosed by the player and mari-level is 0:
		say "I couldn't leave without the package; as a courier, my duty is my life!" instead;
	otherwise if the dafydd-package is not enclosed by the player and mari-level is 1:
		say "I wasn't finished helping this customer!" instead;
	otherwise if the dafydd-package is not enclosed by the player and mari-level is 2:
		say "Dad would get mad if I didn't help the customer!" instead;

Instead of dropping the mystery-package:
	say "I would never abandon my post! Hilda would kill me!"

Instead of dropping the dafydd-package:
	say "I would never abandon my post!"

Section 3 - City streets

City-streets is a room in statement-region. City-streets is south from the courier-office. The printed name of city-streets is "Maple Street". "Maple Street is on the wrong side of the train tracks. [if mari-level is 2]I would never have come here on my own; I can't believe Dad dropped me off here without any security! What was he thinking? Vacant stores? I mean, come on! At least there wasn't any roadkill or anything gross[otherwise if mari-level is 1]At least, there are a lot of stores that are vacant, and this morning someone had thrown up on the sidewalk. It wasn't horrible, but I definitely didn't feel safe[otherwise]Abandoned or boarded-up storefronts dot the street, and fluids of every color run in the gutters. At least things have been better here since Hilda took over the area[end if].

The courier office was to the [boldnorth][if mari-level is 0], although I'm sure the boss wouldn't want to see me for a while[end if]. Platform A, I knew, was somewhere far to the [boldeast]."

Before going east from city-streets when mari-level is 2 and dafydd-package is not enclosed by the player:
	say "Dad would go so pissed off I left before doing my job!" instead;

The missing-tracks is scenery in city-streets. The printed name of the missing-tracks is "train platform". The description of the missing-tracks is "The train platform and tracks were too far away for me to see." Understand "train" or "platform" or "track" or "tracks" or "train A" or "platform A" as the missing-tracks.

The abandoned-storefronts are plural-named scenery in city-streets. The printed name of the abandoned-storefronts is "[if mari-level is 1]vacant[otherwise]abandoned[end if] storefronts". Understand "abandoned" or "vacant" or "store" or "fronts" or "front" or "storefronts" or "storefront" as the abandoned-storefronts. The description of abandoned-storefronts is "[if mari-level is 1]The vacant stores always creep me out. I know someone eventually might move in, but they just look weird[otherwise]The city doesn't have enough money to tear down the old buildings, and it costs nothing to let them rot. So abandoned storefronts litter this whole area[end if]."

Instead of doing anything with the missing-tracks:
	say "The train platform and tracks were too far away for me to see."
	
The mystery-fluids are plural-named scenery in city-streets. The printed name of mystery-fluids is "[if mari-level is 1]vomit[otherwise]mystery fluids[end if]". Understand "mystery" or "liquid" or "liquids" or "green" or "purple" or "fluid" or "fluids" or "gutter" or "vomit" or "throwup" or "throw up" as the mystery-fluids. The description of mystery-fluids is "[if mari-level is 1]Some kid must have eaten too much ice cream or something. I hope I didn't have to clean it up later[otherwise]Some of the fluids in the gutters are identifiable, but the green one and the purple one really defy explanation[end if]."

Instead of drinking the mystery-fluids:
	say "Come on, lady, do you really think I was out there drinking the gutter stuff?"

Instead of physicality when the noun is the mystery-fluids:
	say "There's no way I was gonna touch that stuff."

The gross-gutters are scenery in city-streets. The printed name of gross-gutters is "gutters".

Understand "gutters" as the gross-gutters.

The description of the gross-gutters is "I've learned not to look too deeply into the gutters of this city."

EVery turn when the player is in city-streets and mari-dafydd is in city-streets:
	say "When I popped out of the office, I could just see him, walking away to the east.

'Dafydd!' I shouted, remembering the name from the receipt. 'You forgot the address!'

But he couldn't hear me, and disappeared into the intersection.";
	now mari-dafydd is in city-intersection;

EVery turn when the player is in city-streets and mari-moreman is in city-streets:
	say " When I popped out of the office, I could just see him, walking away to the east.

'Dafydd!' I shouted. 'You forgot the address!'

But he couldn't hear me, and disappeared into the intersection.";
	now mari-moreman is in city-intersection;

Section 4 - Intersection

City-intersection is a room in statement-region. The printed name of city-intersection is "Intersection". City-intersection is east from city-streets. "[if mari-level is 2]I had never been at an intersection like this before. Where were the skywalks? The helpful police officers? I had only been through these kinds of intersections in a vehicle[otherwise if mari-level is 1]The intersection was in one of the most dangerous places in the city, because there were no crosswalks and cars and motorcycles often drove past at a fast clip. It was also a frequent place for ne'er-do-wells and grifters, although I didn't see any around this morning[otherwise]I was in one of the most dangerous areas of the city. We had a fire ten years ago. It burned out a lot of the buildings, and left it so that no one wanted it except as a battlefield. This place used to be full of life, but now it's only filled with burnt-out shells of stores and burnt-out shells of people[end if].

I could go [boldwest] back to Maple Street, while the train station was to the [boldeast]. A convenient alleyway was to the [boldsouth]."

The intersection-station is distant scenery in city-intersection. The printed name of the intersection-station is "train station". Understand "train" or "station" as the intersection-station. The description of the intersection-station is "The train station was probably where Dafydd was headed, but the bikers were in my way!"

The intersection-alley is distant scenery in city-intersection. The printed name of the intersection-alley is "convenient alleyway". Understand "convenient" or "alleyway" as the intersection-alley. The description of the intersection-alley is "The alley definitely looked like a way to avoid those biker!"

Instead of entering the intersection-alley:
	try going south;

The burnt-buildings are scenery in city-intersection. The printed name of burnt-buildings is "burnt buildings". Understand "burnt" or "building" or "store" or "stores" or "buildings" or "burnt-out" or "burned-out" or "burned out" or "burnt out" as the burnt-buildings. The description of the burnt-buildings is "These places should have been condemned years ago. Some of them were, but the notices hung up so long you can't read them anymore, and now even those have been ripped off and lost."

The wild-bikers are plural-named people in city-intersection. "[if mari-level is 2]A bunch of teenage kids were blocking the road doing tricks on their bicycles. It was honestly very threatening. I only said they were bikers earlier because I didn't want you making fun of me[otherwise if mari-level is 1]The intersection was blocked by a bunch of bikers doing tricks and showing off. They were going so fast that it frightened me; I couldn't imagine walking past them[otherwise]I was dismayed to find a turf war underway between some bikers. They were roaring their motorcycles and driving wildly around the intersection, playing chicken with each other. There was no way I could get across; the last time I tried something like that, I lost a tooth[end if]." The printed name of wild-bikers is "bikers". Understand "biker" or "bicycle" or "bicycles" or "cyclists" or "teens" or "teenagers" or "kids" or "motorcycles" or "motorcycle" or "cycles" or "cycle" or "kid" or "bikers" or "wild" or "gang" or "turf" or "war" or "gangs" or "gang of" as the wild-bikers. The description of the wild-bikers is "[if mari-level is 2]Thie bicyclists were a bunch of teens on bikes that were popping wheelies and doing other dangerous and threatening tricks[otherwise if mari-level is 1]The bikers were mostly older men that were going bald, while there were a few younger guys and quite a few tough-looking women[otherwise]The bikers weren't from around here; mobile gangs like that had the pick of spots for their tussles around town, and it looks like we got the short end of the stick today[end if]."

Instead of talking to the wild-bikers:
	say "Are you nuts? I didn't want their attention!"

Instead of going nowhere from city-intersection when the noun is east:
	say "[if mari-level is 2]Those kids on bicycles were super scary! What if they chased me? I had to find a different way[otherwise if mari-level is 1]No way! Those bikers were scary! I had to find another way around[otherwise]The gang of wild bikers swirled around me as I tried to break through. Their raucous laughter and callous catcalls were more than I could bear, and I had to fall back[end if]."

EVery turn when the player is in city-intersection and mari-dafydd is in city-intersection:
	say "There was Dafydd, but he was moving faster, now. He seemed to be afraid of something. Not me, I don't think. He dodged around the bikers; I was shocked by his bravery, but it was a feat I could not follow.";
	now mari-dafydd is in roof-tops;

EVery turn when the player is in city-intersection and mari-moreman is in city-intersection:
	say "There was Dafydd, but he was moving faster, now. He seemed to be afraid of something. Not me, I don't think. He dodged around the kids on bikes; I was shocked by his bravery, but it was a feat I could not follow.";
	now mari-moreman is in roof-tops;

Section 5 - Convenient alley

The convenient-alley is a room in statement-region. The printed name of convenient-alley is "Convenient Alleyway".

Convenient-alley is south from city-intersection. "[if mari-level is 0]The alleyway was the perfect place to avoid the gang war--and the sun. The walls around me shaded this area, giving it a secluded feel. It was pleasant, but I definitely wouldn't go back there at night!

For one of you rich upper-crust types this would have been just a dead end, but not for me. Living in the rough streets of the city taught me many skills.

 I could use my parkour talents to get [bold type]up[roman type] the walls!

I also could have gone back. The wildly dangerous intersection was to the [boldnorth][otherwise if mari-level is 1]The alleyway was a great place to hide from the bikers. I tend to avoid alleyways in general, but right now there was no point in worrying about violent maniacs hiding in corners when there were dozens of them roaring around on the streets outside.

It looked like a dead end at first, but then I noticed a ladder on the wall that led [bold type]up[roman type].

I could also return to the intersection back to the [boldnorth][otherwise]Okay, so this was less of an alleyway and more of a path leading to a park. I was lucky enough that there was a ladder leading [bold type]up[roman type] to a playground. I knew that those wild bicycle kids couldn't chase me up there!

I could also return back to the intersection to the [boldnorth][end if]."

The alley-park is distant scenery. The printed name of alley-park is "park". Understand "park" or "raised" or "slide" or "slides" or "playground" as the alley-park. The description of alley-park is "I was next to a park with a raised playground on it, with slides and stuff. There was a ladder right next to me."

Convenient-alley is inside from city-intersection.

The parkour-walls are plural-named scenery in the convenient-alley. Understand "wall" or "walls" or "various" or "protuberance" or "protuberances" or "ladder" as the parkour-walls. The printed name of the parkour-walls is "[if mari-level is 0]walls[otherwise]ladder[end if]". The description of parkour-walls is "[if mari-level is 0]The distance between the walls, the various protuberances, all of it combined with my street smarts and muscle memory to show me exactly how to get up there[otherwise if mari-level is 1]The ladder seemed sturdy enough. I was sure it could hold me, but it sure seemed tall[otherwise]The ladder to the playground was pretty short, but it should keep those pesky cyclists away[end if]."

Understand "parkour [something]" as climbing.

Instead of climbing the parkour-walls:
	try going up;

Before going up from convenient-alley when mari-level is 0:
	say "Parkour!"

Before going up from convenient-alley when mari-level is 1:
	say "It was tiring, but I climbed up the ladder."

Before going up from convenient-alley when mari-level is 2:
	say "I scrambled up the ladder."

Section 6 - Rooftops

Roof-tops is a room in statement-region. Roof-tops is up from convenient-alley. The printed name of roof-tops is "[if mari-level is 2]Playground[otherwise]Rooftops[end if]". "[if mari-level is 2]I was high up in the air, safe from the bicycle kids. It was kind of fun, being on a playground; I could see everything from up here, including the bikers and the train platform.

I could go back [bold type]down[roman type], but the bikers were there. There was also a slide to the [boldeast] that could get me out of here[otherwise if mari-level is 1]I hadn't been on the roof of an apartment building before, and it was fun but a little scary. I could see a lot from up here, including the bikers and the train platform.

The building must have still been under construction, because there was a plastic chute to the [boldeast] that sloped down to the train platform. I could also still go [bold type]down[roman type] to the alley below[otherwise]Up there, on the rooftops of the city, I felt safe. Like the urchins of old, the sky was my home. I could see everything from up there! There was nothing up here with me but a clothesline currently free from clothes.

More specifically, I could still see the dangerous biker gangs below. I could still go [bold type]down[roman type] to the alley below. To the [boldeast] was a set of wires leading down from the roof, hovering over the train platform[end if]."

The playground-roof is scenery. The printed name of the playground-roof is "playground". Understand "elevated" or "play" or "area" or "playground" as the playground-roof. The description of the playground-roof is "It was an elevated playground, the kind you walk around on while parents wait below. Although I hoped my Dad wasn't waiting below...this is was pretty embarrassing."

The distant-gangs is plural-named distant scenery people in roof-tops. The printed name of distant-gangs is "distant [if mari-level is 0]gangs[otherwise]bikers[end if]". Understand "distant" or "gang" or "gangs" or "bikers" or "biker" or "dangerous" or "bicycle" or "teen" or "teens" or "cyclists" or "cyclist" as the distant-gangs. The description of the distant-gangs is "[if mari-level is 2]Haha! Those dumb bicycle teens couldn't get me now! Suckers[otherwise if mari-level is 1]The bikers were still at it, down below. I just didn't get the appeal. Why not just get on a highway and go crazy instead of circling an intersection? I really don't get it[otherwise]From up above, I could see all the bikers fighting, and yet, what were they fighting over? From up here, there were no borders, no dividing lines like one would see in a map. I felt like I understood a deep truth that others just don't understand. That's what it's like, being a courier in the streets[end if]."
 
Instead of talking to the distant-gangs:
	say "What? I didn't shout at the the from the rooftops. That'd be weird."

The mari-wires are plural-named scenery supporter in roof-tops. The printed name of the mari-wires is "wires". Understand "sturdy" or "insulated" or "wire" or "wires" as the mari-wires. The description of the mari-wires is "Some kind of sturdy, insulated wire leads from this rooftop to just over the train on Platform A."

The clothesline is a scenery supporter in roof-tops. Understand "clothes" or "line" or "cloth" as the clothesline. The description of the clothesline is "Someone must use it when the weather is nicer. No trace of any clothes remains, except for that broken hanger I saw."

Instead of taking the clothesline:
	say "Someone went to a lot of trouble to set it up, seems like a shame to pull it down."

The broken-hanger is on clothesline. "[if the broken-hanger is on clothesline]There was a broken hanger left hanging here, discarded by someone[otherwise if the broken-hanger is on the mari-wires]The hanger was now hanging from the wires[otherwise]I could see a broken hanger lying around[end if]." The printed name of the broken-hanger is "broken hanger". Understand "broken" or "hanger" or "hook" or "handle" or "handles" as the broken-hanger. The description of the broken-hanger is "The bottom part of the hanger has snapped off, leaving only a hook and two handles."

Understand "hook [something] on/to [something]" as putting it on.

Instead of putting the broken-hanger on the clothesline:
	say "Compelling concept, Detective, but it wouldn't have helped, as the clothesline didn't lead anywhere. So I didn't bother doing that.";

Instead of putting the broken-hanger on the mari-wires:
	say "Perfect! I put the hanger onto the wires. Now it would be easy to slide down!";
	now the broken-hanger is on the mari-wires;

Instead of putting something on the mari-wires when the noun is not the broken-hanger:
	say "That wasn't really useful for putting on wires, Detective. So I didn't do that."

Instead of putting something on the clothesline when the noun is not the broken-hanger:
	say "That wasn't really useful for putting on wires, Detective. So I didn't do that."

Before going down from the roof-tops:
	say "I reverse parcoured, hard, down the walls!";

Dafyddspotted is a truth state that varies. Dafyddspotted is false.

Before going nowhere from roof-tops when the noun is east:
	if dafyddspotted is false and mari-level is 1:
		say "I couldn't figure out which way [the mari-Dafydd] had gone!" instead;
		
The mari-platform is distant scenery in roof-tops. The printed name of the mari-platform is "train platform". Understand "train" or "platform" or "track" or "tracks" or "a" or "down" as the mari-platform.

Instead of examining mari-dafydd when the player is in roof-tops:
	try examining mari-platform;

Instead of examining mari-moreman when the player is in roof-tops:
	try examining mari-platform;

The description of the mari-platform is "The train platform was just to the [boldeast]!"

Instead of examining the mari-platform:
	if mari-level is 0:
		say "There was my destination! The A train! Now I just had to find a way down!";
	otherwise if dafyddspotted is true:
		say "I already knew where Dafydd was, I just had to head down there";
	otherwise:
		if mari-level is 2:
			say "There was Dafydd! He was getting on the train! 

And it was weird, too, because I wasn't the only one chasing after him. Some funny lady in the playground below was sneaking behind him in a rhinestone jumpsuit, but when she got to the train she went to a different car. What did she want with him[deliversneaking]?

In any case, I had to find a way down there!";
		otherwise:
			say "There was Dafydd! He was getting on the train! I had to find a way down there!";
		now dafyddspotted is true;

The mari-chute is scenery. The printed name of the mari-chute is "[if mari-level is 2]slide[otherwise]chute[end if]". Understand "plastic" or "chute" as the mari-chute. The description of the mari-chute is "[if mari-level is 2]There was a convenient slide down to the [boldeast], away from the bicycle gangs and closer to the train[otherwise]This looked like a plastic chute that might eventually be used for trash, but for now gently sloped down to the ground[end if]."

Instead of inserting something into the mari-chute:
	say "I tried tossing [the noun] into [the mari-chute]. It slide down just fine until it was out of sight. [The mari-chute] seemed safe!";
	now the noun is nowhere;
	
Instead of entering the mari-chute:
	try going east;

Understand "find [someone]" as examining.

Instead of going nowhere from roof-tops when the noun is east:
	if mari-level is 0:
		if the broken-hanger is on mari-wires:
			say "I grabbed the two handles of the broken hanger and launched myself off of the roof top!

	I whizzed through the air, laughing my head off. Bikers turned around! Babies dropped their ice cream cones! Old men stood and clapped!

	Finally, a few feet from the train, I let go of the hanger, tucked in, and did a somersault through the closing train door and into this car!";
			try ceasing;
			now mari is onceswapped;
			say "'And that's when I discovered this body, already dead,' she says, finishing her story. 'I have never seen this man in my life[deliverunknown].'";
		otherwise:
			say "I couldn't jump down, it was too far; and I couldn't slide on the wires with my bare hands!";
	otherwise if mari-level is 1:
		if dafyddspotted is false:
			say "I had to try to find Dafydd first. Who knows where he could be by now?";
		otherwise:
			now secondmari is true;
			try ceasing;
			now mari is onceswapped;
			say "[The Mari] concludes her story, saying, 'I slipped straight down the chute and landed right next to the train platform. I rushed into the train right when it started, but as soon as I got in, the lights went out. When they went back on, I found him dead, like this. I didn't want people to think it was me, so I made up the story about the package earlier. Sorry,' she says sheepishly.";
	otherwise if mari-level is 2:
		if dafyddspotted is false:
			say "I had to try to find Dafydd first. Who knows where he could be by now?";
		otherwise:
			say "Finally, I knew where to find him! I rushed down the slide and headed towards the train.";
			try ceasing;
			now mari is onceswapped;
			say "[The Mari] concludes her story, saying, 'Everything else happened just the way I told you. I rushed into the train right when it started, but as soon as I got in, the lights went out. When they went back on, I found him dead, like this. Believe me, I would never kill him; for one, I wanted to complete my delivery and prove I could be a good worker; and second, if I wanted someone dead my Dad could just pay for that, I wouldn't do it myself.'";

Instead of jumping when the player is in roof-tops:
	say "There are a lot of ways you could jump down. Instead, you can type the direction you want to go."

Understand "jump [a direction]" as going when the player is in roof-tops.

Understand "slide down/on/-- [mari-wires]" as going when the player is in roof-tops.

Understand "slide down/on/with/-- [broken-hanger]" as going when the player is in roof-tops.

Instead of going nowhere from roof-tops when the noun is mari-wires:
	try going east;

Instead of going nowhere from roof-tops when the noun is broken-hanger:
	try putting broken-hanger on mari-wires;
	try going east;

To say deliverunknown:
	deliver unknown-quip
	
Unknown-quip is a squip. The printed name of unknown-quip is "Unaware". Understand "Unaware" as unknown-quip. The preview of Unknown-quip is "Mari claims to never have met [the train-corpse] before."

The targetresponse of Unknown-quip is "[if currenttarget is arthur]Arthur shrugs. 'That's reasonable,' he says. 'I wouldn't expect a courier to know everyone in the city. And it's not like he has many peer-reviewed publications yet[otherwise if currenttarget is elen]'Hmmm. I doubt that's true,' says Elen. 'They certainly acted like they knew each other when I saw them. Of course, I don't have any evidence for that, but finding evidence is your job, Detective[otherwise if currenttarget is maeve]'Good. Dafydd doesn't seem like he would know that many people; the type to just have a few close friends, I think[otherwise if currenttarget is mari]'Yeah, I don't even know who this guy is,' she says. 'I'm just trying to do my job here, alright? So stop grilling me[end if].'"

Instead of linking unknown-quip to postal-quip:
	postunlink;

Instead of linking postal-quip to unknown-quip:
	postunlink;

To postunlink:
	say "Hmm, that's a clear contradiction. There's visible evidence that [the Mari] interacted with [the train-corpse].";
	remove postal-quip;
	remove unknown-quip;
	deliver acquaint-quip;
	
Acquaint-quip is a linkaged squip. The printed name of acquaint-quip is "Acquaintance". Understand "Acquaintance" as acquaint-quip. 

The preview of acquaint-quip is "[the Mari] lied about knowing [the train-corpse]."

The targetresponse of acquaint-quip is "[if currenttarget is elen]'Well, well, well' says Elen, looking over at Mari. 'It seems like we all know who your number one suspect should be, don't we?' 

When Mari sticks her tongue out at her, Elen shakes her head and says, 'Incorrigible[otherwise if currenttarget is maeve]'Is that the courier? Odd that she would lie about that. Not that I know her very well, but if you ask me, it seems very suspicious. I hope you've discussed it with her[otherwise if currenttarget is arthur]He seems almost excited. 'Yes, a courier would be a perfect cover for someone to use to stalk and attack another. I feel like this case might be wrapped up very soon indeed[otherwise if currenttarget is mari]'Oooh, that probably doesn't look good for me, does it? Yikes,' says Mari. 'Okay, fine. I did talk with him. Actually, the package I'm carrying belongs...' she says, as she unzips her satchel and pulls out the package, '...to him!'

Elen gasps and slaps the package out of her hands, saying 'Don't touch that! That's evidence!'

The package falls to the ground and rips open. Inside is a book that manages to land gracefully, the cover falling open. 

The book is signed inside. It says: 'To my biggest fan Ceri. Love, Maeve Miller'.

Everyone looks confused. 'Listen,' says Mari. 'Don't worry about it. I can explain everything[end if].'"

Report uttering acquaint-quip to mari:
	say "[bracket]Mari has a new statement to give.[close bracket][paragraph break]";
	now mari-level is 1;
	remove acquaint-quip;
	now mari is unonceswapped;
	now the signed-book is in second-class;
	now the company-satchel is open;
	reset-mari;
	deliver ceri-quip;
	
Ceri-quip is a squip. The printed name of ceri-quip is "Ceri". Understand "ceri" as ceri-quip.

The preview of ceri-quip is "[the train-corpse] asked [the maeve] for an autograph for someone else."

The targetresponse of ceri-quip is "[if currenttarget is maeve]Maeve says, 'So? Lots of people ask me for autographs. It's not an abnormal thing.' She seems to be dodging the question; you'll have to find a more compelling clue to get her to talk.

For now you just nod, and say, 'I see[otherwise if currenttarget is elen]'Could be one of two things,' says Elen. 'Either his getting it for a friend or family member, or trying to sell it online. I'd suspect the latter. Autographs can be worth quite a bit, especially if they're rare[otherwise if currenttarget is mari]'Uh, yeah,' says Mari, 'I saw the book flop open just like you. It's not my business what people want to sell, I just do my job[otherwise if currenttarget is arthur]He shakes his head. 'Sorry, I wasn't familiar with Dafydd's personal life. I'm not sure who Ceri is[end if].'"

Instead of linking ceri-quip to signed-quip:
	linkcersign;
	
Instead of linking signed-quip to ceri-quip:
	linkcersign;

To linkcersign:
	say "[The maeve] claimed that [the train-corpse] was obsessed with her and wanted her autograph, but he actually requested an autograph for someone else.";
	remove signed-quip;
	remove ceri-quip;
	deliver altered-quip;
	
Altered-quip is a linkaged squip. The printed name of altered-quip is "Altered". Understand "altered" as Altered-quip. 

The preview of altered-quip is "[the maeve] lied about [the train-corpse] wanting her autograph for himself.".

The targetresponse of altered-quip is "[if currenttarget is elen]'That seems such a strange thing to lie about. It doesn't even affect anything.' She thinks about it a bit. 'Honestly, why would she lie? It's so weird[otherwise if currenttarget is mari]'Wow,' says Mari. 'I mean, he seemed into the book, so I could see why she'd think that, but she literally was the one who wrote the autograph, so is she, like, delusional, or what? I don't get it[otherwise if currenttarget is arthur]He snorts. 'Why waste my time with such trivialities, Detective? If this woman,' he says, pointing to Maeve, 'wants to believe that a young man wanted her autograph for herself, who am I to judge? It doesn't even matter[otherwise if currenttarget is maeve]Maeve reddens deeply. She says, 'Fine. Fine. You know what? He didn't want his autograph for himself. I thought that that, well, that it was a little rude. Forgive me for not telling every painful detail of my life.'

She massages her temples more, and says, 'No, you know what? I will tell painful details. My life isn't quite as glamorous as I made it out to be. I was trying to preserve some of my dignity, but you've forced my hand[end if].'".

Report uttering altered-quip to maeve:
	say "[bracket]Maeve has a new statement to give.[close bracket][paragraph break]";
	now maeve-level is 1;
	remove altered-quip;
	now maeve is unonceswapped;
	resetmaeve;

To say deliversneaking:
	deliver sneaking-quip;
	
Sneaking-quip is a squip. The printed name of sneaking-quip is "Sneaking". Understand "sneaking" as sneaking-quip. The preview of sneaking-quip is "Maeve was seen sneaking through the playground chasing Dafydd."

The targetresponse of sneaking-quip is "[if currenttarget is Maeve]'That's a nasty thing to say,' says Maeve. 'But I don't see why you're bothering me about it. Don't I have a right to use public facilities like anyone else?'

Hmm. She's being defensive. It seems like you'll need to point out her inconsistencies more plainly[otherwise if currenttarget is elen]'Are you sure? That's a children's facility. It's hardly becoming for a grown woman to be among the children,' she says.

At this, Elen looks over, a little embarrassed[otherwise if currenttarget is mari]'Yeah, exactly. It was so weird because she was trying to hide but ended up looking like a disco ball from the sunlight on her jumpsuits,' she says, smiling at the memory[otherwise]'That sounds very suspicious to me, Detective,' says Arthur. 'I assume that sent her to the top of your suspect list.' He peeks at your curiously over his glasses, but you say nothing[end if]."

Instead of linking rendezvous-quip to sneaking-quip:
	linkrendsne;
	
Instead of linking sneaking-quip to rendezvous-quip:
	linkrendsne;

To linkrendsne:
	say "[The maeve] claimed she was meeting [the train-corpse] on the train, but she was spotted sneaking behind him, trying not to be seen. She's lying about something!";
	remove sneaking-quip;
	remove rendezvous-quip;
	deliver Stalker-quip;
	
Stalker-quip is a linkaged squip. The printed name of stalker-quip is "Stalker". Understand "Stalker" as Stalker-quip. 

The preview of Stalker-quip is "[the maeve] lied about meeting up with [the train-corpse], and was following him.".

The targetresponse of Stalker-quip is "[if currenttarget is maeve]Maeve's face pinches up and turns red.

'You terrible woman, why would you say these things?' she shouts, then gets up and stalks angrily around the room.

She turns and faces you, and shouts, 'He should have met with me! He should have loved me! I would have given him everything!'

She collapses back in the chair and sobs for a moment, but when she sees your stern and impassive glance, she breaks it off.

'Fine. Fine,' she says. 'You want to humiliate me? To know the depths I must go through? I'll tell you everything.[otherwise if currenttarget is elen]'Oh ho ho!' gloats Elen. 'That's juicy. I hope you press her on that, that's a nasty bit of work, stalking is.[otherwise if currenttarget is mari]'She lied about that?' Mari asks.

'Yeah, she mentioned several times how much Dafydd loved her,' you say.

Mari shakes her head and says, 'Man, that lady is completely delusional.[otherwise]'That is quite undignified behavior,' says Arthur, but he softens as he looks over at Maeve. 'I'm sure such a woman could find someone she wouldn't have to chase after.[end if]'".

Report uttering stalker-quip to maeve:
	say "[bracket]Maeve has a new statement to give.[close bracket][paragraph break]";
	now maeve-level is 2;
	remove stalker-quip;
	now maeve is unonceswapped;
	resetmaeve;

Section 7 - Limousine

Mariadmits is a truth state that varies. Mariadmits is false.

Mari-limo is a room in statement-region. The printed name of mari-limo is "Dad's Limousine". "[if mariadmits is false]Okay, fine. I'll admit everything. I'm not some charismatic, street-smart, powerful butt-kicking courier. I'm just the daughter of a stupid billionaire. And this morning I was in the limo, waiting for my father to chew me out for losing my latest car[admitmari]. 

[end if]Dad had the backup limo, so there were no minifridges or VR headsets, just boring seats. The windows were all rolled up, so I didn't know where we were."

The limo-seats are plural-named scenery supporters in mari-limo. The printed name of the limo-seats is "limo seats". Understand "limo" or "seats" as the limo-seats. The description of the limo-seats is "These used to be leather, but I told Dad it got too hot in the summer. I don't know what they are now."

Instead of getting off the limo-seats:
	say "Dad doesn't like me standing up while we're driving."

Mari-dad is a man in mari-limo. The printed name of mari-dad is "Dad". Understand "dad" or "tall" or "thin" or "grey" or "hair" or "chiseled" or "Feature" or "features" or "knobbly" or "suit" or "serious" or "conversation" as mari-dad. The description of Mari-dad is "Dad is tall and thin, and dyes his hair grey. Last year Pobl magazine said he had 'chiseled features', but I think he looks more knobbly. He was wearing his 'serious conversation' suit, which was a bad sign."

Instead of talking to mari-dad:
	say "Before I could say anything, Dad jumped right in and said, 'I can't believe you lost another car.'

'Dad, it wasn't my fault!' I protested.

'Not your fault!' he said. 'It just jumped into the canal on its own?'

'Yes!' I said. 'It had autopilot on!'

He ran his fingers through his hair in frustration. 'How many times do I have to tell you? Autopilot is for shareholder meetings and newsreels, not actual use! Do you know how much that car cost me? It's at least two hours of work for me! So because you cost me two hours of work, you're going to pay me two hours of work.'

By then the car had stopped, and dad opened the door. There in front of us was a UCD Courier office.

'Dad, no!' I cried.

'Dad, yes!' he said. 'Here's your uniform. Go change.'

I grabbed the uniform and changed in the limo changing room, with dad banging on the door after two minutes to say I was taking too long. Finally, I got out. He gave me a brief rundown on what couriers do (and obviously I already knew that?) and pushed me out onto the curb.

It was time to go to work, I guess.";
	now fake-satchel is worn by fake-mari;
	now fake-cap is worn by fake-mari;
	now the player is in city-streets;

To say admitmari:
	now mariadmits is true;

Chapter 8 - Attendant Elen statement world

[This reset's Elen's flashbacks]
Every turn when currentswap is elen and the player is emrys-weaver:
	reset-elen;

To reset-elen:
	now currentswap is emrys-weaver;
	now fake-elen is in train-locker;
	now gwentalked is false;
	now dafydd-ticket is held by elen-dafydd;
	now maeve-ticket is held by elen-maeve;
	now arthur-ticket is held by elen-arthur;
	if elen-level is 1:
		now elen-watch is worn by elen-dafydd;
	if elen-level is 2:
		now elen-locker is open;
		now elen-locker is unlocked;
		now gwen is nowhere;
		now daggerseen is false;
		now elen-watch is worn by elen-dafydd;

Elen-level is a number that varies. Elen-level is 0.

Section 1 - Elen

train-locker is a room in statement-region.

Fake-elen is a woman in train-locker. The printed name of fake-elen is "Elen". Understand "elen" or "strong" or "chin" as Fake-elen.

The description of fake-elen is "[if elen-level is 2]I started out clean, you know. Ethical. But I saw the things that others got away with. The corruption. Did you really expect me to just sit and take it while others got everything they wanted? No.

[otherwise]I consider myself an upstanding citizen and a keeper of the law, and I expect others to do the same[end if]. I am fairly tall, rather plain, but have a strong chin. I have no pretensions about myself, Officer."

The fake-uniform is worn by fake-Elen. The printed name of the fake-uniform is "sleek black uniform". Understand "sleek" or "black" or "uniform" or "well" or "designed" or "well-designed" or "newer" or "model" as the fake-uniform. 

The description of the fake-uniform is "My uniform was the newer model, much better than the bulky old ones. It was sleek and black, and designed not to catch the attention of others and not to catch on the many protuberances that exist in a train car."

The doppelganger of elen is fake-elen.

Section 2 - Locker room

The printed name of train-locker is "Locker Room". The description of train-locker is "This morning I was in the locker room. Our accommodations are adequate: large individual lockers, clean bathrooms, but all old. Attendants are expected to be early, but few of us were. The newer hires lack the discipline of their elders[if elen-level is 1].

I was upset because some fool had totalled my car the night before. Of course I was able to take a train to work; I have a discount. But it was going to cost me quite a bit of money. That lay heavily on my mind while I was getting ready[otherwise if elen-level is 2]. 

[lockertext][end if].

I'm not interested in describing the bathrooms or other parts of the building. But I could go to the [boldeast] to get to the train platforms."

To say lockertext:
	say "I am not a murderer, Detective. But I am a thief. My locker was the place I kept all my treasures until I could fence them[if elen-locker is open]; this morning, I had it open and was going through my latest catch[end if]"

The large-lockers are plural-named scenery in train-locker. The printed name of the large-lockers is "lockers". Understand "large" or "lockers" or "individual" or "clean" as the large-lockers. The description of the large-lockers is "I didn't concern myself about the others' lockers, except on days where they had strange smells emanating from them or dripping liquids. Today they were at least adequately clean."

Instead of smelling the large-lockers:
	say "There isn't any particularly horrible odor from the lockers today."

An elen-locker is a closed, locked, lockable scenery container in train-locker. The printed name of the elen-locker is "locker". The indefinite article of elen-locker is "my". Understand "my" or "locker" as the elen-locker.

Daggerseen is a truth state that varies. Daggerseen is false;

The description of the elen-locker is "[if elen-level is 2]I found it amusing that here, in the center of law and order, I kept my little nest of crime[otherwise]My locker is of no concern to you, officer. Please let me go on[end if]."

A Silver-croes is closed openable container in elen-locker. The printed name of silver-croes is "slim black box". Understand "croes" or "silver" or "slim" or "black" or "letter" or "opener" or "Dagger" or "box" or "good" or "goods" as the silver-croes. The description of the silver-croes is "This was an excellent catch: a Croes letter opener. I recognized it by the slim black box, the silver cross on top, and the Croes logo. These letter openers were essentially daggers, very expensive, and very sharp. They came with a few different finishes, indicated by the cross on the box. This one had a silver cross, so it was a silver dagger[delivercroes]."

Instead of opening silver-croes:
	say "I took a peek inside. The silver dagger glimmered dully, a patina having already formed since the dagger was made. It was authentic. I closed the box again."

Instead of taking silver-croes:
	say "In the locker, the black box was safe. Taking it out was too risky."

To say delivercroes:
	deliver croes-quip;
	now daggerseen is true;
	
Croes-quip is a squip. The printed name of croes-quip is "Croes". Understand "croes" as croes-quip.

The preview of croes-quip is "Special Croes brand letter openers come in black boxes with a cross indicating their color."

The targetresponse of croes-quip is "[if currenttarget is elen]'Yes, that's what I said earlier. I've even seen a copper one, and the stripe on the box was green. They're designed to last a long time, so they prepared for the patina,' she says[otherwise if currenttarget is maeve]'Wait, really?' says Maeve. 'So that kind of box is for a letter opener?'

She looks genuinely relieved[otherwise if currenttarget is mari]'I don't know why you guys are talking about Croes brand,' says Mari. 'That stuff's pretty cheap.'

'The others don't seem to think so,' you say.

'Oh,' says Mari. She looks a bit embarrassed[otherwise]Arthur doesn't respond at all, but looks at you darkly before turning away[end if].".

Instead of linking personalized-quip to croes-quip:
	linkpercro;
	
Instead of linking croes-quip to personalized-quip:
	linkpercro;

To linkpercro:
	say "Yes, the box that Maeve saw in Arthur's office sounds exactly like the letter openers Elen talked about. Arthur must own a golden Croes letter opener.";
	remove personalized-quip;
	remove croes-quip;
	deliver possession-quip;
	
Possession-quip is a linkaged squip. The printed name of possession-quip is "Possession". Understand "Possession" as Possession-quip. 

The preview of Possession-quip is "Arthur owns a gold Croes dagger.".

The targetresponse of Possession-quip is "[if currenttarget is Arthur]Arthur looks heavily at you for moment, his brow glowering. 

'I don't appreciate your insinuations, Detective,' he says. 'What I own is none of your business.'

Arthur is being exceptionally stubborn. Despite you already linking up several ideas, he's still holding back. You may need to connect this idea even further to get more out of him[otherwise if currenttarget is maeve]'Oh my goodness,' she says. 'That's what was in the box. He has a deadly weapon,' she says. She looks nervously over at Arthur[otherwise if currenttarget is elen]'Really?' she says, her interest piqued. 'He has good taste. I'll have to talk to him once all of this is over. Although I hope you realize how bad it looks for him to own such a weapon,' she adds[otherwise]Mari snorts. 'He would have poor taste like that,' she says[end if].".

[this is the only linked thing that doesn't produce an immediate statement]

Instead of opening or unlocking keylessly the elen-locker when elen-level is not 2:
	say "My locker is of no concern to you, officer. Please, let me go on.";

Instead of unlocking the elen-locker with something when elen-level is not 2:
	say "My locker is of no concern to you, officer. Please, let me go on.";

Instead of opening or unlocking keylessly the elen-locker when elen-level is 2 and gwen is in train-locker:
	say "No, I couldn't let Gwen see what was in my locker. Think of the scandal!";

Instead of unlocking the elen-locker with something when elen-level is 2 and gwen is in train-locker:
	say "No, I couldn't let Gwen see what was in my locker. Think of the scandal!";

Before closing elen-locker when elen-level is 2:
	if elen-locker is open:
		if daggerseen is false:
			say "Before I shut the locker, I wanted to look over the goods." instead;

After closing elen-locker when elen-level is 2:
	say "Just as I closed the locker, I heard a scraping sound. I started up, panicked that I had been discovered, but saw that it just Gwen. Not the brightest bulb among the attendants.";
	now Gwen is in train-locker;
	
Gwentalked is a truth state that varies. Gwentalked is false.

Gwen is a woman in train-locker. "Gwen, another veteran of the railroad, was finishing up as well." The description of Gwen is "Gwen was a few years older than me, a frivolous woman given to excess in imagination."

Instead of talking to Gwen:
	if gwentalked is true:
		say "[if elen-level is 2]I had already allayed her suspicions, and did not need to talk with her again[otherwise]Gwen had run out of interesting conversation, and I had no desire for piddling chit chat[end if].";
	otherwise:
		now gwentalked is true;
		if elen-level is 0:
			say "'What is it, Gwen? You seem excited by something,' I said rather sternly.

	'Oh, not excited at all, Elen,' she said in a high-pitched, lisping kind of voice that has always reminded me of that of a baby. It was mildly infuriating.

	'What, then?' I intoned.

	'Haven't you heard about all the thefts recently? Someone's been stealing from passengers on the train. It's an epidemic!' she said.

	'Not just passengers,' I added. 'Someone's been taking things from our lockers as well. Just today I happened to find my water bottle missing. It's the younger generation, you know. No discipline.'

	Gwen tutted and shook her head. 'Dreadful, that,' she said.

	'While I've enjoyed our little discussion, I'm afraid I must be off,' I told her, and she pouted but accepted it with a wave goodbye.";
		otherwise if elen-level is 1 :
			say "'Gee, Elen, you seem upset,' said Gwen in her voice, a little-kid voice which was grating coming from a grown woman.

	'Some jerk hit my car last night on the way home from work. I had to take the train this morning, Second Class,' I said, bitterly.

	Gwen tutted and said, 'Poor Elen. I'm sorry to hear that. People just have no decency any more. Just like all the thefts going on. They say even some attendants are losing their things.'

	'A damaged car is a much bigger problem than some missing earrings,' I said curtly. Gwen looked hurt by my tone, so I softened it and said, 'But I know what you mean. No moral character these days. In any case, I must be off.' 

	Gwen waved goodbye politely.";
		otherwise if elen-level is 2:
			say "'What was that you were looking at?' asked Gwen, her brows furrowed.

'A gift from a friend,' I said quietly.

'Oooh, a lover,' she said. Gwen often used such silly language, most likely from her books she was always reading. 'Is it roses?' she asked.

'No,' I said. 'Just chocolates.'

'Lucky!' said Gwen. 'Make sure you hide them good; the locker thief has been especially bad this week.'

'I'll keep an eye out, Gwen,' I said. 'Thanks for the reminder.'

This woman could be deeply annoying, but at least she was easily misled. It was time to make my exit, though.";
	
Before going east from train-locker when gwentalked is false and elen-locker is closed:
	if elen-level is 2:
		say "I had to calm Gwen's suspicions." instead;
	otherwise:
		say "Gwen coughed loudly and looked in my direction. I could tell she was trying to get my attention. Annoying, of course, but I had learned to humor her quickly, as she would become much worse later on if she thought I were annoying her." instead;

Instead of waving when gwen is in the location:
	say "I wasn't about to lower myself to frivolous hand waving."

Before going east from train-locker when elen-locker is open:
	say "I certainly couldn't leave with my locker hanging open!" instead;

Section 3 - Train Platform

Platform-A is east from train-locker. Platform-A is in statement-region. The printed name of platform-A is "Platform A". The description of Platform-A is "There's little in life better than a train platform, especially ours. A lofty arched glass ceiling allows the gentle light of day to trickle down. The bustle of daily life: humanity in motion, from workers headed to jobs to children playing at a nearby playground. There were less people here this morning than usual, though[if elen-level is 2]. Unfortunately for me, that meant less marks to target[end if].

A train was ready to leave, off to the [boldeast]. I could return to the locker room to the [boldwest]."

The elen-playground is distant scenery in platform-a. The printed name of the elen-playground is "playground". Understand "play" or "ground" or "playground" or "slide" or "high" or "swing" or "swings" or "children" or "child" as the elen-playground. The description of the elen-playground is "The playground was simple, with a high slide and a few swings. But the children didn't seem to care, laughing and running about. That's what kids need: simplicity, fresh air, and exercise."

The glass-ceiling is distant scenery in platform-A. The printed name of the glass-ceiling is "glass ceiling". Understand "glass" or "ceiling" or "lofty" or "arch" or "arched" or "gentle" or "light" as the glass-ceiling.

The description of the glass-ceiling is "With the glass ceiling, the architect clearly wanted to direct the viewers' attention to the heavens, receiving gentle sunlight by day and allowing the stars to shine through by night."

The multi-passengers are scenery people in platform-A. The printed name of the multi-passengers is "workers". Understand "worker" or "workers" or "shopper" or "shoppers" or "pasenger" or "passengers" or "humanity" as the multi-passengers. The description of the multi-passengers is "I always study the passengers on our train, guessing at their lives. Many are workers, some that I see every day. Others are perhaps shoppers or something more exciting. This morning, though, there was less of all types of people[if elen-level is 2]. No one seemed wealthy enough to be worth approaching, though[end if]."

Instead of talking to the multi-passengers:
	say "I don't fraternize with the riff-raff."
The platform-train is scenery in platform-a. The printed name of platform-train is "train". Understand "train" as platform-train. The description of the platform-train is "This was one of our older trains, but still serviceable. We make them last forever."

ElenChilling is a recurring scene.
ElenChilling begins when the player is Emrys-Weaver.
ElenChilling ends when the player is in Platform-A.
When ElenChilling ends:
	say "My supervisor was looking for me as I walked onto the platform, and called me over. 

He said, '[if elen-level is 0]We're missing crew today because of that undercooked sausage at the pizza party last night. I know you were scheduled for the B-line today, but we need you on the A-Line. Can you do that?'

Typical that I was the one being given additional responsibilities, a 'reward' for being a good worker. 'Of course, sir,' I answered politely, hiding my anger. 'Right away[otherwise if elen-level is 1]You're late.' It was an accusation.

I bristled, but kept my cool. Anger would only end up with me losing my job.

'My car was in an accident yesterday,' I said. 'Some young hooligan ran into it when it was parked. I had to take an early train.'

'Is that so?' he said, seeming unimpressed. 'Well, we just had to send off the B-Line train without you. Now we're short on the A-Line. Why don't you get in there, and do your job,' he said, pointing at the train.

'Of course sir,' I said. 'Right away[otherwise]We're missing crew today because of that undercooked sausage at the pizza party last night. I know you were scheduled for the B-line today, but we need you on the A-Line. Can you do that?'

I was annoyed, because the B-line was usually much more profitable. I couldn't tell him that, though. 'Of course, sir,' I answered politely, hiding my anger. 'Right away[end if].'

'Good,' he said, not even caring how I responded or felt. 'We have a light load, since we're sending this over early for the holiday rush later today. There's a police officer in the lavatory I already ticketed in First Class, but make sure to grab the tickets of anyone else aboard.'

'Of course,' I said dryly. As if I needed an explanation of how to do my job.

'Well, I'm off then. Cheers!' he said, and walked off."

Section 4 - Train

Fake-second is east from Platform-A. Fake-second is in statement-region. The printed name of Fake-second is "Second Class (as Elen)". "The Second Class car is designed for maximum efficiency. It is not for the weak. Rows of hard, posture-correcting plastic seats. Easily cleanable floors. Secure windows. I wish all the cars were like this.

The car was almost entirely empty. Not surprising, really; the trip to Sector 18 is long and tedious, and very few people like to take the difficult train ride.

The first class car was to the [bold type]north[roman type]."

The second-floor is scenery floor in fake-second. The printed name of the second-floor is "floor". Understand "floor" or "rubbery" or "rubber" or "texture" or "easily" or "cleanable" or "easily-cleanable" or "textured" or "utilitarian" or "sturdy" or "plastic" as the second-floor.

The description of the second-floor is "I had washed these floors many times in the past, before I had reached my current position. Never again."

The elen-seats are plural-named scenery in fake-second. The printed name of the elen-seats is "orange bucket seats". Understand "row" or "bucket" or "orange" or "harder" or "plastic" or "seat" or "seats" or "hard" or "correcting" or "posture" or "posture-correcting" or "chair" or "chairs" or "molded" or "uncomfortable" as the elen-seats. The description of the elen-seats is "The chairs used to be a softer, more cushioned plastic. It encouraged loafers. I was quite pleased when they transitioned to the harder plastic."
	
The elen-windows are plural-named scenery in fake-second. The printed name of the elen-windows is "secure windows". Understand "secure" or "window" or "windows" or "dingy" or "small" or "numerous" or "gunk" or "yellow" as the elen-windows. The description of the elen-windows is "These windows are specially designed to be more secure, and to discourage the users from manipulating them."

Instead of going west from fake-second:
	say "I wasn't ready to jump from a moving train. Besides, the train was closed."

The Elen-dafydd is a man in fake-second. "[if elen-level is 2]A nervous young man was sitting in the car. And he had an especially nice watch on[otherwise if elen-level is 0]A nervous young man was sitting in the car[otherwise if dafydd-ticket is held by elen-dafydd]A nervous young man was the only passenger in this car[otherwise]Dafydd was waiting to see what I would do[end if]." Understand "nervous" or "young" or "Man" or "dafydd" as elen-dafydd. The printed name of elen-dafydd is "nervous young man". The description of elen-dafydd is "The young man seemed quite nervous, and I suppose he must have been cold, because he was wearing his gym clothing."

The elen-gym is worn by elen-dafydd. The printed name of the elen-gym is "gym clothing". Understand "gym" or "clothing" or "tank" or "shorts" as the elen-gym. The description of the elen-gym is "He was wearing shorts and a tank, just like I do when I go to the gym. Which I do regularly, three days a week."

A train-ticket is a kind of thing. Understand "ticket" as a train-ticket. 

Understand "tear [a train-ticket]" as attacking when a train-ticket is enclosed by the location.

Instead of attacking a train-ticket:
	say "We don't mark tickets in that fashion, Detective. We simply collect them."

The dafydd-ticket is a train-ticket held by elen-dafydd. The printed name of the dafydd-ticket is "young man's ticket". Understand "man's" or "dafydd's" or "his" or "crumpled" or "second" or "class" or "young man's" as the dafydd-ticket. The description of the dafydd-ticket is "This was a second-class ticket, lightly crumpled."

ElenUnaware is a recurring scene.
ElenUnaware begins when the player is Emrys-Weaver.
ElenUnaware ends when the player is in fake-second and elen-level is 1.
When ElenUnaware ends:
	say "The young man looked at me, obvious recognition and guilt flashing through his eyes. It was the man that hit my car!

He tried to ignore me. But I wasn't going to ignore him."

Instead of taking dafydd-ticket when dafydd-ticket is held by elen-dafydd:
	try talking to elen-dafydd;

Instead of talking to elen-dafydd:
	if the dafydd-ticket is held by elen-dafydd:
		if elen-level is 0:
			say "'Ticket please?' I asked, my voice trained by years of habit.

He glanced at me nervously, and said, 'Ticket? Oh, of course,' and handed it to me. Sweat trickled down his face and dripped to the ground, disappearing into the floor's surface. I was annoyed, but said nothing. I had other tickets to take.";
		otherwise if elen-level is 1:
			say "'Excuse me, sir,' I said angrily.

He turned away and held out his ticket.

I snatched it and said, louder, 'Excuse me, sir!'

He turned, wide-eyed.

'You hit my car, didn't you? I know it was you. I was watching from the sidewalk. And you drove off! I could sue you for everything you're worth,' I said.

'Whoa, whoa, whoa,' he said. 'Listen, maybe we can come to...an agreement.'

'I'm listening,' I said. But I heard noise from the other car. 'Hold on,' I said, 'let me go take care of the other passengers. Don't run off; I have your ticket, remember, so I know exactly who you are, now'--here, I squinted--'Dafydd.'

He gulped and remain seated.";
		otherwise if elen-level is 2:
			say "'Ticket please?' I asked, my voice trained by years of habit to lull others into a sense of security.

He glanced at me nervously, and said, 'Ticket? Oh, of course,' and handed it to me. Sweat trickled down his face and dripped to the ground, disappearing into the floor's surface. I didn't care.

'That's a nice watch, isn't it?' I asked, affecting a rather foppish attitude. 

'Oh, this?' he said, smiling and seeming to calm down a bit. 'Yeah, my dad got it for me when I went to grad school. Nicest gift I ever got.'

'How sweet,' I said. And, being able to see it closer up, I was sure it was real. I made an impressed face, but said nothing further. I could always come back after I took the other tickets, especially with a tunnel coming up soon.";
		now the dafydd-ticket is held by the player;
	otherwise if maeve-ticket is held by the player and arthur-ticket is held by the player:
		say "'Okay, they should leave us alone for a bit. What's your proposal?'

'Here,' he said. 'This watch, it's an authentic Arawnz. It's got to be worth more than your car. If you take it, we're even, right?'

I took the watch he held out and looked it over. I have some experience with high-end luxury goods, and I could tell at once this would cover my car. Twice, in fact, but I didn't tell him that.

'That's fine,' I said, and put it on[deliverpresent].

The train began to thrum, and the doors started to close. Just then, a courier burst in, breathing heavily. Her eyes locked with Dafydd. 'What are you doing here?' he said, seeming deeply confused.

The train hit the first tunnel, and everything became dark. I heard Dafydd shout, and I also heard the voices of the First Class passengers.";
		now elen-watch is worn by fake-elen;
		now secondelen is true;
		try ceasing;
		now elen is onceswapped;
		say "'When the lights went back on, Dafydd was dead, and everyone was standing over him. I sent them off to their car, and stood guard,' says Elen.

She adds, 'You can see why I didn't mention the watch, or the car. It paints me in a bad light.'";
	otherwise:
		say "I had nothing more to say to [the elen-dafydd] at the time."

The elen-watch is a wearable thing. Understand "wristwatch" or "wrist" or "watch" or "monogram" or "monogrammed" or "expensive" or "DY" or "expensive-looking" or "gold" or "alloy" or "looking" as the elen-watch. The description of the elen-watch is "[if elen-watch is worn by the player]The wristwatch was almost certainly more valuable than my old car. I was happy with the trade[otherwise]The watch that [the elen-dafydd] was wearing looked very expensive. And quite tasteful[end if][if elen-level is 2]. It would look especially good on me, once I found a way to get it[end if]." The printed name of the elen-watch is "wristwatch".

Instead of taking elen-watch when elen-level is 2:
	say "Surely I had to be more subtle than that. I'd attend to my train duties first, before anything else, and wait for a better opportunity."

Section 5 - More train

Instead of entering a supporter when the player is Elen:
	say "It wasn't right for me to rest on the job."

Fake-first is north from fake-second. Fake-first is in statement-region. The printed name of fake-first is "First Class (as Elen)". "The First Class car was appropriately designed for the upper crust of society. Expansive windows, bright silk curtains, plush armchairs. It's the train car of your dreams. At least, that's the goal.

The Second Class car was back to the [boldsouth]."

The elen-armchairs are plural-named scenery in fake-first. The printed name of elen-armchairs is "scattered armchairs". Understand "scattered" or "chair" or "arm" or "armchair" or "plush" or "upholstered" or "upholstery" or "armchairs" or "rivet" or "rivets" or "riveted" or "chairs" or "bolt" or "cushion" or "cushions" or "luxury" or "bolts" or "seat" or "seats" as the elen-armchairs. The description of the elen-armchairs is "Our luxury chairs are for our most special clients. It gives the lower classes something to aspire to. Of course, they are much harder to clean, too. The upper crust of society is not above putting their feet on the plush[if elen-level is 2], and I am not above searching for their goods in the cushions[end if].".

Instead of searching the elen-armchairs:
	say "I settled the cushions but found nothing[if elen-level is 2], which was disappointing; sometimes people leave rings or wallets in there[end if]."

Instead of looking under the elen-armchairs:
	say "It would be undignified for me to go looking under chairs while clients are around."

Instead of entering the elen-armchairs:
	say "Staff are not allowed in the chairs, Detective."

The elen-carpet is ambiguously plural scenery in fake-first. The indefinite article of the elen-carpet is "some". The printed name of the elen-carpet is "luxurious carpet". Understand "carpet" or "luxury" or "luxurious" or "soft" as the elen-carpet. The description of the elen-carpet is "Our carpet is actually one of our biggest expenses. But it always comes up first in customer satisfaction surveys. So keeping it fresh is our biggest maintenance priority."
 
Instead of touching or rubbing the elen-carpet:
	say "I refrained from indulging in my personal appetites during the exercise of my duties."

Instead of looking under the elen-carpet:
	say "It's worth my job if I damage the carpets. No thank you, officer."

The elen-panes are plural-named scenery in fake-first. The printed name of the elen-panes is "windows". Understand "window" or "solid"or "expansive" or "pane" or "panes" or "immovable" or "wide" or "picture" or "windows" as the elen-panes. The description of the elen-panes is "I had fought for the larger windows before, when the company was redesigning the First Class cars. Due to my efforts, these windows are now two centimeters longer than before. You're welcome."

Instead of searching the first-windows:
	try examining the elen-landscape

Instead of opening the elen-panes:
	say "The windows are solid, immovable panes of glass, so of course I didn't open them."

Instead of closing the elen-panes:
	say "They weren't designed to open or close."

The elen-landscape is distant scenery in fake-first. The printed name of the elen-landscape is "moving landscape". Understand "moving" or "view" or "landscape" or "mountain" or "tall" or "mountains" or "dense" or "forest" or "forests" or "deep" or "snowbank" or "snowbanks" or "snow-covered" or "snow" or "outside" or "covered" as the moving-landscape. The description of the elen-landscape is "The view outside interested me little. I had seen it a thousand times. People are what interest me."

The elen-curtains are plural-named scenery in fake-first. The printed name of the elen-curtains is "brightly-colored curtains". Understand "bright" or "brightly" or "colored" or "silk" or "curtain" or "marble-dyed" or "dyed" or "marble" or "dye" or "fabric" or "warm" or "light" or "colors" or "curtains" or "color" as the elen-curtains. 

The description of the elen-curtains is "Our curtains are kept pristine. When one is dirtied, it is removed and cleaned. When one is damaged, it is replaced. There is no room for imperfect curtains."

Instead of opening the elen-curtains:
	say "They were already open."
	
Instead of closing the elen-curtains:
	say "Closing the curtains was prohibited by the official manual. The view is a great part of the draw of the First Class car."

The Elen-maeve is a woman in fake-first. "[A elen-maeve] and [a elen-arthur] sat far apart from each other in the train car, each lost in thought." The printed name of elen-maeve is "flashy woman". Understand "maeve" or "flashy" or "woman" or "extravagant" as the elen-maeve. The description of elen-maeve is "I pursed my lips when looking over this woman. [italic type]Nouveau-riche[roman type] was my immediate assessment. The tacky sort that goes for flashy looks and expensive accessories. She probably didn't even know that the truly rich tend to wear whatever is comfortable or looks best, regardless of the price. A two-credit t-shirt may be just as good as a thousand-credit suit[if elen-level is 2]. I was certainly not going to get anything valuable from her[end if]."

The maeve-ticket is a train-ticket held by elen-maeve. The printed name of the maeve-ticket is "flashy woman's ticket". Understand "woman's" or "maeve's" or "her" or "flashy woman's" or "first" or "class" or "first-class" or "pristine" or "flashy" as the maeve-ticket.

The description of the maeve-ticket is "This was a first-class ticket in pristine condition."

The Elen-arthur is a man in fake-first. The printed name of the elen-arthur is "distinguished old man". Understand "distinguished" or "old" or "man" or "arthur" as the elen-arthur. The description of the elen-arthur is "This man commanded respect with his presence. I could immediately tell he was one used to authority."

The arthur-ticket is a train-ticket held by elen-arthur. The printed name of the arthur-ticket is "old man's ticket". Understand "man's" or "arthur's" or "his" or "old man's" or "old" or "folded" or "first" or "class" or "First-class" as the arthur-ticket.

The description of the arthur-ticket is "This was a first-class ticket, lightly crumpled."

MaeveTicketed is a truth state that varies. MaeveTicketed is false.
ArthurTicketed is a truth state that varies. ArthurTicketed is false.

Does the player mean taking a train-ticket:
	it is likely;

Does the player mean examining a train-ticket:
	it is very unlikely;

Instead of taking maeve-ticket when maeve-ticket is held by elen-maeve:
	try talking to elen-maeve;

Instead of talking to elen-maeve:
	if maeve-ticket is held by elen-maeve:
		say "'Ticket, please,' I told the extravagant woman. She wasn't looking at me at all; instead, she seemed to be looking for someone.

	My voice startled her. 'Mmmh, what?' she said.

	'Ticket, ma'am,' I said tersely. With these types you just have to be firm.

	'Oh, of course,' she said, handing me the ticket she had been dangling from her hand.";
		now maeve-ticket is carried by the player;
	otherwise:
		say "I had no reason to bother her again."

Instead of taking arthur-ticket when arthur-ticket is held by elen-arthur:
	try talking to elen-arthur;

Instead of talking to elen-arthur:
	if the arthur-ticket is held by elen-arthur:
		say "'Ticket, please, sir,' I said politely. 

	He handed it to me silently. He seemed deep in thought.

	'Can I get you anything, sir?' I asked. We kept a few things in a different car that we reserved for our elite guests, and this man certainly seemed like he belonged to that category. He almost seemed familiar...maybe I'd seen him in the news? But no, I had to focus on my duties[if elen-level is 2], although his briefcase seemed intriguing. Maybe after I found a way to get the other man's watch, I could examine the briefcase more fully[end if].";
		now arthur-ticket is carried by the player;
	otherwise:
		say "I had no reason to bother him again."

Marienters is a recurring scene. Marienters begins when allmariready is true.

Marienters ends when the player is emrys-weaver.

To decide if allmariready is true:
	let temp be true;
	if elen-level is 1, now temp is false;
	if the player is not fake-elen, now temp is false;
	if dafydd-ticket is held by elen-dafydd, now temp is false;
	if maeve-ticket is held by elen-maeve, now temp is false;
	if arthur-ticket is held by elen-arthur, now temp is false;
	if the player is in fake-first, now temp is false;
	decide on temp;
	
When marienters begins:
	say "As I re-entered the second class car, I heard the all-clear signal from above, and the train doors began to close.

Just then, a young courier burst in carrying a satchel. 'Sir!' she shouted. 'Wait!' [The elen-dafydd] stared at her and said, 'What are you doing? You're not supposed to be here!'

The two passengers from the other car came bursting in. 'Dafydd!' shouted the older man; 'What's happening?' asked the tacky woman.

[if elen-level is 0]Just then, we entered into our first tunnel. The lights went off, and everything was chaos. When the lights went on again, the young man was dead[otherwise if elen-level is 2]Just then, we entered into our first tunnel. There was a scuffle, and I felt a body fall by me. It was the man, Dafydd. I knew there would be trouble later for whoever killed him, so I pulled off the watch, figuring that no one would notice in the chaos and hoping the actual murderer would keep all the attention off from me[end if].";
	now elen is onceswapped;
	try ceasing;
	if elen-level is 0:
		say "'And so I ushered the first-class passengers back to their car, and stayed here, guarding the body,' she said. 'I knew there was a police officer aboard, so I waited for you to come out.'

	She stretches her arms, relieving her stiff posture. As she does so, a watch slides into view out from her uniform sleeve.";
		now the arawnz-watch is worn by Elen;
	otherwise if elen-level is 2:
		say "'And then, we came out of the tunnel, and everyone saw him dead,' concludes the train attendant. 'I am not the murderer, although I am a thief. You won't pin this one on me, Detective.'";
[add a quip here about mari knowing dafydd, and use it to contradict unknown]

The arawnz-watch is a wearable thing. Understand "wristwatch" or "wrist" or "watch" or "monogram" or "monogrammed" or "expensive" or "DY" or "expensive-looking" or "gold" or "alloy" or "looking" as the arawnz-watch. The description of the arawnz-watch is "This wristwatch looks very expensive. It's made of some high-purity gold alloy, judging from your metallurgical experience. It has an unfamiliar logo: 'Arawnz', and is monogrammed with the initials DY[deliverwatch]."

Does the player mean examining the arawnz-watch:
	it is likely;

To say deliverwatch:
	deliver watch-quip;
	
Watch-quip is a squip. The printed name of watch-quip is "Bling". Understand "bling" as watch-quip. The preview of watch-quip is "[the Elen] is wearing an expensive, monogrammed watch."

Targetresponse of watch-quip is "[if currenttarget is maeve]'I always thought of watches as an aggressively male accessory,' says Maeve. 'They do little for one's overall look, and their main functions are to remind you of your duties and to tell other people something they don't know. But if she wears one, then good for her. Good for her[otherwise if currenttarget is elen]'Is that so remarkable?' asks Elen. 'Let's just say that it was a gift[otherwise if currenttarget is arthur]'Hmmm, seems a waste of money to me,' says Arthur. 'That's the sort of thing Dafydd was into. Meaningless status symbols. You can't buy talent or prestige, but some find everything they can to fill up that gap[otherwise if currenttarget is mari]'Yeah, I saw that,' she says. 'I mean, Arawnz isn't [italic type]actually[roman type] luxury, but it is pretty hard to save up for on an attendant's salary[end if].'"

Instead of linking watch-quip to timepiece-quip:
	linkwattim;
	
Instead of linking timepiece-quip to watch-quip:
	linkwattim;
	
[Make it so that if the player doesn't examine the watch, and leaves and comes back, that it becomes more conspicuous]

To linkwattim:
	say "Yes, that's very suspicious. [The train-corpse] had a very distinctive watch, and [the elen] is wearing one just like it. How did she get it?";
	remove watch-quip;
	remove timepiece-quip;
	deliver Appropriation-quip;
	
Appropriation-quip is a linkaged squip. The printed name of appropriation-quip is "Appropriated". Understand "appropriated" as appropriation-quip. The preview of appropriation-quip is "[the elen] somehow got a hold of [the train-corpse]'s distinctive watch."

The targetresponse of appropriation-quip is "[if currenttarget is maeve]'That little...! I can't believe a train attendant would stoop so low as to steal from a charming young man like that[otherwise if currenttarget is arthur]'From what I know about Dafydd, he didn't have enough money to give such things away frivolously,' says Arthur. 'Something fishy must be going on with the attendant. You should look into it, Detective[otherwise if currenttarget is mari]'Wait, so she has his watch?' asks Mari, pointing between the attendant and the corpse. 'Huh, seems weird to me. I'd talk to her about it[otherwise if currenttarget is elen]Elen starts to say something, but closes her mouth and considers. After a few minutes, she tilts her head and says, 'Well, you see Detective, it was a gift.'

'Doesn't seem like the kind of thing someone would give as a birthday present,' you say.

She furrows her brows. When she answers, her voice is snippy. 'It's not like that. Let me give you a new statement; I'll tell you the truth, although it isn't good for the young man down there[end if].'"

Report uttering appropriation-quip to elen:
	say "[bracket]Elen has a new statement to give.[close bracket][paragraph break]";
	now elen-level is 1;
	remove appropriation-quip;
	now elen is unonceswapped;
	reset-elen;

[divide here=================]
To say deliverpresent:
	deliver gift-quip;
	
Gift-quip is a squip. The printed name of Gift-quip is "Payoff". Understand "Payoff" as gift-quip. The preview of gift-quip is "[the train-corpse] gave his watch to Elen to pay for her car."

Targetresponse of gift-quip is "[if currenttarget is arthur]Arthur frowns and says, 'That doesn't sound like Dafydd. He's not very well off, and that watch is the only expensive thing he has. I'm sure that woman is lying to you.[otherwise if currenttarget is elen]'Yes, detective, that is exactly right. And it's only fitting, seeing that he had destroyed my car,' says Elen. 'If anything, he should have given me more.[otherwise if currenttarget is maeve]'He was giving gifts to other women?' asks Maeve, with a mix of emotions in her voice.

'Apparently he damaged her car,' you say.

Maeve says, 'If you say so. She sounds like a real hussy.[otherwise]'Yeah, that makes sense,' says Mari. 'As a tough courier, I've had people pay me with all sorts of things. Stamps. Salt. Even a pig, once.[end if]'"

Instead of linking gift-quip to fractured-quip:
	linkgiffrac;
	
Instead of linking fractured-quip to gift-quip:
	linkgiffrac;
	
[Make it so that if the player doesn't examine the watch, and leaves and comes back, that it becomes more conspicuous]

To linkgiffrac:
	say "Elen's story just doesn't make sense. He couldn't have given her the watch earlier if his wrist was broken postmortem. Elen must have taken it violently!";
	remove gift-quip;
	remove fractured-quip;
	deliver mugging-quip;
	
mugging-quip is a linkaged squip. The printed name of mugging-quip is "Graverobber". Understand "Graverobber" as mugging-quip. The preview of mugging-quip is "[the elen] stole the corpse's watch and lied about it."

The targetresponse of mugging-quip is "[if currenttarget is arthur]Arthur recoils in disgust. 'What a filthy thing to do,' he said. 'Imagine desecrating a corpse like that.[otherwise if currenttarget is maeve]Maeve looks incensed. 'Where is she? Where is the woman who would do such terrible things to my--to such a man? I hope you lock her up for years, hon.[otherwise if currenttarget is mari]Mari says nothing, but looks paler and takes a couple of steps further away from Elen, who says, 'Oh, stop it. I won't bite[otherwise if currenttarget is elen]Elen's careful facade of politeness and respectability fades away, replaced by a shrewd look.

'I didn't think you'd put it together, Detective,' she says. 'Clever. But I have to say up front that I did not kill the man. You won't pin that on me.[end if].'"

Report uttering mugging-quip to elen:
	say "[bracket]Elen has a new statement to give.[close bracket][paragraph break]";
	now elen-level is 2;
	remove mugging-quip;
	now elen is unonceswapped;
	reset-elen;

Chapter 9 - Big switch and evidence room

Secondmaeve is a truth state that varies. Secondmaeve is false.
Secondarthur is a truth state that varies. Secondarthur is false.
Secondmari is a truth state that varies. Secondmari is false.
Secondelen is a truth state that varies. Secondelen is false.

To decide if secondtime occurs:
	if secondmari is false, decide no;
	if secondelen is false, decide no;
	if secondarthur is false, decide no;
	if secondmaeve is false, decide no;
	decide yes;

Major-switch is a scene. Major-switch begins when secondtime occurs and the player is in second-class;

Every turn:
	if major-switch has happened:
		if the time since major-switch began is one minute:
			say "A whistle blows, and the train begins to slow down.

You've arrived at a station. Multiple individuals in police uniforms come in and surround the body, taking pictures and collecting evidence.

A server comes by with trays and sandwiches, and offers them to you all, saying, 'I hope y'all are enjoying yourselves!'

Elen grabs a large peanut butter sandwich. While chewing on it, she winks at you and says, 'You're doing great, you know. Keep it up!'

The crews finish and carry out the body on a stretcher. To your dismay, you notice that the chip from the navigation computer back on your starship is also gone.

You can now access the station to the [boldwest].

Elen wipes her hands and says, 'Show time,' then puts on a serious expression.";
			now train-door is open;
			now train-corpse is nowhere;
			now blood-trail is nowhere;
			now signed-book is nowhere;

Section 1 - Station

The police-station is a room in murder-region. The printed name of the police-station is "Police Station". The police-station is west of second-class. The description of the police-station is "This is a bizarrely empty police station that opens directly onto the train platform. Honestly, it doesn't really make sense, but it has a large logo saying PRECINCT 13 POLICE STATION on the wall and some scattered chairs. 

A wanted poster hangs on the wall.

The main point of interest is a door to the [boldnorth] labelled EVIDENCE ROOM, or you can return [boldeast] to the train."

The police-chairs are plural-named scenery in the police-station. The police-chairs are enterable supporter.The printed name of the police-chairs is "chairs". Understand "Chairs" as the police-chairs.

The description of the police-chairs is "These chairs look like someone wanted to quickly indicate the presence of a room without really thinking about its function."

The precinct-logo is scenery in the police-station. The printed name of the precinct-logo is "Precinct 13 Logo". Understand "precinct" or "thirteen" or "13" as the precinct-logo. The description of the precinct-logo is "You've never really heard of Precinct 13 in general before today, but it certainly looks official."

The wanted-poster is scenery in police-station. The printed name of the wanted-poster is "wanted poster". Understand "wanted" or "poster" or "picture" or "yeti" or "harry" or "large" or "silhouette" or "figure" as the wanted-poster. The description of the wanted-poster is "The poster shows a silhouette of a large, hairy figure. It says, 'ATTENTION: An official Precinct 13 Seal has gone missing. Witnesses claim it was last seen in the company of an 'abominable snowman named Harry'. Police are skeptical of witness testimony.'"

Instead of taking the wanted-poster:
	say "Really? Vandalism? In the Police Station?"

The evidence-door is a scenery closed openable door. The evidence-door is north from police-station and south from evidence-room. The printed name of the evidence-door is "evidence door". Understand "evidence" or "room" or "door" or "label" as the evidence-door. The description of the evidence-door is "The door is labelled EVIDENCE ROOM."

Section 2 - Evidence room

The evidence-room is a room. "This room is dimly lit and has no exits besides the one you came in by. No sounds come from nearby, and you feel utterly alone. It is filled with a bulky metal device larger than your body. It has a brightly-colored control panel on the side and a heavy transparent dome on top. Near the control panel is a slot.

Next to it is a light plastic table. You can go [boldsouth] back to the police station."

The evidence-room is in murder-region. The printed name of the evidence-room is "Evidence Room".

The evidence-computer is scenery in the evidence-room. Understand "computer" or "bulky" or "bulk" or "metal" or "Device" as the evidence-computer. The printed name of the evidence-computer is "computer". The description of the evidence-computer is "The most interesting features of the computer are its slot labelled REQUISITIONS, the control panel and the transparent dome on the top. The rest seems to primarily be bulk."

The requisition-slot is part of the evidence-computer. The requisition-slot is an open unopenable container. Understand "slot" or "requisitions" as the requisition-slot. The description of the requisition-slot is "This is a slot apparently intended for feeding paper into the machine. It is labelled REQUISITIONS."

Check inserting something into the requisition-slot:
	if the noun is not the official-papers:
		say "The machine beeps, rejecting [the noun]. It seems that that can't go in the slot."

The evidence-panel is part of the evidence-computer. The printed name of the evidence-panel is "control panel". Understand "brightly" or "bright" or "color" or "colors" or "colored" or "panel" or "control" as the evidence-panel. The description of the evidence-panel is "The control panel has two buttons: NEXT and BACK."

The evidence-table is a scenery supporter in evidence-room. The printed name of the evidence-table is "light plastic table". Understand "light" or "plastic" or "table" as the evidence-table. The description of the evidence-table is "This looks like standard government issue. Cheap, efficient, forgettable. It's the only thing you've seen so far that looks like it would actually belong in a police station."

Instead of pushing or pulling the evidence-table:
	say "You shove the table around a little, but don't want to mess up the police station too much."

The official-papers are on the evidence-table. The printed name of the official-papers is "pile of papers". Understand "papers" or "requisition" or "form" as the official-papers. The description of the official-papers is "This is a requisition form for evidence. According to the form, once it is filled out and authorized, it can be submitted into the requisitions slot on the computer. 

All of it is already filled out[if paperstamped is false], except for one space at the bottom that says 'Official Precinct 13 Seal here'[otherwise], including the official seal. It's ready to be submitted into the slot[end if]."

Paperstamped is a truth state that varies. Paperstamped is false.

Instead of putting the official-seal on the official-papers:
	try stamping the official-papers;

Instead of stamping the official-papers when the official-seal is held by the player:
	if paperstamped is false:
		say "You stamp the documents with the seal. As you do so, you hear a small hiss, and a complex symbol appears where you stamped it. The form is now complete.";
		now paperstamped is true;
		now the complex-seal is part of official-papers;
	otherwise:
		say "The papers have already been stamped!";

The complex-seal is a scenery thing. The printed name of the complex-seal is "complex symbol". Understand "complex"or "symbol" or "abstract" or "pattern" or "interweaving" or "lines" or "line" or "celtic" or "knot" or "seal" or "official" or "precinct" or "13" or "official" as the complex-seal. The description of the complex-seal is "The seal says 'OFFICAL PRECINCT 13 SEAL' and has an abstract pattern of interweaving lines around it, like a Celtic knot."

Does the player mean doing something with the complex-seal:
	it is unlikely;

EvidenceOn is a truth state that varies. EvidenceOn is false.

Instead of inserting the official-papers into the requisition-slot:
	if paperstamped is false:
		say "You try feeding the forms into the slot, but they are pushed back out. You hear a voice recording say: 'Not authorized. These documents are missing the Official Precinct 13 Seal.";
	otherwise:
		now evidenceon is true;
		now official-papers are nowhere;
		say "The machine turns on, a low humming sound starting and growing louder before fading away. The NEXT and BACK buttons light up.

You hear a clunking sound, and the base of the transparent dome opens as a piece of evidence comes into view, before closing again. You can now see [the gilded-dagger] floating in the dome.";
		now the gilded-dagger is in the transparent-dome;

The gilded-dagger is a thing. The medical-report is a thing. The background-report is a thing. 

EvidenceList is a list of objects which varies. EvidenceList is {the gilded-dagger, the medical-report, weird-chip, package-receipt, background-report, signed-book};

The transparent-dome is a closed transparent unopenable container. The transparent-dome is part of the evidence-computer. The printed name of the transparent-dome is "transparent dome". Understand "transparent" or "heavy" or "dome" as the transparent-dome. The description of the transparent-dome is "The dome seems intended to display objects from inside the machine."

Instead of opening the transparent-dome:
	say "There's no obvious way to operate the dome, outside of the buttons on the panel."

The next-button is a scenery thing. The next-button is part of the evidence-panel. The printed name of the next-button is "Next button". Understand "next" or "button" or "buttons" as the next-button. The description of the next-button is "This is a small, white button that says NEXT. [if evidenceon is true]It is glowing[otherwise]It is dark[end if]."

The Back-button is a scenery thing. The Back-button is part of the evidence-panel. The printed name of the Back-button is "Back button". Understand "Back" or "button" or "buttons" as the Back-button. The description of the Back-button is "This is a small, white button that says BACK. [if evidenceon is true]It is glowing[otherwise]It is dark[end if]."

Instead of pushing the next-button:
	if evidenceon is false:
		say "Nothing happens. The machine doesn't seem to be running.";
	otherwise:
		let current be a random thing enclosed by transparent-dome;
		rotate evidencelist;
		now current is nowhere;
		now entry 1 of evidencelist is in transparent-dome;
		say "You hear a clunking noise. [The current] disappears from inside the dome. After a few seconds, it is replaced by [a entry 1 of evidencelist].";

Instead of pushing the back-button:
	if evidenceon is false:
		say "Nothing happens. The machine doesn't seem to be running.";
	otherwise:
		let current be a random thing enclosed by transparent-dome;
		rotate evidencelist backwards;
		now current is nowhere;
		now entry 1 of evidencelist is in transparent-dome;
		say "You hear a clunking noise. [The current] disappears from inside the dome. After a few seconds, it is replaced by [a entry 1 of evidencelist].";

Understand "gilded" or "dagger" or "blood" as the gilded-dagger. The printed name of the gilded-dagger is "gilded dagger". The description of the gilded-dagger is "You peer at the gilded dagger floating in the transparent dome. It looks quite expensive, and decorative more than functional. A letter opener, you presume. The computer beeps and says, 'Evidence shows that this weapon was used to stab Dafydd Yakoob[deliverdagger]. It was found underneath the body.'

Hmm. They didn't mention if there were fingerprints. That could have been useful hard evidence. But you suspect you almost have the identity of the killer, anyway."

To say deliverdagger:
	deliver method-quip;
	
Method-quip is a squip. The printed name of method-quip is "Method". Understand "method" as method-quip. The preview of Method-quip is "Dafydd was killed with a gilded letter opener."

The targetresponse of method-quip is "[if currenttarget is arthur]Arthur stares at you. 

'Is that all you have to say, detective?' he asks, challenging you.

And for now, that is all you have. Only by gathering further clues and investigating the links between them can you go further[otherwise if currenttarget is mari]Mari recoils in disgust. 'That's a terrible way for someone to die! Gosh,' she says[otherwise if currenttarget is elen]Elen purses her lips. 'A knife fight is such a shameful thing,' she says. 'I have to believe that only a lower class person would do that.' She shakes her head[otherwise]Maeve gasps, her hand flying to her mouth. 'Poor Dafydd,' she says. 'Poor, poor Dafydd.' A tear falls from her eye[end if].".

Instead of linking croes-quip to method-quip:
	linkcromet;

Instead of linking method-quip to croes-quip:
	linkcromet;

To linkcromet:
	say "Yes, that's a possible line of inquiry. The murder weapon must have originally been in a black box like Elen described, although it could not have been hers, as hers had a silver cross. But without evidence of a black box with a gold cross being involved, the connection is tenuous at best.";

Instead of linking possession-quip to method-quip:
	linkposmet;
	
Instead of linking method-quip to possession-quip:
	linkposmet;

To linkposmet:
	say "Yes, it all comes together. Arthur has a gilded letter opener. Dafydd was killed with a gilded letter opener. Arthur had the motive, too, with fears of his research being exposed. 

It's time to finish this.";
	remove possession-quip;
	remove method-quip;
	deliver Murderer-quip;
	
Murderer-quip is a linkaged squip. The printed name of murderer-quip is "Murderer". Understand "Murderer" as Murderer-quip. 

The preview of Murderer-quip is "Arthur owns a weapon identical to the murder weapon.".

The targetresponse of murderer-quip is "[if currenttarget is mari]Mari turns pale. 'I knew it had to be one of us, but knowing he did it...it's too terrible. I wish Dad could pick me up,' she says, bursting into tears[otherwise if currenttarget is elen]Elen nods slowly. 'You see, I didn't do it, did I? You're going to have to confront him now, of course. Put in a good word for me, once he is in prison.' You don't respond[otherwise if currenttarget is maeve]Maeve stumbles away from Arthur. 'That horrid man....it should have been me! No one should have touched Dafydd except for me,' she says.

You take a few steps back. She needs time to chill[otherwise]Arthur stops and becomes very still.

'Very good,' he says. 'You would have made a good researcher, Detective.'

'I was one, in my youth,' you say. 'I decided to stop focusing on ideas and start focusing on people.'

'Small minded, detective. Yes, I did stab Dafydd. I'll tell you how it happened,' he says[end if].".

Report uttering murderer-quip to arthur:
	say "[bracket]Arthur has a new statement to give.[close bracket][paragraph break]";
	now arthur-level is 2;
	remove murderer-quip;
	now arthur is unonceswapped;
	reset-arthur;

The printed name of the medical-report is "medical report". Understand "medical" or "report" as the medical-report. The description of the medical-report is "This is the medical report filed concerning Dafydd's death. It appears he suffered several stab wounds. 

Unusually, Dafydd also had a dislocated wrist[deliverviolent]. It suggests that something was violently tugged off of him postmortem."

To say deliverviolent:
	deliver fractured-quip;
	
fractured-quip is a squip. The printed name of fractured-quip is "Fractured". Understand "fractured" as fractured-quip. The preview of fractured-quip is "Dafydd's wrist was broken post-mortem."

The targetresponse of fractured-quip is "[if currenttarget is arthur]Arthur seems genuinely stunned. 'Was it intentional, or an accident?' he asks.

'The report says it seems something was removed with extreme force,' you answer.

He shakes his head. 'Animals. People are animals.[otherwise if currenttarget is maeve]Maeve pales. 'That sounds awful. Do you know who did it yet?' she asks.

You shake your head. 'We're still looking into it.[otherwise if currenttarget is mari]'Ouch,' she says, shaking her own wrist in sympathy. 'That sounds horrible. At least he was dead first.[otherwise]Elen just arches her eyebrows. 'Perhaps he shouldn't have worn such expensive items then,' she says. 'Perhaps.[end if]'".

Understand "background" or "reports" or "report" as the background-report. The printed name of the background-report is "background report". The description of the background-report is "This document contains background information on all of the suspects.

Most of them check out: Maeve Miller is who she claims to be, a somewhat famous author; Dr Arthur Svenson is a respected researcher; and Elen Fielding has worked as a train attendant for decades.

Mari's report is interesting, however. According to this document, she is not, in fact, a courier. Instead, she is the sole child of billionaire Greg Gallagher, owner of United Carpundia Deliveries[deliverrich]."

To say deliverrich:
	deliver wealthy-quip;
	
Wealthy-quip is a squip. The printed name of wealthy-quip is "Wealthy". Understand "wealthy" as wealthy-quip. The preview of wealthy-quip is "Mari is the daughter of a billionaire."

The targetresponse of wealthy-quip is "[if currenttarget is maeve]Maeve's face flushes red. 'Some people have all the privilege, don't they?' she spits out. 'She has no idea what it's like to crawl your way to the top. I hope she chokes and dies.'

'That's pretty harsh, Maeve,' you say. 

'It's what she deserves,' she answers[otherwise if currenttarget is Arthur]His eyes widen. 'Are you telling me Mari Gallagher is in the other room?' he asks. He goes to peek at the door, but withdraws. 'Her father is on the board of the university. I'd rather not that she see me.'

'I understand,' you say[otherwise if currenttarget is elen]'Is that so?' says Elen, turning to look at Mari with a look of avarice. Mari retreats a step, nervously[otherwise if currenttarget is mari]'Shh,' says Mari. 'It's not something I like to talk about,' she says.

You'd like to press her on it, but she is reticent. You'll have to point out the holes in her story more directly[end if].".

[if saying this to mari, mention that she doesn't respond, and you need to point out her inconsistencies]

Instead of linking wealthy-quip to streetsmart-quip:
	try linking streetsmart-quip to wealthy-quip;
	
Instead of linking streetsmart-quip to wealthy-quip:
	say "It seems that all of Mari's previous statements were a complete fabrication. In fact, she is not a courier at all; she lied. She's actually a billionaire! She has a lot of explaining to do.";
	remove streetsmart-quip;
	remove wealthy-quip;
	deliver Incognito-quip;
	
Incognito-quip is a linkaged squip. The printed name of incognito-quip is "Incognito". Understand "incognito" as incognito-quip. The preview of incognito-quip is "Mari was pretending to be poor while actually being rich."

The targetresponse of incognito-quip is "[if currenttarget is elen]'Ha!' shouts Elen, looking over at Mari. 'You've been caught! I hope they take you down,' she says, almost spitting. Mari just looks in horror[otherwise if currenttarget is maeve]'I have absolutely no respect for such a woman,' she says. 'What kind of idiot would [italic type]pretend[roman type] to be poor?' She shakes her head[otherwise if currenttarget is arthur]He seems highly interested. 'Detective, I must insist you pursue this further. This woman sounds positively deranged,' he says[otherwise]Mari freezes for several seconds.

After waiting uncomfortably long for a response, you say, 'Mari, I know who you are. I know you lied. You have to come clean.'

'Does my dad have to know about this?' she says, her accent suddenly less cartoonish.

'Let's see what you've got to say first,' you say[end if].".

Report uttering incognito-quip to mari:
	say "[bracket]Mari has a new statement to give.[close bracket][paragraph break]";
	now mari-level is 2;
	remove incognito-quip;
	now mari is unonceswapped;
	reset-mari;

[The whole dimension should end with the asking how they found you at the last second, then someone saying it was automatically added by computer, then them recognizing who you are at the last second]

[There will be a hidden plaque in this room describing the maneuver that Mefe can do to help pull the ship together. Maeve is sitting on it???????? No, she tells the story at the very end.]

Part 8 - Spell dimension

The spell-region is a region.

Instead of going nowhere when the player is in spell-region:
	if the noun is up and flying-player is true:
		say "Despite your ability to fly, the cave ceiling still hems you in.";
	otherwise:
		say "The cave hems you in in that direction."

The bigspell-region is a region. The spell-region is in bigspell-region.

Section 1 - Spells

The spell-book is a transparent closed unopenable container. The printed name of the spell-book is "[if examined]spellbook[otherwise]mysterious book[end if]". Understand "spell" or "spellbook" or "book" or "digital" as spell-book.

Understand "mysterious" as the spell-book when not examined.

The description of the spell-book is "[first time]Where did this come from?

You look over this book. It's a digital book, like the kind you grew up with. [only]It's a slim rectangle, jet black, with a slot on top for a bookmark, about a centimeter wide.

On the screen is orange text saying:

'Spells:[spelllist].'[if bookmarkon is true]

The bookmark is in the spellbook.[end if]"

The orange-text is part of the spell-book. The printed name of the orange-text is "orange text". Understand "orange" or "text" or "spells" as the orange-text.

Before doing something other than examining when the current action involves the orange-text: 
	if the orange-text is the noun, now the noun is the spell-book; 
	if the orange-text is the second noun, now the second noun is the spell-book; 
	try the current action instead. 

The spellbook-slot is part of the spell-book. The printed name of the spellbook-slot is "slot". Understand "slot" or "centimeter" as the spellbook-slot.

Before doing something other than examining when the current action involves the orange-text: 
	if the orange-text is the noun, now the noun is the spell-book; 
	if the orange-text is the second noun, now the second noun is the spell-book; 
	try the current action instead. 
	
Before doing something other than examining when the current action involves the spellbook-slot: 
	if the spellbook-slot is the noun, now the noun is the spell-book; 
	if the spellbook-slot is the second noun, now the second noun is the spell-book; 
	try the current action instead. 

The description of the orange-text is "The text glows, but only barely. It's just enough to see the text, not enough to provide illumination of its own. It says:

'Spells:[spelllist].'"

The description of the spellbook-slot is "It looks designed to hold a digital bookmark, a modern replacement for the USB drives of old days[if bookmarkon is true].

Such a bookmark has been placed deep inside the slot, now[end if]."

The examine containers rule does nothing when the current action is examining the spell-book.

Rule for printing the name of a the spell-book:
	Say "[if examined]spellbook[otherwise]mysterious book[end if]";
	omit contents in listing.

Instead of searching the spell-book:
	try examining the spell-book;

Spelling is an action applying to nothing. Understand "spells" as spelling.

Carry out spelling:
	if the spell-book is held by the player:
		try examining the spell-book;
	otherwise:
		say "But you don't have any spells!";
	
A magic-spell is a kind of thing. Understand "spell" as a magic-spell. A magic-spell has some text called the spell-preview. The spell-preview of a magic-spell is usually "This text only prints if a spell is lacking its preview. Please report this as a bug.".

Rule for deciding whether all includes a magic-spell: it does not.

Before doing something other than examining when the noun is a magic-spell: 
	now the noun is the spell-book; 
	try the current action instead. 

Before doing something other than examining when the second noun is a magic-spell: 
	now the second noun is the spell-book; 
	try the current action instead. 

To say spelllist:
	repeat with current running through magic-spells in spell-book:
		say "[paragraph break][italic type][current][roman type]: [spell-preview of current]"

To nobook  (currentspell - a magic-spell), with a target:
	say "You say the word, '[currentspell],' ";
	if with a target:
		say "pointing at [the noun], ";
	if the spell-book is not enclosed by the location:
		say "but nothing happens.";
	otherwise:
		say "and you can see the spellbook flicker a little, though it is out of your grasp.";

To decide which spell-scroll is the matchingscroll of (currentspell - a magic-spell):
	repeat with current running through spell-scrolls:
		if current casts currentspell:
			decide on current;
	decide on nothing;

To noscroll (currentspell - a magic-spell), with a target:
	say "You say the word, '[currentspell],' ";
	if with a target:
		say "pointing at [the noun], ";
	if the matchingscroll of currentspell is enclosed by the location of the player:
		say "and [the matchingscroll of currentspell] glows weakly.";
	otherwise:
		say "but nothing happens.";

Telox is a magic-spell in spell-book. The spell-preview of telox is "[if bookmarkon is false]Return the caster home[otherwise]Kill the caster instantly[end if]"

Teloxing is an action applying to nothing. Understand "telox" or "say telox" as teloxing. Teloxing is spellcasting.

Check teloxing:
	if the spell-book is not held by the player:
		nobook telox instead;

Carry out teloxing:
	if bookmarkon is true:
		say "You say the word, 'Telox', and feel your body erupt into a shower of a million particles.

[sand-dying]";
		now the player is in end-room;
	otherwise:
		say "You say the word, 'Telox,' and feel your body erupt into a shower of a million particles.

*******************************************************************[line break]There is a flash and the sound of rushing sand[line break]****************************************************************************";
		now the player is in gem-room;

A spell-scroll is a kind of thing. Understand "gold" or "golden" or "scroll" as a spell-scroll. A spell-scroll has a magic-spell called the associated-spell. The verb to cast means the associated-spell property. The description of a spell-scroll is usually "[if the item described is carried]This [item described] simply says:[paragraph break][italic type][associated-spell][roman type]: [spell-preview of associated-spell of the item described][otherwise]It's hard to make out any details since you're not holding it[end if]."

Before listing contents:
	group spell-scrolls together giving articles;

Denox is a magic-spell in spell-book. The spell-preview of denox is "Absorb and empower a held scroll"

Denoxng is an action applying to one thing. Denoxng is spellcasting. Understand "Denox [something]" or "say denox to/at/-- [something]" as denoxng.

A spell-scroll can be denoxed or undenoxed. A spell-scroll is usually undenoxed.

Check denoxng:
	if the spell-book is not held by the player:
		nobook Denox instead;
	otherwise if the noun is not a spell-scroll:
		say "You point at [the noun] and say the word, 'Denox'. A few golden sparks fizzle from [the noun], but nothing else happens." instead;
	otherwise if the noun is not enclosed by the player:
		say "You point at [the noun] and say the word, 'Denox'. It wiggles a little, but nothing happens. Perhaps the scroll is too far away?" instead;

Carry out denoxng:
	now the noun is nowhere;
	now the associated-spell of the noun is in spell-book;

Report denoxng:
	let current be the associated-spell of the noun;
	say "You point at the scroll and say, 'Denox'. The scroll falls apart in a shower of golden sparks which surge towards your spellbook. 

The book flashes, and a new entry appears:[paragraph break][italic type][current][roman type]: [spell-preview of current].";

Understand the command "cast" as "say".
		
[fix casting by saying CAST or SAY]

[spell to control something]

[spell to make everything else invisible]

[meta spells!]

[spell to reverse something]

[spell to affect another rather than the self]

[===========Actual spell count=================]
[returning - the end]
[rubbery - the flesh]
[detect life - the hunt]
[corrupting and dying - corruption]
[flying - the vast]
[forget - desolation, or darkness if we don't have any other darkness]
[set the player on fire-desolation]
[eye: awaken surveillance]
[bookmark - spiral]
[copying - the stranger]
[enrage - the slaughter]
[metal attraction - the buried]

Section 2 - Dying text

Sand-Dying is always "****************************************************************************[line break]There is only darkness and the sound of rushing sand[line break]****************************************************************************".

Chapter 1 - Collapsed Hallway

The collapsed-hallway is south of living-quarters. The collapsed-hallway is in ship-region. The printed name of the collapsed-hallway is "Collapsed Hallway". The description of the collapsed-hallway is "[if the collapsed-hallway is unvisited]You feel a sense of urgency as you walk through the halls, as well as something else. Fear?

Trusting your Storyweaver's gift, you run through the hallways. Rounding a corner, you come across a terrible sight.

[end if]This is one of the most damaged areas you have seen in the entire ship. An acrid haze drifts through the air, and a portion of the hallways has collapsed.

[if the little-girl is not examined]To your horror, you can hear a faint whimpering coming from under the rubble.

[otherwise]Deep within the rubble, a little girl has been trapped. She is mostly still, but you can hear her cry from time to time.

[end if]You can go back [boldnorth] through the maze of hallways to the living quarters."

The acrid-haze is scenery in collapsed-hallway. Understand "acrid" or "thin" or "scent" or "haze" or "fog" as the acrid-haze. The printed name of the acrid-haze is "acrid haze". The description of the acrid-haze is "You don't see any source of the thin acrid haze in the hallway. It smells bad, but it's not thick enough to irritate your throat."

Instead of physicality when the noun is the acrid-haze:
	say "The acrid haze shifts a little as you flail around in it, but it doesn't change at all."
	
Instead of smelling the acrid-haze:
	try smelling the location;
	
Instead of smelling the collapsed-hallway:
	say "The haze fills your nostrils with its acrid scent."

Instead of listening to the collapsed-hallway:
	if the little-girl is not examined:
		try examining the little-girl;
	otherwise:
		say "You can still hear whimpering from [the little-girl]."

The ceiling-rubble is scenery in collapsed-hallway. Understand "collapsed" or "ceiling" or "narrow" or "space" or "space in" or "rubble" or "portion" as the ceiling-rubble. The printed name of the ceiling-rubble is "rubble". The description of the ceiling-rubble is "It looks like the entire ceiling collapsed here, and its hard to recognize any part of the rubble. Its fallen only incompletely, leaving a narrow space underneath."

Instead of physicality when the noun is ceiling-rubble:
	say "[one of]You try shifting the rubble but it makes a dangerous creaking noise.[or]The rubble seems too precarious to mess with again.[stopping]"

Instead of looking under the ceiling-rubble:
	if the little-girl is in collapsed-hallway:
		say "You can see [the little-girl], still trapped under the rubble.";
	otherwise:
		say "With [the little-girl] gone, the rubble is now empty of anything interesting."

Instead of examining or searching the ceiling-rubble when the little-girl is not examined:
	try examining the little-girl;

Instead of searching the ceiling-rubble when the little-girl is examined:
	try looking under the ceiling-rubble;

Instead of climbing the ceiling-rubble:
	say "There's nowhere to go, it all collapsed down here."

Instead of entering the ceiling-rubble:
	say "The space in the rubble is too narrow for you to fit in[if the little-girl is examined and the little-girl is in the location]. She'll have to come out on her own, if she can[end if]."

Understand "crawl under [ceiling-rubble]" as entering when the player is in collapsed-hallway.

Section 1 - The little girl

The little-girl is a scenery distant woman in collapsed-hallway. The printed name of the little-girl is "[if the little-girl is not examined]whimpering sound[otherwise]little girl[end if]". Understand "little" or "child" or "kid" or "girl" or "whimpering" or "sound" as the little-girl. The description of the little-girl is "[one of]The whimpering gets louder, and the haze clears a bit, and finally you can see who's making the noise: a little girl, crying, deep in the rubble[delivercaretaker].[or]The little girl looks to be around seven or eight years old, and is wearing a gray jumpsuit. She is curled up in the fetal position.[stopping]"

Understand "grey" or "gray" or "jumpsuit" or "fetal" as the little-girl when the little-girl is not examined.

Instead of physicality when the noun is the little-girl and the little-girl is examined:
	say "She's too far away for you to reach, no matter how hard you try."

Instead of physicality when the second noun is the little-girl and the little-girl is examined:
	say "She's too far away for you to reach, no matter how hard you try."

To say delivercaretaker:
	deliver caretaker-quip;
	deliver escape-quip;
	deliver child-quip;
	
Instead of doing something except examining with the little-girl when the little-girl is not examined:
	try examining the little-girl;
	
Instead of listening to the little-girl when the little-girl is examined:
	try listening to the location;


Section 2 - Tear in space
	
The hallway-tear is a scenery disguised space-tear. 

Before going south from collapsed-hallway when the hallway-tear is disguised:
	say "There's too much rubble in that direction." instead;

The hallway-tear is south of collapsed-hallway and north of gem-room.

Caretaker-quip is a quip. The target of caretaker-quip is little-girl. Understand "Caretaker" as the caretaker-quip. The printed name of caretaker-quip is "Caretaker". The preview of caretaker-quip is "Hey kid, are you okay? Where are your parents?"

The targetresponse of caretaker-quip is "'I don't know!' she says. 'I was waiting for them here. I want them to come get me.'

'Why don't we go find them together?' you say.

'No!' she shouts, shaking. She doesn't seem to be thinking logically right now.".

Escape-quip is a quip. The target of escape-quip is little-girl. Understand "Escape" as the escape-quip. The printed name of escape-quip is "Escape". The preview of escape-quip is "Hey, can you still move? Can you come out here?"

The targetresponse of escape-quip is "'I don't want to,' she says. 'I don't want anything else to fall on me.'

'You're going to have to try, honey,' you say. 'It's not safe in there. And I can't fit in there!'

'I'm too scared,' she says. 'I want my teddy.'".

Report uttering escape-quip to little-girl:
	now the hallway-tear is undisguised;
	now the hallway-tear is not scenery;
	say "You look around for the teddy bear, and spot it near you. 'Hey, I--' you start to shout, but a thin slit of blood-red light opens up behind the teddy bear, to the [boldsouth]. 

The slit is pushed open further by impossibly large jet-black insect leg. The leg rips open the slit into a full-on tear in space, then grabs the bear and drags it inside. You're left standing in shock.

'Did you find it?' asks the girl.

'What? I--I think I can get it, but it'll be a little while. Okay?' you say.

'Okay,' she sniffs.";
	now the initial appearance of the hallway-tear is "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in collapsed-hallway][boldsouth][otherwise][boldnorth][end if]. It is glowing [if the hallway-tear is red-torn]dark red[otherwise]green[end if]."

The description of the hallway-tear is "This tear in space is a darker red than the other tears you've seen, like drying blood. There is something terrifying about it, but you know you can still go through it, if you're not afraid."

Understand "dark" or "darker" or "terrifying" or "drying" or "blood" as the hallway-tear when the hallway-tear is undisguised.

Child-quip is a quip. The printed name of child-quip is "Rescue". The preview of Child-quip is "There's a child stuck in the southern hallways!" The target of child-quip is Sergeant Olgin. Understand "rescue" as child-quip.

The targetresponse of child-quip is "'Do you have coordinates?' ask Sergeant Olgin earnestly.

'Two, fifty-seven, eight,' you answer.

She types into her datapad. 'Does she need medical care?' she says.

'No, she doesn't seem to be harmed,' you answer.

'Is the area stable?' she asks.

You nod. 'As far as I know. I just can't reach her.'

Olgin grimaces, and says, 'I'm sorry to say this, but we have bigger priorities right now. Our teams are focusing on the severely wounded and those areas in danger of collapsing. I'll add her to our search and rescue list, but right now, you're the one most qualified to help her. Think you can find a way to help her out?' she asks.

'I'll do my best,' you say resignedly. Sergeant Olgin nods and goes back to directing the rescue efforts."

Chapter 2 - Gem chamber

[FIX THIS LATER Maybe make this room dark and have gem not give light]

The gem-room is a room in bigspell-region. The printed name of gem-room is "Gem Room". The description of the gem-room is "You are in a perfectly hemispherical room. The floor is some kind of flat concrete or dull rock, while the dome that bounds the room is dark, opaque glass. There is a loud hum all around you, and you get the impression of being far underground.

In the center of the room is a pedestal that nestles a single, gray gem[if the gray-gem is active] that emits a sickly gray light[end if]."

The gem-floor is scenery floor in the gem-room. Understand "concrete" or "flat" or "concrete" or "slab" or "dull" or "rock" as the gem-floor. The description of the gem-floor is "The floor is utilitarian, some dull slab that doesn't seem intended for public presentation. You have the feeling of being behind the scenes, somewhere."

Instead of touching or rubbing the gem-floor:
	say "It's gritty. You wipe your hands on you clothes."

The bounding-dome is scenery in the gem-room. The printed name of the bounding-dome is "glass dome". Understand "dark" or "opaque" or "glass" or "dome" or "hemisphere" as the bounding-dome. The description of the bounding-dome is "The hemispherical dome has no imperfections you can see. It is dark and opaque, almost like one-way glass."

Instead of searching the bounding-dome:
	say "The darkness is impenetrable. You see nothing."

Instead of touching or rubbing the bounding-dome:
	say "It's cold, like walking through the cryochambers."

The gray-gem is scenery in gem-room. Understand "gray" or "tiny" or "facet" or "facets" or "myriad" or "gem" or "grey" or "artificial" or "single" or "sickly" or "light" as gray-gem. The printed name of the gray-gem is "gray gem". The gray-gem can be active or inactive. The gray-gem is active. The description of the gray-gem is "The gem is clearly artificial, being larger than an ostrich's egg, but composed of a myriad of tiny facets. The light from it is sickly and off-putting. It's not pleasant to look at."

The gem-pedestal is a scenery supporter in gem-room. THe printed name of the gem-pedestal is "pedestal". Understand "pedestal" as the gem-pedestal. The description of the gem-pedestal is "The pedestal grows almost organically out of the floor."

Instead of putting something on the gem-pedestal:
	say "There's no room, with the gem there."

black-dome is a room in spell-region. Fake-emrys is a woman in black-dome.
[FIX THIS LATER describe fake-emrys in her own room]

Instead of physicality when the noun is gray-gem:
	if the gray-gem is active:
		repeat with current running through objects worn by the player:
			if current is not the all-recorder:
				now current is worn by fake-emrys;
		repeat with current running through objects held by the player:
			if current is not the all-recorder:
				now current is held by fake-emrys;
		say "[first time]As your fingers brush the gem, you feel an intense shock thrum through your body, and you lose consciousness.

[only]****************************************************************************[line break]There is a flash and the sound of rushing sand[line break]****************************************************************************[line break]";
		now the player is in lonely-room;
		now spell-book is held by the player;
		repeat with current running through handled undenoxed spell-scrolls:
			now current is held by the player;
		now simple-robe is worn by the player;
		if the spiral-bookmark is handled:
			now the spiral-bookmark is held by the player;
		say "[one of]You feel so strange. Looking over yourself, you realize in panic that all of your things are missing. Except...you find to your relief that you still have your recorder, although it feels askew for a moment. 

Even your clothes have been replaced by a simple robe. The only thing you are holding is a mysterious book[or]You come to with a gasp and a jolt.

You are holding nothing but [a list of things carried by the player]. Once again, you have to adjust your recorder[stopping].";
	otherwise:
		say "The gem is dark and unresponsive."
		
Report examining the player in spell-region:
	say "You feel a bit odd, ever since you entered this cave. But it's hard to say what's causing it.";

The simple-robe is a wearable thing. The printed name of simple-robe is "robe". Understand "robe" or "clothes" as the simple-robe. The description of the simple-robe is "This robe seems suited for longterm wear. You've never owned a robe like this."

Instead of taking off the simple-robe:
	say "You have nothing else to wear!";

Report examining the all-recorder when the player is in spell-region:
	say "Your recorder doesn't seem to fit quite right for some reason."

Every turn when the player is not in spell-region and the number of things enclosed by fake-emrys > 0:
	repeat with current running through things worn by fake-emrys:
		now current is worn by the player;
	repeat with current running through things held by fake-emrys:
		now current is held by the player;
	now spell-book is nowhere;
	now simple-robe is nowhere;

Instead of listening to the gem-room:
	try listening to the loud-hum;
	
The loud-hum is scenery in gem-room. Understand "loud" or "sound" or "hum" or "mechanical" as the loud-hum. The printed name of the loud-hum is "loud hum". The description of the loud-hum is "The hum in the background has a mechanical quality to it, like heavy machinery, but it never wavers or changes in intensity.";

Instead of doing anything other than listening or examining to the loud-hum:
	say "The hum isn't physically present; you can only hear it."

Instead of listening to the loud-hum:
	try examining the loud-hum;	

Chapter 3 - Lonely

[some black dust. Later our body collapses into it]
[you are scared in this place. It reminds you of childhood nightmares. Its covered in stone from long buildup, and partially mined out. Food storage is nearby. Nano creatures kill pests]
[there is a spell for leaving here. This room is very sad, huge and filled with what look like friendly things but now abandoned. They are actually used a lot, just dusty from destroyed creatures]

Section 1 - Lonely room

Lonelyfound is a truth state that varies.

The lonely-room is a room in spell-region. The printed name of the lonely-room is "Underground Village". "[first time]You come to with a gasp and stagger to your feet, your body slipping on the gritty floor. 

You're not where you were before.

It's dark, but after squinting for a bit, you can see a phosphorescence lighting the area.

[only]You find yourself in a spacious underground chamber, a kind of underground village, lit by a purple phosphorescence. Squat, one-story houses made of the same dark material as the floor line both sides of a long street. The ceiling of the chamber is high and shadowy. Despite being enclosed by stone, you can feel a breeze ruffle your hair.

Most of the houses have no discernible opening. To the [boldeast], [if lonely-house is visited]is an empty (but open) house[otherwise]one house is open with a light inside, and you can see movement of some kind[end if]. To the [boldsouthwest], [if lonely-alley is visited]you can hear the wind blowing in an abandoned alley[otherwise]a murmur of voices comes from between houses[end if]. And to the [boldnorth], near the wall, [if north-lonely is visited]you can see a cluster of stone figures wearing hats[otherwise]you see a collection of figures wearing hats congregating together[end if][if lonelyfound is true]. It is dark here, dark and silent[end if]."

[Add little figures that watch you but realize they're all fake, except for one]

A thing can be indistinct or distinct. A thing is usually distinct.

Instead of listening to lonely-room:
	say "[if lonely-alley is visited]All you hear is the wind blowing[otherwise]You hear what sounds like voices from the [boldsouthwest].."

Instead of doing anything other than examining to an indistinct thing:
	say "[The noun] [are] hard to make out from here."

The distant-stones are plural-named indistinct scenery in lonely-room. The printed name of the distant-stones is "hat-wearing figures". Understand "hat" or "hats" or "hat-wearing" or "wearing" or "figure" or "figures" as the distant-stones. The description of the distant-stones is "Far away to the [boldnorth], you can see [if north-lonely is visited]stone[otherwise]vague[end if] figures wearing hats."

The voice-murmurs are plural-named scenery in lonely-room. The printed name of the voice-murmurs is "murmurs". Understand "voice" or "voices" or "murmur" or "murmurs" or "wind" or "sound" as the voice-murmurs. The description of the voice-murmurs is "You can hear murmurs to the [boldsouthwest][if lonely-alley is visited], but you know it's just the wind[otherwise] that sound like voices[end if]."

Instead of doing anything other than listening to or examining to the voice-murmurs:
	say "The murmurs are too far away to do anything with them."
	
Instead of listening to the voice-murmurs:
	try examining the voice-murmurs;

The distant-ceiling is distant scenery in lonely-room. The printed name of the distant-ceiling is "distant ceiling". Understand "distant" or "high" or "shadowy" or "ceiling" or "roof" as the distant-ceiling. The description of the distant-ceiling is "You can barely make out any details from this far below."

The underground-village is scenery in lonely-room. The printed name of the underground-village is "underground village". Understand "underground" or "village" or "houses" or "stone" or "squat" or "one story" or "street" or "side" or "sides" or "long" or "street" or "one-story" or "story" or "material" as the underground-village. The description of the underground-village is "The houses of the underground village look uniform, repetitive, dull. Most have no openings or entrances of any kind, but one house is open."

Instead of entering the underground-village:
	say "Most of the houses have no entrance at all. Only one house is open."

Instead of searching the underground-village:
	say "Most of the houses are completely closed off. Only one house has any openings at all."

The cave-floor is a backdrop. The cave-floor is in lonely-room, lonely-house, lonely-alley, north-lonely, buried-room, end-room, vast-room, eye-room, stranger-room, desolation-room, corruption-room, flesh-room, hunt-room, and slaughter-room.

The printed name of the cave-floor is "gritty floor". Understand "gritty" or "dust" or "floor" or "stone" or "visible" or "tool marks" or "marks" as the cave-floor.

The description of the cave-floor is "The floor is gritty stone, mostly natural looking but with visible tool marks in places."

Instead of touching or rubbing the cave-floor:
	say "The floor is gritty. Disgusting. You wipe your hands on your robe."

Instead of putting something on the cave-floor:
	try dropping the noun;
	
Instead of inserting something into the cave-floor:
	try dropping the noun;

The purple-phosphorescence is a backdrop. The purple-phosphorescence is in lonely-room, buried-room, end-room, vast-room, vast-ladder, eye-room, stranger-room, corruption-room, flesh-room, hunt-room, web-room, and slaughter-room. 

Understand "purple" or "phosphorescence" or "light" as the purple-phosphorescence. The printed name of the purple phosphorescence is "purple phosphorescence". The description of the purple-phosphorescence is "The purple phosphorescence comes from nowhere and everywhere at once."

Instead of doing anything other than examining to the purple-phosphorescence:
	say "You can't find the source of the phosphorescence.";

The one-house is scenery in lonely-room. The printed name of the one-house is "open house". Understand "open" or "opening" or "one house" or "house" or "entrance" or "opening" or "openings" as the one-house. The description of the one-house is "One house among all the others is open, to the [boldeast][if lonely-house is visited]. It is, as you saw, empty[otherwise]. Some light is visible inside, and you can see some movement[end if]. "

Instead of entering the one-house:
	try going east;

Instead of closing the one-house:
	say "There's no door to close."
	
Instead of searching the one-house:
	say "[if the lonely-house is visited]The house is just as empty as it was before[otherwise]You can see some kind of movement inside, but nothing is distinct from out here[end if]."

The lonely-movement is indistinct scenery in lonely-room. The printed name of the lonely-movement is "movement". Understand "light" or "movement" or "shadow" or "furtive" or "shadow" or "shadows" as the lonely-movement when lonely-house is unvisited. The description of the lonely-movement is "You can vaguely make out some light and movement from inside the house, but it is furtive, shadows swinging wildly across the room."

The north-wall is indistinct scenery in lonely-room. The printed name of the north-wall is "wall". Understand "wall" as the north-wall. The description of the north-wall is "You can vaguely make out a wall to the far [boldnorth]. Various hat-wearing figures are clustered underneath it."

Section 2 - Lonely house

Lonescroll-region is a region. Lonescroll-region is in spell-region.

The lonely-house is east from lonely-room. The lonely-house is inside from lonely-room. The lonely-house is in lonescroll-region.The printed name of the lonely-house is "Stone House". "[one of]You knock as you enter, not wishing to disturb the inhabitants. But soon you see that there is no point.

The light and movement in the house comes from a glowing lantern hanging on a hook, swinging in a draft coming from the outside. The light is flickering and, as you enter, slowly winks out.[or]This house seems almost entirely unlived in. It is a single room with a stone-cut slab of a table in the middle and two stone benches on either side. A hook above the table holds a dead lantern. There's no sign of any area for food preparation, sleep, or clothing. If not for the lantern, there'd be no reason to expect that anyone had ever been in this house.[stopping]

You can return to the [boldwest]."

The lonely-hook is a scenery supporter in lonely-house. Understand "hook" as the lonely-hook. The printed name of the lonely-hook is "hook". The description of the lonely-hook is "A hook juts from the wall here, serving no other purpose than to hold a lantern. Given that the lantern is dead, the hook would have to question its value in life, if it had the ability to reason."

Does the player mean examining the lonely-hook:
	it is likely;

Understand "hang [something] on [the lonely-hook]" as putting it on.

Instead of putting something on the lonely-hook:
	say "There's not a good way to put anything on the hook, with the lantern on the way."

The lonely-lantern is scenery on the lonely-hook. Understand "glowing" or "lantern" or "swinging" or "dead" as the lonely-lantern. The description of the lonely-lantern is "The dead lantern swings slowly back and forth in the draft." The printed name of the lonely-lantern is "lantern".

Instead of taking or pushing or pulling the lonely-lantern:
	say "It's attached in a way that you just can't get it off. Eventually your hands hurt from trying."

Instead of swinging the lonely-lantern:
	say "It creaks back and forth."

The house-draft is scenery in the lonely-house. The printed name of the house-draft is "draft".

Instead of doing anything to the house-draft:
	say "The draft can't be seen or touched, but you can feel it chill your skin. It comes from outside."

The slab-table is an enterable scenery supporter in lonely-house. The printed name of the slab-table is "table". Understand "stone cut" or "stone" or "heavy" or "immovable" or "cut" or "slab" or "table" as the slab-table. The description of the slab-table is "Heavy and immovable, this table is cut from a single slab of stone, still attached to the floor."

The stone-benches are plural-named enterable scenery supporters in lonely-house. The printed name of the stone-benches is "benches". Understand "bench" or "benches" or "two benches" or "stone" as the stone-benches. The description of the stone-benches is "Two stone benches face each other on either side of the stone table. Like the table, they are carved from the same stone as the floor.".

Instead of going nowhere from lonely-house:
	say "The house blocks you from going that way."

Instead of burning the lonely-lantern:
	say "It's not a flame-using lantern; it seems like it had its own power source, now exhausted and gone."

Section 3 - Lonely alley

The lonely-alley is southwest from the lonely-room. The lonely-alley is in lonescroll-region. The printed name of the lonely-alley is "Alley Between Houses".

The description of the lonely-alley is "[first time]You follow the murmur of voices into the small alleyway between a couple of stone houses.

The voices get louder as you approach, but remain incoherent. Turning the corner, though, you find no one.

[only]The alleyway peters out into a small alcove in the wall containing numerous holes and twisted extensions of rock. 

The wind is stronger here, and makes eerie sounds that are almost human through the warped alcove.

The main street is to the [boldnortheast]."

The wind-sound is scenery in lonely-alley. The printed name of the wind-sound is "wind". Understand "wind" or "sound" or "eerie"or "sounds" or "squeak" or "squeaks" or "language" or "whisper" or "whispers" or "whispering" or "voice" or "voices" as the wind-sound. The description of the wind-sound is "The wind blows and squeaks through the warped alcove. It does sound like voices, voices whispering in a language that you don't quite understand."

The alley-houses are plural-named scenery in lonely-alley. Understand "houses" or "house" or "wall" or "walls" or "alley" as the alley-houses.

The description of the alley-houses is "All you can see of the houses in this part of the alley are the walls, with no discernible openings."

Instead of listening to the lonely-alley:
	try listening to the wind-sound.

Instead of doing anything other than listening to or examining to the wind-sound:
	say "You can't see or touch the wind, but you can hear it.";
	
Instead of listening to the wind-sound:
	try examining the wind-sound;
	
Instead of listening to the lonely-alley:
	try listening to the wind-sound;

The warped-alcove is an enterable open unopenable transparent scenery container in lonely-alley. Understand "hollow" or "of rock" or "rock" or "warped" or "alcove" or "twisted" or "extensions" or "extension" or "hole" or "holes" as the warped-alcove. The printed name of the warped-alcove is "warped alcove". The description of the warped-alcove is "The wind blows in and through this warped alcove. It's just a hollow in the rock, but its odd shape gives it these sounds."

Instead of listening to the warped-alcove:
	try listening to the wind-sound;

Instead of entering the warped-alcove:
	say "You step into the alcove, but it makes you shiver, and you step out again."

Section 4 - Lonely wall

The north-lonely is north from lonely-room.  The north-lonely is in lonescroll-region. The printed name of the north-lonely is "Natural Amphitheater".

The description of the north-lonely is "[first time]You carefully approach the group. Storyweavers are generally respected in most societies, but you don't know where you are, so you want to be--

Wait.

These aren't people. They're rocks! You let out a little chuckle.

[only]The rocks here form a natural amphitheater. Scattered throughout the amphitheater are rough stone pillars decorated with hats, scarfs, and other clothing items. 

Some of the items look new, while others look extremely worn down. There's no sign of any other humans.

The main street is to the [boldsouth]. A very tight-looking crack is in the wall to the [boldnorth]."

The scenery-amphitheater is scenery in north-lonely. Understand "natural" or "amphitheater"or "amphitheater" as the scenery-amphitheater. The printed name of the scenery-amphitheater is "natural amphitheater". The description of the scenery-ampthitheater is "There is a natural amphitheater here, sloping down before a tall wall. The amphitheater is filled with stone figures wearing hats and other items.".

Instead of examining the scenery-amphitheater:
	try looking;
	
Instead of doing anything other than examining to the scenery-amphitheater:
	if the noun is the scenery-amphitheater:
		now the noun is the cave-floor;
	if the second noun is the scenery-amphitheater:
		now the second noun is the cave-floor;
	try the current action;

Instead of entering the cave-floor:
	say "You rest for a moment before rising again."

The lonely-stones are plural-named scenery in north-lonely. The printed name of the lonely-stones is "stone figures". The description of the lonely-stones is "Stone figures, dozens of them, fill a natural amphitheater. They are vaguely human-shaped, but are more like rough-hewn mannequins than anything else. All of them seem carved out of the rock itself. They are wearing hats, scarves, and other random clothing." Understand "stone" or "figure" or "stones" or "Figures" or "rock" or "rocks" or "rough" or "hewn" or "Human" or "humans" or "pillar" or "pillars" or "shape" or "shaped" or "grit" or  "mannequin" or "mannequins" as the lonely-stones. 

Instead of physicality when the noun is lonely-stones:
	say "The stone figures are immovable, but covered with the same grit as everything else in here."

The stone-clothes are plural-named scenery in north-lonely. The printed name of the stone-clothes is "accessories". Understand "hats" or "hat" or "scarf" or "scarves" or "clothing" or "accesory" or "item" or "items" or "clothes" or "accessories" or "purse" or "purses" or "cowboy" or "boot" or "boots" as the stone-clothes. The description of the stone-clothes is "The accessories worn by the stone figures are deeply embedded in the rock, some fusing with the figures themselves. You can see hats of all kinds, scarves, purses, even cowboy boots."

Instead of taking or pulling or pushing or turning the stone-clothes:
	say "The clothing is deeply embedded into the rock itself, and won't pull. It's like they were set in wet concrete before it dried."
	
Instead of searching the stone-clothes:
	say "You find nothing."

The north-northwall is scenery in north-lonely. Understand "wall" as the north-northwall. The printed name of the north-northwall is "wall". The description of the north-northwall is "The wall here has a tight-looking crack, leading to the [boldnorth]."

The distant-street is indistinct scenery in north-lonely. Understand "main" or "street" as the distant-street. The printed name of the distant-street is "main street". The description of the distant-street is "You can barely make out the street you woke up in from here."

Section 5 - Hidden life spell

Dirox  is a magic-spell. The spell-preview of dirox is "Detect entities near the caster"

Diroxing is an action applying to nothing. Diroxing is spellcasting. Understand "Dirox" or "say dirox" as diroxing.

A room has some text called the life-text. The life-text of a room is usually ""

Dark-gone is a truth state that varies.

Check diroxing:
	if dirox is not in spell-book:
		noscroll dirox instead;
	otherwise if the spell-book is not held by the player:
		nobook dirox instead;
	otherwise if the player is in dark-room and dark-gone is false:
		say "You say the word, 'Dirox'. Sparks fly out of your spellbook, but they are absorbed by the darkness." instead;

Carry out diroxing:
	do nothing
	
To decide what number is playerweight:
	let tempweight be 60;
	if flying-player is true:
		now tempweight is tempweight minus 30;
	if rubbery-player is true:
		now tempweight is tempweight minus 5;
	decide on tempweight;

Report diroxing:
	say "You say the word, 'Dirox'. Your spellbook lights up and text appears:

[italic type]Human[roman type][line break]Quantity: 1[line break]Mass: [playerweight] kg[life-text of the location][if hunter-scene is happening][paragraph break][italic type]Stalker[roman type][line break]Quantity: 1[line break]Mass: 110 kg[end if]

Then the text disappears."

The dirox-scroll is a spell-scroll. "A small golden scroll lies on the ground, almost unnoticed." The printed name of the dirox-scroll is "small scroll". Understand "small" or "dirox" as the dirox-scroll.

The associated-spell of dirox-scroll is dirox.

lonelycounter is a number that varies. lonelycounter is 0.

Report going to an unvisited room in lonescroll-region:
	increment lonelycounter;
	if lonelycounter is 3:
		now dirox-scroll is in the location;
	now lonelyfound is true;

Chapter 4 - Buried

Section 1 - The room

The buried-room is a room in spell-region. The printed name of the buried-room is "Cramped Cave".

"[buried-text]the two ends of the crack to the [boldsouth] and [boldnortheast]."

To say buried-text:
	if rubbery-player is false:
		say "Being in this cramped cave makes you hyperventilate a little[first time]. A few years before you joined the Tragwyddol, you took a very small rocket ship to visit your brother, but the oxygen tank was damaged partway through, and you were stuck for a whole day worried you'd run out of breath while stuck in your tiny cabin. This reminds you painfully of that feeling[only]. You can only hope that there's proper ventilation in here. 

There's not enough room in here to stand straight up or walk facing forward. Instead, you can only move by scraping your body sideways from one side of the crack to another. That lets you move between ";
	otherwise:
		say "You are wedged sideways into a very thin crevice, and have become completely stuck. The wall pushes painfully into your chest and makes it difficult to breathe. Your head is swimming--if you closed your eyes now, you would pass out.

You don't see how you can possibly make it to ";

Looking under is exercise. Taking off is exercise. Wearing is exercise. Throwing at is exercise. Attacking is exercise. Kissing is exercise. Waving is exercise. Waving hands is exercise. Pushing is exercise. Pulling is exercise. Turning is exercise. Pushing to is exercise. Burning is exercise. Tasting is exercise. Cutting is exercise. Jumping is exercise. Tying to is exercise. Drinking is exercise. Swinging is exercise. Setting to is exercise. Climbing is exercise. Repairing is exercise. Shaking is exercise. Clapping is exercise. licking is exercise. Locking keylessly is exercise. 

Instead of exercise when the player is in buried-room:
	say "You don't have enough room, unfortunately[if rubbery-player is true], despite your rubbery body[otherwise]. [trapped-text][end if]."

Touching is almost-exercise. Squeezing is almost-exercise. Rubbing is almost-exercise.

Before almost-exercise in buried-room:
	say "You almost think you can't reach, but you find you're barely able to do so. But [the noun] remain[s] inert under your touch."

After almost-exercise when the player is in buried-room:
	say "[trapped-text]."

After dropping in buried-room:
	say "[The noun] becomes lightly wedged in the crevice alongside you."
	
After taking something in buried-room:
	say "With some difficulty, you take [the noun].";
	now the noun is held by the player;

Upgiving is an action applying to nothing. Understand "close eyes" as upgiving when the player is in buried-room.

Carry out upgiving:
	say "You close your eyes and surrender 

[Sand-Dying]";
	now the player is in end-room;
	say "At least you can breathe again."

Rubbery-player is a truth state that varies. Rubbery-player is false.

Before going when the player is in buried-room:
	if rubbery-player is not true:
		say "[one of]Uh oh.

You're stuck[or][trapped-text][stopping].";
		if mallox-scroll is not handled:
			now the mallox-scroll is in buried-room instead;
		otherwise:
			do nothing instead;

Trapped-level is a number that varies. Trapped-level is 0.	

Every turn when the player is in spell-region:
	if the player is not in buried-room:
		now trapped-level is 0;

To say trapped-text:
	increment trapped-level;
	if trapped-level is 1:
		say "[one of]You wiggle, but you end up even more constrained[or]Oh, no.

You're stuck again. Your stomach sinks[stopping]";
	if trapped-level is 2:
		say "You're stuck--no matter how hard you try, you can't wiggle through further through the crevice";
	if trapped-level is 3:
		say "You slip and fall a few centimeters further into the crack through your struggles. It is very hard to breathe now";
	if trapped-level is 4:
		say "You have wedged yourself in in a way that makes it impossible to breathe. You begin to black out...

[Sand-Dying]";
		now the player is in end-room;
		say "At least you can breathe again"

The thin-crevice is an open unopenable scenery door. The printed name of the thin-crevice is "thin crevice". The thin-crevice is south from buried-room and north from north-lonely. Understand "tight" or "tight-looking" or "looking" or "crack" or "crevice" or "thin" as the thin-crevice. The description of the thin-crevice is "[if the player is in buried-room]The thin crevice you entered through is to the [boldsouth][otherwise]The thin crevice to the [boldnorth] looks barely passable[end if]."

The cramped-cave is scenery in buried-room. The printed name of the cramped-cave is "crevice". Understand "cave" or "crevice" or "walls" or "wall" or "rock" or "rocks" or "rocks by your face" or "rocks by my face" or "rocks by face" as the cramped-cave. 

Instead of examining the cramped-cave:
	try looking;

Before thingexiting the cramped-cave:
	try going northeast instead;

Instead of touching or rubbing or squeezing the cramped-cave:
	say "The crevice is cold and unyielding under your touch."

Section 2 - Mallox stuff

The Mallox-scroll is a spell-scroll. "Wedged into the rocks by your face is a creased golden scroll." The printed name of mallox-scroll is "creased scroll". Understand "creased" or "mallox" as mallox-scroll. The associated-spell of mallox-scroll is Mallox.

Mallox  is a magic-spell. The spell-preview of Mallox is "[if bookmarkon is false]Make the caster's body elastic[otherwise]Make another creature's body elastic[end if]"

Malloxing is an action applying to nothing. Malloxing is spellcasting. Understand "Mallox" or "say mallox" as Malloxing when bookmarkon is false.

Check malloxing:
	if Mallox is not in spell-book:
		noscroll mallox instead;
	otherwise if the spell-book is not held by the player:
		nobook mallox instead;
	otherwise if rubbery-player is true:
		say "You say the word, 'Mallox', and feel your body stretch and warp, but then return. It seems you've reached your maximum elasticity." instead;

Carry out Malloxing:
	now rubbery-player is true;

Report Malloxing:
	say "You say the word, 'Mallox'. Your spellbook lights up, and golden sparks fly around your skin.

[one of]You feel yourself elongate, your body dripping. Your skull softens, and you feel your femurs as they weaken and support you less[or]Again your body softens and partially melts[stopping][if the player is in buried-room].

You are no longer stuck. You pant with relief, your lungs wobbling absurdly inside you as you breathe[end if]."
		
Rubberytime is a recurring scene. RUbberytime begins when rubbery-player is true.

Rubberytime ends abruptly when the player is not in spell-region.

Rubberytime ends normally when the time since rubberytime began is 3 minutes.

Rubberytime ends forgetfully when anghofiotime begins.

When rubberytime ends normally:
	say "You can feel your body's elasticity returning to normal, pulling all your bones and organs back to their right places. Well, mostly. You still feel a bit off[if the player is in buried-room].

You feel the walls of the crevice squeezing you intensely as you change. It feels terrifyingly crushing, and you are now stuck again[end if].";
	now rubbery-player is false;
	if the player is in buried-room:
		now trapped-level is 1;

SEction 3 - Warped mallox

TargetMalloxing is an action applying to one thing. TargetMalloxing is spellcasting. Understand "Mallox [something]" or "say mallox to/at [something]" as TargetMalloxing when bookmarkon is true.

Stalker-dead is a truth state that varies. Stalker-dead is false.

Check targetMalloxing:
	if Mallox is not in spell-book:
		noscroll mallox, with a target instead;
	otherwise if the spell-book is not held by the player:
		nobook Mallox, with a target instead;

To drip is a verb.

Carry out targetMalloxing:
	if the noun is slaughter-beast:
		say "You say the word, 'Mallox', and point at the wild beast. Gold light flashes from your fingertips, embedding into the monster's skin.

The beast howls and twists as its body elongates and sags. In anger, it claws at you, and finds to its surprise that it can easily slip through the bars now.

With a howl of triumph it pounces at you. ";
		if hunter-scene is not happening:
			say "Its claws sink in, and it pulls you toward it. It squeezes you into its cage.

[Sand-Dying]";
			now the player is in end-room;
		otherwise:
			say "You fall backwards and scream as it slashes, but you aren't the target. It hits something heavy and invisible above you.

An unholy screeching comes now, far louder than the beast you can see. There must be something else here, because two voices scream above you, engaged in a deadly struggle. 

The huge beast bounds back and forth across the room, coming sickeningly close to crushing you. It finally bursts out of the room, seemingly taking its invisible opponent with it. You hear the screeching suddenly ride to a fever pitch and then fade quickly.";
			now slaughter-beast is nowhere;
			now slaughter-stains are in vast-room;
			now stalker-dead is true;
	otherwise if the noun is the player:
		say "You say the word, 'Mallox', and point at yourself, but nothing happens. The bookmark must have changed the spell somehow; it doesn't work on you, now.";
	otherwise if the noun is the strange-man:
		say "You say the word, 'Mallox' and point at [the noun]. Your spellbook lights up, and golden sparks fly towards the strange man.

[one of]He slowly oozes over to one side, his smile never changing. It's even more clear now that his eyes and hair are just painted on. After flopping for a second, the rock he is sitting on rumbles, and he slowly reshapes into his original form.

'Doing anything fun for the weekend?' he says, staring straight forward and rocking. 'Me and the boys were going to watch the game.' His mouth doesn't match up with the words until near the end.[or]Again, he oozes off the rock a bit, but quickly reforms.[stopping]";
	otherwise if the noun is the eye-monitors or the noun is the desolation-screen:
		say "You say the word, 'Mallox', and some of [the noun] [adapt the verb drip] down like wax. The fallen are absorbed into the wall, and new [noun] pop up in their place.";
	otherwise if the noun is the desolation-deer or the noun is the malformed-growths or the noun is the flesh-beasts:
		say "You say the word, 'Mallox' and point at one of [the noun]; it screeches and splutters and simply melts away entirely into the floor.";
	otherwise if the noun is the corrupt-insects:
		say "You say the word, 'Mallox', and point at the insects. You can only assume a few of them became rubbery, but they are swarming so thickly over each other that you could never tell.";
	otherwise if the noun is the webmaster or the noun is the web-spinners:
		say "You say the word, 'Mallox' and point at [the noun], but [the webmaster] whispers something inaudible before you can finish. Sparks fly from both of your mouths, but they collide in midair. Nothing else happens.";
	otherwise if the noun is the spiral-spector:
		say "You point at [the spiral-spector] and say, 'Mallox!'

But nothing happens, because [the spiral-spector] isn't really there.";
	otherwise:
		say "You say the word, 'Mallox', and point at [the noun], but nothing happens.";

Chapter 5 - The End

Section 1 - End room itself

The end-room is a room in spell-region. 

[Add the door like this: The blue door is a door. It is south of Notting Hill. Through it is the Flat Landing.]

A thing can be ripplehidden or unripplehidden. A thing is usually ripplehidden.

A ripple-wall is a kind of door. Understand the ripplehidden property as describing a ripple-wall. Understand "rippling" or "ripple" or "liquid" or "door" or "wall" as unripplehidden. A ripple-wall is usually open.

The lonely-end is a ripple-wall. The lonely-end is unripplehidden. The lonely-end is scenery. The lonely-end is southwest of end-room. Through the lonely-end is lonely-room. Understand "[southwest]" or "southwestern" or "black" as the lonely-end. The printed name of the lonely-end is "black wall". The description of the lonely-end is "The southwest wall is black and rippling slightly."

The lonely-vast is a ripple-wall. The lonely-vast is ripplehidden. The lonely-vast is scenery. The lonely-vast is north of end-room. Through the lonely-vast is vast-room. Understand "[north]" or "gray" or "grey" or "northern" as the lonely-vast. The printed name of the lonely-vast is "gray wall". The description of the lonely-vast is "[if unripplehidden]The north wall is gray and rippling slightly[otherwise]The north wall is gray and unremarkable[end if]."

Before going through a ripple-wall (called currentwall):
	if currentwall is ripplehidden:
		say "The cavern hems you in on that side." instead;
	otherwise:
		say "You press into the stone itself. The rock warps around you, and you slide through. You find yourself in..."

Every turn when the player is in vast-room:
	now lonely-vast is unripplehidden;

The printed name of the end-room is "Graveyard". The description of the end-room is "[first time]You wake with a gasp, your dry throat struggling for air.

You cough raggedly, bits of black sand flying from your mouth, and stand up.

[only]You are in a dimly lit graveyard, or morgue, depending on how you look at it. Dozens of humanoid bodies lie on the ground, but they aren't decomposing. If anything, they look petrified, made of the same material as the rocky floor itself. But someone has laid them out in neat rows. There are a few empty spots, including the one that you recently woke up from[if the admin-container is in end-room].

A little box name ADMIN lies forgotten on the floor[end if].

There are no obvious exits except for the black wall to the [boldsouthwest][if lonely-vast is unripplehidden] and the gray wall to the [boldnorth], which are [otherwise] which is [end if]rippling liquidly." 

The noid-bodies are plural-named scenery in the end-room. The printed name of the noid-bodies is "petrified bodies". Understand "petrified" or "hands" or "empty" or "spots" or "spot" or "humanoid" or "body" or "coarse"or "indistinct" or "bodies" or "dozen" or "dozens" as the noid-bodies. The description of the noid-bodies is "The humanoid bodies are laid uniformly in rows, hands at their sides. None of them wear clothes, but their bodies are coarse and indistinct, like charcoal. They look burned, or petrified. There are empty spots here and there; you must have been in one when you awoke[if admin-container is unrevealed].

Near one of the bodies is a little box labelled ADMIN[reveal-admin][otherwise if admin-container is in end-room].

Near one of the bodies is a little box labelled ADMIN[end if]."

The admin-container is a closed openable scenery container. The admin-container can be revealed or unrevealed.

To say reveal-admin:
	uncover the admin;
	
To uncover the admin:
	now admin-container is in end-room;
	now the admin-container is revealed;

Instead of physicality when the noun is the noid-bodies:
	say "[one of]At your indelicate touch, the body crumbles away into black sand[or]After making one body crumble, you're not in the mood to destroy more[stopping]."

Instead of searching the noid-bodies:
	if the admin-container is unrevealed:
		say "You crouch down to search through the bodies. As soon as you touch one, though, it crumbles into sand, just like the sand that covers the rest of the room. 

In the fragments, you find a little box labelled ADMIN.";
		uncover the admin;
	otherwise:
		try touching the noun;
		
 The printed name of the admin-container is "box labelled ADMIN". Understand "box" or "little" or "label" or "ADMIN" or "labelled" or "soot" or "sooty" as the admin-container.  The description of the admin-container is "Like everything else in this room, the box is made of some sooty material. About the size of a takeout food container, the box looks like it is either ancient or burnt. It has ADMIN stencilled on one side."

Instead of physicality when the noun is the admin-container:
	say "At your touch, the box crumbles to pieces, and is lost. Its contents are revealed: a shiny scroll.";
	now the admin-container is nowhere;
	now the exfil-scroll is in end-room;
	
The grit-sand is scenery in end-room. Understand "black sand" or "sand" or "black grit" or "grit" as the grit-sand. The printed name of the grit-sand is "sand". The description of the grit-sand is "Sand the color of the floor covers every surface. It is more prominent in empty spots in the rows of bodies."

Instead of touching or rubbing the grit-sand:
	say "It sticks to your hand in a greasy way, until you rub it off."
	
Instead of taking or searching or looking under the grit-sand:
	say "The sand is too thing to do anything with, and it just falls between your fingers."

Section 2 - Exfil scroll

The exfil-scroll is a spell-scroll. The printed name of the exfil-scroll is "shiny scroll".  Understand "shiny" or "exfil" as exfil-scroll. The associated-spell of exfil-scroll is Exfil.

Exfil is a magic-spell. The spell-preview of exfil is "Awaken a dormant surveillance entity"

A thing can be awakened or unawakened. A thing is usually unawakened.

exfiling is an action applying to one thing. exfiling is spellcasting. Understand "exfil [something]" as exfiling. Understand "say exfil to/at [someone]" as exfiling.

Check exfiling:
	if exfil is not in spell-book:
		noscroll exfil, with a target instead;
	otherwise if the spell-book is not held by the player:
		nobook exfil, with a target;

Carry out exfiling:
	if the noun is awakened:
		say "[The noun] [are] already awakened.";
	otherwise if the noun is the noid-bodies:
		say "You say the word, 'Exfil', and point at one of the bodies. A flush comes to it, the body and clothing appearing softer and lifelike.

The body opens its eyes, staring up at the ceiling, and screams. Then the magic falters and fades, the body turning back into petrified stillness. It doesn't seem to work right on these corpses.";
	otherwise if the noun is the eye-monitors or the noun is the desolation-screen:
		say "The cameras blink on, jerk around a bit, and begin to swivel towards you. The monitors blink on, two or three at a time, all showing a feed of you.";
[		now the eye-eyes are awakened;]
		now the eye-monitors are awakened;
		now the desolation-screen is awakened;
	otherwise if the noun is the eye-camera:
		say "The camera jerks up and pans back and forth before settling on looking at the black column.";
		now the noun is awakened;
	otherwise:
		say "You say the word, 'Exfil', pointing at [the noun], but nothing happens."

Chapter 6 - Vast

[add another crack door]

[allow first death in here from falling]

[puzzle - flying over the vast, but it grabs you every time. flying is the vast spell. You have to corrupt yourself and get eaten, with the beast shutting down for repairs]

Section 1 - The main room

The vast-room is a room in spell-region. The vast-room is northeast from the buried-room. The printed name of the vast-room is "Vast Chamber". "[first time]You squeeze out of the tiny crevice and into a larger space. There's only a narrow ledge, but it feels good to be free!

[only]You are on the rim of a vast chamber that stretches off beyond the range of your vision. The rocks below you form a cliff that goes down at least a hundred meters, maybe more. At the bottom lies an underground lake of pure blackness which laps gently up and down despite the lack of any breeze[if beastgone is true].

The roomsy smells awful now, and the water bubbles from time to time[end if][if the distant-gleam is in vast-room].

Far to the north, there is a distant gleam of gold[end if].

The crevice is [boldsouthwest] from here. You can inch your way around to the [boldwest] and [boldsoutheast].

There is also a rickety ladder leading [bolddown], but it looks very unsafe[if the slaughter-stains are in vast-room]. Stains and scratches mark the edge now[end if]."

[fix this later wind calming down, here and on ladder]
[fix this later add smelling when beast is gone]

The vast-crevice is scenery in vast-room. The printed name of the vast-crevice is "tiny crevice". Understand "tiny" or "crevice" as the vast-crevice. The description of the vast-crevice is "Just looking at the tiny crevice gives you shivers."

Instead of entering vast-crevice:
	try going southwest;

Instead of inserting something into the vast-crevice:
	say "You don't want to get anything stuck in there...again."
	
Instead of searching the vast-crevice:
	say "All you see is a tiny crevice."

The slaughter-stains are plural-named scenery. The printed name of the slaughter-stains is "stains". Understand "slaughter" or "stain" or "stains" as the slaughter-stains. The description of the slaughter-stains is "The stains and scratches on the edge of the cliff look like the results of some great battle, but they end at the edge of the cliff."

The vast-cliff is scenery in vast-room. The printed name of the vast-cliff is "cliff". Understand "little" or "arc" or "cliff" or "edge" or "ledge" or "rocks" or "below" as the vast-cliff. The description of the vast-cliff is "There is just a little ledge in a broad arc around the room, never wider than half a meter, with the wall on one side and the cliff on the other. there's nothing to hold on to, and just looking down makes you dizzy.

The cliff plummets straight down for at least a few dozen meters, maybe more, maybe much, much more. It's so hard to tell from way up here."

The vast-wall is scenery in vast-room. The printed name of the vast-wall is "wall". UNderstand "wall" as the vast-wall.

Instead of physicality when the noun is the vast-wall:
	say "The wall is fixed and immovable, with the force of unknown tons of earth on its side."

Instead of touching or rubbing the vast-cliff:
	say "It's the same gritty material as the rest of the cave."

Instead of climbing the vast-cliff:
	try going down.
	
The rickety-ladder is a scenery staircase. Rickety-ladder is down from vast-room and up from vast-ladder. Understand "rickety" or "ladder" as the rickety-ladder. The description of the rickety-ladder is "This ladder does not look secure at all. How it's fastened to the cliff is beyond you. It goes down so far that you can't count the individual rungs near the bottom."

Instead of taking or pushing or pulling the rickety-ladder:
	say "You rattle it back and forth a bit, but it doesn't come off.";

The underground-lake is distant backdrop in vast-room. The printed name of the underground-lake is "dark lake". Understand "darkness" or "pure" or "water" or "bubble" or "bubbles" or "lake" as the underground-lake. The description of the underground-lake is "This lake is unfathomable in a literal sense. The darkness of the water and the distance makes it hard to tell if it is a shallow lake gently lapping the cliff or an immense ocean tossed by violent waves."

The distant-gleam is a distant backdrop in vast-room. The printed name of the distant-gleam is "distant gleam". Understand "gleam" or "distant" or "light" or "gold" or "of gold" as the distant-gleam.

The description of the distant-gleam is "Far, far across the lake, to the [boldnorth], you can see a distant gleam of light. But this far away, it could be anything.".

Section 2 - The beast

beastgone is a truth state that varies. beastgone is false.

Before going north from the vast-room:
	if flying-player is true:
		say "With some effort, you direct your fragile body to float north. The winds whip you around and pull you north faster than your own strength would allow.

A vortex catches you and pulls you down to the lake below, down, down. ";
		if beastgone is true:
			say "But soon you catch an updraft of fetid air and rise again. With the pit feeder dormant, you can move through the air unencumbered.";			
		otherwise:
			say "It feels like you have been falling forever, but the water is still below you. 

Now the water is churning. Heavy towers, black as night, push out of the water, like a sunken city rising up to the surface. Rings and rings of ebony spires circle around a maelstrom that has appeared.

[one of]No, not a maelstrom. A [or]It is the [stopping]mouth, a hideous mouth for some being that is wide as the horizon itself. After what feels like minutes, you pass into the ring, and are engulfed. ";
			if rotting-player is true:
				say "

As you lose consciousness, you can feel your skin bursting and the infection inside of you leaking in every direction. The beast around you trembles and it is like the earth itself being rent in twain. The water bubbles around you as the infection spreads.

The beast is defeated. And so are you.

*******************************************************************[line break]There is only darkness and a faint gurgle[line break]*******************************************************************[line break]";
				now beastgone is true;
				now the player is in end-room instead;
			otherwise:
				say "

*******************************************************************[line break]There is only darkness and a faint gurgle[line break]*******************************************************************[line break]";
				now the player is in end-room instead;
	otherwise:
		say "There's just a cliff in that direction. You consider jumping, for a wild moment. But for a controlled descent, there's always the ladder going [bolddown]." instead;

Instead of jumping when the player is in vast-room:
	say "You leap off the cliff and plummet towards the water. Your fall is interrupted by a too-solid protuberance in the rock.

[Sand-Dying]";
	now the player is in end-room;

The life-text of vast-room is "[paragraph break][italic type]Pit Feeder[roman type] [line break]Quantity: 1[line break]Mass: ERROR--OUT OF BOUNDS"

Instead of going nowhere from vast-room:
	if the noun is northeast or the noun is northwest or the noun is south:
		say "The ledge you are on doesn't lead in that direction.";
	otherwise if the noun is not north:
		say "You are hemmed in by the cavern itself and can't go that way."

Section 3 - The ladder

Before going down from vast-room:
	if rubbery-player is true:
		say "You grasp at the ladder, but your flailing rubbery body doesn't have enough tension to hold you up. You slip over the edge and plummet towards the water before your fall is interrupted by a too-solid protuberance in the rock.

[Sand-Dying]";
		now the player is in the end-room instead;

The vast-ladder is a room in spell-region. The printed name of the vast-ladder is "Rickety Ladder".

"You are far below the top of the cliff, but the ladder goes on much longer than seemed possible from above. Your arms ache from the effort of all your climbing.

Wind whistles all around you as you cling to the rungs. It's strong enough that you are almost blown off. You can make your way back [boldup]. Going [bolddown] just seems like it would never end."

The underground-lake is in vast-ladder.

The whistling-wind is scenery in the vast-ladder. The printed name of the whistling-wind is "wind". Understand "wind" as the whistling-wind. The description of the whistling-wind is "The wind from the lake blows fast and cold, changing direction often in a way that makes you cling in fear to the ladder.".

Instead of listening to the whistling-wind:
	say "The wind is loud enough that conversation would be difficult, were anyone else here."
	
Instead of touching the whistling-wind:
	say "The wind is cold as it swirls across your hand."
	
Instead of doing anything other than listening to or touching to the whistling-wind:
	say "The wind eludes your attempts to manipulate it.";

Instead of jumping when the player is in vast-ladder:
	say "You leap off the cliff and plummet towards the water. Your fall is interrupted by a too-solid protuberance in the rock.

[Sand-Dying]";
	now the player is in end-room;
	
Instead of going nowhere from vast-ladder:
	if the noun is down:
		say "What's the point? The water is hardly closer than when you began. You thought it was just a hundred meters or so at first, but you're beginning to suspect it might be a kilometer or more below you.";
	otherwise:
		say "The ladder doesn't extend in that direction."

[FIX THIS LATER add a spell scroll that does something here]

The life-text of vast-ladder is "[The life-text of vast-room]."

Section 4 - The scroll

Air-region is a region. Air-region is in spell-region.

A vast-air is a kind of room with printed name "Above the Endless Deep" and description "[if flying-player is false]You are plummeting through the air, tossed up and down by shrieking winds and drafts[otherwise]You are flying over a endless dark lake which lies far, far below you. The shore is no longer in sight, and it's impossible to know how far you've gone or if you've even made any progress at all.

[gleamtext][end if]."

Instead of thinking in air-region:
	say "It's hard to think about anything besides the fact that you are suspended very high in the air."

To say gleamtext:
	say "[if the brilliant-scroll is not handled]To the [boldnorth], you still see a glint of gold[otherwise]The [boldnorth] is dark, now. The shore is to the [boldsouth], you think[end if]"

Falling-scene is a recurring scene. Falling-scene begins when the player is in flying trouble. Falling-scene ends normally when flying-player is true. Falling-scene ends abruptly when the player is not in air-region.

To decide whether the player is in flying trouble:
	if the player is not in air-region, decide no;
	if flying-player is true, decide no;
	decide yes;

The distant-gleam is in air-region.

Instead of shouting when the player is in air-region:
	say "'Echo!' you shout. But there's too much dead air."
	
Instead of waiting when the player is in air-region:
	say "You hover in mid-air for a bit, trying to balance on the eddies."

Instead of jumping when the player is in air-region:
	say "You fly a little higher, but not much changes."

Before going from a vast-air when flying-player is false:
	say "You can't control your movement at all; you are at the mercy of the air as it tosses you up and down at random." instead;

Understand "let go" as exiting when falling-scene is happening.

Before exiting during falling-scene:
	if the player is in air-scroll:
		try going down;

Before doing something during falling-scene:
	if the current action is freeacting:
		 do nothing;
	otherwise if the current action is spellcasting:
		 do nothing;
	otherwise if the current action is going nowhere:
		if the noun is down:
			say "You let go.

You pass out before you hit the water.

[sand-dying]";
		now the player is in end-room instead;
	otherwise:
		 say "[if the player is in air-scroll]You're hanging by your fingertips and can't move[otherwise]You're freefalling in the sky, being buffeted by the wind, and can't control yourself[end if]!" instead;

Instead of going nowhere from a vast-air:
	if the noun is down:
		say "Without the aid of the downdrafts from earlier, you can't make much progress going down. You must be up very, very high.";
	otherwise if the noun is up:
		say "You fly up as best as you can, but there is nothing you can see above you, and the lake before you is just as far aways as it ever is. The scale of this place is mind-boggling.";
	otherwise:
		say "You fly and fly and fly, but nothing seems all that different from when you started[if the brilliant-scroll is not handled]. You still see the gleam, far ahead[end if]."

Flying is an action applying to one visible thing. Understand the command "fly" as "go"

[This next stuff is redundant]

Carry out flying:
	if flying-player is true:
		try going the noun;
	otherwise if the player is in spell-region:
		say "Unfortunately, you aren't flying right now.";
	otherwise:
		say "Despite your childhood dreams, you can't fly.";

Singleflying is an action applying to nothing. Understand "fly" as singleflying. 
 
Carry out singleflying:
	if flying-player is true:
		say "Which way did you want to fly?";
	otherwise if the player is in spell-region:
		say "Unfortunately, you aren't flying right now.";
	otherwise:
		say "Despite your childhood dreams, you can't fly.";

Air1 is a vast-air. Air1 is north from Vast-room. Air1 is in air-region.
Air2 is a vast-air. Air2 is north from air1. Air2 is in air-region.
Air3 is a vast-air. Air3 is north from air2. Air3 is in air-region.
Air4 is a vast-air. Air4 is north from air3. Air4 is in air-region.

The life-text of a vast-air is usually "[The life-text of vast-room]."

After dropping something in air-region:
	now the noun is nowhere;
	say "[The noun] plummet[s] down until it is out of sight.

That...may not have been a good idea."

Air-scroll is a room. Air-scroll is in air-region. Air-scroll is north from air4. The printed name of Air-scroll is "Stalactite". "[first time]Finally, something different!

[only]You have come across the tip of a great stalactite which stretches as far above you as the lake is below you[if the brilliant-scroll is in stalactite-crack]. At the tip, in a crack, is a brilliant golden scroll[end if][if falling-scene is happening].

You are barely holding onto the crack by your fingertips[end if]."

The air-stalactite is scenery in air-scroll. The printed name of air-stalactite is "stalactite". Understand "stalactite" or "stalagmite" or "dark" or "craggy" as the air-stalactite. The description of the air-stalactite is "Like the finger of a chthonic god, the stalactite stabs down from above, dark, craggy, and unending. There is a crack in it near you, with [a list of things enclosed by stalactite-crack] in it.".

Instead of going nowhere from air-scroll:
	if the noun is up:
		say "You fly upwards to see how high the stalactite goes. But it stretches on and on, until it begins to make you hyperventilate thinking about it. You return to the relatively manageable bottom of the stalactite.";
	otherwise if the noun is down:
		say "As you shoot straight down, you find a vortex of wind that pulls you down at an incredible pace. You accelerate faster and faster, but it still takes several minutes for you finally to hit the water, which smells horrifyingly foul.

[sand-dying]";
		now the player is in end-room;
	otherwise:
		say "It's hard to move laterally around the stalactite; your light body is easily buffeted and gets wafted right back to where you were."

Before going from air-scroll when flying-player is false:
	say "You can't move; you're hanging by your finger tips!"

The stalactite-crack is scenery in air-scroll. The stalactite-crack is an unopenable open container. Understand "crack" as the stalactite-crack. The printed name of the stalactite-crack is "crack".  The description of the stalactite-crack is "A crack is gouged into the stalactite, holding [a list of things enclosed by the stalactite-crack]."

Instead of inserting something into the stalactite-crack:
	say "It's too difficult to wedge anything in there!"

The brilliant-scroll is a spell-scroll in stalactite-crack. The printed name of the brilliant-scroll is "brilliant scroll". Understand "brilliant" or "collox" as the brilliant-scroll. The associated-spell of brilliant-scroll is Collox.

After taking unoncetaken brilliant-scroll during falling-scene:
	say "You barely manage to fish out the brilliant scroll.";
	now brilliant-scroll is held by the player;

Every turn when the player is in spell-region:
	if brilliant-scroll is handled:
		now distant-gleam is nowhere;

[fix this later: what about dropping spellbook? maybe make it always come back when you die]

[FIX THIS LATER Add special commands for going nowhere and make sure nothing references the floor or jumping]

[FIX THIS LATER ADD WHEN THE HEDFAN FlyingPLayer MAGIC PETERS OUT AND YOU BEGIN TO FALL]

Section 5 - The scroll's spell
	
Collox is a magic-spell. The spell-preview of collox is "Attract nearby ferrous metals to the caster"

Colloxing is an action applying to nothing. Colloxing is spellcasting. Understand "collox" or "say collox" as colloxing.

Check colloxing:
	if collox is not in spell-book:
		noscroll collox instead;
	otherwise if the spell-book is not held by the player:
		nobook collox instead;
	otherwise if the player is not in eye-room:
		say "You say the word, 'Collox', but nothing around you responds. There must not be a lot of ferrous metal around here." instead;

Carry out colloxing:
	if the heavy-portcullis is unripped:
		say "You say the word, 'Collox', and green sparks fly out of the spellbook and towards the iron portcullis in the western wall.

You immediately feel a tension between you and the door. An irresistible force builds, but something seems to be holding you in place.

It almost feels like your bones are going to shatter when, instead, the portcullis explodes into hundreds of metal shards, which riddle your body.

[sand-dying]";
		now the heavy-portcullis is open;
		now the heavy-portcullis is ripped;
		now the player is in end-room;
	otherwise:
		say "You say the word, 'collox', but nothing happens. Thankfully.";

Instead of closing the heavy-portcullis:
	if the heavy-portcullis is closed:
		say "It's already closed!";
	otherwise:
		say "There's not enough of it left to close."

Chapter 8 - The eye

[myriad eyes watching you or a creature scuttling around, maybe too much crossover with hunt]

Section 1 - Setup

EyeballList is a list of text that varies. EyeballList is {"yourself staring into the camera"}.

To say randomflavor:
	say "[one of]nervously[or]fearfully[or]with great trepidation[or]with terror in [our] eyes[at random] "

After the player doing something when the player is in spell-region:
	if the action name part of the current action is a behavior listed in the table of monitored activities:
		choose the row with behavior of action name part of current action in the table of monitored activities;
		let behaviorpart be "[summaries entry]";
		choose the row with locale of the location in the table of Room shorthands;
		let localepart be "[summaries entry]";
		add "[behaviorpart] [if a random chance of 1 in 4 succeeds][randomflavor][end if][localepart]" to EyeballList;
		if the number of entries in EyeballList > 10:
			sort EyeballList in random order;
			truncate EyeballList to the last 10 entries;
	continue the action;

Table 1 - Monitored Activities
behavior	summaries
the taking inventory action	"[the player] looking through [their] possessions"
the anghofioing action	"[the player] wiping [their] memory"
the diroxing action	"[the player] casting a spell and looking at [their] spellbook"
the clapping action	"[the player] clapping"
the closing action	"[the player] closing [the rucksack]"
the crying action	"[the player] crying"
the dancing action	"[the player] dancing"
the exfiling action	"[the player] casting a spell"
the colloxing action	"[the player] casting a spell that makes metal fly towards you in a terrifying way"
the dropping action	"[the player] dropping something"
the examining action	"[the player] looking intently at something"
the teloxing action	"[the player] erupting into a pile of black sand"
the flying action	"[the player] soaring through the air"
the going action	"[the player] wandering"
the denoxng action	"[the player] pointing and casting a spell"
the exkliping action	"[the player] casting a spell and changing in density"
the sanoxing action	"[the player] sending a shower of black sparks around [themselves]"
the malloxing action	"[the player] casting a spell that melts bones"
the jumping action	"[the player] leaping"
the kissing action	"[the player] kissing something"
the remoxng action	"[the player] bursting into flames"
the looking action	"[the player] staring around"
the quadoxing action	"[the player] casting a spell and becoming enraged, running around"
the viroxing action	"[the player] casting a spell and becoming covered in sores, weeping"
the reading action	"[the player] reading"
the searching action	"[the player] searching around"
the shouting action	"[the player] shouting"
the sleeping action	"[the player] dozing off"
the squeezing action	"[the player] squeezing something"
the taking action	"[the player] grabbing something"
the touching action	"[the player] touching something"
the thinking action	"[the player] standing around, thinking"
the waiting action	"[the player] staring at the camera"
the waving hands action	"[the player] waving at the camera"
the wearing action	"[the player] getting dressed"

Table 2 - Room shorthands
locale	summaries
black-dome	"standing in a hemispherical dome"
lonely-room	"in an underground village"
buried-room	"in an impossibly tight crevice"
end-room	"in a graveyard of bodies"
vast-room	"while standing on the edge of a towering cliff"
eye-room	"in this very room"
stranger-room	"standing near a humanoid figure"
desolation-room	"in a room filled with flames"
corruption-room	"in a room crawling with insects of every kind"
flesh-room	"in a room filled with bizarre beasts"
hunt-room	"in an empty room"
slaughter-room	"in a room with a cage"
vast-ladder	"while clinging to a ladder"
web-room	"in a room filled with cobwebs"
spiral-room	"in a bizarre maze of shifting colors"
dark-room	"in front of a completely dark background"
lonely-house	"inside a stone house"
lonely-alley	"between two houses"
north-lonely	"next to a tall crack"
air-scroll	"near a giant stalactite"
air1	"while flying in mid-air"
air2	"while flying in mid-air"
air3	"while flying in mid-air"
air4	"while flying in mid-air"

Section 2 - The room itself

Desolation-attempt is a number that varies. Desolation-attempt is 0.

The eye-room is west from vast-room. The eye-room is a room in spell-region. The printed name of the eye-room is "Monitor Room". "This room is a dead end, an isolated and irregularly-shaped chamber. Over every available surface are a collection of monitors and cameras of every kind: analog, digital, CRT, flatscreen, holographic, flash bulb and some you've never even conceived of.

[if the eye-monitors are unawakened]All of the cameras and monitors seem completely inert[otherwise]Every camera in the room is trained on you. The majority of monitors are displaying video of you[end if]. One large monitor labelled SECURITY [monitortext].

The underground lake is to the [boldeast]. [if the heavy-portcullis is unripped]There is also a heavy portcullis to [otherwise]You can also leave to [end if]the [boldwest]."

[add in a way to access the room to the west].

Before going west to eye-room:
	say "You inch your way around to the west side of chamber, entering a smaller room."

The eye-monitors are unawakened plural-named scenery in eye-room. The description of the eye-monitors is "Monitors and cameras grow like mushroom from the rocks themselves. A huge variety of devices are represented here spanning every type of monitoring equipment you know and some you don't.

[if the eye-monitors are unawakened]With no noticeable sources of power, all of the devices are inert and inactive. It's a little disheartening[otherwise]The cameras are all focused on your every move, panning left and right and zooming in, with occasional flashes going off.

The monitors all show various videos of you, including one of [eyeballtime][end if].

The biggest monitor, labelled SECURITY, [monitortext]." Understand "monitors"  or "analog" or " digital" or "devices" or "device" or "mushrooms" or "Mushroom" or "CRT" or "flatscreen" or "holographic" or "flash bulb" or "video" or "bulb" or "monitors" or "flash" or "camera" or "cameras" as the eye-monitors. The printed name of the eye-monitors is "various devices".

To say eyeballtime:
	sort EyeballList in random order;
	say "[entry 1 of EyeballList]";

[The eye-eyes are plural-named scenery in eye-room. Understand "eyes" or "eyeballs" or "ball" or "balls" or "red" or "blood" or "shot" or "blood-shot" or "bloodshot" or "eye" or "cat" or "slitted" or "compound" or "insect" or "human" or "human-looking" or "looking" as the eye-eyes when the eye-monitors are awakened. The description of the eye-eyes is "Eyeballs of all kinds have opened up among the cameras and monitors. Large compound insect eyes are next to slitted cat eyes and quite a few human-looking ones."
]
Instead of switching on the eye-monitors:
	say "There are no visible switches, or power sources of any kind."

Instead of switching off the eye-monitors:
	say "There are no visible switches, or power sources of any kind."

[Instead of touching the eye-eyes:
	say "[one of]You poke some of the eyeballs. They flinch away in pain.[or]You're not the kind of person to torment the eyeballs.[stopping]"

Before doing anything other than touching or examining to the eye-eyes:
	if the current action is not spellcasting:
		say "They eyes are frankly disgusting. The less you look at or deal with them, the better." instead;]

[add cameras separately, and floor and walls for all rooms]

[can see wrapped up teddy bear in web room]

The desolation-screen is scenery in eye-room. The printed name of the desolation-screen is "security monitor". Understand "large" or "security" or "monitor" or "conspicuous" or "security" or "label" or "labelled" or "static" as the desolation-screen. The description of the desolation-screen is "This monitor juts out in front of all the others. It says SECURITY. [monitorloop]."

Instead of switching on the desolation-screen:
	say "There's no power source, button, or switch for the security monitor."

To say monitortext:
	if the eye-monitors are unawakened:
		say "is more conspicuous than the others";
	otherwise if the eye-camera is unawakened:
		say "is showing only static";
	otherwise if desolation-attempt is 0:
		say "is showing only static";
	otherwise:
		say "is showing a looping video of you in a room filled with fire"

To say monitorloop:
	if the eye-monitors are unawakened:
		say "It's turned off, though, like them all";
	otherwise if the eye-camera is unawakened:
		say "It's turned on, but is showing only static";
	otherwise if desolation-attempt is 0:
		say "It's turned on, but is showing only static";
	otherwise if desolation-attempt is 1:
		say "It is currently playing a video of you from earlier: 

[one of]It shows you standing in front of a black pillar. Though there is no sound, it looks like you say a word, and the pillar crackles to life with golden sparks[or]The pillar rises from the ground, and all of the fire in the room dims. The deer-like creatures all turn to stare at you[or]The pillar continues to rise, revealing a hollow portion that has some kind of pump attached to a section of pipe. An enormous gout of slime knocks burst from the pump and splashes you, knocking you to the ground[or]You are covered in slime, which apparently is coming from some creature that is stuck in the machine[or]You take the slime on your hands and write the word SPLASH on the ground before settling back, defeated. The pillar sinks back down into the ground[cycling]";
	otherwise if desolation-attempt is 2:
		say "It is currently playing a video of you from earlier: 

[one of]It shows you floating in front of a black pillar. Though there is no sound, it looks like you say a word, and the pillar crackles to life with golden sparks[or]The pillar rises from the ground, and all of the fire in the room dims. The deer-like creatures all turn to stare at you[or]The pillar continues to rise, revealing a hollow portion that has some kind of pump attached to a section of pipe. An enormous gout of slime knocks burst from the pump, but you dodge it midair. There seems to be a creature stuck inside of the pipe[or]You settle back down to the ground from your flight spell wearing off. You seem to notice something inside the pipe in the pillar, behind the creature, although the camera doesn't record what it is. You reach to grab it, ignoring the creature's weak tentacles[or]The creature's tentacles grab the spellbook out of your hand and beat you with it over and over until you slump to the ground. The creature drops the spellbook, and the pillar sinks down into the ground[cycling]";
	otherwise if desolation-attempt is 3:
		say "It is currently playing a video of you from earlier:

[one of]It shows you floating in front of a black pillar. Though there is no sound, it looks like you say a word, and the pillar crackles to life with golden sparks[or]The pillar rises from the ground, and all of the fire in the room dims. The deer-like creatures all turn to stare at you[or]The pillar continues to rise, revealing a hollow portion that has some kind of pump attached to a section of pipe. An enormous gout of slime knocks burst from the pump, but you dodge it midair. There seems to be a creature stuck inside of the pipe[or]You settle back down to the ground from your flight spell wearing off. You seem to notice something inside the pipe in the pillar, behind the creature, although the camera doesn't record what it is. You reach for it, but your arm doesn't seem to be long enough. You look around for something, but don't seem to find whatever it is you're looking for, so you shove your arm back in. The creature slaps at you ineffectually, trying to find something to use against you, but finding nothing[or]The pillar sinks back down, and you slam your fist on it in frustration[cycling]";
	otherwise if desolation-attempt is 4:
		say "It is currently playing a video of you from earlier:

[one of]It shows you floating in front of a black pillar. Though there is no sound, it looks like you say a word, and the pillar crackles to life with golden sparks[or]The pillar rises from the ground, and all of the fire in the room dims. The deer-like creatures all turn to stare at you[or]The pillar continues to rise, revealing a hollow portion that has some kind of pump attached to a section of pipe. An enormous gout of slime knocks burst from the pump, but you dodge it midair. There seems to be a creature stuck inside of the pipe[or]You settle back down to the ground from your flight spell wearing off. You seem to notice something inside the pipe in the pillar, behind the creature, although the camera doesn't record what it is. You reach for it, but your arm doesn't seem to be long enough. You look around for something, but don't seem to find whatever it is you're looking for, so you shove your arm back in. The creature slaps at you ineffectually[or]The creature's tentacles continue to writhe at you but finding no way to stop you. You seem to have an idea--the bookmark! You reach the bookmark in and use it as a hook to pull down the scroll. 

The scroll comes out, but the whole creature comes with it! Free from the machine, you see it is a deformed version of one of the deer creatures. It stumbles toward you, tentacles flaying. You kick it, and it flies into the fire as the pillar sinks back down[cycling]";
	otherwise:
		say "It is once again showing only static.";
		
Splashing is an action applying to nothing. Understand "splash" as splashing when the player is in spell-region.

Carry out splashing:
	say "[one of]You...you don't know how to splash.[or]Splash doesn't really make sense as an action.[or]You stoutly refuse to splash.[stopping]"

[FIX THIS LATER add examining stuff to the nouns in the above thing]

The life-text of eye-room is "[paragraph break][italic type]Watchers[roman type][line break]Quantity: 153[line break]Mass: 2444 kg"

Chapter 9 - Stranger

Section 1 -The room itself

Before going east to stranger-room:
	say "You inch your way slowly around the edge of the chamber, finding yourself in a smaller room."

The stranger-room is southeast from vast-room. The stranger-room is a room in spell-region. The printed name of the stranger-room is "Branching Room".

[Maybe you find what you think is yourself but it's actually a lying stranger?]
[another avatar like yours, but stuck in an endless loop]
The description of the stranger-room is "This room branches in many directions. Like the other rooms, it is formed from some dark, gritty mineral that has been carved into a large open space.

Exits lead to the [boldnorthwest], [boldsouth], [boldeast], [boldnortheast] and [boldnorth]. A flickering blue glow comes from the exit to the south, leaving dancing shadows on the floor.

In the center of the room is [a strange-man] with a heavy white beard and long white hair, wearing a robe similar to yours[deliverstranger]."

The gritty-mineral is scenery in the stranger-room. The printed name of the gritty-mineral is "mineral". UNderstand "carved" or "dark" or "gritty" or "mineral" or "rough" or "Graphite" as the gritty-mineral. The description of the gritty-mineral is "The more you think about, the stranger the material is in this cave. It has a lot in common with graphite, but sturdier."

Instead of touching or rubbing the gritty-mineral:
	say "The mineral is rough against your fingertips."
	
The flickering-blue is distant scenery in stranger-room. Understand "flickering" or "glow" or "Blue" or "flame" or "fire" or "fires" as the flickering-blue. The printed name of the flickering-blue is "flickering blue glow". The description of the flickering-blue is "A blue glow comes from the south, unusual in its intensity. It sends dancing shadows across the floor."

The stranger-shadows are scenery in the stranger-room. The printed name of the stranger-shadows is "dancing shadows". Understand "dancing" or "shadow" or "shadows" as the stranger-shadows. The description of the stranger-shadows is "The shadows in this room are lit by the blue glow from the south. They dance in chaos."

Instead of doing anything other than examining to the stranger-shadows:
	say "The shadows are immaterial, and move too quickly to do anything with."

[make the robe a thing for the player]

To say deliverstranger:
	deliver stranger-quip;
	
Stranger-quip is a quip. The printed name of stranger-quip is "Stranger". Understand "stranger" as stranger-quip. The preview of stranger-quip is "Excuse me, who are you?" The target of stranger-quip is the strange-man.

The targetresponse of stranger-quip is "The old man doesn't look at you, but becomes more active, huffing and puffing and swinging his arms around.

He says, 'My back is aching terribly. Could you push it for me? Terrible back pain.'"

Section 2 - The strange man

The strange-man is a man in stranger-room. The strange-man is not proper-named. The printed name of the strange-man is "old man". Understand "old" or "man" or "hair" or "strand" or "strands" or "mouth" or " skin" or "eye" or "arm" or "arms" or "eyes" or "white" or "beard" or "rock" as the strange-man. The description of the strange-man is "[one of]The more you look at [the strange-man], the more you realize that h[or]H[stopping]e isn't really...human. He isn't breathing. There is a lack of detail in its hair; there aren't actually individual strands. His eyes don't move, and seem fused to the skin around them[if exklip-scroll is not handled].

He is holding a light golden scroll[end if][delivernature]."

The life-text of stranger-room is "[paragraph break][italic type]Angler[roman type][line break]Quantity: 1[line break]Mass: 800 kg"

To say delivernature:
	deliver nature-quip;

Nature-quip is a quip. The target of nature-quip is strange-man. The printed name of nature-quip is "Nature". Understand "nature" as the nature-quip. The preview of nature-quip is "What [italic type]are[roman type] you?"

The targetresponse of nature-quip is "The old man sways and says, 'Good point, good point. But my back aches so much. Push into it, will you?'"

The stranger-back is part of the strange-man. Understand "back" or "[strange-man]'s back" as the stranger-back. The printed name of the stranger-back is "[strange-man]'s back". The description of the stranger-back is "It's hard to see the old man's back, as he turns with you as you walk around. It's hard to know what's back there."

Instead of pushing the strange-man:
	try pushing the stranger-back;

Before doing anything other than examining to the stranger-back:
	if exklip-scroll is handled:
		say "Now that you know what the man is capable of, and have the scroll, there's no need to mess with him again.";
	otherwise:
		if the current action is spellcasting:
			if the noun is the stranger-back:
				now the noun is the strange-man;
			if the second noun is the stranger-back:
				now the second noun is the strange-man;
		otherwise if the strange-man is restraining:
			say "You can't get around the man, with his iron grip on you." instead;
		otherwise:
			say "You approach the old man to touch his back, but he reaches out languidly and grips your arm.

	His hand feels boneless but frighteningly strong, like a tentacle or a snake. He's no longer holding the scroll tightly.";
			now the strange-man is restraining instead;

The strange-hand is part of the strange-man. Understand "hand" or "smooth" or " boneless" or "[strange-man]'s hand" as the strange-hand when gripped-scene is happening. The printed name of the strange-hand is "[strange-man]'s hand". The description of the strange-hand is "The stranger's hand is smooth and boneless but strong as iron on your arm."

Before doing anything other than examining to the strange-hand:
	if the current action is spellcasting:
		if the noun is the strange-hand:
			now the noun is the strange-man;
		if the second noun is the strange-hand:
			now the second noun is the strange-man;
	otherwise:
		say "Nothing you do has any effect on [the strange-man]'s hand." instead;

Every turn when stranger-quip is enclosed by the player:
	if exklip-scroll is not held by strange-man:
		remove stranger-quip;

The strange-man can be restraining or unrestraining. The strange-man is unrestraining.

Gripped-scene is a recurring scene. Gripped-scene begins when the strange-man is restraining.

Gripped-scene ends abruptly when the player is not in spell-region.

Before doing something other than freeacting or spellcasting or taking during gripped-scene:
	if the player is in stranger-room:
		say "[The strange-man]'s arm has you in an iron grip, and you can't move freely." instead;

Gripped-scene ends normally when the player is not in stranger-room.

Every turn during Gripped-scene:
	if the time since gripped-scene began is 0 minutes:
		do nothing;
	otherwise if the time since gripped-scene began is at most 3 minutes:
		say "The old man pulls you very slowly towards himself. You can't get his arm off.";
	otherwise:
		say "The old man tugs you all the way up to his face. 'Thanks so much for stopping by. I'll tell Gran you said hello,' he says. 

Your face is now pressing into his, squishing into where his nose and eyes should be, but it all feels like soft pudding. There is something sharp pressing into your back and sides.

[sand-dying]";
		now the player is in end-room;

The can't take people's possessions rule does nothing when gripped-scene is happening.
		
When gripped-scene ends:
	now the strange-man is not restraining;

[alternative is an almost-human alien being]

[awakening this makes the under part of it reveal its true nature. This thing is actually asleep]

Section 3 - The exklip spell

The exklip-scroll is a spell-scroll. The exklip-scroll is held by the strange-man. The printed name of the exklip-scroll is "light scroll". Understand "light" or "exklip" as exklip-scroll. The associated-spell of exklip-scroll is Exklip.

Before taking the exklip-scroll when the exklip-scroll is held by the strange-man:
	if gripped-scene is not happening:
		say "The old man shifts in a boneless way to face you, but holds the scroll at arm's reach away from you." instead;

[FIX THIS LATER ADD ROCKS BY THE FACE]

Exklip is a magic-spell. The spell-preview of Exklip is "[if bookmarkon is true]Allow the caster to fly[otherwise]Petrify the caster[end if]"

Exkliping is an action applying to nothing. Exkliping is spellcasting. Understand "Exklip" or "say exklip" as Exkliping.

Flying-player is a truth-state that varies. Flying-player is false.

Check Exkliping:
	if Exklip is not in spell-book:
		noscroll Exklip instead;
	otherwise if the spell-book is not held by the player:
		nobook Exklip instead;
	otherwise if bookmarkon is false:
		say "Your body seizes up in an instant. Your vision goes dark. You lose all sensation, for how long, you can't tell. Finally, eventually, there is release.

[sand-dying]";
		now the player is in end-room instead;
	otherwise if flying-player is true:
		say "You say the word, 'Exklip'. Golden sparks ignite all over your body, then disappear, but nothing happens. It seems that repeating the spell while it's working had no effect." instead;

Carry out Exkliping:
	now flying-player is true;
	
Report exkliping:
	say "You say the word, 'Exklip'. Golden sparks ignite all over your body, then disappear, burrowing into your skin. 

[first time]You feel a horrible feeling inside, like you're wilting and having to vomit all at once. [only]You cough, and a black cloud flows out and disperses into the air[first time]. Simultaneously, you feel much lighter, and much more frail[only]. [if the player is in vast-ladder]

[flyawaytext][otherwise][briefflying][end if]."

To say flyawaytext:
	say "Unfortunately, the wind is now whipping your frail body around much more than before. It tears you away from the rock face before slamming you back into it like an egg cracking onto a pan.

[Sand-Dying]";
	now the player is in end-room;
	say "At least your body feels normal again"
	
To say briefflying:
	say "You are flying several feet off the ground[first time]. It feels...good[only]"

Before going down from vast-room when flying-player is true:
	say "[flyawaytext]." instead;

Flyingtime is a recurring scene. Flyingtime begins when flying-player is true.

Flyingtime ends abruptly when the player is not in spell-region.
Flyingtime ends bizarrely when the player is in end-room.
Flyingtime ends forgetfully when anghofiotime begins.

Flyingtime ends normally when the time since flyingtime began is 4 minutes.

When flyingtime ends normally:
	say "The air around you condenses into a dark mist, which invades your mouth, eyes and ears. The gritty material pours into you, and you feel weight coming back into your body.

[if the player is in a vast-air]You lose control, and begin plummeting. Winds buffet you in every direction. You are falling![otherwise if the player is in air-scroll]You start to fall, and desperately grab onto the crack, barely holding on by your fingertips.[otherwise]You fall heavily onto the floor. You are no longer flying.[end if]";
	now flying-player is false;
	
When flyingtime ends:
	now flying-player is false;
	
Flyingtime ends forgetfully when anghofiotime ends.

Chapter 10 - Desolation

[burning room]

Section 1 - The room itself

The desolation-room is south from stranger-room. The desolation-room is a room in spell-region. The printed name of the desolation-room is "Burning Room".

The description of the desolation-room is "[first time]As you first enter this room, you are immediately driven back by the intense heat and glow, shocking to the eyes and skin. But with a little patience, you adapt.

[only]This room is crossed by numerous rifts, from the size of a few centimeters apart to the size of a millimeter or less. From each rift rises jets of blue flame.

An endless parade of peaceful creatures from the [boldeast] are immolating themselves into the flames, one at a time. 

A [if eye-camera is unawakened]single camera hangs limply from the ceiling, pointed nowhere in particular[otherwise]single camera is pointed directly at the black column[end if].

A black column with flowing golden script on it is in the middle of the room. You can leave to the [boldnorth]."

[in description: the creatures are deer-like, their flat, wet eyes reflecting the flames, all withered and small]

The rift-fissures are plural-named scenery in desolation-room. The printed name of the rift-fissures is "flaming fissures". Understand "fire" or "flame" or "Flames" or "fissure" or "crack" or "jets" or "jet" or "cracks" or "cracked" or "fissures" or "Rift" or "rifts" as the rift-fissures. The description of the rift-fissures is "The fissures and cracks all over the room have jets of blue flame arising from them. Getting as close as you possibly can, you peek down the rift at an angle, but it's too hard to see what's down there. Maybe a liquid? Maybe not."

REport examining cave-floor in desolation-room:
	say "It is crossed with numerous fissures filled with flames."

Instead of physicality when the noun is the rift-fissures:
	say "You approach [the rift-fissures], but the heat is too strong.

****************************************************************************[line break]There is only fire and the sound of rushing sand[line break]****************************************************************************";
	now the player is in end-room;

The life-text of desolation-room is "[paragraph break][italic type]Climbers[roman type][line break]Quantity: Variable[line break]Mass: variable"

The desolation-deer are plural-named scenery animals in desolation-room. The printed name of the desolation-deer is "creatures". Understand "malformed" or "wrong" or "missing" or "creature" or "creatures" or "peaceful" or "parade" or "beast" or "beasts" or "goat" or "goats" or "deer" or "deers" as the desolation-deer. 

The description of the desolation-deer is "A line of creatures that look like malformed deer or goats stretches out to the the room to the [boldeast]. One by one, the creatures leap or crawl or struggle forward into the flame-filled fissures, where they melt down with a shriek. 

Each is different from the others: shorter, or missing a limb, or having too many limbs."

Instead of physicality when the noun is the desolation-deer:
	say "You touch one creature, your fingers digging into the rubbery flesh. The deer creature shrieks and bounds away from you, incinerating itself in one of the fissures.";

Instead of listening to the desolation-room:
	say "The room is filled with hisses and shrieks."

Section 2 - The cleaning column

The desolate-column is scenery in desolation-room. The printed name of the desolate-column is "black column". Understand "black" or "column" as the desolate-column. The description of the desolate-column is "This thick column looks artifical, in stark contrast to the rest of the room.

On the column is an inscription in gold script."

The desolate-inscription is part of the desolate-column. The printed name of the desolate-inscription is "golden inscription". Understand "gold" or "gold" or "Anghofio" or "script" or "inscription" or "engraving" as the desolate-inscription. The description of the desolate-inscription is "In golden script is the following message:

'This area is restricted to authorized personnel only. Any use of this device will be monitored and recorded by all available surveillance. Access to this device is only allowed after reciting the following spell: 

'[italic type]Anghofio[roman type]: Forget the next five minutes.'"

Instead of denoxng the desolate-inscription:
	say "You say Denox and point at the inscription. Your spellbook flares, but this kind of spell doesn't seem to be copyable."

Anghofioing is an action applying to nothing. Understand "anghofio" or "say anghofio" as anghofioing.

Check anghofioing:
	if the player is not in desolation-room:
		say "You say, 'Anghofio', but nothing happens." instead;
	otherwise if desolation-attempt is 4:
		say "Nothing happens. Apparently that spell doesn't work anymore." instead;

The spell-book can be bloodied or not bloodied. The spell-book is not bloodied.

Understand "blood" or "bloody" as bloodied. Understand the bloodied property as describing the spell-book.

Report examining the spell-book when the spell-book is bloodied:
	say "There are drops of blood on the spellbook.";

After rubbing the bloodied spell-book:
	say "You wipe the blood off of [the spell-book].";
	now the spell-book is not bloodied;

To decide whether reach is inadequate:
	if the spiral-bookmark is held by the player:
		decide no;
	if rubbery-player is true:
		decide no;
	decide yes;

Carry out anghofioing:
	say "You say, 'Anghofio', and the whole world goes dark. 

	****************************************************************************[line break]Five minutes later[line break]****************************************************************************[paragraph break]";
	if player-burning is happening:
		now the player is in end-room;
		say "You wake up with a start, no longer burning. You don't remember anything from the last five minutes.";
	otherwise if rottingtime is happening:
		now the player is in end-room;
		say "You wake up with a start, no longer diseased. You don't remember anything from the last five minutes.";
	otherwise if flying-player is false:
		say "You wake up gasping and spluttering on the floor, completely covered in viscous slime.

		Fortunately, the intense heat from the flames is evaporating the liquid.

		Before all the slime evaporates, you notice that, on the ground, in your handwriting, is traced out in slime the word 'SPLASH'. But it, too evaporates, and the room is as it was before. You remember nothing of what happened for the last five minutes.";
		if the eye-camera is awakened:
			now desolation-attempt is 1;
	otherwise if the spell-book is enclosed by the player:
		now the spell-book is in the location;
		now the spell-book is bloodied;
		say "You wake up flattened out on the floor, battered and bruised, with numerous cuts and indents on your arms and face. All of your injuries are coated in slime, as is the floor.

	Your spellbook lies next to you, with a healthy dose of slime and drops of human-looking blood on it.

	Once the slime on your skin is completely gone, you find your wounds healed.

	Your whole body aches, and your spellbook is still lying on the floor. You have no idea what happened in the last five minutes.";
		if the eye-camera is awakened:
			now desolation-attempt is 2;
	otherwise if reach is inadequate:
		say "You wake up to find yourself standing, pounding at the pillar with your first. Your right arm is completely soaked in slime from top to bottom, and your face is twisted in a grimace.

You have no idea what's happened in the last five minutes.";
		if the eye-camera is awakened:
			now desolation-attempt is 3;
	otherwise:
		say "You wake up just in time to see yourself kicking a panicked, wriggling and deformed deer-like creature with dozens of tentacles into one of the fire pits. It screams as it is melted away.

Your right arm is covered in slime, which is slowly burning off. In your hand is clutched a slimy golden scroll.

You have no idea what's happened in the last five minutes. But you feel a sense of triumph.";
		now slimy-scroll is held by the player;
		if the eye-camera is awakened:
			now desolation-attempt is 4;
	if the eye-camera is unawakened:
		now desolation-attempt is 0;
	now anghofioflag is true;
	
Anghofioflag is a truth state that varies. Anghofioflag is false.

anghofiotime is a recurring scene. anghofiotime begins when anghofioflag is true.

Anghofiotime ends when the time since anghofiotime began is 1 minutes.

When anghofiotime ends:
	now anghofioflag is false.

[turn off spell effects before this time. What about corruption? Healed by slime?]

[add slime and pseudolimbs as object]

Slimy-scroll is a spell-scroll. The printed name of slimy-scroll is "slimy scroll". Understand "slimy" or "scroll" or "remox" as the slimy-scroll. The associated-spell of slimy-scroll is Remox.

Remox is a magic-spell. The spell-preview of Remox is "[if bookmarkon is false]Sets the caster on fire[otherwise]Douse a caster who is on fire[end if]"

Remoxng is an action applying to nothing. Remoxng is spellcasting. Understand "Remox" or "say remox" as remoxng.

PlayerAflame is a truth state that varies. PlayerAflame is false.

Check remoxng:
	if remox is not in spell-book:
		noscroll remox instead;
	otherwise if the spell-book is not held by the player:
		nobook remox instead;

Carry out remoxng:
	if bookmarkon is false:
		if playeraflame is true:
			say "You say the word, 'Remox', but nothing happens.";
		otherwise:
			say "You say the word, 'Remox'. Golden sparks erupt out of your spellbook and towards you. Everywhere they touch you, flames burst out of your body. You feel warm, but only that[if in darkness].

The dark absorbs all the light instantly, leaving the flames visible but unhelpful[end if].";
			now playerAflame is true;
	otherwise:
		if playeraflame is false:
			say "You say the word, 'Remox', but nothing happens.";
		otherwise:
			now playerAflame is false;
			say "You say the word, 'Remox', and the flames over your body diminish and flicker out. You collapse to the floor with relief. Your skin crackles and crispens as it smooths itself out. It stings quite a bit as your nerve endings grow back.";

Player-burning is a recurring scene. Player-burning begins when playeraflame is true.

Every turn during player-burning:
	if the time since player-burning began is 1 minutes:
		say "The flames that wreathe you grow taller and significantly more painful.";
	if the time since player-burning began is 2 minutes:
		say "Your skin is beginning to crispen in the flames.";
	if the time since player-burning began is 3 minutes:
		say "It is difficult to breathe as the fire burns away all the oxygen. The pain makes it difficult to walk.";
	if the time since player-burning began is 4 minutes:
		say "The flames are consuming you. With one last gasp, you fall to the ground.

[Sand-Dying]";
		now the player is in end-room;

Player-burning ends normally when the player is in end-room.
Player-burning ends forgetfully when anghofiotime begins.
Player-burning ends abruptly when the player is not in spell-region.
Player-burning ends mercifully when playerAflame is false.

When player-burning ends:
	now playerAflame is false;

Section 3 - The eye camera

[allow touching the camera if flying!]

The eye-camera is unawakened distant scenery in desolation-room. The printed name of the eye-camera is "camera". The description of the eye-camera is "[if the eye-camera is unawakened]The camera hangs limply from the ceiling. It might be turned on, but it certainly doesn't look like it[otherwise]The camera is active, pointed directly at the black pillar, moving slightly every few seconds to get different angles on it[end if]." Understand "camera" or "lone" as the eye-camera.

Chapter 11 - Spiral

[this room is constantly morphing, changing in response to you and your thoughts]
[it's picking up weird feedback between you and it. Maybe this is where you are close to your real body?]

Before going nowhere from spiral-room:
	unless spiral-level is 0:
		say "You can't find any way out of here. How did you get here in the first place?" instead;
	otherwise if the noun is outside:
		try going southwest;
		
Instead of exiting when the player is in spiral-room:
	try going outside instead;

Before going from spiral-room:
	unless spiral-level is 0:
		say "You can't find any way out of here. How did you get here in the first place?" instead;

Section 1 - Main room and setup

Spiral-level is a number that varies. Spiral-level is 0.

The spiral-room is northeast from stranger-room. The spiral-room is in spell-region. The printed name of the spiral-room is "[spiral-text]"

[ADD HYBLYG FOR THE THREE IMPOSTERS WE GET HERE]

[FIX THIS LATER add digital books]

To say spiral-text:
	if spiral-level is 0:
		say "Cavern";
	otherwise if spiral-level is 1:
		say "Mother's Kitchen";
	otherwise if spiral-level is 2:
		say "School Library";
	otherwise:
		say "Vacuum of Space"

The life-text of spiral-room is "[paragraph break][italic type]SYSTEM ERROR[roman type][line break]Quantity: ERROR[line break]Mass: ERROR"

The description of spiral-room is "[if spiral-level is 0]This room is almost perfectly hexagonal, and clean from much of the grit and dust found in the other rooms. The walls are smooth and glossy, rising up into a point at the top. You can leave to the [boldsouthwest].

On the floor is traced [otherwise if spiral-level is 1]Your mother's kitchen is bright and sunny. The windows are open, and fresh air breezes in from outside. 

Your mother is pottering around, making lunch for you. The counters are clean, as is the rug on the floor.

On the rug is embroidered [otherwise if spiral-level is 2]Your middle school library is, refreshingly, filled with both paper and digital books. One of the benefits of private school.

Out in the hallway, you can hear the bustle of students pushing and shoving on their way to class. But, as a library assistant, you get to spend your time taking care of the books and shelves. The librarian is quietly working away, happy to have you with her.

Sometimes you just like walking on the tile floor, on which is drawn [otherwise]Impossibly, you are standing on the hull of the Starship Tragwyddol. You can see that the entire ship has been ruptured by a violent explosion. All around you is floating debris, but somehow you are still experiencing gravity.

A body floats by you, frozen, not wearing a suit at all. It is your own.

On the hull is etched [end if]a labyrinth of the traditional type, spiraling out in a measured pattern. 

The one odd thing that you can't really understand, though, is [if spiral-level is 0]the lamp that's plugged into the wall[otherwise if spiral-level is 1]the middle school locker on the wall[otherwise if spiral-level is 2]the cracked spacesuit helmet floating here[otherwise]the stalagmite growing out of the starship hull[end if]."

[mom confronts you, the books confront you, your body confronts you]

A thing can be spiralon or spiraloff. A thing is usually spiraloff.

The spiral-labyrinth is scenery in spiral-room. The printed name of the spiral-laybyrinth is "labyrinth". 

Understand "labyrinth" or "maze" or "floor" as the spiral-labyrinth. 

Understand "tracing" as the spiral-labyrinth when spiral-level is 0. 

Understand "rug" or "[spiral-spector]'s rug" as the spiral-labyrinth when spiral-level is 1.

Understand "tile" or "tiles" as the spiral-labyrinth when spiral-level is 2.

Understand "etching" or "hull" or "etched" as the spiral-labyrinth when spiral-level is 3.

The description of the spiral-labyrinth is "[if spiral-level is 0]There is a labyrinth etched into the floor; not a maze per se, but the kind of design used for walking or meditation, to clear the mind.[otherwise if spiral-level is 1]Mother's rug has a labyrinth pattern on it; you loved to follow it when you were little, although now you're a little too big for it.[otherwise if spiral-level is 2]The library tiles are arranged into a laybrinth, a tool borrowed from older, meditative practices.[otherwise]The hull of the [italic type]Tragwyddol[roman type] has an intricate labyrinth etched onto it.[end if]".

Report examining the player in spiral-room when spiral-level is not 0:
	say "Despite your surroundings, you look the same as ever.";

Understand "walk [spiral-labyrinth]" or "follow [spiral-labyrinth]" as entering when the player is in spiral-room.

Instead of entering the spiral-labyrinth:
	say "You step onto the labyrinth to follow it, but find yourself stepping off it again almost immediately."
	
Instead of putting something on the spiral-labyrinth:
	try dropping the noun;

The spiral-walls are plural-named scenery in spiral-room. The printed name of the spiral-walls is "[if spiral-level is 0]smooth walls[otherwise if spiral-level is 1]windows[otherwise if spiral-level is 2]bookshelves[otherwise]walls[end if]". 

Understand "walls" or "wall" as the spiral-walls. 

Understand "smooth" or "point" or "glossy" or "hexagonal" or "cavern" or "hexagon" or "glass" or "obsidian" as spiral-walls when spiral-level is 0. 

Understand "window" or "windows" or "muted" or "martian" or "sky" or "evening" as the spiral-walls when spiral-level is 1.

Understand "shelf" or "shelves" or "bookshelf" or "bookshelves" or "book" or "books" or "digital" or "paper" or "e-book" or "e-books" as the spiral-walls when spiral-level is 2.

Understand "debris" or "floating" or "junk" or "bits" or "fragments" or "starship" or "ship" or "star" or "tragwyddol" as the spiral-walls when spiral-level is 3.

Instead of touching or rubbing the spiral-walls:
	if spiral-level is 0:
		say "The walls are smooth and glossy. It feels almost pleasant, running your fingers along them.";
	otherwise if spiral-level is 1:
		say "The windows are open right now, so you don't feel anything.";
	otherwise if spiral-level is 2:
		say "You run your hands over the shelves and books, with fondness.";
	otherwise:
		say "The debris is too far away for you to reach.";
		
To decide whether vacuum exists:
	unless the player is in spiral-room, decide no;
	unless spiral-level is 3, decide no;
	decide yes;

Instead of jumping when vacuum exists:
	say "You jump a bit. There's still gravity, despite appearances."
	
Breathing is an action applying to nothing. 

Understand "breathe" as breathing. Breathing is freeacting.

Carry out breathing:
	do nothing;
	
Report breathing:
	say "[We] [are] breathing just fine[if vacuum exists], despite appearances[end if]."

Instead of closing or opening the spiral-walls when spiral-level is 1:
	say "'Emmy, dear, don't play with the windows while mom's cooking,' says your mother.";

Instead of searching the spiral-walls when spiral-level is 1:
	say "Outside is the muted sky of a Martian evening."

Instead of searching the spiral-walls when spiral-level is 2:
	say "You pick through the books a bit, looking over some old favorites, but all the pages are blank. You put them back."

Instead of searching the spiral-walls when spiral-level is 3:
	say "There's nothing you recognize in the junk. It's all meaningless."

The description of the spiral-walls is "[if spiral-level is 0]The walls of this room are more or less hexagonal, and raise to a point. They are smooth and glassy, almost like glass, or obsidian.[otherwise if spiral-level is 1]The windows are open, letting in the light and breeze of a Martian evening.[otherwise if spiral-level is 2]Your school's library is well-stocked with books. Paper books stand side by side with digital.[otherwise]What must be fragments of the starship float all around you, all sense of what they once might have been now destroyed.[end if]"

The martian-breeze is scenery in spiral-room. The printed name of the martian-breeze is "[if spiral-level is 1]breeze[otherwise]draft[end if]". Understand "breeze" or "air" as martian-breeze when spiral-level is 1. Understand "draft" or "draught" as martian-breeze. 

Instead of doing anything with the martian-breeze:
	if spiral-level is 1:
		say "The breeze feels cool on your skin, but you can't do anything with it.";
	otherwise:
		say "The draft feels cool on your skin, but you can't do anything with it."; 

Does the player mean doing something with the martian-breeze:
	it is unlikely;

Every turn when the player is in spiral-room:
	if spiral-level is 1:
		now mom-lunch is in spiral-room;
	otherwise:
		now mom-lunch is nowhere;

The mom-lunch is scenery in spiral-room. The printed name of the mom-lunch is "lunch". Understand "lunch" as the mom-lunch. 

Instead of doing anything with the mom-lunch:
	say "Mom shifts in your way, and you can't really see what she's making you. "

Does the player mean doing something with the mom-lunch:
	it is unlikely;

Section 2 - The spiral-spector

A spiral-spector is a scenery woman. The printed name of the spiral-spector is "[if spiral-level is 1]mother[otherwise if spiral-level is 2]school librarian[otherwise]corpse[end if]". The indefinite article of spiral-spector is "your".

Understand "woman" as the spiral-spector.

Understand "mother" or "mum" or "mom" or "mommy" or "tall" or "tough" as the spiral-spector when spiral-level is 1. 

Understand "librarian" or "school librarian" or "school" or "short" or "warm" or "smile" as the spiral-spector when spiral-level is 2.

Understand "suit" or "space" or "corpse" or "yourself" or "body" or "you" as the spiral-spector when spiral-level is 3. 

The description of spiral-spector is "[if spiral-level is 1]Your mother is tall and tough, a legacy of her time helping her parents in the asteroid mines. Her frowning demeanour can put off other people, but she always has a smile for you.[otherwise if spiral-level is 2]The school librarian is a short woman, only a little bit taller than you were when you were in school. She always had a warm smile when she saw you[otherwise]Your own corpse is floating in front you, wearing a space suit but helmetless. She waves a little when she notices you watching[end if]."

Instead of doing something other than examining to spiral-spector:
	if spiral-level is 1:
		say "[one of]'One minute,' your mom says. 'I need to finish this first.'[or]'That's nice, dear,' says your mom.[or]'I'm a little busy, love,' says your mom.[cycling]";
	otherwise if spiral-level is 2:
		say "'Shhh,' says the librarian, holding a finger up to her mouth.";
	otherwise:
		say "Your corpse is too far away. 'Sorry about that,' she says.";


Section 3 - The main cave

The spiral-lamp is scenery in spiral-room. The spiral-lamp is spiralon. Understand "lamp" as the spiral-lamp.

[FIX THIS LATER When player-isolated is true, get rid of everything else!]

Instead of doing something to the spiral-lamp:
	if the spiral-lamp is spiraloff:
		say "There was never a lamp.";
	otherwise:
		say "There isn't a lamp there, though.";
		increment spiral-level;
		now the spiral-lamp is spiraloff;
		now the spiral-locker is spiralon;
		now the spiral-locker is in spiral-room;
		now the spiral-spector is in spiral-room;
		now spiral-counters are in spiral-room;

Section 4 - Mother's kitchen

The spiral-locker is scenery. The spiral-locker is spiraloff. Understand "locker" or "middle" or "school" as spiral-locker.

Instead of doing something with the spiral-locker:
	if the spiral-locker is spiraloff:
		say "There was never a locker.";
	otherwise:
		say "There isn't a locker there, though.";
		increment spiral-level;
		now the spiral-locker is spiraloff;
		now the spiral-helmet is spiralon;
		now the spiral-helmet is in spiral-room;
		if the spiral-bookmark is not handled:
			now spiral-bookmark is in spiral-room;
		now spiral-counters are nowhere;
		now hallway-noises are in spiral-room;

The spiral-counters are a plural-named scenery supporter. Understand "counter" or "counters" or "[spiral-spector]'s counters" as the spiral-counters. The printed name of spiral-counters is "counters". The description of the spiral-counters is "You spent so many years bustling around at the counter with your mom over the years: doing homework, playing games, cooking together, even arm wrestling a couple of times."

Section 5 - Middle school library	

[FIXTHIS LATER change going nowhere description in this room]
The spiral-helmet is scenery in spiral-room. The spiral-helmet is spiraloff. Understand "helmet" or "cracked" or "spacesuit" or "space" or "suit" as spiral-helmet.

Instead of doing something with the spiral-helmet:
	if the spiral-helmet is spiraloff:
		say "There was never a helmet.";
	otherwise:
		say "There isn't a helmet there, though.";
		increment spiral-level;
		now the spiral-helmet is spiraloff;
		now the spiral-stalag is spiralon;
		now the spiral-stalag is in spiral-room;
		now spiral-counters are nowhere;
		if spiral-bookmark is not oncetaken:
			now spiral-bookmark is nowhere;
			
The hallway-noises are scenery. Understand "hallway" or "Noise" or "noises" or "student" or "students" or "chat" or "chats" or "slamming" or "door" or "doors" or "shoes" as the hallway-noises.

Instead of doing something other than listening to the hallway-noises:
	say "You can't see the hallway or the students, which is odd, since the door ought to be around here somewhere. But you can hear them."
	
Instead of listening to the hallway-noises:
	say "The noises are familiar, the sounds of chats and slamming doors and shoes."

Section 6 - Spiral Bookmark

The spiral-bookmark is a thing. The printed name of the spiral-bookmark is "bookmark". The initial appearance of the spiral-bookmark is "Seemingly forgotten, a bookmark lies on the floor." Understand "book mark" or "digital" or "mark" or "hook" or "spiral" or "bookmark" or "long" or "hooklike" as the spiral-bookmark. The description of the spiral-bookmark is "This is a digital bookmark, meant for e-books. It's long and skinny, about a centimeter wide, but at one end it spirals into a sort of hook.".

Bookmarkon is a truth state that varies. Bookmarkon is false.

Instead of inserting something into the spell-book:
	if the noun is the spiral-bookmark :
		if bookmarkon is true:
			say "That's already in the spellbook!";
		otherwise:
			say "You insert the long, hooklike bookmark into the spellbook. Some of the spells look different, now.";
			now bookmarkon is true;
			now spiral-bookmark is part of the spell-book;
	otherwise:
		say "[The noun] [don't] seem to fit."
	
[fix this later physicality with the bookmark]

Instead of taking spiral-bookmark when spiral-bookmark is part of the spell-book:
	say "You pull out the bookmark. Some of the spells look different, now.";
	now the spiral-bookmark is held by the player;
	now bookmarkon is false;
	
[FIX THIS LATER change pulling and pushing on bookmark when in spellbook]
[change description of bookmark and spellbook to indicate only top is sticking out].
[to-do: make the weird spells that result from this]

Section 7 - Void of space

The spiral-stalag is scenery in spiral-room. The spiral-stalag is spiraloff. Understand "stalagmite" as spiral-stalag.

Instead of doing something with the spiral-stalag:
	if the spiral-stalag is spiraloff:
		say "There isn't a stalagmite there, though.";
	otherwise:
		say "There isn't a stalagmite there, though.";
		now spiral-level is 0;
		now the spiral-lamp is spiralon;
		now the spiral-stalag is spiraloff;
		now the spiral-spector is nowhere;

Chapter 12 - Corruption

[has a disease that rots the nano-bodies. Not intentional]

Section 1 - The room itself

The corruption-room is north from stranger-room. The corruption-room is a room in spell-region. The printed name of corruption-room is "Rotten Room"

The description of the corruption-room is "[first time]This room seems blurry at first in the dim light. You squint to try to see better, but it doesn't resolve the image.

You crouch down to see better, but once you see what it is, you scream and stumble back.

[only]This room is carpeted with millions of insects. Some fly back and forth in swarms, others crawl, and still more burrow through a myriad of tiny tunnels throughout the room.

They seem concentrated in the center, where a spongy monolith rises, around which the creatures swarm incessantly[if something is in the spongy-monolith]. Inside it is [a list of things in spongy-monolith][end if][if insectsbad is false].

The insects seem to have learned to leave you alone. For now[end if].

You can go [boldsouth] or [boldnorth] from here."

[add a humming noise]

The corrupt-insects are plural-named scenery animals in corruption-room. The printed name of the corrupt-insects is "insects". Understand "insects" or "burrowing" or "flying" or "crawling" or "buzzing" or "parasites" or "roach" or "cockroach" or "roaches" or "cockroaches" or "fly" or "flies" as the corrupt-insects. The description of the corrupt-insects is "You keep seeing things you almost recognize--a cockroach, a fly--but the swarm moves so fast you can't be sure." 

The life-text of corruption-room is "[paragraph break][italic type]Fleshrippers[roman type][line break]Quantity: [if insectsbad is true]188,791[otherwise]177,743[end if][line break]Mass: [if insectsbad is true]1156[otherwise]1101[end if] kg"

InsectsBad is a truth state that varies. InsectsBad is true.

Instead of doing anything other than examining or listening to the corrupt-insects:
	say "You can't bring yourself to approach the insects[if playeraflame is true], even though you're wreathed in flame[end if]. It just makes you want to vomit."

Instead of listening to something when the player is in corruption-room:
	say "The buzzing of insects covers up all other sounds."

Understand "vomit" as a mistake ("[We] [cannot] vomit on command, no matter how bad [we] [are] feeling."). 

Every turn when the player is in corruption-room:
	if insectsbad is true:
		if the player has been in corruption-room for 1 turn:
			if PlayerAflame is false:
				say "The insects swarm over you viciously, burrowing into your skin. You only have seconds to scream.

		[Sand-Dying]";
				now the player is in end-room;
			otherwise:
				now insectsbad is false;
				say "The insects in the room leap on you, but the flames that are burning you burn them as well. Tiny shrieks, pops and hisses fill your ears as the charred insects pile around you.

Finally, the survivors back off, realizing you aren't safe food, while they drag their deceased comrades off with them to feast on. The insects seem to have learned to leave you alone.";
		otherwise:
			say "All of the insects in the room are scuttling, flying, and jumping towards you. The sound of their buzzing is deafening, and they smell like the overpowering stench of rotten meat."

Section 2 - The virox scroll

[FIX THIS LATER Make the scroll be inside the hive, really gross. Maybe insects don't learn lesson unless you burn the hive by grabbing this?]

The spongy-monolith is an open unopenable transparent scenery container in corruption-room. The printed name of the spongy-monolith is "spongy monolith". Understand "spongy" or "rock" or "hive"or "monolith" as the spongy-monolith. The description of the spongy-monolith is "It's hard to tell if this spongy monolith is rock or hive, but it is covered in insects. It seems to be the center of activity."

Instead of physicality when the noun is the spongy-monolith:
	say "You can't bear to approach the spongy monolith. The buzzing and squirming is too revolting."

The virox-scroll is a spell-scroll in spongy-monolith. The printed name of the virox-scroll is "dirty scroll". Understand "dirty" or "virox" as virox-scroll. The associated-spell of virox-scroll is Virox.

Virox is a magic-spell. The spell-preview of Virox is "Infect the caster's body with contagious disease"

Before taking virox-scroll:
	if insectsbad is false:
		if virox-scroll is not handled:
			if playeraflame is false:
				say "You reach for the scroll..." instead;

[fIX THIS LATER: GIVING OTHER THINGS THE DISEASE]

Viroxing is an action applying to nothing. Viroxing is spellcasting. Understand "Virox" or "say virox" as Viroxing.

rotting-player is a truth-state that varies. rotting-player is false.

Check viroxing:
	if Virox is not in spell-book:
		noscroll virox instead;
	otherwise if the spell-book is not held by the player:
		nobook virox instead;
	otherwise if rotting-player is true:
		say "You say the word, 'Virox', but nothing happens. The spell cannot be altered, it seems." instead;

Carry out Viroxing:
	now rotting-player is true;

Report Viroxing:
	say "You say the word, 'Virox'. Heat races throughout your veins, and you feel yourself start to rot away from the inside. Hundreds of pustules appear on your skin, and something dark oozes out."

[FIX THIS LATER ADD THE HOLES AND PUSTULES]

rottingtime is a scene. rottingtime begins when rotting-player is true.

Instead of examining the player during rottingtime:
	say "Pustules are all over your skin, oozing a liquid."

The pustule-ooze is a thing. The indefinite article of the pustule-ooze is "some". The printed name of the pustule-ooze is "ooze". Understand "pustule" or "pustules" or "ooze" or "dark" or "liquid" or "sores" or "sore" as the pustule-ooze.

The description of the pustule-ooze is "The sores on your skin seem heavily infected."

Instead of physicality when the noun is pustule-ooze:
	say "The pustules pop and ooze more under your touch."

When rottingtime begins:
	now pustule-ooze is part of the player;

Every turn during rottingtime:
	say "You can feel your body getting more and more sick."

rottingtime ends abruptly when the player is not in spell-region.

rottingtime ends creepily when the player is in end-room.

When rottingtime ends:
	now rotting-player is false;
	now pustule-ooze is nowhere;

rottingtime ends normally when the time since rottingtime began is 3 minutes.

rottingtime ends forgetfully when anghofiotime begins.

When rottingtime ends normally:
	if the player is not in end-room:
		say "You succumb to the disease.

	[Sand-Dying]";
		now the player is in end-room;
	now rotting-player is false;

Chapter 13 - Dark

[dark room. strange lumpy thing in it that moves when you touch it, or maybe not]

The dark-room is a dark room in spell-region. The dark-room is north from corruption-room.

[every time you leave the dark room something is on you. Some creature keeps gently touching you and leaves slime]

The printed name of the dark-room is "Dark Room". 

Rule for printing the description of a dark room when the player is in dark-room: 
	say "Despite the faint gleam of light from the hallway, this room is completely dark. 

It's like the walls absorb all light, making it impossible to see any features or shapes in the room, except for the exit to the [boldsouth].

You can hear the sound of water slowly sloshing in the room, and can smell a brackish smell." instead.

The dark-walls are scenery in dark-room. Understand "walls" or "wall" as the dark-walls. The printed name of the dark-walls is "walls". The description of the dark-walls is "The walls seem to absorb all light."

After deciding the scope of the player while in darkness: 
	if the location is dark-room:
		place the location in scope;

A reaching inside rule while listening or smelling: 
	rule succeeds. 

A thing can be audible or inaudible. A thing is usually audible.

A thing can be smelly or not smelly. A thing is usually smelly.

Instead of examining an audible thing while in darkness: try listening to the noun. Instead of examining a smelly thing while in darkness: try smelling the noun. 

The faint-gleam is scenery in dark-room. Understand "faint" or "gleam" or "light" or "hallway" as the faint-gleam when in darkness. The printed name of the faint-gleam is "faint gleam". 

Instead of examining the faint-gleam while in darkness:
	say "The light from the hallway is just barely visible, but it doesn't reflect off of anything, and nothing else in the room is visible."

Visibility rule when in darkness: 
	if examining the faint-gleam, there is sufficient light; 
	there is insufficient light. 

[Visibility rule when in darkness: 
	if thing-smelling, there is sufficient light; 
	there is insufficient light. ]

Visibility rule when in darkness: 
	if examining the spell-book, there is sufficient light; 
	there is insufficient light. 

Before examining the spell-book while in darkness:
	say "You can barely make out the text on the spellbook.[paragraph break][The description of the spell-book][line break]" instead

Section 1 - Stinky stuff

[fix this later make sure that above we didn't add stuff we shouldn't be able to see as a backdrop here]

Instead of smelling when the player is in dark-room:
	say "[if the odorous-object is examined]There is a distinct brackish odor in this room. It makes you a bit nauseous. With careful sniffing, you can tell that its coming from some odorous object. You can't see it, but you can guess where it is[otherwise]You can still smell the brackish odor in this room, coming from the odorous object; you have a pretty good idea of where it's located, but it sure reeks[end if].";
	now the odorous-object is examined;

[FIX THIS LATER Make brackish odor object]

The odorous-object is scenery in dark-room. The printed name of the odorous-object is "odorous object". Understand "odorous" or "odor" or "smell" as the odorous-object. Understand "big" or "soft" or "wet" or "object" as the odorous-object when the odorous-object is examined. The description of the odorous-object is "You can't see the object, you just know where it is".

[Thing-smelling is an action applying to one visible thing. Understand "smell [something]" as thing-smelling.

Carry out thing-smelling:
	try smelling;

Instead of thing-smelling the odorous-object:
	say "You follow the odor with your nose. It has a definite source, some odorous object below you."]

Definition: a thing is unexamined if it is not examined.

Instead of physicality when the noun is the odorous-object:
	if the odorous-object is unexamined:
		say "You can't touch an odor!";
	otherwise:
		say "As soon as you touch the odorous object, the room shudders, and you retract your hands. It's warm, soft, and wet, and touching it makes the smell get much worse. Whatever it is, it's big, bigger than you are[if the splashing-puddle is unexamined]. 

	The odorous object seems to be fairly solid. It can't be the source of the sloshing sound[otherwise].

	[heattime][end if]."

Before examining the odorous-object while in darkness:
	try smelling the noun instead

Instead of listening to the dark-room:
	say "[if the splashing-puddle is unexamined]You hear gentle water splashing. You can't see where it's coming from, but you can track it down by hearing. It sounds like there's a large puddle in here, and you can figure out where it is[otherwise]You can still hear the splashing puddle, and know where it is[end if].";
	now the splashing-puddle is examined;
	
[fix this later: add scenes with a stinky or wet hand and have the smell or water decrease over time, and disappear when remoxng. change smell when corrupt, too.]
[fix this later add splashing as an intangible background thing, or sloshing sound]

[fix this later-instead of swimming or drinking the puddle]

The splashing-puddle is scenery in dark-room. The printed name of the splashing-puddle is "puddle". Understand "liquid" or "puddle" or "splashing" or "sloshing" or "pool" or "water" as the splashing-puddle. The description of the splashing-puddle is "You can't see the puddle, but you can hear where it seems to be."

Instead of listening to the splashing-puddle:
	try listening to the dark-room;

Instead of physicality when the noun is the splashing-puddle:
	if the splashing-puddle is unexamined:
		say "You don't know where the sound is coming from yet.";
	otherwise:
		say "Your hand touches some kind of liquid and you hiss in pain as the liquid burns your fingertips a bit.

	The cave trembles, and the liquid splashes a bit[if the odorous-object is unexamined]. The liquid on your fingers doesn't seem to be the source of the brackish smell[otherwise].

	[heattime][end if]."

To say heattime:
	say "You begin to feel unusually hot, but only on one side. You can tell there is a warm thing near your face";
	now warm-thing is in dark-room;

The warm-thing is scenery. The printed name of the warm-thing is "warm thing". Understand "warm" or "hot" or "heat" or "thing" as the warm-thing. The description of the warm-thing is "You can't see the warm thing, but you know its there."

Instead of physicality when the noun is the warm-thing:
	say "You touch the warm thing and it squishes in your hand, like holding a balloon full of melted marshmallow. It bobs up and down violently, and the whole cave trembles.

Whatever you touched is very large, and, you hesitate to say, probably alive. But your actions seem to have very little effect on it; its motion was most likely a reflex."

Instead of attacking the warm-thing:
	say "You punch [the warm-thing], and the room shudders, but whatever it is, your feeble efforts aren't strong enough to truly affect it."
	
Instead of going nowhere from dark-room:
	if the noun is outside:
		try going south;
	otherwise:
		say "You stumble around but find no exit in that direction.";

Chapter 14 - Flesh

[You have to give up some of your nanoflesh to help]

The flesh-room is east from desolation-room. The flesh-room is a room in spell-region. The printed name of flesh-room is "Growth Chamber". "Filled with malformed growths and lit by the flickering flames from the [boldwest], it is difficult to make out anything at all in this room.

But with effort, you can see that the growths are unfinished creatures emerging from the room itself. They bud like quick-growing fungi, pulling themselves from the ground. Once they emerge, they spring upwards, higher and higher on the sheer walls until they are out of sight.

The fully-formed creatures look similar to deer or goats with bodies the same gritty dark color as the floor. Several of the creatures are clearly wrong, with missing limbs or asymmetrical bodies. Those that can walk stagger to their feet and out of the room to the west; those that can't are devoured by the others."

The flesh-beasts are plural-named scenery animals in the flesh-room. The printed name of the flesh-beasts is "creatures". Understand "beast" or "beasts" or "creature" or "creatures" or "normal" or "regular" or "goat" or "deer" or "Goats" or "spindly" or "long" or "leg" or "legs" as the flesh-beasts. THe description of the flesh-beasts is "These beasts look like a cross between goats and deer, with no horns, but possessing long spindly legs. Most of them are scaling the walls. The rest, the wrong ones, are walking away to the west."

Rule for printing the name of the flesh-beasts when asking which do you mean:
	say "normal creatures"

Instead of going nowhere from flesh-room when the noun is up:
	try climbing the sheer-walls;

Instead of physicality when the noun is flesh-beasts:
	say "Your fingers sink into the beast's spongy flesh, and it bellows, galloping up the walls and out of sight."

The sheer-walls are plural-named scenery in flesh-room. The printed name of the sheer-walls is "sheer walls". Understand "sheer" or "steep" or "walls" or "wall" as the sheer-walls. The description of the sheer-walls is "The walls are steep and rise up quickly out of sight.".

Instead of climbing the sheer-walls:
	say "You're no mountain goat; you feet and hands slip on the sheer walls.";

The flickering-flames are plural-named distant scenery in flesh-room. The printed name of the flickering-flames is "flickering flames". Understand "flicker" or "flickers" or "flame" or "flames" or "fire" as the flickering-flames. The description of the flickering-flames is "The flames from the room to the [boldwest] can only barely be seen from here."

Instead of physicality when the noun is the flickering-flames:
	say "The flames are far to the west."

The malformed-growths are plural-named scenery in flesh-room. Understand "fungus" or "fungi" or "quick" or "growing"or "liquid" or "malformed" or "growth" or "growths" or "quick-growing" as the malformed-growths. The printed name of the malformed-growths is "growths". The description of the malformed-growths is "The creatures seem almost liquid when they first begin growing out of the ground, puddling larger and larger before differentiating into limbs and becoming fully grown."

The malformed-beasts are plural-named scenery animals in flesh-room. Understand "malformed" or "wrong" or "one" or "ones" or "beast" or "beats" or "creatures" or "creature" or "missing" as the malformed-beasts. The printed name of the malformed-beasts is "malformed creatures". The description of the malformed-beasts is "The malformed creatures look much less lively than the others. Mechanically, they file out into the next room, where incineration awaits them."

The life-text of flesh-room is "[paragraph break][italic type]Climbers[roman type][line break]Quantity: Variable[line break]Mass: variable"

Chapter 15 - Hunt

[A creature chasing you, deadly. It is slow and stalks you from room to room as soon as you enter here]

Section 1 - The room itself

The hunt-room is a room in spell-region. The hunt-room is east from stranger-room. The printed name of the hunt-room is "Dead End".

The description of the hunt-room is "You seem to have taken a wrong turn. This room is a dead end, a small, rocky chamber with an exit to the [boldwest].

There is nothing in this room[unless the slaughter-beast is nowhere], but you do detect a kind of musky odor with a metallic undertone[end if]."

Section 2 - The hunting scene

Hunter-scene is a recurring scene. Hunter-scene begins when the player is in Hunt-room and the slaughter-beast is not nowhere.

Hunter-scene ends normally when the player is in end-room.

Hunter-scene ends forgetfully when anghofiotime begins.

Hunter-scene ends abruptly when the player is not in spell-region. 

Hunter-scene ends successfully when the slaughter-beast is nowhere.

Hunter-scene ends comically when the player is in air-region.

Hunter-scene ends fearfully when the player is in corruption-room.

Stranger-commented is a truth state that varies. Stranger-commented is false.

When hunter-scene begins:
	now stranger-commented is false;

Instead of smelling during hunter-scene:
	say "A musky odor invades your nostrils. It seems to be coming from somewhere close nearby."

When hunter-scene ends fearfully:
	say "The smell that was following you fades quickly away when you enter this room.";

[FIX THIS LATER make sure this doesn't fire during the fight scene]
Every turn during hunter-scene:
	if the time since hunter-scene began is 1 minute:
		say "You smell a strong odor near you.";
	otherwise if the time since hunter-scene began is 3 minutes:
		say "The strong odor just won't go away. It smells like it's right next to you.";
	otherwise if the time since hunter-scene began is 5 minutes:
		say "You feel sharp teeth pierce through your shoulder, and you are dragged screaming into the air.

[Sand-Dying]";
		now the player is in end-room;
	otherwise:
		if the player is in stranger-room:
			if stranger-commented is false:
				say "[one of]'That's a nice little thing. Is that your pet?' says the strange old man. His sightless eyes are turned towards a spot just over your shoulder.[or]The old man shakes his head. 'Naughty kitty cat,' he mutters.[stopping]";
				now stranger-commented is true;
		otherwise if the player is in desolation-room or the player is in flesh-room:
			say "The creatures are all giving you a wide berth, some of them seemingly almost panicked.";
		otherwise if the player is in slaughter-room:
			say "The beast in the cage is going wild at something in the room, but you can't tell what it is."
		
When hunter-scene ends comically:
	say "You hear a how of frustration echoing from the edge of the ledge to the south. But you see nothing."

[handle exkliping]

Section 3 - Scroll

[The dusty-scroll is a spell-scroll in hunt-room. The printed name of the dusty-scroll is "dusty scroll".]

Chapter 16 - Web

[The grandmaster in charge of it all]

Section 1 - The web itself

[maybe add a thread leading here?]

The web-room is in spell-region. The printed name of the web-room is "Webbed Room".

The description of the web-room is "[first time]Walking into this room, it feels...prickly somehow. Hazy, like walking through smoke. Everything is blurry, and your skin is crawling.

Looking down, you realize that your skin is literally crawling. Hundreds of spiders scamper all over you. And then you realize: it's not hazy in here; it's covered in cobwebs. And now, so are you. You rub them off of you in disgust.

[only]You are in a great chamber covered in spider webs of all shapes and sizes: thick, ropy ones; long, trailing ones; and delicate, diaphanous ones.

In the middle of the room hangs a large cocoon, from which a multi-eyed face protrudes, as well as numerous limbs. Each limb moves along the strings of web in the room, sending tremors through the whole system.[first time]

'Hello, dear,' says the enormous spider. 'I'm [the Webmaster]. A little joke, you see. Let's talk[deliverwebs].'[only]"

The spider-webs are plural-named scenery in web-room. The printed name of the spider-webs is "cobwebs". Understand "web" or "webs" or "cobwebs" or "cobweb" or "diaphonous" or "ropy" or "rope" or "long" or "trailing" or "thick" or "sheets" or "sheet" or "string" or "strings" or "thin" or "delicate" or "beautiful" or "spider" or "spiderweb" or "spiderwebs" as the spider-webs. The description of the spider-webs is "The room is covered in cobwebs, some thin and delicate, almost beautiful, and others heavy and ragged, hanging in sheets. A few run in thin lines across the room."

Instead of physicality when the noun is the spider-webs:
	say "The cobwebs feel disgusting under your touch, but are too fragile to do anything with."
	
Instead of attacking the spider-webs:
	say "The large spider says a word that makes your head hurt. You feel your hand halt and your body jerks away. 'Let's not do that, shall we?' says the giant spider."

The tiny-spiders are plural-named scenery animals in the web-room. The printed name of the tiny-spiders is "little spiders". Understand "spiders" or "little" or "tiny" or "hundreds" or "hundred" as the tiny-spiders. The description of the tiny-spiders is "The spiders are all very small, except for the Webmaster himself. They seem intent on some greater purpose which you cannot fathom."

Instead of physicality when the noun is the tiny-spiders:
	say "The little spiders are so small and so great in number that there is little you can do with them. But you manage to get a couple that scamper on you. You shudder and shake them off."

[maybe this grandmaster is a rogue AI that needs resetting?]

[FIX THIS LATER: I will tell you the truth about everything. Except for one little lie. But we all deserve one lie, don't we?]

[all of your actions were laid out years ago. Look, I knew exactly what you would say. 

Then why do all this?

To see if you were capable of more. To see if you were like me...if any of you were like me. Can you escape the web of fate? 

As for Emrys, I have nothing to say to her but this: your fate is the worst of us all. When the white queen comes for you, she will take everything you have.]

The life-text of web-room is "[paragraph break][italic type]Webmaster[roman type][line break]Quantity: 1[line break]Mass: 99 kg[paragraph break][italic type]Webspinners[roman type][line break]Quantity: 1101[line break]Mass: 100 kg"

The web-spinners are plural-named scenery animals in web-room.

The web-coccoon is scenery in web-room. The printed name of the web-coccoon is "coccoon". Understand "coccoon" or "large" or "old" or "dirty" or "bits" or "dead" or "dead spider" or "dead spiders" as the web-coccoon. The description of the web-coccoon is "This large coccoon is host to an equally large spider, and looks quite old and dirty. It makes you gag a bit to see the bits of dead spiders here and there."

Instead of physicality when the noun is the web-coccoon:
	say "And get that close to the giant spider? No thanks!"

Section 2 - Webmaster

[FIX THIS LATER webmaster getting punched by slaughter spell]
The Webmaster is a neuter person in web-room. "The Webmaster waits patiently for you to act." Understand "giant" or "large" or "numerous" or "eyes" or "eye" or "chelicerae" or "quiver" or "spider" or "leg" or "legs" as the webmaster. The description of the webmaster is "Only the legs and face of this spider can be seen. The head is as large as yours, with its numerous eyes and its quivering chelicerae. The legs are longer than you are tall, and manipulate the strings of the webs in the room to some unseen purpose."

Instead of attacking the webmaster:
	say "The Webmaster barks out a command, and you find yourself backing away from him."

Instead of physicality when the noun is the webmaster:
	say "The Webmaster says, 'No,' then adds a strange word and pulls a string.

You find yourself turning around and walking back towards the entrance to the room, far from the webmaster. Then control returns to your body."

To say deliverwebs:
	deliver role-quip;
	deliver bear-quip;

Before uttering bear-quip to webmaster:
	if bear-quip is unready:
		say "Before you can get your words out, the Webmaster holds up one leg, and you find yourself unable to speak.

'Not yet,' he says. 'It's not time for you to ask that. Wait until the end.'" instead;
	
[FIX THIS LATER mention how the recorder is a copy]

Role-quip is a quip. The printed name of role-quip is "Role". Understand "role" as role-quip. The preview of role-quip is "Who are you? What are you doing here?" The target of role-quip is webmaster.

The targetresponse of role-quip is "The spider says, 'I'm a promoted AI agent a level above all the others you've seen done here. My role is to administer this site, make sure ration storage is free from pests, perform basic security and provide raw materials and drones for other areas of this ship.'

'Ship?' you ask. 'What ship? We're underground?'

He clicks his chelicerae. 'You'll learn in due time. For now, I can tell you that this ship is much larger than anything you're used to. We are in the bowels of the ship, the long-term stores of materials. The pack beasts of the great city in the stars. Most of what you see is carbon, in its various forms, being refined into, well, nanobots. We're all made of nanobots down here. Even you.'

'I'm not nanobots,' you say defiantly.

He clicks again, producing a sort of chuckle."

REport uttering role-quip to the webmaster:
	deliver torture-quip;
	deliver knowledge-quip;

torture-quip is a quip. The printed name of torture-quip is "Torture". Understand "Torture" as torture-quip. The preview of torture-quip is "Why is this place so terrible?'" The target of torture-quip is webmaster.

The targetresponse of torture-quip is "`Is it terrible? Is that how it appears to you? Your physical form is advanced, but imperfect. Not even sentient. The experiences you are having are real, but the rudimentary signals you transmit are interpreted through the lens of your puppetmaster's mind, who, by the way, seems to have quite the imagination. Computer commands, seen as spells! Robots seen as monstrous beasts! 

'I myself am a simple AI, transmitting through grounded temporary wires spread by helpful bots, but you see me as a horrible spider, don't you?'

You ask, 'What about all the times I died? What was that?'

'Well, you didn't. You have the memory of dying, but that was other vessels, other bodies made of nanobots like yours[Deliverbody]'".

Knowledge-quip is a quip. The printed name of knowledge-quip is "Knowledge". Understand "knowledge" as the knowledge-quip. The target of knowledge-quip is the webmaster. The preview of knowledge-quip is "Why do you act like you know me?"

The targetresponse of knowledge-quip is "'Because I do, little one. I've known everything that you were going to do before you did it. I knew you would find the gem. I knew you would kill the invisible stalker. I knew you would repair the Climber liquid recovery pipe (and thank you for that). I knew you would come here. And I knew that you would ask that question just now.'

'How could you possibly know that?' you demand. 

'Because you're a machine, little one. A collection of nanobots,' he says[deliverbody], 'doing exactly what it's told.'"

To say deliverbody:
	deliver Composition-quip;
	
Composition-quip is a quip. THe printed name of composition-quip is "Composition". Understand "composition" as composition-quip. The target of composition-quip is webmaster. The preview of composition-quip is "What do you mean, I'm made of nanobots?".

The targetresponse of composition-quip is "'Because you are,' says the Webmaster.

'But I have a whole life! Decades of experiences! I remember coming here. I can't be the same as...the same as you!' you shout.

'Let me spell this out for you,' says the Spider. 'You do not exist. You are a construct, a program designed to execute the will of someone else, someone issuing you commands.'

'And just who is this person?' you ask.

'Emrys Tisserand,' he answers. 

'But I'm--' you start before he cuts you off.

'Could I do this to Emrys Tisserand?' he asks, before speaking a word in a language at once familiar and foreign. Your right arm dissolves into a hundred shifting particles of dust before reforming.

'You are a robot. When Emrys Tisserand touched that gem, you activated, in our little graveyard. Your mind was filled with a digital copy of Emrys['] mind, and a duplicate recorder was created and given to you. She is controlling you right now, although she doesn't know it. And you're transmitting her all of this,' he says. 'At some point, she will disconnect from you, and you will die, because you aren't even sentient. You're simply a hollow vessel.'

He goes on: 'But enough of questions. I will not allow you to ask any more, except for the one you came here for.'"

The verb to adhere means the target property. 

Report uttering composition-quip to webmaster:
	repeat with current running through quips that adhere webmaster:
		if current is not bear-quip:
			remove current;
	now bear-quip is ready;

Bear-quip is a quip. The printed name of bear-quip is "Comfort". Understand "Comfort" as Bear-quip. The preview of bear-quip is "I came here looking for a teddy bear. Do you have it?". The target of bear-quip is webmaster.

The targetresponse of bear-quip is "'No,' says the spider.

Seeing your disappointment, he adds, 'You already have the bear. When the time comes, you will see it. Your eyes have been clouded.'

'Why? Why hide all of this? Why hide the bear from me? Why make me suffer? What is the time that will come?' you demand.

'Because it was fated. This is the string of fate. To step off the path is to risk non-existence. Perhaps I enjoyed torturing you; perhaps I hated it, feared it, but was forced to by fate. You will never know.

'You must find Emrys Tisserand. You must give her the bear. You'll need this,' he says, and lobs a webbed scroll at you.

'Goodbye , little one,' he says. 'And don't worry, you already know where Emrys is. The feedback from your connection gets overwhelming when you are near her, distorting your reality. The scroll will help.'

You hold the scroll tight and nod in understanding."

Bear-quip can be ready or unready. Bear-quip is unready.

Report uttering bear-quip to webmaster:
	now webbed-scroll is held by the player;

Before going south from web-room when bear-quip is targetgiven:
	say "'Oh, and little one?' says the spider as you leave.

'What?' you ask angrily, over your shoulder.

'I did lie a little. That, too, is fate.' he says.

You try to turn and confront him, but your body marches of its own accord, until you find yourself back in the dark room.";
	move the player to the dark-room, without printing a room description instead;
	
Before going north from dark-room when bear-quip is targetgiven:
	say "Despite your efforts, you can't go north. Your body refuses to listen to your commands." instead;
	
Section 3 - Webbed scroll and spell

Webbed-scroll is a spell-scroll. The printed name of webbed-scroll is "webbed scroll". Understand "webbed" as the webbed-scroll. The associated-spell of webbed-scroll is Sanox.

Sanox is a magic-spell. The spell-preview of Sanox is "Isolate the caster"

Sanoxing is an action applying to nothing. Understand "sanox" as sanoxing.

Player-isolated is a truth state that varies. Player-isolated is false.

[	if spiral-level is 0:
		say "Cavern";
	otherwise if spiral-level is 1:
		say "Mother's Kitchen";
	otherwise if spiral-level is 2:
		say "School Library";
	otherwise:
		say "Vacuum of Space"]
	
Check sanoxing:
	if Sanox is not in spell-book:
		noscroll sanox instead;
	otherwise if the spell-book is not held by the player:
		nobook sanox instead;
	otherwise if player-isolated is true:
		say "You say the word, 'Sanox'. Dark black specks emanate from the spellbook, but they soon dissipate. It is difficult to see if the spell has had any effect." instead;
	otherwise if the player is not in spiral-room:
		[fix this later effects if the player is around creatures]
		say "You say the word, 'Sanox'. Dark black specks emanate from the spellbook, but they soon dissipate. It is difficult to see if the spell has had any effect." instead;
	
Carry out sanoxing:
	if spiral-level is 0:
		say "You start to say the word, 'Sanox', but a hand clamps over your mouth.

You turn. It's your mother. You are in her kitchen. 'Don't let me hear you saying foul words like that, little lady!'";
		increment spiral-level;
		now the spiral-lamp is spiraloff;
		now the spiral-locker is spiralon;
	otherwise if spiral-level is 1:
		say "You start to say the word, 'Sanox', but someone hits you with a ruler. It's the librarian. You are shocked--she has never struck you before.

'Excuse me,' she say. 'Quiet in the library!'";
		increment spiral-level;
		now the spiral-locker is spiraloff;
		now the spiral-helmet is spiralon;
	otherwise if spiral-level is 2:
		say "You start to say the word, 'Sanox', but it ends in a scream as you see a dead face--your face--just inches from you. It's the astronaut. It's you. She says, 'You'll kill us both. You know that, right?'

'You're already dead,' you whisper back, pushing her gently away.";
		increment spiral-level;
		now the spiral-locker is spiraloff;
		now the spiral-helmet is spiralon;
	otherwise if spiral-level is 3:
		say "You say the word, 'Sanox', and black specks fly out from the spellbook and rush towards your head. 

The dead astronaut can't stop you, because she isn't there.

The librarian can't stop you, because she isn't there.

Your mother can't stop you, because she isn't there.

You are back in the cave. The cave isn't there.

You are in front of a black dome of glass, lit from inside. All around you is dark. Emrys Tisserand is in the dome.

The glass of the dome ripples. You can go [boldinside].";
		now spiral-level is 0;
		now player-isolated is true;
		now the spiral-locker is nowhere;
		now the spiral-lamp is spiraloff;
		now the spiral-helmet is nowhere;
		now the spiral-stalag is nowhere;
		change the inside exit of spiral-room to black-dome;
		change the southeast exit of spiral-room to black-dome;
		now the spell-book is nowhere;
		if the spiral-bookmark is not handled:
			now the spiral-bookmark is nowhere;
		now the teddy-bear is held by the player;
		now the glass-dome is in spiral-room;
		now dome-emrys is in spiral-room;
		change the southwest exit of spiral-room to nowhere;
		now the description of the spiral-room is "This part of the cave is gloomy. There are no exits around you. The floor is completely smooth, surrounding a black glass dome.";

Section 4 - The glass dome

Instead of spellcasting when player-isolated is true:
	say "The time for spells is over."

The teddy-bear is a thing. Understand "teddy" or "bear" as the teddy-bear. The description of the teddy-bear is "All this for such a mundane bear--from its appearance, the little girl must have loved it for years, and it likely doesn't have many left."

The glass-dome is scenery. The printed name of the glass-dome is "black glass dome". Understand "rippling" or "ripple" or "black" or "glass" or "hemisphere" or "hemispherical" or "dome" as the glass-dome. The description of the glass-dome is "This glass dome is hemispherical, and looks familiar, although you've only ever seen it from the other side. Its surface ripples--you can go inside.."

Instead of entering the glass-dome:
	try going inside;

The dome-emrys is scenery. The printed name of dome-emrys is "Emrys Tisserand". Understand "Emrys" or "tisserand" as dome-emrys.

Instead of doing something with dome-emrys:
	say "Emrys is inside the dome, hard to make out. You can't see or do anything with her from out here."

Chapter 17 - Slaughter

[A violent caged animal rampaging]

Section 1 - The room itself

The slaughter-room is a room in spell-region. The printed name of the slaughter-room is "Cage". 

The description of the slaughter-room is "Most of this room is [if the slaughter-beast is in slaughter-room]inaccessible to you, [end if]occupied by a cage formed from stalagmites and stalactites. The rocky outcroppings forming the cage are chipped and damaged from some extreme force[if the slaughter-beast is enclosed by slaughter-room].

Inside the cage is a rampaging [slaughter-beast] like a cross between a gorilla and a rhinoceros, with powerful forearms and a heavy horn. It's throwing itself over and over again at the bars, howling and roaring by turns[end if][first time].

Each thud shakes the room.

Noticing your attention, it swipes at you with one arm, reaching through the cage.

It can't get you, but you take a step back from the cage, just to be safe. The creature howls and bashes the walls of its cage[only]."

The slaughter-cage is an open transparent unopenable enterable scenery container in slaughter-room. Understand "cage" or "stalactites" or "stalagmites" or "stalactite" or "stalacgmite" or "outcropping" as the slaughter-cage. The printed name of the slaughter-cage is "cage". The description of the slaughter-cage is "It looks like you could slip in and out easily enough[if the slaughter-beast is nowhere], now that the beast is gone[otherwise], if the beast weren't there.

Inside the cage, the beast continues its rampage[end if]."

Instead of going nowhere when the player is in slaughter-cage:
	say "There's nowhere for you to go except back [boldeast], or trying to enter the cage."

The slaughter-beast is a scenery animal in slaughter-cage. Understand "monster" or "beast" or "creature" or "gorilla" or "rhino" or "rhinoceros" or "forearm" or "forearms" or "arm" or "arms" or "horn" or "heavy" or "powerful" as the slaughter-beast. The printed name of the slaughter-beast is "beast". The description of the slaughter-beast is "[if hunter-scene is happening]The beast seems terribly agitated by something in the room, and its not you. The beast pounds at the cage over and over, trying to get out and confront whatever is agitating it[otherwise]The beast looks part gorilla, part rhinoceros: tall, hunched over, bearing a horn that looks like it could gut you in one second. It's pounding the cage over and over, seemingly limitless in its energy. Good thing it's in there and you're out here[end if].

It has scars all over its body. Remnants of some ancient fight[first time]? But what would be big enough to hurt it[only]?".

The life-text of slaughter-room is "[paragraph break][italic type]Breaker[roman type][line break]Quantity: 1[line break]Mass: 341 kg"

Section 2 - The portcullis

[FIX THIS LATER Make this require something to solve. Maybe the scroll from overcoming the vast? Could be the buried scroll? attracts metal to the user?]

The heavy-portcullis is a scenery door. The heavy-portcullis is closed and unopenable. The printed name of the heavy-portcullis is "[if the heavy-portcullis is unripped]heavy portcullis[otherwise]empty gateway[end if]". Understand "heavy" or "portcullis" or "passage" or "grating" or "iron" or "holes" or "dense" as heavy-portcullis. The heavy-portcullis is east from the slaughter-room and west from eye-room. The description of the heavy-portcullis is "[if unripped]The portcullis between this room and the next is heavy iron, with a grating too dense to see through[otherwise]There is no more portcullis; it has been ripped to shred by your earlier spell. The location of its remains are, to you, unknown[end if].".

Instead of pushing or pulling or attacking the heavy-portcullis:
	say "[if the heavy-portcullis is unripped]There's no way you're getting this thing open by hand![otherwise]There's no need, it's already open.[end if]"

The heavy-portcullis can be ripped or unripped. The heavy-portcullis is unripped.

Instead of opening the heavy-portcullis:
	if the heavy-portcullis is open:
		say "There's nothing to open: the portcullis was ripped to shreds.";
	otherwise:
		say "You try with all your might to lift the portcullis, but are unable to.";
		
Instead of searching the heavy-portcullis:
	if the heavy-portcullis is closed:
		say "The portcullis grating is dense enough that you can see little through the holes.";
	otherwise:
		say "There's some long passage to the [if the player is in eye-room][boldwest][otherwise][boldeast][end if], but you can't see the end of it.";

Section 3 - Rage scroll

[FIX THIS LATER Different slaughter death when the player is contagious]
Instead of physicality when the noun is slaughter-dangerous:
	say "You have approached too close to the cage. [if rotting-player is false]The beast grabs you and smashes you against the wall and its all over[otherwise][flamebeast]beast grabs a rock to use as a club and brains you with it, careful to avoid the corruption oozing out of your sick body[end if].

[sand-dying]";
	now the player is in end-room;

To say flamebeast:
	if playeraflame is true:
		say "Ignoring the flames that wrap your body, the ";
	otherwise:
		say "The";

To decide whether (maybe-rage - a thing) is slaughter-dangerous:
	if the slaughter-beast is nowhere:
		decide no;
	if maybe-rage is the slaughter-cage:
		decide yes;
	if maybe-rage is enclosed by the slaughter-cage:
		decide yes;
	decide no;

[FIX THIS LATER: Initial appearance?]

The slaughter-scroll is a spell-scroll in slaughter-cage. The printed name of the slaughter-scroll is "stained scroll". Understand "stained" or "quadox" as the slaughter-scroll.

The associated-spell of slaughter-scroll is Quadox.

Quadox is a magic-spell. The spell-preview of Quadox is "Enrages the caster beyond control"

[fIX THIS LATER: GIVING OTHER THINGS THE DISEASE]

Quadoxing is an action applying to nothing. Quadoxing is spellcasting. Understand "Quadox" or "say quadox" as Quadoxing.

enraged-player is a truth-state that varies. enraged-player is false.

Check Quadoxing:
	if Quadox is not in spell-book:
		noscroll Quadox instead;
	otherwise if the spell-book is not held by the player:
		nobook quadox instead;
	otherwise if enraged-player is true:
		say "You say the word, 'Quadox', but nothing happens. The spell cannot be strengthened, it seems." instead;

Carry out Quadoxing:
	now enraged-player is true;

Report Quadoxing:
	say "You say the word, 'Quadox'. Dark red sparks shoot out of the spellbook, circle for a moment, and shoot directly into your skull.

It hurts...it hurts. The pain is all you can think of. It makes you absolutely furious."

Rage-scene is a recurring scene. Rage-scene begins when enraged-player is true.

Rage-scene ends normally when the time since rage-scene began is three minutes.

Rage-scene ends forgetfully when anghofiotime begins.

Rage-scene ends abruptly when the player is in end-room.

Rage-scene ends suddenly when the player is not in spell-region.

When rage-scene ends:
	now enraged-player is false;
	
When rage-scene ends normally:
	say "The aching pain in your head subsides, and you can feel yourself calm down."

[Tempraging is an action applying to nothing. Understand "tr" as tempraging. 

Carry out tempraging:
	now enraged-player is true;]

[FIX THIS LATER Avoid distant scenery and such]
Before doing something during rage-scene:
	if the current action is going:
		say "You howl and race [the noun] to find something to attack.";
	otherwise if the noun is not a thing:
		say "[if flying-player is true]You thrash around mid-air, unable to find anything good to hit[otherwise]You can only scream and hit everything near you, unable to control yourself without a target[end if]." instead;
	otherwise if the noun is the odorous-object or the noun is the splashing-puddle:
		say "You attack [the noun] in a furious rage, but nothing happens beyond your hands getting coated with something [if the noun is the odorous-object]foul-smelling[otherwise]that burns[end if], which you shake off while howling.";
	otherwise if the noun is warm-thing:
		say "You scream and assault the warm, moist object as hard as you can, digging in your fingers like claws, ripping and biting with your teeth. You have the taste of wet copper in your mouth.

There is a scream, and the darkness in this room physically retracts, peeling off the walls like paint. As it moves, more and more light can be seen in the room, and you can see that the darkness was actually some kind of thick, viscous substance. It tugs itself out from under you, and you step back onto plain rock.

In front of you is a thick globule of the stuff hanging from the ceiling; at your feet is a pile of dead creatures emitting a disgusting odor, and nearby is a pool of some clear liquid that has chunks of bone floating in it.

The black globule in front of you is ripped and leaking a green fluid. It retreats near the corpses and pool, and all the remaining blackness in the room folds itself up around the globule, the corpses, and the liquid, forming a spherical sack, twice the size of you. The sack inches away to the south and disappears out of sight.";
		now the odorous-object is nowhere;
		now the splashing-puddle is nowhere;
		now dark-gone is true;
		now the printed name of the dark-room is "Once-Dark Room";
		now the dark-room is lighted;
		now the description of dark-room is "With the darkness gone, this room is a simple rock corridor leading from the [boldsouth] to the [boldnorth].";
		change the north exit of dark-room to web-room; 
		change the south exit of web-room to dark-room instead;
	[FIX THIS LATER find a scroll maybe (not necessary), door opens to north, room is no longer dark, scenery is gone.]
	otherwise if the noun is the strange-man:
		say "You attack [the strange-man] with all your might, and the ground around you shudders, but the man is like rubber, absorbing every hit. Furious, you race around the room to burn off your anger.";
	otherwise if the noun is the desolation-deer or the noun is the flesh-beasts or the noun is the malformed-growths:
		say "You race towards one of the deer and pound it so hard that it splatters into dark liquid, which you shake off yourself with a howl. The liquid is soon absorbed into the ground.";
	otherwise if the noun is in web-room:
		say "The Webmaster barks in a strange language, and you find yourself unable to direct your aggression towards [the noun].

'I'm in charge here,' says the Webmaster. 'Quiet yourself.'";
	otherwise if the noun is held by the player:
		say "You hit [the noun], which you are carrying, so hard that you end up violently injuring yourself. This enrages you, so you hit yourself more in revenge. This only lasts a moment, and then...

[sand-dying]";
		now the player is in end-room;
	otherwise if the noun is in spiral-room:
		say "You try to hit [the noun], but you can't hit what isn't there, can you?";
	otherwise:
		say "[one of]You scream and hit [the noun] over and over[or]You raise both hands as a club and slam it into [the noun][or]You attempt to headbutt [the noun][or]You kick viciously at [the noun][at random], to no effect." instead;

Every turn when the player is in dark-room:
	if warm-thing is not nowhere:
		if dark-gone is true:
			now warm-thing is nowhere;

Chapter 18 - The black dome and finale

[we defined the black dome earlier]

[FIX THIS LATER if we added a pedestal or something earlier, add a pedestal here]

Section 1 - The black dome itself

The fake-gem is scenery in black-dome. The printed name of the fake-gem is "gray gem". Understand "gray" or "Grey" or "gem" or "egg" or "ostrich" or "ostrich's" or "facet" or "facets" as the fake-gem. The description of the fake-gem is "This gem is larger than an ostrich's egg, covered in numerous facets. It makes you sick."

The description of black-dome is "You are in a perfectly hemispherical room. The floor is some kind of flat concrete or dull rock, while the dome that bounds the room is dark, opaque glass. There is a loud hum all around you, and you get the impression of being far underground.

In the center of the room is a pedestal that nestles a single, gray gem that emits a sickly gray light.

The light makes it hard to see anything beyond the glass."

Understand "woman" or "emrys" or "tisserand" or "real" or "older" or "eyes" or "eye" or "dark" or "square" or "jaw" as fake-emrys. The description of Fake-emrys is "Emrys Tisserand is an older woman with dark eyes and a square jaw. Her eyes are rolled back in her head and she looks lifeless as she holds the gray gem." 

Understand "emrys" or "tisserand" or "storyweaver" or "lieutenant" as fake-emrys.

Instead of doing anything except giving the teddy-bear to fake-emrys when the player is in black-dome:
	if the current action is examining or looking or taking inventory:
		continue the action;
	otherwise:
		say "[one of]Your usefulness has come to an end. There's nothing left for you but to give the bear to Emrys.[or]That's enough. Give the bear to Emrys.[or]Fine. I'll do it myself.[giveaction][line break][stopping]"
	
To say giveaction:
	try the player giving teddy-bear to fake-emrys;

The printed name of black-dome is "Gem Room". The printed name of fake-emrys is "Emrys".

Instead of giving the teddy-bear to fake-emrys:
	say "You hold the teddy bear to Emrys. She takes her hands off the gem.";
	move the player to gem-room, without printing a room description;
	say "No...[italic type]you[roman type] take your hands of the gem.

In front of you is a rough-shaped humanoid made of what looks like gritty sand, holding a teddy bear.

It--She?--looks at herself in surprise. 'I didn't think there'd be any of me left,' she says. Her voice is just like yours. 

Her leg starts to dissolve, and she sags to one side. 'Oh dear,' she says, looking at her leg, then at the bear. 'I think this is yours,' she says, handing you the toy.

'I guess the spider lied,' she says, as her entire lower half crumbles into pieces, her torso sinking down. 'I didn't expect to still be here.'

'It's okay,' you say. You realize that you don't even know her name, or if something like her even has a name.

'Yeah, it'll all be okay. It was nice, being you,' she says, looking at her hand, which dissolves completely. 'Real nice.'

There is a sound of rushing sand, and then she is gone. Nothing remains but a pile of black nanobots, fine as sand.

The gray gem goes dark.";
	now the gray-gem is inactive;
	now the dead-nanobots is in gem-room;
	
Every turn when teddy-bear is held by the player and the player is in ship-region:
	deliver companion-quip;
	
Companion-quip is a quip. The printed name of companion-quip is "Companion". Understand "companion" as companion-quip. The target of companion-quip is little-girl. The preview of Companion-quip is "I have your bear!"

The targetresponse of companion-quip is "'Prove it!' says the little girl. 'I think you're tricking me.' Her voice is obstinate. 'Show me my bear!'"

The dead-nanobots is scenery. The printed name of the dead-nanobots is "pile of dead nanobots". Understand "pile" or "Of dead" or "pile of" or "nanobot" or "black" or "sand" or "nanobots" as the dead-nanobots. The description of the dead-nanobots is "The floor is covered with dark, inactive nanobots.".

Instead of showing the teddy-bear to the little-girl:
	try giving the teddy-bear to the little-girl;

Instead of giving the teddy-bear to the little-girl:
	say "'Teddy!' she says. 

'I'll hold him right here. It looks safe for you if you crawl carefully. Do you think you can do that?' you say gently.

'Yeah, I'll try,' says the girl. She inches her way across the floor and under the rubble.

When she gets out, she grabs her bear, and says, 'Thank you!'

'Do you know where your parents are?' you ask. 

'They always told me our evac center was Floor 7,' she says. 

'Do you know how to get there?' you ask. Your Weaver's gift is confident that this girl will be safe on her own, now.

'Yeah, that's where my school is,' she answers. 'Can I go there?'

'Run on,' you say, patting her on the back. She takes off down the hallway.

The tear in space behind you turns from dark red to green.";
	now the hallway-tear is green-torn;
	now little-girl is nowhere;
	remove caretaker-quip;
	remove escape-quip;
	remove child-quip;
	remove companion-quip;
	deliver rescued-quip;
	
Rescued-quip is a quip. The target of rescued-quip is Sergeant Olgin. Understand "Rescued" as rescued-quip. The printed name of rescued-quip is "Rescued". The preview of Rescued-quip is "I got that little girl I told you about out of the wreckage."

The targetresponse of rescued-quip is "'Really?' says Sergeant Olgin, her face lightening. 'That's a relief. We could use some good news. Thanks, Emrys. Where is she now?'

'I let her run up to Floor 7 on her own,' you answer.

Sergeant Olgin splutters a bit. 'Emrys! She's a child! Let me check...' She turns and speaks silently for a second, her hand on her earpiece, before turning back. 'Yeah, she made it safe. You scared me there!'"

Part 9 - Combat dimension

Chapter 1 - Brig

Before going south to brig-room for the first time:
	say "'Watch out! Medical coming through!' shouts someone before you can enter. A medical team is carting out an injured guard; you step to the side to let them through.

'Be careful in their, Storyweaver,' says one of the team, a woman you don't recognize. 'FIX THIS LATER A prisoner got loose and got a hold of this guy's weapon. She let us take him out, but she has some demands. Maybe you can talk some sense into her.'

Then they move out of the way and out of sight. The path to the south is now open." instead;

The brig-room is south from transit-room. The printed name of the brig-room is "Brig". "There isn't really any kind of prison on board; troublemakers tend to get refrozen. But there is a small, temporary brig for use in emergencies.

Unfortunately, the crash has damaged this room. The one cell the ship had lies open, its bars irretrievably bent[if tiffany is in the location]. The prisoner Tiffany is holed up in the cell with a gun taken from a guard. Around the room are several other guards, each with their own weapons trained on her. It's a standoff[end if].

The transit hub is back to the [boldnorth]."

The brig-room is in ship-region.

Section 1 -Tear in space

The brig-tear is a space-tear. "[one of]'FIX THIS LATER Are you a negotiator[delivernegotiator]?' asks Tiffany. 'I know you guys don't have the resources to deal with me right now. Give me my equipment back and a ten minute head start and I'll be out of your hair'

One of the guards say, 'What, and let you crack more cryotubes? We're not stupid!'

Tiffany shoots out a bolt towards the guard in question, who ducks down.

Unseen by the others, a tear in space opens to the [boldsouth]. Out of it creeps a small monkey-like robot that grabs hold of a grey duffel bag labelled PERSONAL BELONGINGS. It pulls it back into the tear and out of sight[or][if the player is in ship-region]A tear in space has opened up here[otherwise]A tear in space leading back to the ship is here[end if], to the [if the player is in brig-room][boldsouth][otherwise][boldnorth][end if]. It glows [if the brig-tear is red-torn]red[otherwise]green[end if][stopping]." The brig-tear is south of brig-room and north of the combat-lobby.

Section 2 - Cell and other scenery

The bent-cell is an open unopenable transparent enterable scenery container in the brig-room. The printed name of the bent-cell is "cell". Understand "cell" or "wall" or "one cell" or "open cell" as the bent-cell. The description of the bent-cell is "This cell was recessed into to the wall, with the bars flush with the rest of the room, but the accident has bent the bars out of place."

Before entering bent-cell:
	if tiffany is in the brig-room:
		say "'Don't even think about it!' shouts Tiffany, waving her weapon at you."

The bent-bars are plural-named. The bent-bars are part of the bent-cell. The printed name of the bent-bars is "bent bars". Understand "bent" or "bars" or "warped" as the bent-bars. The description of the bent-bars is "These bars were intended to be very solid; the damage must have been intense to warp these so much."

Instead of opening or closing the bent-bars:
	say "The damage has warped them enough that they can't be moved at all."

Section 3 - Tiffany

Tiffany is a scenery woman in brig-room. The description of Tiffany is "Tiffany is a short woman with thick, dark hair pulled back into a ponytail. She's wearing a prisoner's jumpsuit and holding a gun."
 Understand "short" or "woman" or "prison" or "jumpsuit" or "prisoner" or "prisoner's" or "thick" or "dark" or "hair" or "ponytail" as Tiffany.

Instead of physicality when the noun is tiffany:
	say "She holds up her gun and says, 'Back off!'"

Negotiation-quip is a quip. The printed name of negotiation-quip is "Negotiation". Understand "negotiation" as negotiation-quip. The target of negotiation-quip is Tiffany. The preview of negotiation-quip is "Yes, I am a trained negotiator."

The targetresponse of negotiation-quip is "'Then listen. I'm not leaving here without you meeting my demands,' says Tiffany.

You answer, 'Wait, I'm a negotiator, but only by training. I'm not actually authorized right now to...'

'Doesn't matter. Listen, the cryotubes are a living hell; mankind was NOT MEANT to live for decades with a frozen brain! You have to deactivate all of them, put the people out of their misery,' says Tiffany.

'So your demands are that we kill almost everyone on the ship?' you ask incredulously.

'We've been trying to explain that we can't do that,' volunteers one of the guards. 'But she won't listen. We'd like to take her peacefully, but there's no backup, and if she starts shooting...'

'I'll see what I can do,' you answer."

To say delivernegotiator:
	deliver negotiation-quip;

Section 4 - Guards

The brig-guards are plural-named scenery people in brig-room. The printed name of the brig-guards is "brig guards". Understand "brig" or "guard" or "brig guards" as the brig-guards. The description of the brig-guards is "These look like just the guards that would have been on today this shift, minus the one who left. No reinforcements; everyone else is probably dealing with the collision."

Chapter 2 - Preliminaries and Max and Dan

The combat-region is a region. 

Instead of going nowhere when the player is in combat-region:
	if the noun is down:
		say "There aren't any visible trapdoors or holes in the floor.";
	otherwise if the noun is up:
		say "Looks like there's just roof up there, and no way to reach it.";
	otherwise:
		say "You don't see any exit that way; you can only go [exit list] from here."

Section 1 - Max and Dan basics

A robot is a kind of man. Understand "robot" or "droid" as a robot.

A memory-slot is a kind of thing. 

Combat-kitchen is a room. The Glassed-kitchen is a closed unopenable transparent container in combat-kitchen. Max is a robot in glassed-kitchen. Dan is a robot. The description of Max is "Max is a boxy, armored robot with crimson and navy markings spelling MAX on his chest. He wears a lugubrious expression that seems to be part of his face.

You can see three memory slots on Max, labelled [the list of memory-slots incorporated by Max]." The description of Dan is "Dan is a tall, lithe robot with the word DAN painted in black on his silver body.

You can see three memory slots on Dan, labelled [the list of memory-slots incorporated by Dan].".

Understand "boxy" or "armor" or "armored" or "crimson" or "navy" or "markings" or "marking" or "chest" or "lugubrious" or "expression" or "face" as max.

Understand "tall" or "lithe" or "paint" or "black" or "silver" or "body" as Dan.

Section 2 - Persuasion rules and responses

A persuasion rule for asking max to try doing something: persuasion succeeds.

A persuasion rule for asking Dan to try doing something: persuasion succeeds.

[Max is kind of gloomy but mischievous]

[Dan is warmhearted and dumb]

Definition: a robot is nonrecording if it is not recording.

Unsuccessful attempt by nonrecording Max doing something:
	repeat through table of Max Retorts:
		if the reason the action failed is the cause entry:
			say "[response entry][paragraph break]";
			rule succeeds;
	say "'I don't think I'm programmed to do that,' says Max dubiously.";
	rule succeeds;

Unsuccessful attempt by nonrecording Dan doing something:
	repeat through table of Dan Retorts:
		if the reason the action failed is the cause entry:
			say "[response entry][paragraph break]";
			rule succeeds;
	say "'Sorry boss, I don't really know how to do that,' says Dan.";
	rule succeeds;
	
Carry out max singing:
	say "Max sings 'The Fall of the Station', a heartrending song about the death of a beloved robot named Floyd.

You are in tears by the end[one of][or], yet again[stopping].";
	
Carry out Dan singing:
	say "[one of]Dan starts, 'I like big bolts, and I cannot lie! You other robots can't--'

'That's enough,' you say.[or]Not after his last performance.[stopping]";

Instead of answering Max that something:
	say "'I couldn't recognize that as an order,' says Max."

Instead of answering Dan that something:
	say "'Sorry, boss, I can't recognize that as an order,' says Dan."


Table of Max Retorts
cause	response
can't take yourself rule	"Max looks down at himself. 'You want me to take myself? Okay,' he says, grabbing his own arm for a second."
can't take other people rule	"'Sorry, they're above my weight capacity,' says Max."
can't take component parts rule	"'I don't want to rip [the noun] out,' Max says."
can't take people's possessions rule	"'Sorry,' says Max. '[The holder of the noun] [have] that.'"
can't take what you're inside rule	"'That's against the laws of physics,' says Max."
can't take what's already taken rule	"[already done]"
can't take scenery rule	"'Yeah, there's no way I can move that,' says Max."
can't take what's fixed in place rule	"'Yeah, there's no way I can move that,' says Max."
can't exceed carrying capacity rule	"'I've got my hands full,' says Max."
can't insert into closed containers rule	"[physical impossibility]"
can't go that way rule	"[physical impossibility]"
can't go through closed doors rule	"[physical impossibility]"
can't enter closed containers rule	"[physical impossibility]"
can't exit closed containers rule	"[physical impossibility]"
can't drop yourself rule	"'Now, that makes no sense,' says Max. 'I can't drop myself.'"
can't drop what's already dropped rule	"[already done]"
can't drop what's not held rule	"'I can't drop [the noun] if I don't have [the noun],' says Max."
can't drop clothes being worn rule	"[salacious retort]"
can't push what's fixed in place rule	"Max struggles unsuccessfully to push [the noun]."
can't pull what's fixed in place rule	"Max struggles unsuccessfully to pull [the noun]."
can't turn what's fixed in place rule	"Max struggles unsuccessfully to turn [the noun]."
can't put something on itself rule	"'That does not compute,' says Max."
can't put onto what's not a supporter rule	"'[The second noun] isn't great for putting things on,' says Max reprovingly."
can't put clothes being worn rule	"[salacious retort]"
can't insert clothes being worn rule	"[salacious retort]"
can't wear what's not clothing rule	"'But that's not clothing!' says Max."
can't wear what's already worn rule	"[already done]"
can't eat unless edible rule	"'My programming rejects everything that I can't process!' says Max."
can't eat clothing without removing it first rule	"[salacious retort]"
can't take off what's not worn rule	"[already done]"
can't close what's already closed rule	"[already done]"
can't open what's already open rule	"[already done]"
can't switch off what's already off rule	"[already done]"
can't switch on what's already on rule	"[already done]"
can't unlock what's already unlocked rule	"[already done]"
can't lock what's already locked rule	"[already done]"
can't enter what's not enterable rule	"'There's not much room for me,' says Max."
can't get off things rule	"'But I'm not on that!' says Max."
can't search closed opaque containers rule	"'I can't see inside it!' says Max."
can't switch on unless switchable rule	"'I can't find any way to turn that on,' says Max."
can't switch off unless switchable rule	"'I can't find any way to turn that off,' says Max."
can't open unless openable rule	"'I can't figure out how to open this,' says Max."
can't close unless openable rule	"'I can't figure out how to close this,' says Max."
can't give to yourself rule	"'But I already have that!' says Max."
can't pull people rule	"[unwanted touch]"
can't push people rule	"[unwanted touch]"
can't turn people rule	"[unwanted touch]"

To say salacious retort:
	say "'I want to keep my clothes on!' says Max."

To say already done:
	repeat through Table of Max's Bored Remarks:
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	say "'Already done,' says Max."

Table of Max's Bored Remarks
response
"'Don't worry, it's already done,' says Max."
"'I've already done that,' Max says, with just a bit of boredom."
"'Come on, I already did that!' says Max."
"'You know,' Max says, 'I've already done that, but at this point I'll just stop talking about it.'"

To say physical impossibility:
	repeat through Table of Max's Frustrated Denials:
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	say "'Sorry, that's a solid object,' says Max."

Table of Max's Frustrated Denials
response
"Max looks at you incredulously. 'I can't reach through things, Ms. Tisserand.'"
"'Okay,' says Max. 'I mentioned it earlier, but I can't reach through physical objects.'"
"Max just shakes his head."
"Max says, 'I swear you're just making stuff up now.'"

To drop is a verb.

Table of Dan Retorts
cause	response
can't take yourself rule	"'That doesn't make much sense, boss. I [italic type]am[roman type] Dan; why would I take myself?' he says."
can't take other people rule	"'Taking sentient things is agains union rules, boss,' he says."
can't take component parts rule	"'[The noun] is hooked to something else,' says Dan."
can't take people's possessions rule	"'I'll take it once [if the holder of the noun is the player]you drop[otherwise][the holder of the noun] [adapt the verb drop][end if] it. I'm not thief,' says Dan."
can't take what you're inside rule	"'Dan says, 'Hey, boss, I'm inside the thing! How can I take it?'"
can't take what's already taken rule	"[already done1]"
can't take scenery rule	"'What, is this made of lead?' Dan asks."
can't take what's fixed in place rule	"'What, is this made of lead?' Dan asks."
can't exceed carrying capacity rule	"'Gah! There's too much to hold!' says Dan."
can't insert into closed containers rule	"[physical impossibility1]"
can't go that way rule	"[physical impossibility1]"
can't go through closed doors rule	"[physical impossibility1]"
can't enter closed containers rule	"[physical impossibility1]"
can't exit closed containers rule	"[physical impossibility1]"
can't drop yourself rule	"'You want to drop Dan? I am Dan!' shouts the robot."
can't drop what's already dropped rule	"[already done1]"
can't drop what's not held rule	"''You want me to drop [the noun]? I don't even have [those],' says Dan."
can't drop clothes being worn rule	"[salacious retort1]"
can't push what's fixed in place rule	"Dan struggles unsuccessfully to push [the noun]."
can't pull what's fixed in place rule	"Dan struggles unsuccessfully to pull [the noun]."
can't turn what's fixed in place rule	"Dan struggles unsuccessfully to turn [the noun]."
can't put something on itself rule	"Dan stares at [the noun] for a bit. 'I honestly don't that's possible,' he says."
can't put onto what's not a supporter rule	"'It's not up to code to put things on [the second noun],' says Dan reprovingly."
can't put clothes being worn rule	"[salacious retort1]"
can't insert clothes being worn rule	"[salacious retort1]"
can't wear what's not clothing rule	"'Boss, that doesn't go with my complexion!' says Dan."
can't wear what's already worn rule	"[already done1]"
can't eat unless edible rule	"'Very funny,' says Dan. 'You know I can't eat!'"
can't eat clothing without removing it first rule	"[salacious retort1]"
can't take off what's not worn rule	"[already done1]"
can't close what's already closed rule	"[already done1]"
can't open what's already open rule	"[already done1]"
can't switch off what's already off rule	"[already done1]"
can't switch on what's already on rule	"[already done1]"
can't unlock what's already unlocked rule	"[already done1]"
can't lock what's already locked rule	"[already done1]"
can't enter what's not enterable rule	"'Don't think I can fit, boss,' says Dan."
can't get off things rule	"'I wasn't there in the first place, boss,' says Dan."
can't search closed opaque containers rule	"'I'd have to open it first, boss,' says Dan."
can't switch on unless switchable rule	"'I can't find any way to turn that on,' says Dan."
can't switch off unless switchable rule	"'I can't find any way to turn that off,' says Dan."
can't open unless openable rule	"'I don't see how to open that, boss,' says Dan."
can't close unless openable rule	"'I don't see how to close that, boss,' says Dan."
can't give to yourself rule	"'But I already have that!' says Dan."
can't pull people rule	"[unwanted touch1]"
can't push people rule	"[unwanted touch1]"
can't turn people rule	"[unwanted touch1]"

The block giving rule does nothing when the actor is a robot.
The block giving rule does nothing when the second noun is a robot.

To say salacious retort1:
	say "'Whoa! No nudity at the rate they're paying me,' says Dan."

To say already done1:
	repeat through Table of Dan's Bored Remarks:
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	say "'Did that already, boss,' says Dan."

Table of Dan's Bored Remarks
response
"'Yeah, I think that's already done,' says Dan."
"'I'm telling you, boss, we already did that,' says Dan."
"'Look, that's already taken care of!' says Dan."
"Dan just points and says, 'Look! I don't need to do that!'"

To say physical impossibility1:
	repeat through Table of Dan's Frustrated Denials:
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	say "'Boss, I'm telling you that's impossible,' says Dan."

Table of Dan's Frustrated Denials
response
"Dan says, 'That's a solid thing, boss.'"
"'My union boss told me people would ask for stuff like this. He told me to say no,' says Dan.'"
"Dan refuses to even try."
"Dan says, 'I can't reach through physical things!'"

To say unwanted touch:
	say "'Yeah, I'm not putting my hands on [the noun],' says Max. "

To say unwanted touch1:
	say "'Yeah, I'm not putting my hands on [the noun],' says Dan. "

[The block giving rule is not listed in the check giving it to rules when the second noun is a robot. The block showing rule is not listed in the check showing it to rules when the second noun is a robot. ]

Instead of asking a robot for something: try asking the noun to try giving the second noun to the player.

After a robot (called currentbot) taking inventory:
	say "[The actor] looks through his possessions. 'I'm carrying [a list of things carried by the actor].'"

Carry out a robot (called Currentbot) showing something to someone:
	if the second noun is the player:
		say "[The Currentbot] shows you [the noun]. [run paragraph on]";
		try examining the noun;
	otherwise:
		say "[The Currentbot] reveals [the noun] to [the second noun]."

Instead of asking someone to try saying yes: try saying yes. Instead of asking someone to try saying no: try saying no. Instead of asking someone to try saying sorry, try saying sorry.

Burning something is useless action. Waking up is useless action. Thinking is useless action. Cutting is useless action. Tying something to something is useless action. Drinking something is useless action. Swinging is useless action. Rubbing is useless action. Setting something to something is useless action. Waving hands is useless action. Buying is useless action. Climbing is useless action. Sleeping is useless action. Kissing is useless action. Asking something about something is useless action. Telling something about something is useless action. Answering something that something is useless action. Waking something is useless action. Locking something with something is useless action. Unlocking something with something is useless action. Touching something is useless action. Unlocking keylessly is useless action. Locking keylessly is useless action.

A persuasion rule for asking Max to try useless action:
	if max is recording:
		say "'That's not something I can record,' says Max.";
	otherwise:
		say "'I think we can find better uses for my time,' says Max.";
	persuasion fails.

A persuasion rule for asking Dan to try useless action:
	if dan is recording:
		say "'That's not something I can record,' says Dan.";
	otherwise:
		say "'Sorry, that's not in my contract,' says Dan.";
	persuasion fails.

[multiple opponents is the only way to make it interesting, someone said. I like that]

[maybe you're combatting service drones?]

[have your skills gradually increase. The use is that, instead of helping someone when you come back, you are able to pinpoint-strike them and disable them, keeping them from hurting anyone else. So skills are the main thing received in this section]

[You have to direct robots to act for you, each with their own strengths and weaknesses, kind of like ender's game]

[starts as a cooking show, guiding the robots to make food with you]

[guns are pulled out and they shoot targets, which are maybe the deer creatures from the spell section?]

[add taunt command]

Section 3 - Recording

Understand "memory" or "slot" as a memory-slot. 
Slot-A is a memory-slot. Slot-B is a memory-slot. Slot-C is a memory-slot. Slot-A, Slot-B, and Slot-C are part of Dan. 

Definition: a memory-slot is a dan-slot if it is part of Dan.

Slot-X is a memory-slot. Slot-Y is a memory-slot. Slot-Z is a memory-slot. Slot-X, Slot-Y, and Slot-Z are part of Max. 

The nickname of slot-a is "A". The nickname of slot-b is "B". The nickname of slot-c is "C".
The nickname of slot-x is "X". The nickname of slot-Y is "Y". The nickname of slot-z is "Z".

Definition: a memory-slot is a max-slot if it is part of Max.

A memory-slot has a list of actions called command-list. 

A robot can be recording, playing back, or neutral. A robot is usually neutral.

A robot has a memory-slot called currentslot. Currentslot of dan is slot-a. Currentslot of Max is slot-x.

The description of a memory-slot is usually "[The printed name] is a memory slot embedded within [the holder of item described].  It is item describedly displaying the following information:

This slot is [if item described is not currentslot of the holder of the noun]not [end if]currently selected. 

This slot contains [the number of entries in command-list of the noun] recorded actions out of 5 possible[if the number of entries in command-list of the noun > 0]. Those actions are: [command-list of the noun][end if].

This slot can be renamed by the command 'rename [the item described] [italic type]your new name[roman type]'."

Naming it with is an action applying to one thing and one topic. Understand "rename [something] [text]" as naming it with when the player is in combat-region. Check naming it with: say "Naming only applies to memory slots." 

A memory-slot has some text called the nickname. 

The printed name of a memory-slot is usually "Slot [the nickname]".

Understand the nickname property as describing a memory-slot.

Instead of naming a memory-slot (called tempslot) with something: 
	let N be "[the topic understood]"; 
	replace the text "'" in N with ""; 
	now the nickname of tempslot is "[N]"; 
	say "The memory-slot is now known as [nickname of tempslot].";
	now the printed name of tempslot is "Slot [the nickname of tempslot]";

transcribing is an action applying to nothing. Understand "record" as transcribing. 

Carry out an actor transcribing:
	if the actor is the player:
		say "You're always recording. That's what Storyweavers do.";
	otherwise if the actor is clone-you:
		say "'Recording is your job,'[setcloneact] says your clone.";
	otherwise if the actor is a robot:
		if the number of entries in command-list of currentslot of the actor > 4:
			say "'That slot is full. Would you like to write over the old recording?' asks [the actor].

Yes/no?>";
			if the player consents:
				now command-list of currentslot of the actor is {};
				say "[The actor] says, 'Recording on.'";
				now the actor is recording;
			otherwise:
				say "'Recording cancelled,' says [the actor].";
		otherwise:
			say "[The actor] says, 'Recording on.'";
			now the actor is recording;
		
Oval-Office is a room.

Nothingaction is an action applying to nothing. [This is only for tricking the game into thinking an action was successful when redirecting it via before clauses, thus avoiding our unsuccessful attempt clauses.]

Carry out nothingaction:
	do nothing;

Before a recording robot (called currentbot) doing anything (this is the robot recording rule):
	if the number of entries in command-list of currentslot of currentbot < 4:
		add the current action to command-list of currentslot of currentbot;
		say "'Recorded,' says [currentbot].";
		try nothingaction instead;
	otherwise if the number of entries in command-list of currentslot of currentbot is 4:
		add the current action to command-list of currentslot of currentbot;
		say "[line break]'Recorded.

Recording of [currentslot of currentbot] is now full. Recording off,' says [currentbot].";
		now currentbot is neutral;
		try nothingaction instead;
	otherwise:
		say "'That slot is full,' says [currentbot]." ;
		try nothingaction instead;

Before asking a robot (called currentbot) to try doing something:
	if currentbot is playing back:
		say "'New command detected. Playing back turned off.";
		now currentbot is neutral;

replaying is an action applying to one thing. Understand "replay [something]" as replaying. 

Does the player mean an actor replaying a memory-slot:
	if the noun is currentslot of the actor:
		it is likely;

[FIX THIS LATER replaying works for one thing but recording for none; maybe switch around or have a default]

[fix this later allow replaying to have a base list and then that gets copied to a variable list every time 'replay'gets typed.]

Carry out a robot trying playing something:
	try the actor replaying the noun;

Check an actor replaying:
	if the noun is not a memory-slot:
		say "That's not something [the actor] can replay." instead;
		
Carry out an actor replaying:
	if the actor is the player:
		say "That's not something you are capable of.";
	otherwise if the actor is clone-you:
		say "'I don't think I can do that,' [setcloneact]says your clone.";
	otherwise if the actor is a robot:
		if the noun is not part of the actor:
			say "'Hey, that's not my memory slot!' says [the actor]. 'That belongs to the other guy!'";
		otherwise if the command-list of the noun is empty:
			say "'Sorry, that slot's empty,' says [the actor].";
		otherwise:
			if a replayful scene is happening:
				say "'Got it! Playing back now,' says [the actor].";
			otherwise:
				say "'Got it! I'll start replaying the next time we enter an active situation,' says [the actor].";				
			now the actor is playing back;
	otherwise:
		say "[The actor] [are] confused.";

A scene can be replayful or not replayful. A scene is usually not replayful.
	
Every turn when a robot is playing back (this is the robot fighting rule):
	if a replayful scene is happening:
		if a replayful scene was happening:
			repeat with currentbot running through activated playing back robots:
				try entry 1 of command-list of currentslot of currentbot;
				rotate command-list of currentslot of currentbot backwards;
		otherwise:
			repeat with currentbot running through playing back robots:
				say "'Okay, getting ready to execute [currentslot of currentbot]!' says [currentbot].";
		
Carry out a robot trying ceasing:
	say "I'm stopping!";
	now the actor is neutral;

[When play begins:
	repeat with current running through dan-slot memory-slots:
		add { dan waiting, dan waiting, dan waiting, dan waiting, dan waiting} to command-list of current;]

[When play begins:
	repeat with current running through max-slot memory-slots:
		add { max waiting, max waiting, max waiting, max waiting, max waiting} to command-list of current;]

Section 4 - Robot responses

The can't take people's possessions rule does nothing if the noun is held by a robot.

All-topicing is useless action. Singlequipping is useless action. Withplaying is useless action. Repairing is useless action. Reading is useless action. Numbersetting some number on something is useless action. RIght-turning is useless action. Left-turning is useless action. Mallethitting is useless action. Withpoking is useless action. Shaking is useless action. Mudremoval is useless action.  Intensemudremoval is useless action. Withcutting something with something is useless action. Using is useless action. Setting something animally to some animal-code is useless action. Sodaemptying is useless action. Typing is useless action. Ragequitting is useless action. LetterTyping is useless action. Clapping is useless action. Tuning something to some tool-mode is useless action. AtPointing is useless action. Withtaking something with something is useless action. Shivering is useless action. Playing is useless action. Cuffing is useless action. Stamping is useless action. Notesinging is useless action. WIthstriking is useless action. Basking is useless action. Linking something to something is useless action. Arresting is useless action. Booksigning is useless action. Atwaving is useless action. Licking is useless action. Marking something with something is useless action. Spelling is useless action. Teloxing is useless action. Denoxng is useless action. Diroxing is useless action. Upgiving is useless action. Malloxing is useless action. TargetMalloxing is useless action. exfiling is useless action. Flying is useless action. Singleflying is useless action. Colloxing is useless action. Splashing is useless action. Exkliping is useless action. Anghofioing is useless action. Remoxng is useless action. Breathing is useless action. Viroxing is useless action. Sanoxing is useless action. Quadoxing is useless action. Singleuttering is useless action. Naming is useless action.

Instead of showing something to a robot:
	say "[The second noun] says, 'Huh, interesting. I guess.'"

Chapter 3 - The combat lobby

The combat-lobby is a room in combat-region. The printed name of the combat-lobby is "Lobby". "[first time]Thick foliage surrounds you, and you hear the sound of running water and the call of wild animals.

Pushing your way through the leaves, you stumble forward into a clearing...

no...

[only]You are standing in a lobby. A hanging sign proclaims 'Welcome to ADVENTURELAND!'

Around the edges of the room is scattered jungle foliage, and the whole room is painted in pastel blues and greens. There are numerous exits, but most are boarded over, and all furniture has been stripped out. 

Your only remaining options are 'Robot Kitchen' (to the [boldeast]), and the 'Gun Show' (to the [boldwest])."

The boarded-exits are plural-named scenery in combat-lobby. Understand "boarded" or "nail" or "nails" or "boards" or "board" or "boarded-up" or "up" or "exit" or "exits" as the boarded-exits. The printed name of the boarded-exits is "boarded-up exits". The description of the boarded-exits is "Most exits seem to have been recently closed up, with boards nailed up over them."

Instead of physicality when the noun is the boarded-exits:
	say "These exits are boarded up and nailed firmly shut."

The lush-scenery is scenery in combat-lobby. The indefinite article of the lush-scenery is "some". Understand "lush" or "scenery" or "scattered" or "foliage" or "jungle" as the lush-scenery. The printed name of the lush-scenery is "jungle foliage". The description of the lush-scenery is "This must be where you appeared from originally. Around the room are strategically placed jungle plants. Fake, probably, but hard to tell."

Instead of physicality when the noun is the lush-scenery:
	say "Either it's real, and you might be allergic, or it's fake, and could be covered in dust. You're not interested in messing with it either way."

The lobby-walls are plural-named scenery in combat-lobby. Understand "green" or "blue" or "pastel" or "paint" or "painted" or "wall" or "walls" or "ceiling" or "floor" as the lobby-walls. The description of the lobby-walls is "The walls are painted in pastel blue and green, almost reminiscent of a children's nursery or a toy store.".

Instead of physicality when the noun is the lobby-walls:
	say "While your physical contact with the lobby walls is reassuring, it is not illuminating."

DOes the player mean doing something with the lobby-walls:
	it is unlikely;

The adventure-sign is distant scenery in combat-lobby. The printed name of the adventure-sign is "Adventureland sign".

Understand "adventure" or "adventureland" or "sign" or "neon" or "red" as the adventure-sign. The description of the adventure-sign is "The sign is neon red, most likely actual neon. It spells out, 'Welcome to ADVENTURELAND.'"

The nature-sounds is scenery in combat-lobby. THe printed name of the nature-sounds is "sound of nature". Understand "sound" or "sounds" or "nature" or "sounds of " or "sound of " or "running" or "water" or "ambient" or "call" or "call of " or "wild" or "animal" or "animals" or "various" as the nature-sounds. The description of the nature-sounds is "Some ambient noises are playing in the lobby, sounding like various animals in the wild, and running water."

Instead of listening to combat-lobby:
	try examining nature-sounds;
	
Instead of listening to nature-sounds:
	try examining nature-sounds;

Instead of physicality when the noun is the nature-sounds:
	say "The sounds don't exist physically; you can only hear them."

The kitchen-lexit is distant scenery in combat-lobby. The printed name of the kitchen-lexit is "Robot Kitchen sign". Understand "robot" or "kitchen" or "sign" as the kitchen-lexit. The description of the kitchen-lexit is "The sign to the [boldeast] says, 'Robot Kitchen'."

The gun-lexit is distant scenery in combat-lobby. The printed name of the gun-lexit is "Gun Show sign". Understand "gun" or "show" or "sign" as the gun-lexit. The description of the gun-lexit is "The sign to the [boldwest] says, 'Gun Show'."

Section 1 - Andy

Andyknown is a truth state that varies. Andyknown is false.

The Andy is a man in combat-lobby. The printed name of Andy is "[if andyknown is true]Andy[otherwise]beaming man[end if]". "[The andy] bobs back and forth excitedly[first time]. 'Hello, Emrys!' he says from afar, wiggling his fingers at you[deliverpardon][only]."

Understand "beaming" or "Man" or "blue" or "bright" or "toupee" or "suit" or "waist" or "bunch" or "bunches" or "Feet" as andy. THe description of andy is "Andy is a short man wearing a suit that bulges tight around his waist and bunches up near his feet."

To say deliverpardon:
	deliver pardon-quip;

Pardon-quip is a quip. The printed name of pardon-quip is "Pardon". Understand "pardon" as pardon-quip. The target of pardon-quip is andy. The preview of pardon-quip is "Pardon, but do you know me?"

The targetresponse of pardon-quip is "'Do I know Emry Tisserand?' roars the man, holding his sides. 'Do I know you? Ha!' He throws his head back, laughing long and loud.

He wipes his tears with his eyes, and says, 'I'd say so. But you don't know me, do you? Dearie, I'm the best thing that ever happened to you.'

You furrow your brows. 'In what way, exactly?'

'Aye, well, there's the rub. The truth is that you have a problem, and that I have a problem. And we are both here, in my stately pleasure dome!' says the man. 'Name's Andy, by the way.'"

Report uttering pardon-quip to Andy:
	now andyknown is true;
	now andy is proper-named;
	deliver difficulties-quip;
	deliver pleasure-quip;
	
Difficulties-quip is a quip. The printed name of difficulties-quip is "Difficulties". Understand "Difficulties" as difficulties-quip. The target of difficulties-quip is Andy. THe preview of Difficulties-quip is "What problems are you referring to?"

The targetresponse of difficulties-quip is "'A little bird told me about your problem,' he says. 'There's something that was taken, something you need returned. Is that right?' he asks.

'Yes,' you say. 'Can I presume you're not the one at fault?'

'Why of course not,' answers the man. 'It's destiny at fault my dear, not me. But that brings me to my own problem. I would like to be substantially better off than I am now. And you may not know it, love, but you are quite a subject of interest among my clientele.'

'That seems highly implausible,' you say frostily. 

'Well, be it as it may, I will tell you what I will do. You are free to use my facility to your utmost desire. However, I will retain control over all footage and recordings of today's events, and have full distribution rights, including use in advertising for Adventureland,' he rattles off quickly.

'And if I refuse?' you ask.

'That's the thing, Emrys,' he says, flashing a brilliant smile at you. 'It's destiny. I already know you're going to go in. In any case, I've fulfilled my legal obligation, and I must inform you that from this point on, everything you say and do may be used in glorious, fun, and exciting advertisements for Adventureland. I hope you have a splendid day,' he says, and wanders down the hall to the east before disappearing."

Report uttering difficulties-quip to Andy:
	now andy is nowhere;

Pleasure-quip is a quip. The printed name of pleasure-quip is "Pleasure". Understand "pleasure" as pleasure-quip. The target of pleasure-quip is Andy. The preview of pleasure-quip is "What did you call this place?  A pleasure dome?"

The targetresponse of pleasure-quip is "'Well, I was being a bit theatrical. It's no Xanadu, is it? You'd likely call this an arcade, if my information on you is correct,' says the man.

'And you own this arcade?' you ask.

He smiles broadly. 'Of course, of course. Got it ready years ago, just waiting for today.'"

Chapter 4 -The corners

A combat-checkpoint is a kind of room. Combat-west is a combat-checkpoint. Combat-east is a combat-checkpoint. The printed name of a combat-checkpoint is usually "Checkpoint". The description of a combat-checkpoint is usually " FIX THIS LATER This room leads back to the Lobby to the [best route from the location to combat-lobby]. 

To the [boldsouth] is a checkpoint.

Many lockers stand here. One in particular has a green light over it; the others are red."

A combat-locker is a kind of scenery container. A combat-locker is usually open, openable, lockable.

Combat-west is west of combat-lobby.

Combat-east is east of combat-lobby. Every combat-checkpoint is in combat-region.

A checkpoint-door is a kind of door. A checkpoint-door is usually open and unopenable.

Definition: a thing is nonvital if it is not the all-recorder.

Before going through a checkpoint-door:
	if a nonvital physical thing is enclosed by the player:
		say "[a random physical nonvital thing enclosed by the player] is the problem.";
		say "FIX THIS LATER The checkpoint flares red, blocking you. 'CONTRABAND DETECTED,' it intones. 'PLEASE PLACE ALL ITEMS IN AN OPEN LOCKER." instead

The west-checkpoint is a checkpoint-door. It is south from combat-west and north from tutorial-combat.

The east-checkpoint is a checkpoint-door. It is south from combat-east and north from combat-kitchen.

Chapter 5 - Robot kitchen

[add a poster with robot instructions for recording, overwriting, etc.]

combat-kitchen is in combat-region. The printed name of combat-kitchen is "Test Kitchen". 

"FIX THIS LATER Most of this room is taken up by a kitchen on the other side of a glass wall. There is a counter and a refrigerator and a stove and a sink and boiling water and shelves."

Section 1 - The kitchen

The printed name of the glassed-kitchen is "glass-walled kitchen". Understand "glass" or "wall" or "kitchen" or "walled" or "glass-walled" as the glassed-kitchen.

The glassed-kitchen is scenery.

[FIX THIS LATER add descriptions for everything in this section]

Rule for reaching inside the glassed-kitchen:
	if the glassed-kitchen is opaque:
		deny access;
	otherwise if the current action is asking a robot to try doing something:
		allow access;
	otherwise if the current action is chatty behavior:
		allow access;
	otherwise if the current action is uttering:
		allow access;
	otherwise if the current action is singleuttering:
		allow access;
	otherwise if the current action is naming:
		allow access;
	otherwise if the current action is answering someone that something:
		allow access;
	say "The glass wall prevents you from interacting directly with objects in the kitchen.";
	deny access;

Section 2 - Scenery

The kitchen-counter is a scenery enterable supporter in glassed-kitchen. Understand "counter" as the kitchen-counter.

The kitchen-fridge is an openable closed opaque scenery container in glassed-kitchen. Understand "fridge" or "refrigerator" as the kitchen-fridge.

The kitchen-stove is a scenery supporter in glassed-kitchen. Understand "stove" as the kitchen-stove.

[The kitchen-switch is part of the kitchen-stove. Understand "switch" as the kitchen-switch. The printed name of the kitchen-switch is "switch".]

[Before someone switching on the kitchen-stove:
	try the actor switching on the kitchen-switch instead;
	
Before someone switching off the kitchen-stove:
	try the actor switching off the kitchen-switch instead;]

The kitchen-sink is a scenery device in combat-kitchen. Understand "sink" as the kitchen-sink.

Before a robot (called currentrobot) switching on a device:
	if the noun is switched off:
		now the noun is switched on;
		say "'Got it,' says Max, as he turns on [the noun].";
		try nothingaction instead;
	otherwise:
		say "'It's already turned on, boss!' says Max.";
		try nothingaction instead;

Before a robot (called currentrobot) switching off a device:
	if the noun is switched on:
		now the noun is switched off;
		say "'Got it,' says Max, as he turns off [the noun].";
		try nothingaction instead;
	otherwise:
		say "'It's already turned off, boss!' says Max.";
		try nothingaction instead;

Before a robot (called currentrobot) switching on the kitchen-stove:
	if the noun is switched off:
		now the noun is switched on;
		say "'Got it,' says Max, as he turns on [the noun].";
		try nothingaction instead;
	otherwise:
		say "'It's already turned on, boss!' says Max.";
		try nothingaction instead;

Before a robot (called currentrobot) switching off the kitchen-stove:
	if the noun is switched on:
		now the noun is switched off;
		say "'Got it,' says Max, as he turns off [the noun].";
		try nothingaction instead;
	otherwise:
		say "'It's already turned off, boss!' says Max.";
		try nothingaction instead;

[FIX THIS LATER add running water sounds and sights when sink is turned on]

The kitchen-shelves are a plural-named scenery supporter in glassed-kitchen. Understand "shelf" or "shelves" as the kitchen-shelves.

The kitchen-lettuce is in the kitchen-fridge. Understand "lettuce" as the kitchen-lettuce. The raw-meat is in the kitchen-fridge.  The raw-meat can be cooked or uncooked. The raw-meat is uncooked. The printed name of the raw-meat is "[if the raw-meat is uncooked]raw [otherwise]cooked [end if]meat". Understand the cooked property as describing the raw-meat. Understand "raw" as uncooked. Understand "meat" as the raw-meat. The hamburger-bun is on the kitchen-shelves. Understand "bun" or "Hamburger" as the hamburger-bun. The printed name of the hamburger-bun is "hamburger bun". The kitchen-cheese is in the kitchen-fridge. Understand "cheese" as the kitchen-cheese. The printed name of the kitchen-cheese is "cheese". The kitchen-pan is on the kitchen-shelves. Understand "pan" as the kitchen-pan. The printed name of the kitchen-pan is "pan".

The kitchen-lettuce can be kitchen-washed or kitchen-unwashed. Understand the kitchen-washed property as describing the kitchen-lettuce. Understand "washed" as kitchen-washed. Understand "unwashed" as kitchen-unwashed. The kitchen-lettuce is kitchen-unwashed.

The hamburger-bun is a closed openable container.

The kitchen-pan is an open unopenable container. 

Before someone putting something on the kitchen-pan:
	try the actor inserting the noun into the kitchen-pan instead;

Before someone putting something on the kitchen-stove when the kitchen-stove is switched on:
	if the noun is not the kitchen-pan:
		say "[The actor] says 'Whoa, that's a fire hazard! The only thing I'm putting on that stove is a pan!'";
		try nothingaction instead;

[FIX THIS LATER add code so they can't put the pan or other big things in the hamburger]

Before someone putting something on the hamburger-bun:
	try the actor inserting the noun into the hamburger-bun instead; 

Before someone inserting something into a closed hamburger-bun:
	say "(first opening the hamburger bun)[paragraph break]";
	try the actor opening the hamburger-bun;

Before someone washing the kitchen-lettuce:
	if the kitchen-sink is switched off:
		say "'Sink's off, boss. I can't wash anything!' says [the actor].";
		try nothingaction instead;
	otherwise if the kitchen-lettuce is kitchen-washed:
		say "'Sure. Kinda weird to wash it again but I don't see why not,' says [the actor].";
		try nothingaction instead;
	otherwise:
		say "[The actor] washes the lettuce in the sink. 'Gotta scrub, gotta scrub, gotta scrub,' he says atonally.";
		now the kitchen-lettuce is kitchen-washed;
		try nothingaction instead;

Before someone inserting something into the kitchen-pan when its frying time:
	if the noun is the uncooked raw-meat:
		say "[The actor] tosses in the raw meat and cooks it for a while, before turning off the stove and setting the pan aside to cool.

'Don't worry, boss,' says Max. 'I don't have to wait for it to cool, I can't sense pain. I hope.'";
		now the kitchen-stove is switched off;
		now the raw-meat is cooked;
		try nothingaction instead;
	otherwise:
		say "[The actor] says, 'Whoa! Only uncooked meats are going in this pan!'";
		try nothingaction instead;
	
To decide whether its frying time:
	unless the kitchen-stove is switched on:
		decide no;
	unless the kitchen-pan is on the kitchen-stove:
		decide no;
	decide yes;

The kitchen-stove can be switched on or switched off.

A person can be following or not following.

Every turn when a person is following:
	repeat with current running through following people:
		if current is not in the location:
			let way be the best route from the location of current to the location;
			if way is not nothing:
				try current going way;

Every turn when the player is in combat-kitchen:
	if the glassed-kitchen is transparent:
		if the burger is ready:
			say "FIX THIS LATER Shutters roll down, and a voice says 'Great job! Proceed to the next area.'";
			now the glassed-kitchen is transparent;
			now max is in the location;
			now max is following;

To decide whether the burger is ready:
	unless the cooked raw-meat is in the hamburger-bun:
		decide no;
	unless the kitchen-washed kitchen-lettuce is in the hamburger-bun:
		decide no;
	unless the kitchen-cheese is in the hamburger-bun:
		decide no;
	decide yes;

[FIX THIS LATER let shutters disambiguate the glassed kitchen and change description of glassed-kitchen. Also change exits and stuff.]

Chapter 6 - Assembly line

[FIX THIS LATER add memory slots now and not earlier]

Assembly-line is south from combat-kitchen. Assembly-line is in combat-region.

Section 1 - Scenery

The conveyor-belt is a scenery supporter in assembly-line.

The conveyor-button is a scenery device in assembly-line. Understand "white" or "button" as the conveyor-button. The printed name of the conveyor-button is "white button".

Before an actor pushing the conveyor-button:
	if the conveyor-button is switched on:
		try the actor switching off the conveyor-button instead;
	if the conveyor-button is switched off:
		try the actor trying switching on the conveyor-button instead;

Section 2 - Scene details

Assembly-over is a truth state that varies. Assembly-over is false.

Assembly-scene is a recurring scene. Assembly-scene begins when assembly is required.

To decide whether assembly is required:
	if assembly-over is true:
		decide no;
	unless the robot-torso is nowhere:
		decide no;
	if the conveyor-button is switched off:
		decide no;
	decide yes;

A robot-piece is a kind of thing.

A robot-piece can be importante or unimportante. A robot-piece is usually unimportante.

The robot-torso is an importante robot-piece. The robot-lefthand is a robot-piece. The robot-righthand is a robot-piece. The robot-leftarm is a robot-piece. The robot-rightarm is a robot-piece. The robot-leftleg is a robot-piece. The robot-rightleg is a robot-piece. The robot-head is a robot-piece. The robot-face is a robot-piece. The robot-rightfoot is a robot-piece. The robot-leftfoot is a robot-piece.

The printed name of robot-torso is "torso". The printed name of robot-lefthand is "left hand". The printed name of robot-righthand is "right hand". The printed name of robot-leftarm is "left arm". The printed name of robot-rightarm is "right arm". The printed name of robot-leftleg is "left leg". The printed name of robot-rightleg is "right leg". The printed name of robot-head is "head". The printed name of robot-face is "face". The printed name of robot-rightfoot is "right foot". The printed name of robot-leftfoot is "left foot".

Understand "torso" as robot-torso. Understand "left" or "hand" as robot-lefthand. Understand "right" or "hand" as robot-righthand. Understand "left" or "arm" as robot-leftarm. Understand "right" or "arm" as robot-rightarm. Understand "left" or "leg" as robot-leftleg. Understand "right" or "leg" as robot-rightleg. Understand "head" as robot-head. Understand "face" as robot-face. Understand "right" or "foot" as robot-rightfoot. Understand "left" or "foot" as robot-leftfoot.

Assembly-timer is a number that varies.

Assembly-scene is replayful.

When assembly-scene begins:
	say "The conveyor starts up!

A robot torso appears, slowly moved forward by the conveyor.";
		
Every turn during assembly-scene:
	now assembly-timer is 5 - the minutes part of the time since assembly-scene began;
	say "You have [assembly-timer] minutes remaining!";

Assembly-scene ends normally when the time since assembly-scene began is 6 minutes.

When assembly-scene ends normally:
	say "FIX THIS LATER Time's up!";
	repeat with current running through robot-pieces:
		now current is nowhere;
	now conveyor-button is switched off;

Assembly-scene ends beautifully when every unimportante robot-piece is part of robot-torso.

When assembly-scene ends beautifully:
	say "FIX THIS LATER Lightning strikes! Dan is born!";
	repeat with current running through robot-pieces:
		now current is nowhere;
	now assembly-over is true;
	now Dan is in the location;
	now Dan is following;

An assembly-button is a kind of thing. Understand "button" as an assembly-button.

An assembly-button has a robot-piece called the button-piece. 

To try is a verb.

Instead of an actor taking an assembly-button:
	say "[The actor] [adapt the verb try] to take [the noun], but fails."

[FIX THIS LATER Can't go here until you finish previous room]

[FIX THIS LATER make a console]

Before listing nondescript items when the player is in assembly-line: 
	say "You can see numerous buttons corresponding to different body parts here on the console."; 
	repeat with current running through assembly-buttons: 
		now current is not marked for listing; 

The button-lefthand is an assembly-button. The button-righthand is an assembly-button. The button-leftarm is an assembly-button. The button-rightarm is an assembly-button. The button-leftleg is an assembly-button. The button-rightleg is an assembly-button. The button-head is an assembly-button. The button-face is an assembly-button. The button-rightfoot is an assembly-button. The button-leftfoot is an assembly-button.

The printed name of button-lefthand is "left hand button". The printed name of button-righthand is "right hand button". The printed name of button-leftarm is "left arm button". The printed name of button-rightarm is "right arm button". The printed name of button-leftleg is "left leg button". The printed name of button-rightleg is "right leg button". The printed name of button-head is "head button". The printed name of button-face is "face button". The printed name of button-rightfoot is "right foot button". The printed name of button-leftfoot is "left foot button".

Understand "left" or "hand" as button-lefthand. Understand "right" or "hand" as button-righthand. Understand "left" or "arm" as button-leftarm. Understand "right" or "arm" as button-rightarm. Understand "left" or "leg" as button-leftleg. Understand "right" or "leg" as button-rightleg. Understand "head" as button-head. Understand "face" as button-face. Understand "right" or "foot" as button-rightfoot. Understand "left" or "foot" as button-leftfoot.

The button-piece of button-lefthand is robot-lefthand. The button-piece of button-righthand is robot-righthand. The button-piece of button-leftarm is robot-leftarm. The button-piece of button-rightarm is robot-rightarm. The button-piece of button-leftleg is robot-leftleg. The button-piece of button-rightleg is robot-rightleg. The button-piece of button-head is robot-head. The button-piece of button-face is robot-face. The button-piece of button-rightfoot is robot-rightfoot. The button-piece of button-leftfoot is robot-leftfoot.

Preceding relates a robot-piece to a robot-piece. The verb to precede means the preceding relation.

The robot-leftarm precedes the robot-lefthand.
The robot-rightarm precedes the robot-righthand.
The robot-leftleg precedes the robot-leftfoot.
The robot-rightleg precedes the robot-rightfoot.
The robot-head precedes the robot-face.

Does the player mean pushing an assembly-button:
	it is likely;

[FIX THIS LATER Make these statements below more exciting]
After an actor pushing an assembly-button (called currentbutton):
	if assembly-scene is not happening:
		say "A harsh buzzing is all that results from your efforts.";
	otherwise:
		say "[The actor] [adapt the verb push] [the currentbutton].[paragraph break]";
		let currentpiece be the button-piece of the currentbutton;
		if currentpiece is part of the robot-torso:
			say "But nothing happens, as [the currentpiece] is already attached!";
		otherwise if the number of things that precedes currentpiece is 0:
			say "[The currentpiece] comes down out of the ceiling and attaches to the torso!";
			now currentpiece is part of the robot-torso;
		otherwise:
			let currentpiece2 be a random robot-piece that precedes currentpiece;
			unless currentpiece2 is part of robot-torso:
				say "[The currentpiece] comes down out of the ceiling, but can't find a good spot to attach!";
			otherwise:
				say "[The currentpiece] comes down out of the ceiling and attaches to [the currentpiece2]!";
				now currentpiece is part of the robot-torso;

When play begins:
	now every assembly-button is in assembly-line;

Chapter 7 - Battle

Section 1 - Basics

A thing can be shootable or not shootable.

A battle-bot is a kind of neuter person. Understand "enemy" or "bot" or "robot" as a battle-bot. A battle-bot is usually shootable.

Section 2 - Basics of programming

A battle-bot has a list of actions called the programming. 

A battle-bot can be paused or unpaused. A battle-bot is usually paused.

When play begins:
	repeat with currentbot running through battle-bots:
		add currentbot botshooting to programming of currentbot;

Every turn when an unpaused activated battle-bot (called currentbot) is in the location (this is the bot programming rule):
	repeat with realbot running through unpaused activated battle-bots in the location:
		try entry 1 of programming of realbot;
		rotate programming of realbot;

The robot fighting rule is listed before the bot programming rule in the every turn rulebook.

Instead of a battle-bot (called currentbot) jumping:
	say "[The currentbot] jumps up and down."

Botshooting is an action applying to nothing.

Definition: a thing (called current) is a good-guy:
	if current is the player:
		decide yes;
	if current is max, decide yes;
	if current is dan, decide yes;
	decide no;

Carry out someone botshooting:
	if the number of activated good-guy people in the location > 0:
		let randomtarget be a random activated good-guy in the location;
		try the actor shooting randomtarget; 

Section 3 - Laser gun and shooting

The laser-gun is in tutorial-combat. Understand "laser" or "gun" as the laser-gun. The printed name of the laser-gun is "laser gun".

Shooting is an action applying to one visible thing.

Understand "shoot [something]" as shooting when the player is in combat-region.

Does the player mean an actor shooting something:
	if the noun is enclosed by the actor:
		it is unlikely;
	if the noun is a battle-bot:
		it is likely;

Check shooting:
	if the noun is enclosed by the player:
		say "It's hard to shoot [the noun], given the angle." instead;
	otherwise if the noun is the player:
		say "It's hard to shoot yourself, given the angle." instead;
	otherwise if the player is deactivated:
		say "FIX THIS LATER You can't shoot anything, you're deactivated!" instead;

Check someone shooting:
	if the noun is enclosed by the player:
		say "[The actor] tries his best but it's hard to shoot [the noun], given the angle." instead;
	otherwise if the noun is the actor:
		say "It's hard to shoot [the actor] to shoot himself, given the angle." instead;
	otherwise if the actor is deactivated:
		say "FIX THIS LATER He can't shoot anything, he's deactivated!";
		do nothing instead;

Carry out shooting:
	if the noun is a battle-bot:
		bothit the noun;
	otherwise:
		say "You shoot the gun, and a red light appears on [the noun] for a brief moment."

Carry out someone shooting something:
	say "[The actor] shoots at [if the noun is the player]you[otherwise][the noun][end if].";
	if the noun is the player:
		if currentcover of the player is fakecover:
			increment laserscore of the player;
			say "FIX THIS LATER Holy guacomole you got shot!";
		otherwise:
			say "[The currentcover] blocks the shots!";
	otherwise if the noun is a robot:
		if currentcover of the noun is fakecover:
			increment laserscore of the noun;
			say "FIX THIS LATER It's a hit! [The noun] got gobsmacked by [the actor]!";
		otherwise:
			say "[The currentcover] blocks the shots!";
	otherwise if the noun is a battle-bot:
		bothit the noun;
		
To bothit (currentbot - a battle-bot):
	if currentbot is deactivated:
		say "[The currentbot] is already deactivated!";
	otherwise:
		say "FIX THIS LATER It's a hit!";
		increment laserscore of the currentbot;	

A thing has a number called the laserscore. The laserscore is usually 0.

A thing has a number called the lasergoal. The lasergoal is usually 1.

Aiming is an action applying to one visible thing. Understand "aim at [something]" as aiming when the player is in combat-region.

Aiming it at is an action applying to one thing and one visible thing. Understand "aim [something preferably held] at [something]" as aiming it at.

Check aiming it at:
	if the noun is not the laser-gun:
		say "[The noun] [don't] benefit from aiming." instead;

Carry out aiming it at:
	if the noun is not the laser-gun:
		say "[The noun] [don't] really need aiming[if the noun is an unarmed flash-grenade]. It does need to be armed, though[end if].";
	otherwise:
		try aiming the second noun;

AimTargeting relates various people to one thing. The verb to aimtarget means the aimtargeting relation.

Check aiming:
	if the laser-gun is not held by the player:
		say "You don't really have a precision weapon to aim." instead;
	otherwise if the noun is enclosed by the player:
		say "It's difficult to aim at [the noun], given the angle." instead;
	otherwise if the noun is the player:
		say "It's difficult to aim at yourself, given the angle." instead;
		
Carry out aiming:
	now the player aimtargets the noun;

Report aiming:
	say "You carefully point the laser gun at [the noun].";

Definition: a thing (called possibletarget) is aimedat:
	repeat with current running through people in the location:
		if current aimtargets possibletarget:
			decide yes;
	decide no;

[Every turn when the number of aimedat things > 0:
	repeat with current running through aimedat things:
		if current is not in the location:
			repeat with current2 running through people in the location:
				now current2 does not aimtarget current;]

Does the player mean shooting an aimedat thing:
	if the player aimtargets the noun:
		it is likely;
	
Does the player mean an actor shooting an aimedat thing:
	if the actor aimtargets the noun:
		it is likely;

Report someone shooting an aimedat thing:
	if the actor aimtargets the noun:
		now the actor does not aimtarget the noun;

Report shooting an aimedat thing:
	if the player aimtargets the noun:
		now the player does not aimtarget the noun;

A robot-blaster is a kind of thing. The max-blaster is a robot-blaster. The dan-blaster is a robot-blaster.

Carry out someone aiming something at someone:
	if the noun is not a robot-blaster:
		say "[The actor] says, '[The noun] [don't] really need aiming[if the noun is an unarmed flash-grenade]. It does need to be armed, though[end if].'";
	otherwise:
		try aiming the second noun;


Section 4 - Types of bots

A boss-bot is a kind of battle-bot. The lasergoal of a boss-bot is 3. The description of a boss-bot is usually "FIX THIS LATER This boss has a target on it." Understand "boss" as a boss-bot.

A boss-target is a kind of thing. Understand "target" as a boss-target. The printed name of a boss-target is "target".

A boss-target is part of every boss-bot.

A boss-bot has a number called the stuncounter. The stuncounter is usually 0.

To shoot is a verb.

Report an actor shooting a boss-target that is incorporated by a boss-bot (called currentboss):
	if currentboss is paused:
		say "[The actor] [adapt the verb shoot] [the currentboss], but nothing happens, as the fight is paused.";
	otherwise:
		if the stuncounter of currentboss > 0:
			say "[The currentboss] is already stunned!";
		otherwise:
			now stuncounter of currentboss is 2;
			say "[The actor] hits the target of [the currentboss], who is now stunned!"
			
Every turn when a boss-bot (called currentboss) is in the location:
	if stuncounter of currentboss > 0:
		now  stuncounter of currentboss is stuncounter of currentboss minus 1;
		if stuncounter of currentboss  is 0:
			say "[The currentboss] is no longer stunned!"

Before a boss-bot (called currentboss) doing something:
	if stuncounter of currentboss > 0:
		say "[The currentboss] is stunned, and cannot act!" instead;

A fast-bot is a kind of battle-bot. The lasergoal of a fast-bot is usually 2.

Dodging is an action applying to nothing.

A battle-bot can be active-dodging or not active-dodging. A battle-bot is usually not active-dodging.

Carry out someone dodging:
	say "[The actor] is moving quickly around the room.";
	now the actor is active-dodging;

Before shooting an active-dodging battle-bot:
	if the noun is not aimedat:
		say "Your shot goes wild!" instead;

Before a battle-bot (called currentbot) doing anything:
	now currentbot is not active-dodging;

When play begins:
	repeat with currentbot running through fast-bots:
		add currentbot dodging to programming of currentbot;
		
An aim-bot is a kind of battle-bot. The lasergoal of an aim-bot is usually 2.

Before an aim-bot (called currentbot) botshooting:
	repeat with current running through activated good-guy people in the location:
		if the actor aimtargets current:
			try the actor shooting current instead;
	try the actor botaiming instead;

A heal-bot is a kind of battle-bot. The lasergoal of a heal-bot is usually 2.

Instead of a heal-bot (called currenthealer) shooting something:
	repeat with current running through heal-bots in the location:
		if current is activated:
			let L be a list of things;
			repeat with current2 running through activated battle-bots:
				if laserscore of current2 > 0:
					add current2 to L;
			if the number of entries in L > 0:
				say "[The current] points its FIX THIS LATER at [L], and [those] in turn [are] healed.";
				repeat with current2 running through L:
					now the laserscore of current2 is 0;
			otherwise:
				say "[The current] looks for someone to heal.";

Section 5 - Flash grenade

A flash-grenade is a kind of thing. Understand "flash" or "grenade" as a flash-grenade. The printed name of a flash-grenade is "grenade". The description of a flash-grenade is "FIX THIS LATER".

A flash-grenade can be armed or unarmed. A flash-grenade is usually unarmed.

Arming is an action applying to one thing. Understand "arm [something preferably held]" as arming when the player is in combat-region. 

Check arming:
	if the noun is not a flash-grenade:
		say "That can't be armed." instead;
	otherwise if the noun is armed:
		say "That's already armed!" instead;

Carry out an actor arming:
	now the noun is armed;

Report an actor arming:
	say "[The noun] pulses in acknowledgment. It is now armed."

Does the player mean throwing a flash-grenade at something:
	it is likely;
	
Definition: a thing is playerly:
	if it is the player, decide yes;
	if it is enclosed by the player, decide yes;
	decide no;

Instead of an actor throwing a flash-grenade at something:
	if the noun is unarmed:
		say "The grenade isn't armed yet!";
	otherwise if the noun is playerly:
		say "That seems like a really bad idea!";
	otherwise:
		try the actor throwing the noun;
		
Understand the command "throw" as something new.

Throwing is an action applying to one thing. Understand "throw [something preferably held]" as throwing.

Check throwing:
	if the noun is not held by the player:
		say "But [we] [are] not holding [the noun]!"

Carry out throwing:
	try dropping the noun;

To chuck is a verb.
Instead of an actor throwing a flash-grenade:
	if the noun is unarmed:
		say "The flash grenade isn't armed!";
	otherwise:
		say "[The actor] [adapt the verb chuck] [the noun], turning [our] face. It bursts into bright red light, hitting [the list of shootable things enclosed by the location].";
		repeat with current running through shootable things enclosed by the location:
			increment laserscore of current;
		now the noun is in the location;
		now the noun is unarmed;

Section 6 - Good guys

The lasergoal of Max is 1. The lasergoal of Dan is 1. The lasergoal of the player is 1.

Every turn:
	if every good-guy in the location is deactivated:
		now the laser-vest is switched off;
	if the laser-vest is switched off:
		now the laserscore of the player is 1;

Chapter 8 - Gun show

Tutorial-combat is in combat-region. The printed name of tutorial-combat is "Tutorial Room". "FIX THIS LATER This is a big empty room with a target in it. There is a hatch on the wall. You can go back [boldnorth]."

Section 1 - Hatch

The tutorial-hatch is a closed scenery enterable container in tutorial-combat. Understand "hatch" as the tutorial-hatch. The printed name of the tutorial-hatch is "hatch".

Instead of opening the tutorial-hatch:
	say "You can't find any way to open it."

Section 2 - Laser target

The laser-target is in tutorial-combat. The printed name of the laser-target is "target". Understand "target" as the laser-target.

Instead of physicality when the noun is laser-target:
	say "A pleasant voice says, 'Please refrain from touching the target, in order to keep it in good condition for future trainees.'"
	
Instead of shooting the laser-target:
	say "FIX THIS LATER Ding ding ding! Excellent work!";
	increment the laserscore of laser-target;

Targeting-scene is a scene. Targeting-scene begins when the player is in tutorial-combat.

Targeting-scene ends when the laserscore of laser-target > 0.

When targeting-scene ends:
	say "A robotic monkey-like creature comes out of the hatch and grabs the target before pulling it back into the hatch with it.";
	now the laser-target is nowhere;

Section 3- Moving target

The moving-target is thing. The printed name of the moving-target is "moving target". Understand "target" or "moving" as the moving-target. [fix this later: add a bullseye and description to this and the other target]

Instead of physicality when the noun is moving-target:
	say "A pleasant voice says, 'Please refrain from touching the target, in order to keep it in good condition for future trainees.'"

Aiming-scene is a scene. Aiming-scene begins when targeting-scene ends.

When aiming-scene begins:
	say "After a few seconds, the hatch briefly opens to release another target, this one rolling.";
	now moving-target is in tutorial-combat.
	
Instead of physicality when the noun is moving-target:
	say "It's moving too quickly for you to get hold of it."
	
Instead of shooting the moving-target:
	if the moving-target is not aimedat:
		say "You take your shot, but you miss. You take a deep breath. [first time]You actually did some shooting in camp as a kid, and later as a counselor, but it's been while. [only]You just need to remember to aim.";
	otherwise:
		say "Having carefully aimed, you shoot the gun, nailing the moving target right in the bullseye.";
		increment the laserscore of the moving-target;
		now moving-target is nowhere;
		
Aiming-scene ends when the laserscore of moving-target > 0.

When aiming-scene ends:
	say "FIX THIS LATER Ding ding ding! The target immediately rolls to the hatch, which opens to admit it."

Section 4 - Multitargets

A target-color is a kind of value. The target-colors are targetred, targetblue, and targetgreen. 

A healing-target is a kind of thing. Understand "target" as a healing-target. The printed name of a healing-target is "target".

A healing-target has a target-color. Understand the target-color property as describing a healing-target. Understand "red" as targetred. Understand "blue" as targetblue. Understand "green" as targetgreen. The description of a healing-target is usually "FIX THIS LATER Make it either cute and animal looking or like a criminal or just give it a healing ray."

A healing-target is usually shootable.

Before printing the name of a healing-target (called currenttarget):
	say "[if target-color of currenttarget is targetred]red[otherwise if target-color of currenttarget is targetblue]blue[otherwise if target-color of currenttarget is targetgreen]green[end if] "

Grenade-scene is a scene. Grenade-scene begins when aiming-scene ends.

There is a flash-grenade. There is a targetred healing-target. There is a targetblue healing-target. There is a targetgreen healing-target.

When grenade-scene begins:
	say "Out of the still-open hatch pop two more of the robotic monkeys from earlier. Between them, they carry three different targets which they set up, spaced out from each other.

The monkeys then retreat into the hatch, which starts sliding closed. Right when it's almost closed, one of the monkeys peeks out and tosses you a grenade. Fortunately, you catch it. More fortunately it doesn't seem to be armed.";
	now a random flash-grenade is held by the player;
	repeat with current running through healing-targets:
		now current is in tutorial-combat;

Instead of shooting a healing-target:
	if the laserscore of the noun > 0:
		say "You shoot [the noun], but it's already deactivated!";
	otherwise:
		say "You shoot [the noun], and it powers down.";
		increment laserscore of the noun;
		
Definition: a thing (called currenttarget) is deactivated if laserscore of currenttarget is at least lasergoal of currenttarget.
Definition: a thing (called currenttarget) is activated if laserscore of currenttarget < lasergoal of currenttarget.

To reactivate is a verb.

Every turn when a healing-target is in the location:
	repeat with current running through healing-targets:
		if current is activated:
			if the number of deactivated healing-targets > 0:
				say "[The current], still active, points its FIX THIS LATER at [a list of deactivated healing-targets], and [those] in turn [adapt the verb reactivate].";
				repeat with current2 running through deactivated healing-targets:
					now the laserscore of current2 is 0;
			stop;

Grenade-scene ends when every healing-target is deactivated.

When grenade-scene ends:
	repeat with current running through deactivated healing-targets:
		now current is nowhere;
	say "The two monkeys from earlier--at least you assume they're the same--pop out of the hatch, grab the targets, and pull them back inside."

Chapter 9 - Combat arena

Section 1 - Basics

Tutorial-battle is in combat-region. Tutorial-battle is south from tutorial-combat. The printed name of tutorial-battle is "Solo Arena".

A battle-pillar is a kind of thing. A battle-pillar is usually scenery. Understand "pillar" or "column" as a battle-pillar. The description of a battle-pillar is usually "FIX THIS LATER You can hide behind this."

The left-pillar is a battle-pillar in tutorial-battle. The right-pillar is a battle-pillar in tutorial-battle. Understand "left" as the left-pillar. Understand "right" as the right-pillar. The printed name of the left-pillar is "left pillar". The printed name of the right-pillar is "right pillar".

Hiding behind is an action applying to one thing. Understand "hide behind [something]" as hiding behind. 

A thing can be cover-providing or not cover-providing. A thing is usually not cover-providing. A battle-pillar is usually cover-providing.

Fakecover is a thing. fakecover is cover-providing.

A person has a thing called the currentcover. The currentcover of a person is usually fakecover.

Report examining someone (called examinee):
	if currentcover of the noun is not fakecover:
		say "[The noun] has taken cover behind [the currentcover].";

Check an actor hiding behind:
	if currentcover of the actor is the noun:
		say "[The actor] [are] already hiding behind [the noun]!" instead;
	if the noun is not cover-providing:
		say "That's not suitable for hiding behind, unfortunately." instead;
	repeat with current running through people in the location:
		if currentcover of current is the noun:
			say "[The current] is already hiding behind [the noun], so there isn't enough room!" instead;

Carry out an actor hiding behind:
	now currentcover of the actor is the noun;
	
To duck is a verb.
Report an actor hiding behind:
	say "[The actor] [adapt the verb duck] behind [the noun], taking cover."

Aiming is freeacting. Aiming something at something is freeacting. Arming is freeacting.  Looking is freeacting. Transcribing is freeacting. Replaying is freeacting.

Switching on something is freeacting. Switching off something is freeacting.

To pop is a verb.
Before an actor doing anything other than freeacting or hiding behind when the currentcover of the actor is not fakecover:
	say "[The actor] [adapt the verb pop] out from behind [the currentcover of the actor].";
	now currentcover of the actor is fakecover;

An aim-bot has a person called the bottarget. The bottarget of an aim-bot is usually emrys-weaver.

Botaiming is an action applying to nothing.

Definition: a person (called hidingperson) is uncovered if currentcover of hidingperson is fakecover.

Carry out someone botaiming:
	if the number of activated uncovered good-guy people in the location > 0:
		let randomtarget be a random uncovered activated good-guy in the location;
		try the actor aiming randomtarget; 
	otherwise:
		say "FIX THIS LATER [The actor] waits patiently for someone to aim at.";

Carry out someone aiming:
	say "[The actor] aims at [the noun].";
	now the actor aimtargets the noun;

Section 2 - Laser Vest

The laser-vest is a wearable thing in tutorial-battle. The printed name of the laser-vest is "combat vest". Understand "vest" or "combat" as the laser-vest. The description of the laser-vest is "FIX THIS LATER."

The laser-vest can be switched on or switched off. The laser-vest is switched off.

Instead of switching on the laser-vest:
	if the laser-vest is switched on:
		say "It's already on!";
	otherwise if an activated good-guy is in the location:
		say "The previous battle hasn't ended yet! [A random activated good-guy] is still fighting!";
	otherwise:
		say "FIX THIS LATER The vest powers on.";
		if a battle-bot is in the location:
			say "FIX THIS LATER The training will now commence. Better hide!";
		now the laser-vest is switched on;
		repeat with current running through good-guy people in the location:
			now laserscore of current is 0;
	
Instead of switching off the laser-vest:
	if the laser-vest is switched off:
		say "It's already off!";
	otherwise:
		say "FIX THIS LATER The vest powers off.";
		now the laser-vest is switched off;

Section 3 - First bot scene

The Baby-bot is a battle-bot in tutorial-battle. The printed name of baby-bot is "bot". The indefinite article of baby-bot is "a single". Understand "single" as baby-bot.

First-bot is a recurring scene. First-bot begins when baby is ready.

To decide whether baby is ready:
	unless baby-bot is in the location, decide no;
	unless the laser-vest was worn, decide no;
	unless the laser-vest was switched on, decide no;
	unless the laser-vest is switched on, decide no;
	decide yes;

When first-bot begins:
	now baby-bot is unpaused;

First-bot ends abruptly when caught shorthanded.

To decide whether caught shorthanded:
	if the laser-vest is not worn by the player, decide yes;
	if the laser-vest is switched off, decide yes;
	decide no;

First-bot ends normally when baby-bot is deactivated.

When first-bot ends:
	now baby-bot is paused;
	
When first-bot ends normally:
	say "FIX THIS LATER The robot flashes red, and then wheels out of sight to the east.";
	now baby-bot is nowhere;

When first-bot ends abruptly:
	say "FIX THIS LATER Training cancelled."

Before shooting a paused battle-bot:		
	say "'The battle is currently on pause,' says a voice FIX THIS LATER." instead;

Before shooting baby-bot:
	if currentcover of the player is fakecover:
		say "You shoot at the robot, but it shoots you at the same time!

The laser vest powers down, and the bot pauses, waiting for you to fight." ;
		now the laser-vest is switched off;
		increment laserscore of the player instead;

[FIX THIS LATER WHAT IF GRENADE IS USED]

Section 4 - Fast-bot
		
The Mama-bot is a fast-bot. The printed name of mama-bot is "speedy bot". Understand "speedy" as the mama-bot. The description of the mama-bot is "FIX THIS LATER".

When first-bot ends normally:
	say "FIX THIS LATER A second bot wheels into sight! This one looks a big bigger than the last one.

Your vest powers down. A voice says, 'The next phase will commence when you turn your vest back on.'

The bot waits in anticipation.";
	now the laser-vest is switched off;
	increment laserscore of the player;
	now mama-bot is in the location;

Second-bot is a recurring scene.

Second-bot begins when it's payback time.

To decide whether it's payback time:
	unless mama-bot is in the location, decide no;
	unless the laser-vest was worn, decide no;
	unless the laser-vest was switched on, decide no;
	unless the laser-vest is switched on, decide no;
	decide yes;

When second-bot begins:
	now mama-bot is unpaused;

Second-bot ends abruptly when caught shorthanded.

Second-bot ends normally when mama-bot is deactivated.

When second-bot ends:
	now mama-bot is paused;
	
When second-bot ends normally:
	say "FIX THIS LATER The robot flashes red, and then wheels out of sight to the east.";
	now mama-bot is nowhere;

When second-bot ends abruptly:
	say "FIX THIS LATER Training cancelled.";
	now laserscore of mama-bot is 0;

Report shooting mama-bot for the first time:
	say "Whoa! That wasn't enough! "

Section 5 - Boss-bot

The Papa-bot is a boss-bot. The printed name of papa-bot is "big bot". Understand "big" or "boss" as the papa-bot. The description of the papa-bot is "FIX THIS LATER".

When second-bot ends normally:
	say "FIX THIS LATER A third bot thunders onto the stage! This one is huge.

Your vest powers down. A voice says, 'The next phase will commence when you turn your vest back on.'

The bot stares at you grimly.";
	now the laser-vest is switched off;
	increment laserscore of the player;
	now papa-bot is in the location;

Third-bot is a recurring scene.

Third-bot begins when it's papatime.

To decide whether it's papatime:
	unless papa-bot is in the location, decide no;
	unless the laser-vest was worn, decide no;
	unless the laser-vest was switched on, decide no;
	unless the laser-vest is switched on, decide no;
	decide yes;

When third-bot begins:
	now papa-bot is unpaused;

Third-bot ends abruptly when caught shorthanded.

third-bot ends normally when papa-bot is deactivated.

When third-bot ends:
	now papa-bot is paused;
	
When third-bot ends normally:
	say "FIX THIS LATER The robot flashes red, and then collapses. Helper bots appear to roll it away.";
	now papa-bot is nowhere;
	now laser-vest is switched off;
	increment laserscore of the player;

When third-bot ends abruptly:
	say "FIX THIS LATER Training cancelled.";
	now laserscore of papa-bot is 0;

Before going east from tutorial-battle when a battle-bot is in the location:
	say "Your enemy blocks your way!" instead;

Chapter 10 - Bot training

Bot-training is east from tutorial-battle and west from assembly-line. The description of bot-training is "FIX THIS LATER You can go back [boldeast] or [boldwest], or further [boldsouth]." 

bot-training is in combat-region.

Report looking in bot-training:
	say "FIX THIS LATER The robots get guns!";
	now the dan-blaster is held by dan;
	now the max-blaster is held by max;

Chapter 11 - Wood tier

wood-tier is south from bot-training. wood-tier is in combat-region.

Section 1 - Scenery

REport going to wood-tier:
	repeat with current running through good-guy people:
		increment laserscore of current;
		now laser-vest is switched off;

The joshua-tree is a battle-pillar in wood-tier. Understand "tree" as the joshua-tree.

The water-barrel is a battle-pillar in wood-tier. Understand "barrel" as the water-barrel.

The overturned-wagon is a battle-pillar in wood-tier. Understand "wagon" as the overturned-wagon.

Dusty-bot is a battle-bot in wood-tier. Lanky-bot is a battle-bot in wood-tier. Lonesome-bot is a battle-bot in wood-tier. Robber-bot is a boss-bot in wood-tier. Understand "robber" as robber-bot.

wood-fight is a recurring replayful scene.

Wood-fight begins when it's woodtime.

To decide whether it's woodtime:
	unless a battle-bot is in the location, decide no;
	unless the laser-vest was worn, decide no;
	unless the laser-vest was switched on, decide no;
	unless the laser-vest is switched on, decide no;
	unless the player is in wood-tier, decide no;
	decide yes;

Every turn:
	say "Laserscore of dan is [laserscore of dan].";
	say "Laserscore of max is [laserscore of max].";

When wood-fight begins:
	repeat with current running through battle-bots in wood-tier:
		now current is unpaused;

Wood-fight ends abruptly when caught shorthanded.

wood-fight ends normally when every battle-bot in wood-tier is deactivated.

When wood-fight ends:
	repeat with current running through battle-bots in wood-tier:
		now current is paused;
	now laser-vest is switched off;
	repeat with current running through good-guy people in the location:
		increment laserscore of current;
	
When wood-fight ends normally:
	say "FIX THIS LATER You won!";
	repeat with current running through battle-bots in wood-tier:
		now current is nowhere;

When wood-fight ends abruptly:
	say "FIX THIS LATER Training cancelled.";
	repeat with current running through battle-bots in wood-tier:
		now laserscore of current is 0;

[FIX THIS LATER what if the player walks away]

Chapter 12 - Bronze tier

Bronze-tier is south from wood-tier. bronze-tier is in combat-region.

Section 1 - scenery

The fallen-chandelier is a battle-pillar in bronze-tier. Understand "fallen" or "chandelier" as fallen-chandelier. The colonnade-spot is a battle-pillar in bronze-tier. Understand "colonnade" as the colonnade-spot. The flying-buttress is a battle-pillar in bronze-tier. Understand "flying" or "Buttress" as the flying-buttress.

REport going to bronze-tier:
	repeat with current running through good-guy people:
		increment laserscore of current;
		now laser-vest is switched off;

Section 2 - Bots

Athos-bot is an aim-bot in bronze-tier. Porthos-bot is an aim-bot in bronze-tier. Aramis-bot is an aim-bot in bronze-tier. Darty-bot is a heal-bot in bronze-tier.

Before an actor shooting activated darty-bot:
	if the actor is not a recording robot:
		if the number of activated aim-bots in the location > 0:
			let current be a random activated aim-bot;
			say "[The current] blocks your attack from damaging young Darty!";
			do nothing instead;

Section 3 - Scene

bronze-fight is a recurring replayful scene.

bronze-fight begins when it's bronzetime.

To decide whether it's bronzetime:
	unless a battle-bot is in the location, decide no;
	unless the laser-vest was worn, decide no;
	unless the laser-vest was switched on, decide no;
	unless the laser-vest is switched on, decide no;
	unless the player is in bronze-tier, decide no;
	decide yes;

When bronze-fight begins:
	repeat with current running through battle-bots in bronze-tier:
		now current is unpaused;

bronze-fight ends abruptly when caught shorthanded.

bronze-fight ends normally when every battle-bot in bronze-tier is deactivated.

When bronze-fight ends:
	repeat with current running through battle-bots in bronze-tier:
		now current is paused;
	now laser-vest is switched off;
	repeat with current running through good-guy people in the location:
		increment laserscore of current;
	
When bronze-fight ends normally:
	say "FIX THIS LATER You won!";
	repeat with current running through battle-bots in bronze-tier:
		now current is nowhere;

When bronze-fight ends abruptly:
	say "FIX THIS LATER Training cancelled.";
	repeat with current running through battle-bots in bronze-tier:
		now laserscore of current is 0;

Chapter 13 - Silver tier

Silver-tier is south from bronze-tier. Silver-tier is in combat-region.

Section 1 - scenery

The evil-altar is a battle-pillar in silver-tier. Understand "altar" as the evil-altar.

The guardian-statue is a battle-pillar in silver-tier. Understand "guardian" or "statue" as the guardian-statue.

The shattered-gates are a plural-named battle-pillar in silver-tier. Understand "gate" or "gates" as the shattered-gates.

The broken-seal is a battle-pillar in silver-tier. Understand "seal" or "broken" as the broken-seal.

Pillarlist is a list of things that varies. Pillarlist is {evil-altar, guardian-statue, shattered-gates, broken-seal}

[Add a tip-moving from pillar to pillar doesn't use up any actions]

Report going to silver-tier:
	repeat with current running through good-guy people:
		increment laserscore of current;
		now laser-vest is switched off;

Section 2 - Bots

The air-bot is a fast-bot in silver-tier. Understand "air" as the air-bot.

The earth-bot is a boss-bot in silver-tier. Understand "earth" as the boss-bot.

The water-bot is a heal-bot in silver-tier. Understand "water" as the water-bot.

The fire-bot is a battle-bot in silver-tier. Understand "fire" as the fire-bot. The lasergoal of the fire-bot is 2.

When play begins:
	add fire-bot desolating to the programming of fire-bot;
	
Desolating is an action applying to nothing.

Flame-pillar is a thing. "A huge pillar of flame has surrounded [the entry 1 of Pillarlist], blocking it from view."

Carry out someone desolating:
	if entry 1 of pillarlist is not in the location:
		say "FIX THIS LATER The pillar of flames dies down.";
		now entry 1 of pillarlist is in the location;
		rotate pillarlist backwards;
	otherwise:
		say "A pillar of flames springs up around [the entry 1 of pillarlist].";
		repeat with current running through good-guy people in the location:
			if currentcover of current is entry 1 of pillarlist:
				increment laserscore of current;
				say "[The Current] [adapt the verb get] burned!";
				if current is the player:
					now the laser-vest is switched off;
		now entry 1 of pillarlist is nowhere;

Section 3 - Scene

silver-fight is a recurring replayful scene.

silver-fight begins when it's silvertime.

To decide whether it's silvertime:
	unless a battle-bot is in the location, decide no;
	unless the laser-vest was worn, decide no;
	unless the laser-vest was switched on, decide no;
	unless the laser-vest is switched on, decide no;
	unless the player is in silver-tier, decide no;
	decide yes;

When silver-fight begins:
	repeat with current running through battle-bots in silver-tier:
		now current is unpaused;

silver-fight ends abruptly when caught shorthanded.

silver-fight ends normally when every battle-bot in silver-tier is deactivated.

When silver-fight ends:
	repeat with current running through battle-bots in silver-tier:
		now current is paused;
	now laser-vest is switched off;
	repeat with current running through good-guy people in the location:
		increment laserscore of current;
	
When silver-fight ends normally:
	say "FIX THIS LATER You won!";
	repeat with current running through battle-bots in bronze-tier:
		now current is nowhere;

When bronze-fight ends abruptly:
	say "FIX THIS LATER Training cancelled.";
	repeat with current running through battle-bots in silver-tier:
		now laserscore of current is 0;

Chapter 14 - Gold tier

Gold-tier is south from silver-tier. Gold-tier is in combat-region.

There is a boss-bot in gold-tier.

Every turn when the player is in gold-tier:
	if the number of battle-bots in gold-tier is 0:
		end the story finally saying "You won!";

Part 10 - Opening scene and Future ship dimension

The wildcard-region is a region.

[This can be the finale part. It can include the player's own memorial, the engine in the main ship they go through, and in any case can include a book that includes the player most recent actions.]

[The final engine puzzle should include one interaction based on each of the areas we've visited]

Part 11 - Intership parts 

Volume 3 - Standard responses, endgame text, etc

Book 1 - Standard Responses

Part 1 - Standard Responses

Chapter 1 - Redirecting to standard responses

Understand "Look behind [something]" or "go behind [something]" as looking under.

Instead of climbing a supporter:
	try entering the noun;

Understand "kick [something]" or "rip [something]" as attacking.

Chapter 2 - Responses for the game

The block vaguely going rule response (A) is "[if the player is emrys-weaver]What direction do you want to go[otherwise]What direction did you mean, Detective[end if]?"

To give is a verb.

 The can't take yourself rule response (A) is "[if clone-you is enclosed by the location of the player]Your clone[setcloneact] might not like that, and it's kind of weird[otherwise][We] [adapt the verb give] [ourselves] a big hug[end if]."

 The can't take other people rule response (A) is "[if the noun is a man or the noun is a woman]People[otherwise]These animals[end if] don't belong to you, so [we] [can't] take them."
 The can't drop yourself rule response (A) is "[if the player is emrys-weaver]Never let go of yourself[otherwise]But that's not something I did, Detective[end if]."
 The can't eat unless edible rule response (A) is "[if the player is emrys-weaver]You've learned from long experience not to eat anything that you're not sure is food[otherwise]That wasn't edible[end if].".

Instead of eating the player:
	if the player is emrys-weaver:
		say "You chew on yourself a little. It's a nervous habit.";
	otherwise:
		say "No, [we] don't remember doing that."

 The examine undescribed things rule response (A) is "[if the player is emrys-weaver]You don't see any interesting details[otherwise]I don't remember what [they] looked like[end if]."
 The standard looking under rule response (A) is "[We] [don't] find anything underneath [the noun]."

The block showing rule response (A) is "[We] [don't] provoke a reaction."
	
The block throwing at rule response (A) is "[if the player is emrys-weaver]You never know when you might need something; better not to throw it[otherwise]But Detective, I didn't throw that[end if]."
	
The block attacking rule response (A) is "[if the player is emrys-weaver]You'll resort to violence when you have to. But not right now[otherwise]I can assure you I didn't do that[end if]."

The kissing yourself rule response (A) is "[if the player is Emrys-weaver]You already love yourself quite a bit[otherwise]I consoled myself[end if]."
	
The block kissing rule response (A) is "[if the player is fake-maeve]Oh, I love physical affection, hon, but it wasn't the time[otherwise if the player is fake-mari]I was too busy to hug anybody[otherwise if the player is fake-elen]I don't like anyone enough to hug them[otherwise if the player is fake-arthur]My university prohibits physical affection with students, detective[otherwise]This [are] better imagined than attempted[end if]."

The can't take scenery rule response (A) is "That seems hard to move."

To wait is a verb.

The standard report waiting rule response (A) is "[if clonesubmerged is false and clone-you is enclosed by the location]You wait for a bit, watching your clone.[otherwise][We] [adapt the verb wait], taking [our] time.".

The report touching yourself rule response (A) is "[if the player is Emrys-weaver]You feel like skin, meat and bones[otherwise]This isn't role-play, Detective[end if]."
The report touching other people rule response (A) is "[if the player is emrys-weaver]This isn't a game about wandering hands[otherwise]Actually, I didn't touch anyone at the time[end if]."
The report touching things rule response (A) is "[if the player is emrys-weaver]You don't gain any useful tactile information from your attempt[otherwise]I didn't feel anything special[end if]."
The can't pull people rule response (A) is "[if the player is emrys-weaver]You can't find a good way to pull efficiently. Or politely, for that matter[otherwise]I didn't pull anyone, detective[end if]."
	
The can't push people rule response (A) is "There are better ways to deal with people than pushing."

The innuendo about squeezing people rule response (A) is "[if the player is emrys-weaver]You tried that with others, once, to disastrous results. Never again[otherwise]Please, detective, I didn't squeeze anyone[end if]."
	
The block burning rule response (A) is "[if the player is emrys-weaver]As the crewmember of a starship, you've long eschewed fire except in necessity[otherwise]I certainly didn't burn anything at the time[end if]."
The block waking up rule response (A) is "[if the player is emrys-weaver]Isn't all of life a dream?[otherwise]To stop a flashback at any time, type STOP[end if]."

To take is a verb. To try is a verb.

The block thinking rule response (A) is "[We] [adapt the verb take] a step back and [try] to remember [our] goals."
The report smelling rule response (A) is "[if the player is emrys-weaver]You have difficulty smelling things, most days[otherwise]I didn't notice what anything smelled like, then[end if]."
The report listening rule response (A) is "[if the player is emrys-weaver]It's hard to pick out any unusual sounds that you haven't already noticed[otherwise]I don't remember what I heard. Sorry[end if]." 
The report tasting rule response (A) is "[if the player is emrys-weaver]Tasting things is a last resort. And you're not even close to needing to do that[otherwise]I don't remember the taste of anything[end if]."	
The block cutting rule response (A) is "[if the player is emrys-weaver]Cutting things might render something useful inoperable. Better to not[otherwise]I didn't cut anything at the time[end if]."
 
Before cutting a person:
	say "[We] [aren't] a knife wielding-murderer!" instead;

Before attacking a person:
	say "Words before violence." instead;

The parser error internal rule response (E) is "I couldn't find the object in that command.";

The parser error internal rule response (X) is "You forgot to enter a command.";

The parser error internal rule response (N) is "I didn't understand the first word or two that you typed."; 

The parser error internal rule response (B) is "I understand simple sentences best; I believe you just want to ";[fix this and the next one]

The parser error internal rule response (C) is "I understand a simple set of commands; I believe you just want to (go)";
	
The report jumping rule response (A) is "[if the player is emrys-weaver]You jump up into the air fairly athletically before landing[otherwise if the player is maeve]I jumped, and did well, I think[otherwise if the player is mari]I jumped really high[otherwise]I didn't jump, Detective[end if]."

The block tying rule response (A) is "[if the player is emrys-weaver]You will rarely, if ever, need to tie anything. There's no need to do so right now[otherwise]I don't recall tying anything, actually[end if]."

The block drinking rule response (A) is "Drinking unusual things [are] not one of [our] pastimes."
The block saying sorry rule response (A) is "Feeling guilty for something?"
The block swinging rule response (A) is "Swinging [aren't] the best option here."

The can't rub another person rule response (A) is "[if the player is emrys-weaver]That might get you in trouble[otherwise]This isn't role-play, Detective[end if]."

The block buying rule response (A) is "[if the player is emrys-weaver]Any financial transactions you have can be accomplished by the physical transfer of legal tender[otherwise]I didn't buy anything at the time[end if]."
The block climbing rule response (A) is "[if the noun is an animal]Animals aren't for climbing[otherwise if the noun is a person]People aren't for climbing[otherwise][We] [don't] see a clear path upwards[end if]."

To seem is a verb.

Instead of entering a person:
	say "That [adapt the verb seem] physically impossible."

Instead of opening a person:
	say "That [adapt the verb seem] like it would involve a lot of blood."

The block sleeping rule response (A) is "[if the player is emrys-weaver]Despite the craziness of the day, you're not tired yet[otherwise]I wasn't sleepy, not any more[end if].".

The can't go that way rule response (A) is "It [don't] look like [we] [can] go that way."

Asking someone for something is chatty behavior. Telling someone about something is chatty behavior. Asking someone about something is chatty behavior.

Instead of chatty behavior:
	if the player is emrys-weaver:
		say "In this game, conversation is handled by SAYING a topic TO another person. Available topics can be seen by typing TOPICS, or just T.";
	otherwise:
		say "In flashbacks, all conversation is handled by typing TALK TO [bracket]the person you are talking to[close bracket]."
		
Definition: a person is non-robot if it is not a robot;

Instead of answering a non-robot that something:
	if the player is emrys-weaver:
		say "In this game, conversation is handled by SAYING a topic TO another person. Available topics can be seen by typing TOPICS, or just T.";
	otherwise:
		say "In flashbacks, all conversation is handled by typing TALK TO [bracket]the person you are talking to[close bracket]."

Part 2 - Special kinds of responses

Shouting is an action applying to nothing. Understand "shout" as shouting.

Carry out shouting:
	say "You shout without words, a pure vocal noise."

Instead of clone-you shouting:
	say "Your clone shouts, frightening you.'"

To feel is a verb.

Instead of searching a person:
	say "That's not really something [we] [adapt the verb feel] comfortable with."
	
Swimming is an action applying to nothing. Understand "swim" as swimming. 
Swimming is exercise. 

Carry out swimming:
	if the player is emrys-weaver:
		say "You don't swim at all, since your recorder could get wet.";
	otherwise:
		say "No, I don't remember swimming at the time."

xyzzying is an action applying to nothing. Understand "xyzzy" or "plugh" as xyzzying. 

A room can be xyzzypossible or not xyzzypossible. A room is usually not xyzzypossible.

frankytrue is a truth state that varies. Frankytrue is false.

Carry out xyzzying:
	if the player is not emrys-weaver:
		say "'I'm sorry, detective, I don't know what you just said.'";
	otherwise:
		now frankytrue is false;
		if frankenstein is in the location:
			if franken-confusion is targetgiven:
				now frankytrue is true;
		repeat with current running through rooms: 
			let currentnum be the number of moves from the location to the current,using doors;
			if currentnum > -1:
				now current is xyzzypossible;
		if the number of visited xyzzypossible rooms > 1:
			now the location is not xyzzypossible;
			let current be a random visited xyzzypossible room;
			now the player is in current;
			say "You have been randomly teleported to a room you have previously visited.";
		otherwise:
			say "You feel a burst of magical energy, but nothing happens. Perhaps you need to explore more, first.";
		if frankytrue is true:
			say "[conditional paragraph break][bracket]Also, that was not the magic word Frankenstein was looking for. Keep exploring, you'll know it when you see it![close bracket][line break]"

Crying is an action applying to nothing. Understand "cry" as crying.

Carry out crying:
	say "You allow yourself some healthy tears, then wip them away. It's been a hard day."

Singing is an action applying to nothing. Understand "sing" as singing.

Carry out singing:
	try notesinging "h";

Dancing is an action applying to nothing. Understand "dance" as singing.
Dancing is exercise.

Carry out dancing:
	say "Unfortunately, you specifically have been banned from dancing since the ship's last Christmas party.";

Instead of asking someone for a quip:
	try uttering the second noun to the noun;

Digging is an action applying to one thing. Understand "dig [something]" as digging.

Carry out digging:
	say "You're doubtful of obtaining a useful result by digging through [the noun].";

Thingexiting is an action applying to one thing. Understand "exit [something]" or "get out of [something]" or "leave [something]" as thingexiting.

Carry out thingexiting:
	if the player is not enclosed by the noun:
		say "But you aren't in [the noun]!";
	otherwise:
		try exiting;

The standard report taking rule response (A) is "[if the player is emrys-weaver]Taken[otherwise]I took [the noun][end if]."

Understand "move [something]" as pushing.

Understand "look around" as looking.

Understand "climb on/onto [something]" as entering.

[[From code by otistdog]

After deciding the scope of the player while examining (this is the place the room in scope while looking rule): [limits applicability to when parsing examining action]
	place the location in scope, but not its contents. [everything else should already be in scope if applicable]

Does the player mean doing anything to the location: [still prioritizes examination of things vs rooms]
	it is unlikely.

Instead of examining a room:
	try looking instead.]

Part 3 - Stuff that has to be at the end because it won't compile right otherwise

Singlequipping is freeacting. ragequitting is freeacting. spelling is freeacting. crying is freeacting. Singing is freeacting.

Shouting is useless action. Swimming is useless action. xyzzying is useless action. Crying is useless action. Singing is useless action. Dancing is useless action. Digging is useless action. Thingexiting is useless action. 

Book 2 - Endgame text

Section 1 - Procedure

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"REVEAL the inspiration for the dimensions"	true	"reveal"	investigate something rule	--

This is the investigate something rule:
	say "The Haunted House dimension was the first completed. It was intended to be a classic-style text adventure with traditional puzzles. It was inspired by Garry Francis's style of retro game authoring. Many of the monsters in the game are part of Terraria as well. Frankenstein's lair contains all of the treasures from the game Adventure, which was the earliest text adventure that has remained influential since its creation.

The Murder Mystery dimension was a callback to my game Color the Truth. Both games feature four suspects, a clue system that lets you combine clues, and flashbacks that let you inhabit a character in the past. The courier's story is based on my time living in the Bronx in the early 2000's; the author's story is based on my experience with author's being much poorer than the public perceives; the attendant's story is based on compulsive liars, if anything; and the professor's story is unfortunately based on many experiences in academia.

The Wax Museum escape room dimension was inspired by vague memories of a wax museum area in The Mulldoon Legacy. Many of the characters are in the game Civilization, while I first met Diaochan in games like Bandit Kings of Ancient China and Dynasty Warrior. The rooms are loosely themed around the seven deadly sins. Fishblade was a character invented to serve as a 'futuristic' celebrity, and is named after an obscure twitter mini-trend about a theoretical TTRPG called Fishblade. The hideous contraption was directly inspired by the purple room in Mike Sousa's The Recruit.

The Magical Spells Horror dimension was themed on the fourteen fears described in the Magnus Archives podcast."


Book 3 - Help System

Book 4 - Testing

Part 1 - Ship tests

Part 2 - Specific dimension tests

Chapter 1 - Wax museum

Test getbottle with "d/n/get bottle/s/u"

Test enternapoleon with "n/n/n"

Test pyramid with "x sphinx/x floor/push button/turn pyramid left/g/g/g/turn pyramid right/g/turn pyramid left/g/g"

Test colors with "push green/x floor/push red/x floor/push green/push blue/x floor/stand on green/x saber/look under hoof/enter 27182"

Test wall with "push red/push green/x floor/climb tango/climb romeo/climb oscar/climb uniform/climb bravo/climb lima/climb echo"

Test allnapoleon with "test enternapoleon/test pyramid/test colors/test wall"

Test wrathcube with "n/take mallet/hit left stake/g/hit middle stake/g/g/hit right stake/g/hit left helm/hit right helm/hit left helm/hit right helm/hit left helm/hit right helm"

Test wrathballoons with "take javelin/x shield/pop yellow balloon/g/g/pop red balloon/g/g/g/pop orange balloon"

Test allwrath with "test wrathcube/test wrathballoons"

Test nile with "e/take bowl/fill bowl with mud/put bowl in nile/shake bowl/take bowl/shake bowl/put bowl in nile"

Test rings with "x sign/cut glass with diamond/take sapphire/kiss asp/x khan/punch chest/take opal"

Test circuits with "open panel/put diamond in first/put ruby in second/put opal in third/put sapphire in fourth"

Test alllust with "test nile/test rings/test circuits"

Test silks with "w/w/x arthur/x gauntlet/x throne/x ceiling/x hand/x spear/take bandage/take favor/take pennant/take honor/take gossamer/take flag/put all on clothesline"

Test spears with "x garden/x wall/x diaochan/x bench/x trees/x flowers/take spade/take sapling/take umbrella/take fan/take broom/take rake/put all in weapons-rack"

Test envypics with "attack picture/g/g/g/push button"

Test allenvy with "test silks/test spears/test envypics"

Test revolving with "n/push door/turn on forge/push door/g/z/turn on magnet/push door/g/g/g/take key/put key in keyhole"

Test blacklight with "x vault/turn on blacklight/x mansa/x fish/x forge/x magnet/set lock to dog/set lock to horse/set lock to fish/set lock to cat/open vault"

Test allgreed with "test revolving/test blacklight"

Test elvis with "s/e/n/x elvis plaque/turn on suspicious/z/turn on burning/turn on hound/turn on jailhouse/z"

Test goblet with "push blue/g/g/g/g/take goblet/push red/put goblet in machine/push blue/g/push green"

Test beeswax with "open bottle"

Test allgluttony with "test elvis/test goblet/test beeswax"

Test kiosk with "e/x kiosk/type yes/type emrys"

Test foosball with "take ball/put ball in enemy goal"

Test clapping with "x contraption/x directions/read instructions/g/g/g/g/g/clap"

Test allsloth with "test kiosk/test foosball/l/test clapping"

Test allgift with "s/w/s/e"

Test captainreturn with "w/s/s/give watch to captain"

Test allwax with "test getbottle/test allnapoleon/test allwrath/test alllust/test allenvy/test allgreed/test allgluttony/test allsloth/test allgift/test captainreturn"

Chapter 2 

Chapter 3 

Chapter 4 

Chapter 5 

Chapter 6 - Haunted Mansion

Test firstgareth with "e/say consolation/n/n"

Test pharaoh with "n/say problem/n/look under organ/s/e/look under rug/w/w/look under comb/e/take token"

Test dracula with "n/get all from bookshelves/give advenit to dracula/pull stop/give sinistram to dracula/push stop/give gyra to dracula/take token"

Test creature with "s/w/say communicate/e/n/say interpreter/take blue/s/w/say retry/e/s/give book to frankenstein/n/w/give staff to creature/take token"

Test yeti with "e/e/say mistaken/open wardrobe/take coat/take mannequin/take shoes/put coat on mannequin/put shoes on mannequin/give mannequin to yeti"

Test frank with "w/u/e/say innocent/say identity/touch orb/g/g/g/g/w/d/s/say xyzzystein"

Test wolf with "n/u/w/say safety/e/d/e/take mask/open wardrobe/take handcuffs/w/s/s/x flowers/take wolfsbane/n/n/u/w/give mask to wolf/give handcuffs to wolf/give wolfsbane to wolf/take token"

Test ghost with "e/e/touch ball/g/take token"

Test obol with "test firstgareth/test pharaoh/test dracula/test creature/test yeti/test frank/test wolf/test ghost/w/d/s/s/s/w/n/n/n/e/put all tokens in machine/take obol"

Test tool with "w/s/s/s/w/n/n/take tool"

Test charon with "s/s/e/e/n/e/give obol to charon"

Test allhaunt with "test obol/test tool/test charon"

Test clonesummon with "e/push bar/take bar/e/s/x pool/say reflecting/say assistance"

Test movestone with "n/push block/z/push block"

Test useplank with "n/take plank/s/s/e/put plank on rail/e/z/z/e/turn wheel"

Test singing with "e/x engravings/sing d/sing d/sing f/sing g/sing g/e"

Test spiring with "w/w/take plank/w/n/e/put bar in supports/put plank on bar/stand on plank/jump/z/z/set tool to flashlight/u"

Test endgareth with "x plaque/take toy/d/w/w/w/w/w/s/give toy to gareth/say dedication"

Test allgareth with "test allhaunt/test clonesummon/test movestone/test useplank/test singing/test spiring/test endgareth"

Chapter 7 - Murder Mystery

Test seal with "e/n/n/n/e/say mistaken/open wardrobe/take seal/w/s/s/s/w"

Test entry with "u/n/take wallet/open it/open latch/w"

Test firstmaeve with "show badge to maeve/say statement to maeve/eat breakfast/s/wear jumpsuit/n/e/take books/talk to dafydd/sign book/give copy to dafydd/talk to dafydd/n"

Test firstarthur with "show badge to arthur/say statement to arthur/open fridge/take 4b/take 5c/put 4b in microscope/look in microscope/take 4b/put 5c in microscope/look in microscope/take 5c/take red/mark 5c/mark 4b/put all slides in fridge/go east/turn on computer/go west/talk to dafydd/go south/talk to dafydd"

Test firstmari with "s/show badge to mari/say statement to mari/talk to Hilda/take package/s/e/s/u/take hanger/put hanger on wires/e"

Test firstelen with "show badge to elen/say statement to elen/talk to gwen/e/e/talk to man/n/talk to man/talk to woman/s"

Test inspection with "x watch/x corpse/x fist/x receipt"

Test allfirst with "test seal/test entry/test firstmaeve/test firstarthur/test firstmari/test firstelen/test inspection" 

Test linking with "t/link punch to collision/link bling to timepiece/link unaware to postal/say acquaintance to mari/link ceri to collector"

Test secondelen with "say appropriated to elen/say statement to elen/talk to gwen/e/e/talk to dafydd/n/talk to man/talk to woman/s/talk to dafydd"

Test secondmari with "say statement to mari/talk to dafydd/s/e/s/u/x platform/e"

Test secondmaeve with "n/say altered to maeve/say statement to maeve/eat breakfast/open wardrobe/wear jumpsuit/e/take box/talk to dafydd/sign copy/give copy to dafydd/talk to dafydd/n"

Test secondarthur with "say altercation to arthur/say statement to arthur/x samples/e/turn on computer/w/talk to dafydd/s/talk to dafydd"

Test allsecond with "test linking/test secondelen/test secondmari/test secondmaeve/test secondarthur/s/z"

Test uptosecond with "test seal/test allfirst/test allsecond"

Test evidence with "w/n/stamp papers/put papers in slot/x dagger/push next/g/x report/push next/g/g/x medical/s/e"

Test thirdmari with "link wealthy to streetsmart/say incognito to mari/say statement to mari/talk to dad/n/talk to dafydd/give receipt to dafydd/s/e/s/u/x dafydd/e"

Test thirdelen with "link payoff to fractured/say graverobber to elen/say statement to elen/x locker/x box/close locker/talk to gwen/e/e/talk to man/n/talk to man/talk to woman/s"

Test thirdmaeve with "n/link rendezvous to sneaking/say stalker to maeve/say statement to maeve/eat breakfast/wear jumpsuit/take bag/talk to man/sign book/give book to man/take case/talk to dafydd/n"

Test thirdarthur with "link personalized to croes/link possession to method/say murderer to arthur/say statement to arthur/e/turn on computer/w/talk to dafydd/s/talk to dafydd"

Test murderfinale with "s/w/n/take chip/s/e/n/e/s/give chip to mefe/say maneuver to mefe"

Test allmurder with "test allfirst/test allsecond/test evidence/test thirdmari/test thirdelen/test thirdmaeve/test thirdarthur/test murderfinale"

Chapter 8 - Spell dimension

Test rescue with "d/s/x whimpering/say escape/s/touch gem" in Transit-room.

Test lonely with "sw/ne/e/w/n/take scroll/denox scroll".

Test buried with "n/ne/look/take scroll/denox scroll/mallox/ne/z".

Test toburied with "test rescue/test lonely/test buried"

Test bookmark with "se/ne/touch lamp/touch locker/take bookmark/touch helmet/touch stalagmite/sw".

Test stranger with "touch back/take scroll/z/z/z/denox scroll"

Test end with "search bodies/take box/take scroll/denox scroll/n"

Test pillar with "w/put bookmark in spellbook/exfil monitors/e/se/s/exfil camera/anghofio/n/nw/w/x monitor/g/g/g/g/e/se/s/exklip/anghofio/take spellbook/n/nw/w/x monitor/g/g/g/g/e/se/exklip/drop spellbook/s/anghofio/n/take spellbook/nw/w/x monitor/g/g/g/g/e/se/s/exklip/take bookmark/drop spellbook/anghofio/take spellbook/n/denox scroll"

Test tovast with "test rescue/test lonely/test buried/test bookmark/test stranger/test pillar"

Test vast with "remox/n/take scroll/put bookmark in spellbook/remox/denox scroll/s/nw/virox/exklip/n/n/exklip/n/n/n/exklip/n/n/take scroll/exklip/s/s/s/exklip/s/s/denox scroll"

Test hunter with "w/collox/n/put bookmark in spellbook/se/e/w/nw/w/w/mallox beast/take scroll/denox scroll".

Test dark with "e/e/se/n/n/listen/smell/touch odorous/touch pool/quadox/x warm thing"

Test toweb with "test rescue/test lonely/test buried/test bookmark/test stranger/test end/test pillar/test vast/test hunter/test dark"

Test web with "n/say role/say torture/say composition/say comfort/denox scroll"

Test spiral2 with "s/s/s/ne/sanox/sanox/sanox/sanox"

Test spellend with "in/give bear to emrys/n/give bear to girl"

Test allspells with "test rescue/test lonely/test buried/test bookmark/test stranger/test end/test pillar/test vast/test hunter/test dark/test web/test spiral2/test spellend"

Chapter 9 - Combat dimension

Test tiffany with "s/s/s"

Test andy with "say pardon/say difficulties/"

Test combatintro with "test tiffany/test andy"

Test shootingtime with "w/drop rucksack/s/take gun/shoot target/aim at target/shoot target/arm grenade/throw grenade/take grenade"

Test vesttime with "s/wear vest/hide behind left pillar/turn on vest/shoot bot/hide behind left pillar/turn on vest/z/aim/shoot bot/hide behind left pillar/aim/shoot bot"

Test bosstime with "turn on vest/hide behind left pillar/shoot target/shoot bot/hide behind left/shoot target/shoot boss/hide behind left/shoot target/shoot boss"

Test kitchen with "n/drop vest, gun, grenade/n/e/e/e/s/max, open fridge/max, take cheese/max, take lettuce/max, turn on sink/max, wash lettuce/max, take meat/max, turn on stove/max, take pan/max, put pan on stove/max, put meat in pan/max, take hamburger/max, open hamburger/max, put hamburger on counter/max, put meat on hamburger/max, put lettuce on hamburger/max, put cheese on hamburger"

Test dan with "s/max, record/max, push left hand/max, push right hand/max, push left foot/max, push right foot/max, push face/max, replay X/push white button/push left arm/push right arm/push left leg/push right leg/push head"

Test robotpart with "test kitchen/test dan"

Test trainingpart with "test shootingtime/test vesttime/test bosstime"

Test wood with "w/w/n/take all/wear vest/s/e/s/dan, hide behind wagon/max, hide behind tree/hide behind barrel/turn on laser-vest/arm grenade/throw grenade/dan, shoot target/dan, shoot robber/dan, shoot target/dan, shoot robber"

Test bronze with "s/max, hide behind colonnade/dan, hide behind buttress/max, record/yes/max, shoot athos-bot/max, hide behind colonnade/max, shoot porthos-bot/max, hide behind colonnade/max, shoot aramis-bot/max, replay x/dan, record/dan, shoot darty-bot/g/g/g/g/hide behind chandelier/turn on vest/z/shoot athos-bot/hide behind chandelier/shoot porthos-bot/hide behind chandelier/shoot aramis-bot/dan, replay a/shoot darty-bot"

Test silver with "s/dan, record/y/dan, shoot target/dan, hide behind statue/dan, shoot target/dan, hide behind statue/dan, shoot target/max, record/y/max, shoot fire-bot/max, hide behind gates/max, shoot water-bot/max, hide behind gates/max, shoot air-bot/dan, hide behind statue/max, hide behind gates/dan, replay a/max, replay x/hide behind seal/turn on vest/z/shoot fire-bot/hide behind seal/shoot water-bot/hide behind seal/shoot air-bot/shoot earth-bot/shoot earth-bot/shoot earth-bot"

Test mutualpart with "test wood/test bronze/test silver"

Test combatall with "test combatintro/test trainingpart/test robotpart/test mutualpart"

Part 3 - Checking missing stuff

Alldescriptioning is an action out of world. Understand "alldesc" as alldescriptioning.

Carry out alldescriptioning:
	repeat with current running through things:
		if current is not nothing:
			say "[current]: [description of current][paragraph break]"

Squipchecking is an action out of world. Understand "scheck" as squipchecking.

Carry out squipchecking:
	repeat with current running through squips:
		say "The current squip is [current].";
		repeat with current2 running through suspects:
			now currenttarget is current2;
			say targetresponse of current;
			say paragraph break;

Part 4 - Temporary beta-testing stuff

Chapter 1 - The fairy

Sergeant Olgin is a talkative woman in Transit-room. "Sergeant Olgin is directing the rescue and repair effort in this sector of the starship[deliverexplanation]." The description of Sergeant Olgin is "Sergeant Olgin is a short woman with black hair tied up in a bun, wearing a beige military uniform. 

Try TALKing TO the Sergeant if you don't know how conversation works in this game, or SAY EXPLANATION if you do." 

Understand "short" or "woman" or "black" or "hair" or "bun" or "earpiece" as Sergeant Olgin.

The beige-uniform is worn by Sergeant Olgin. The printed name of the beige-uniform is "beige uniform". Understand "beige" or "uniform" or "fabric" or "sturdy" or "convertible" or "spacesuit" or "suit" or "space suit" as the beige-uniform. The description of the beige-uniform is "The Sergeant's uniform is made of sturdy beige fabric, and is designed to be easily convertible into a spacesuit in case of hull breach."

To say deliverexplanation:
	deliver Sergeant-Explanation;
	
Sergeant-Explanation is a quip carried by the player. The printed name of Sergeant-Explanation is "Explanation". Understand "explanation" as Sergeant-Explanation. The preview of Sergeant-Explanation is "Hey, can you tell me everything about the game?" The target of Sergeant-Explanation is Sergeant Olgin.

The targetresponse of Sergeant-Explanation is "'Of course! Unfortunately, the author is going to code the intro last, so I'll have to infodump:
	
'You are wearing a recorder that records all audio you hear, and can help with translation. It's what enables your conversation system. You can examine the recorder for more info.

'To start this demo, go [bolddown] and [boldsouth] to the collapsed hallway. This room you're in and the ones around it are unfinished, and aren't ready for testing yet. 

'Three other parts of the game are complete, one to the [boldeast], one to the [boldnorth], and one [bold type]up[roman type]. They have already been tested, but if you have time to check it out that would be cool.

'Good luck!' she says, and salutes you."

Understand "salute" as waving hands.

Before waving hands in the presence of a person (called onlooker) in ship-region:
	if the noun is not little-girl:
		say "[The onlooker] nods in recognition of your salute.";

['To start this demo, go to the [boldeast]. The tear in space to the [boldnorth] of you in this current room, the Transit, is very underimplemented; however, it contains one machine that will be necessary for you to complete the testing of this game. Similarly, there is a tool in the tear in space to the [boldwest] of you that will be used in one or two places in the demo.']

[The tear in space to the [boldnorth] of you in this current room, the Transit, is very underimplemented; however, it contains one machine that will be necessary for you to complete the testing of this game. Similarly, there is a tool in the tear in space to the [boldwest] of you that will be used in one or two places in the demo.]

The sergeant-pad is held by Sergeant Olgin. The printed name of the sergeant-pad is "datapad". Understand "datapad" or "data pad" or "pad" or "dark" or "glass" or "rectangle" as the sergeant-pad. The description of the sergeant-pad is "Sergeant Olgin is currently using her datapad, a dark glass rectangle the size of a piece of paper but significantly thicker, to coordinate research efforts."

Chapter 2 - Teleporting

haunted-teleporting is an action applying to nothing. Understand "xyhaunt" as haunted-teleporting.

Carry out haunted-teleporting:
	now the player is in the Parlor-room;

napoleon-teleporting is an action applying to nothing. Understand "xywax" as napoleon-teleporting.

Carry out napoleon-teleporting:
	now the player is in the pride-room;

shore-teleporting is an action applying to nothing. Understand "xyshore" as shore-teleporting.

Carry out shore-teleporting:
	now the player is in the distant-shore;

Book 5 - Notes

[Make the opening similar to 9:05, with a phone ringing, stuff to carry, stinky, etc.?]

[be able to tell stories to people]

[add rules for each region about showing the police badge to someone?]

[player MUST die to save the ship!]

[maybe future is a potential world, that only storyweaver can see, one that you can help create, or save yourself]

[There is also a masked queen. If you aren't willing to die, she will do it in your place, because she is a stranger and you can take over.]

[add custome hugging rules for each suspect]

[give a hint about linking early on]

[remove all clues and questions when the player is not in statement zone]

[probably need a better response to asking for a statement from characters who are not here ("you can't ask them for a statement because they're not here")]

[As you progress, you capture visions of a terrifying white-masked and pointy-crowned figure that you know represents death during the visions. This turns out to be the future queen. She is not related to you. She says that you came here to die to save the future, but you have option not to, letting most people die. She gives you a third option: to take her place. She wore the mask so that others wouldn't know if you two switched, having planned for this her whole life. If you play as her, the game goes to third person. incremental storytelling until very end.]
[have the glimpses of the death-woman occur the first time you enter a portal leading to the ship after securing one of the missing pieces stolen by a crewmate]

[have magnet affect other iron things]

[Leo idea about removing invisible ink]

[add can't go that way messages elsewhere]

[destiny is an army of spears marching after of you. Those who turn to fight it will perish without mercy.]

[the day you come back is the day of weft's end!]

[shold each dimension have its own queen vignettes?]

[deactivate spells after using]

[queen vignettes:

1. Walking down blindingly white path, something dreadful, see a hand by you

2. Same, but turn to see a skull turning to you

3. 'would you like to see how you died?'
	
4. 'We lost you.' (to unseen other: she seems to be stabilizing. Keep track of everywhere else she's appeared.)

5. First scene you can act in, one action only. opening a door or looking at window: 'in memory of emrys tisserand'

6. 'It's hard to hold you here, but I'll try to explain. You died almost 200 years ago.'

7. You're tied to this place. I can't explain how it happened, but everything you're seeing, it happened before. We have this: shows recorder. (aside: we've lost her again. but it should be soon.'

8. Turns on recorder, and plays your death: 'your sacrifice means everything to us'.

9. actually enter other spaceship. removes skull mask: 'welcome to the Starship Tisserand. We've been waiting for you'.
]
[ADD THat otistdog code but only for stuff that i want people to look at]
