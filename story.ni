"Never Gives Up Her Dead" by Brian Rushton

Volume 1 - Pre-game setup

When play begins:
	say "This is the story of how you died."

Book 1 - Metadata, out of world actions and extensions

Part 1 - Metadata

Chapter 1 - Genre, description, etc


Section 1 - Genre, description, etc

The story genre is "Science Fiction". The story description is "Hop through dimensions to save your ship." The story creation year is 2022. The release number is 1.

Part 2 - Out of world actions

Abouting is an action out of world. Understand "About" as abouting. 

Carry out abouting:
	say "Never Gives Up Her Dead is a large-scale text adventure. For help, type HELP. For credits, type CREDITS."

Helping is an action out of world. Understand "Help" as helping.

Carry out helping:
	say "In-game hints are not yet available. You should have received a walkthrough with the game file.

Speech works by typing SAY [bracket]a topic[close bracket], or SAY [bracket]a topic[close bracket] TO [bracket]a person[close bracket]. Each topic can only be said to one person. All topics that are useful in the current region of the game you are in are listed in your topic inventory, accessible by typing TOPICS or T. To get all topics in all areas, type AT."

[enable a mode where the preview of a topic is always printed when it is delivered?]

Crediting is an action out of world. Understand "Credits" as crediting. 

Carry out crediting:
	say "This game was written by Brian Rushton/Mathbrush using Inform 7 (by Graham Nelson). Hanon Ondricek gave helpful advice about the concept and title."

Part 3 - Extensions

Include Clues and Conversation by Brian Rushton.

Book 2 - Rules and types of things

Part 1 - Doors

Chapter 1 -Tears in space

Section 1 -Definition

A space-tear is a kind of door. A space-tear is usually unopenable. A space-tear is usually open. Understand "tear" or "space" or "tear in space" or "rip" as a space-tear.

The description of a space-tear is "This is a tear in the fabric of space and time. Going through it will take you to somewhere new and, perhaps, dangerous."

[change description if you passed through it once]

The printed name of a space-tear is usually "tear in space".

Instead of touching a space-tear:
	say "Your hand doesn't feel anything at all. The transition is seamless."

Chapter 2 - Stairs

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. 

Instead of climbing a staircase: 
	try entering the noun. 

Part 2 - Tangibility

A thing can be intangible or not intangible. A thing is usually not intangible.

Touching something is physicality. Rubbing something is physicality. Pushing something is physicality. Taking something is physicality. Pulling something is physicality. 

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

To say boldwest:
	say "[bold type]west[roman type]";

Part 4 - Quips

Report uttering a quip to someone:
	now the targetsummary of the noun is "The conversation went as follows:[paragraph break][the targetresponse of the noun]";

A person is usually not talkative.

Every turn:
	repeat with current running through people:
		now current is not talkative;
	repeat with current running through quips carried by the player:
		repeat with currentregion running through regions:
			if target of current is in currentregion:
				if the player is in currentregion:
					now target of current is talkative;

Before Uttering a quip to someone:
	if the second noun is the target of the noun:
		if the noun is MeihTarget:
			say "'[preview of noun]'[paragraph break]";

All-topicing is an action applying to nothing. Understand "AT" as all-topicing.

Carry out all-topicing:
	repeat with current running through quips carried by the player:
		now target  of current is talkative;
	try topicing;

The standard singleuttering rule response (B) is "Your recorder beeps. This is a message meant for [The target of the noun], who isn't here.";

The advice on talking to just one person rule response (A) is "[We] [can] see just the topics for one person at a time by TALKing TO that person[first time]

To say a specific topic to someone, type SAY the topic TO that person[only]."

Part 5 - Player character

Chapter 1 - Name and identity

[maybe Angharad instead]

Emrys-weaver is a person. Understand "emrys" or "weaver" or "storyweaver" or "Tisserand" as emrys-weaver.

The player is emrys-weaver. 

The description of emrys-weaver is "You are Emrys Tisserand, and you are the active Storyweaver of the seedship Eilifligr. It is your job to preserve and share the history of this people in the form of stories. This is a noble calling, but right now it's not much use to the currently crashing starship[if the player is not in ship-region]

But maybe you're of some use in this strange land[end if]."

Chapter 2 - Recorder

The all-recorder is worn by the player. The printed name of the all-recorder is "recorder". Understand "recorder" or "slender" or "contraption" or "earpiece" or "metal" or "microphone" as the all-recorder.

Does the player mean doing something with the all-recorder:
	it is unlikely;

The description of the all-recorder is "Your recorder is a slender contraption made of metal, consisting of an earpiece and a microphone.

This device helps you remember various conversations you had or possible subjects to discuss with others. You can bring up topics pertinent to the current area of the game you are in by typing TOPICS or T, and remember past conversations by typing REMEMBER followed by the name of the topic.

To see all topics for all regions of the room, type AT."

Volume 2 - Rooms

Book 1 - Past ship

Part 1 - Main rooms

Ship-region is a region.

The ship-walls are a plural-named backdrop. The ship-walls are in ship-region. The description of the ship-walls is "All walls in the ship are a uniform gray with bold swipes of color around exits and entrances." The printed name of the ship-walls is "walls". Understand "wall" or "walls" as the ship-walls.

Chapter 1 - Hangar

Hangar-room is a room in ship-region. The printed name of Hangar-room is "Hangar".   The description of hangar-room is "You can go to the psychologist's office to the [boldeast] or to the engineering room to the [boldwest]."

Section 1 - Tear in space

The hangar-tear is a space-tear. "A tear in space has opened up here, to the [if the player is in Hangar-room][boldnorth][otherwise][boldsouth][end if]." The hangar-tear is north of Hangar-room and south of Napoleon-room.  

Chapter 2 - Psychologist's office

Psych-room is east from Hangar-room. psych-room is in ship-region. The printed name of Psych-room is "Psychologist's Office". The description of psych-room is "This is a small office with softer lighting and more furnishings than most of the ship. The walls are plastered with classic movie posters and the desk is overflowing with action figures. You can return to the hangar to the [boldwest]."

The classic-posters are scenery in psych-room. The printed name of the classic-posters is "classic movie posters". Understand "classic" or "movie" or "poster" or "posters"as the classic-posters. The description of the classic-posters is "These are all from old Earth. You know Gareth is a fan of the old movies; he's been trying to purchase an actual film reel for years."

The action-figures are plural-named scenery. The action-figures are on the psych-desk. The printed name of the action-figures is "action figures". Understand "action" or "figure" or "action figures" or "horror" or "various" or "character" or "characters" as the action-figures. The description of the action-figures is "There are a variety of plastic toys here representing various horror characters."

The psych-desk is a scenery supporter in psych-room. Understand "desk" as the psych-desk. The printed name of the psych-desk is "desk". The description of the psych-desk is "This is a plain desk without drawers. It's mostly cluttered with action figures."

Instead of taking the action-figures:
	say "Gareth would get very upset. This doesn't seem like the time for that."

Instead of kissing gareth:
	say "You give Gareth a hug. He lets you, and pats your hand absent-mindedly."

[implement individual movie posters?]

The softer-lighting is intangible scenery in the psych-room. The printed name of the softer-lighting is "softer lighting". Understand "softer" or "lighting" as the softer-lighting. The description of the softer-lighting is "The lighing in here is softer than the rest of the ship, but you can't discern its source."

Understand "furnishings" as the psych-couch. Understand "furnishings" as the psych-rug.

The psych-rug is scenery in the psych-room. Understand "comfortable" or "rug" as the psych-rug. THe printed name of the psych-rug is "comfortable rug". The description of the psych-rug is "This a comfortable rug that helps mute some of the clangs and echoes typical in spaceships."

The psych-couch is a scenery supporter in the psych-room. Understand "couch" as the psych-couch. The printed name of the psych-couch is "couch". The description of the psych-couch is "While it's usefulness in psychological evaluation is debatable, the couch is one of the best places for naps on the ship. When there isn't an emergency, that is."

Section 1 - Psychologist

Gareth is a man in Psych-room. "Gareth is here, huddled on his couch and staring at the wall." Understand "doctor" or "Djomo" as Gareth. The description of Gareth is "Gareth is a disheveled middle-aged man with a mop of curly black hair and a lean frame. He has a thousand-yard stare right now and doesn't seem very responsive."

Report going to psych-room:
	deliver Consolation-gareth;
	
Consolation-gareth is a quip. The target of consolation-gareth is gareth. The preview of Consolation-gareth is "Hey, Gareth, are you feeling okay?" The printed name of consolation-gareth is "Consolation". Understand "consolation" as consolation-gareth.

The targetresponse of consolation-gareth is "Gareth looks up at you disconsolately. 'I wasn't trained for this. Do you know there are twenty-three psychologists on board? Some of them have seem combat. Not me; I was supposed to be the colony's family psychologist. And somehow I'm the one they defrosted right before we all go up in flames. I could have just died in my sleep like the other ten thousand passengers. I don't know how to be helpful at all right now,' he says.

You don't say anything, but squeeze his hand in support. He barely seems to register it."

Section 1 - Tear in space

The psych-tear is a space-tear. "[one of]The current psychologist on duty, Gareth Djomo, is in here, huddled on his couch. Oblivious to the chaos outside, or perhaps overwhelmed by it, he stares off into the corner. 

There is a tearing sound, and the fabric of reality rips open to the [boldnorth]. Out of it comes a bizarre little creature that looks like a kind of robotic monkey. It leaps up onto Gareth's desk and grabs one of the action figures, then rushes back into the tear in space. [Gareth] doesn't seem to notice any of this.

It may be worthwhile to figure out what that creature is up to; but in the meantime, Gareth could use a bit of cheering up[or]A tear in space has opened up here, to the [if the player is in psych-room][boldnorth][otherwise][boldsouth][end if][stopping]." The psych-tear is north of psych-room and south of the front-room.

Chapter 3 - Engineering room

The engineering-room is west from hangar-room. The engineering-room is in ship-region. THe printed name of the engineering-room is "Engineering Room". "You can return to the hangar to the [boldeast]."

The engineering-tear is a space-tear. "A tear in space has opened up here, to the [if the player is in engineering-room][boldnorth][otherwise][boldsouth][end if]." The engineering-tear is north of engineering-room and south of device-room.  

Chapter 4 - Bridge, flight control

The flight-room is up from hangar-room. THe flight-room is in ship-region. The printed name of the flight-room is "Bridge: Flight Controls".

Mefe is a woman in flight-room. "Officer Mefe is here, frantically trying to restore navigation while helping everyone else on the bridge." The description of Mefe is "Flight Officer Mefe Azimov is a short woman with wavy black hair tucked under a cap. While trying to repair the controls, she constantly scans the room, looking for other problems to fix, but finding too many to handle.". Understand "flight" or "officer" as Mefe.

The flight-cap is worn by Mefe. Understand "cap" as the flight-cap. The printed name of the flight-cap is "cap". The description of the flight-cap is "This cap signifies Mefe's rank as Officer."

The flight-tear is a space-tear. "A tear in space has opened up here, to the [if the player is in flight-room][boldnorth][otherwise][boldsouth][end if]." The flight-tear is north of flight-room and south of lavatory-room.  

Book 2 - Future Ship

Part 1 - Wax museum dimension

The wax-region is a region.

Chapter 1 - Napoleon room

Napoleon-room is a room in the wax-region. "The gift shop is to the [boldeast]." The printed name of Napoleon-room is "Napoleon Room".

Section 1 - Wax figures

Chapter 2 - Gift shop

Gift-room is east from Napoleon-room. "A coin machine is here. The author is going to make it so that you can put tokens in and get an obol out."

The gift-room is in wax-region.

The coin-machine is scenery in Gift-room. The printed name of the coin-machine is "coin machine". Understand "coin" or "machine" as the coin-machine. The description of the coin-machine is "It has a little tray and a slot. Above the slot is a sign saying 'Insert every token you have into this slot to receive a coin!'"

The coin-slot is part of the coin-machine. Understand "slot" as the coin-slot. The printed name of the coin-slot is "slot". The description of the coin-slot is "This is a vertical slot for inserting tokens." 

The coin-tray is part of the coin-machine. The coin-tray is a supporter. The printed name of the coin-tray is "tray". Understand "tray" as the coin-tray. The description of the coin tray is "This is a simple tray for collecting things that come out of the machine."

Instead of putting something on the coin-tray:
	say "The tray is more for taking things out of, than putting new things in. Also it's really small."

A thing can be deposited or undeposited. A thing is usually undeposited.

The obol is a thing. The description of the obol is "An ancient coin, once used to pay for passage across the river of the dead."

Instead of inserting a token into the coin-machine:
	say "*Chunk!*

The token disappears into the machine.";
	now the noun is nowhere;
	now the noun is deposited;
	if every token is deposited:
		say conditional paragraph break;
		say "You hear a chugging sound from within the machine.

Into the coin tray falls an obol.";
		now the obol is on the coin-tray.

Part 2 - Ecocosm dimension

The ecocosm-region is a region.

Chapter 1 - Savannah

Savannah-room is a room in the ecocosm-region. The printed name of Savannah-room is "Savannah".

Part 3 - Tool dimension

The tool-region is a region.

Chapter 1 - Main room

Device-room is a room in the tool-region. The printed name of Device-room is "The Device".  "This room is dominated by a single, big, complex device. There is a hallway leading [boldnorth]."

The strange-device is scenery in the device-room. The printed name of the strange-device is "strange device". Understand "strange" or "device" as the strange-device. 

Chapter 2 - Tool room

Tool-room is a room in the tool-region. Tool-room is north from device-room. The printed name of tool-room is "Tool Room". "This bare room contains a single black pedestal. You can return to the device room to the [boldsouth]."

The tool-pedestal is a scenery supporter in the tool-room. The printed name of the tool-pedestal is "pedestal". Understand "single" or "simple" or "black" or "pedestal" as the tool-pedestal. The description of the tool-pedestal is "This is a solid black pedestal whose sole purpose seems to be display."

Section 1 - The curious tool itself

The curious-tool is on the tool-pedestal. The printed name of the curious-tool is "curious tool".  Understand "curious" or "tool" or "lockpick" or "flashlight" as the curious-tool. The description of the curious-tool is "This is a cylindrical device with a dial at one end. The dial is currently set to [tool-mode of the curious-tool]."

Tool-Mode is a kind of value. The tool-modes are inert, lockpick and flashlight. The curious-tool has a tool-mode. The curious-tool is inert. 

Understand "set [curious-tool] to [a tool-mode]" as tuning it to. Tuning it to is an action applying to one thing and one tool-mode. 

Instead of setting the curious-tool to something: 
	say "The available settings are lockpick and flashlight." 

Check tuning it to: 
	if the noun is not the curious-tool, say "Only the curious tool can be set to [the tool-mode understood]." instead. 

Carry out tuning it to: 
	now the tool-mode of the noun is the tool-mode understood. 

Report tuning it to: 
	say "You set [the noun] to [tool-mode understood].";
	if the curious-tool is lockpick:
		repeat with current running through lockable doors:
			now curious-tool unlocks current;
	otherwise:
		repeat with current running through lockable doors:
			now curious-tool does not unlock current;
	if the curious-tool is flashlight:
		now curious-tool is lit;
	otherwise:
		now curious-tool is not lit;

Part 4 - Garden dimension

The garden-region is a region.

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

A token is a kind of thing. Understand "token" as a token.  Understand "token" or "round" or "disk" or "depiction" or "waxworks" or "reverse" as a token. 

A token has some text called the token-target. The token-target of a token is usually "Frankenstein".

The description of a token is usually "This is a round disk with a depiction of [the token-target of noun] on it. On the reverse, it says 'WAXWORKS'."


Chapter 1 - Parlor

The Parlor-room is a room in haunted-region. The printed name of Parlor-room is "Frankenstein's Parlor".

The description of Parlor-room is "This room is dominated by a large trophy case. In the trophy case, you can see [a list of things enclosed by the treasure-case]. You can go outside to the [boldsouth], or deeper into the building to the [boldnorth]."

Section 1 - Frankenstein

[maybe frank is a kleptomaniac, like a zork treasurer? psychology is envy/greed/idolatry]

[frank can give you the glasses, but only if you have the right conversation topic. He really wants the treasures across the river, which is like the zork underworld.]

Frankenstein is a man in Parlor-room. "A tall man with a corpse-like appearance and an avaricious look in his eye is standing near. He has a nametag on his overalls that says, 'Frankenstein'. He is holding [a list of things carried by Frankenstein][first time].

Frankenstein? You have many questions[deliverfrankstuff][only]." The description of Frankenstein is "This is a very tall man. He has translucent skin, with a dark web of blood vessels underneath, and black lips. He wears overalls with a nametag that says 'Frankenstein'. He keeps glancing over at you with a greedy look in his eye.". Understand "Frank" or "tall" or "creature" or "monster" or "translucent" or "skin" or "web" or "blood" or "vessels" or "vessel" or "corpse" or "avaricious" or "eye" or "corpse-like" as Frankenstein.

The frank-overalls are plural-named thing worn by frankenstein. The printed name of the frank-overalls is "overalls". Understand "overalls" as the frank-overalls. The description of the frank-overalls is "These seem poorly stitched together."

The frank-nametag is worn by frankenstein. The printed name of the frank-nametag is "nametag". Understand "nametag" or "name" or "tag" as the frank-nametag. The description of the frank-nametag is "The name on the tag is 'Frankenstein'."

To say deliverfrankstuff:
	deliver franken-name;
	deliver franken-confusion;

Franken-name is a quip. The printed name of Franken-name is "Creator". Understand "creator" as Franken-name. The preview of Franken-name is "Isn't Frankenstein the name of your creator?"  The target of Franken-name is Frankenstein.

The TargetResponse of Franken-name is "The great creature sighs in response. 'That's a common misconception. In fact, [italic type]I[roman type] am Frankenstein, and my creator is technically known as Frankenstein's Scientist.'"

Franken-confusion is a quip. The printed name of Franken-confusion is "Confusion". Understand "confusion" as Franken-confusion. The preview of Franken-confusion is "What is this place?"  The target of Franken-confusion is Frankenstein.

The TargetResponse of Franken-confusion is "Frankenstein says, 'This is Frankenstein's Frightening Fantasy, home of the horrible and den of the despicable! Although you must forgive us, we are all a bit out of sorts today. If you help us out, we can give you...' he fishes something out of his pocket and waves it around, continuing, '...exciting tokens!'

'What do I do with the tokens?' you ask. 'Helping horrifying monsters seems like a big risk for a few plastic tokens.'

He puts the token back out of sight, a little embarassed, and says, 'I may have exaggerated how horrible they are. And I'm sure you'll find a use for tokens. Some people use them for work. I even know someone that got out of jail using tokens. In any case, I'll leave you to it. If you find any treasure, though, let me know; I'm quite the collector myself.'

'Will you give me your token if I give you treasure?' you ask.

He smiles, and says, 'No. But I'll give you something of mine. To get my token, you must say the magic word[delivermagic].'"

The disguised-glasses are a thing carried by Frankenstein. The description of the disguised-glasses is "This is a long staff with two prongs in the middle and what look like large shield-shaped pieces of glass on both ends." Understand "long" or "staff" or "prongs" or "prong" or "staff" or "staves" or "glass" or "shield" or "unusual" or "staff" or "shield-shaped" or "piece" or "pieces" as the disguised-glasses. The printed name of the disguised-glasses is "unusual staff".

The creature-glasses are a plural-named thing. The printed name of the creature-glasses is "giant glasses". Understand "glasses" or "giant" or "cute" as the creature-glasses.

The description of the creature-glasses is "These glasses are  quite cute when perched upon the giant creature."

Instead of giving something to frankenstein:
	if the noun is a token:
		say "Frankenstein sniffs and says, 'No tokens.'";
	otherwise:
		let current be a random thing carried by Frankenstein;
		say "Frankenstein says, 'Ooh, what's this? Is it valuable?'

	He grabs [the noun] from you and hands you [the current].";
		now current is carried by the player;
		now the noun is carried by Frankenstein;

Instead of taking something that is carried by Frankenstein:
	say "Frankenstein backs away and says, 'Hey! I won't give up anything without a fair trade! You give me something, I give you the staff. That's how it works!'";

Instead of asking Frankenstein for something carried by Frankenstein:
	try taking the second noun;

Instead of giving the disguised-glasses to the lagoon-creature:
	now the disguised-glasses are nowhere;
	say "You call out to the creature, saying 'Hey! I have your glasses!' and hold them out.

The creature grasps them gently and fixes them on her nose. Ignoring you, she lays back down and looks up at the night sky.

'That's better,' she says, musingly. 'It's still dark outside, but now I can see the stars, and that's enough for me.'

She slides a finger along her shoulder, and a scale flakes off and lands next to you.";
	now the lagoon-stars are in bath-room;
	now the blue-token is in bath-room;
	now the creature-glasses are worn by the lagoon-creature;

Report examining the blue-token for the first time:
	say "Hmm, it seems it wasn't a scale after all.";

Section 2 - Frank's stuff

The treasure-case is scenery in Parlor-room. The treasure-case is a closed, locked, openable lockable transparent container. The printed name of the treasure-case is "treasure case". Understand "treasure" or "case" or "glass" as the treasure-case. The description of the treasure-case is "This is a large glass cabinet that contains a variety of treasures."

A parlor-treasure is a kind of thing. Parlor-treasure is usually scenery. Understand "treasure" as parlor-treasure.

The GoldNugget-treasure is parlor-treasure in treasure-case.
The Jewelry-treasure is ambiguously plural parlor-treasure in treasure-case. 
The Coins-treasure is plural-named parlor-treasure in treasure-case.
The Silver-treasure is ambiguously plural parlor-treasure in treasure-case.
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
Understand "jewelry" as Jewelry-treasure.
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

The description of a parlor-treasure is usually "Frankenstein sees you looking, and says, 'Oh, that? That's [a noun] that I collected during my adventures.' He provides no further context."

[add some variations to the above]

Section 3 - XYZZYStein

To say delivermagic:
	deliver Franken-magic;

Franken-magic is a quip. The printed name of Franken-magic is "Magical". Understand "magical" as Franken-magic. The preview of Franken-magic is "I have to say the magic word? Okay...Please may I have your token?"  The target of Franken-magic is Frankenstein.

The TargetResponse of Franken-magic is "Frankenstein wags his finger, and says, 'That's not the magic word I'm looking for. I wouldn't make it that easy; I want to keep my token!'

He leans in and whispere. 'But I promise that I'll be fair. You can find the magic word somewhere in this house. Don't worry, you'll know it when you see it!'"

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

The Grand-room is a room in haunted-region. "This vast room is lined with heavy sandstone blocks, stretching far higher than you thought possible. Passageways lead [boldnorth], [boldsouth], [boldeast], and [boldwest], and wide stairs lead [bold type]up[roman type]." The printed name of Grand-room is "Pharaoh's Hall".

The Grand-room is north of the Parlor-room. The grand-room is inside from the parlor-room.

The Grand-blocks are plural-named scenery in the Grand-room. The printed name of the Grand-blocks is "sandstone blocks". Understand "wall" or "walls" or "sandstone" or "block" or "blocks" or "heavy" or "stone" or "sand stone" as the Grand-blocks. The description of the grand-blocks is "These blocks look incredibly heavy. How they were brought here, you can't fathom."
	
Withtaking is an action applying to two things. Understand "take [something] with [something]" as withtaking.

Carry out withtaking:
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

Pharaoh is a man in Grand-room. "A mummy is here, adorned with awe-inspiring jewels. He is walking gravely around the room, seemingly troubled[first time][deliverpharaoh][only]." The description of Pharaoh is "The mummified Pharaoh is a towering figure that commands respect. He is covered in tightly-wrapped linen bandages, yellowed with age, and is covered in bracelets and jewels."

The pharaoh-jewels are worn by pharaoh. Understand "bracelet" or "gold" or "jewel" or "jewelry" or "jewels" or "bracelets" as the pharaoh-jewels. The printed name of the pharaoh-jewels is "jewels". The description of the pharaoh-jewels is "The jewels look priceless to you, and are of such fine craftmanship it makes you want to cry. "

The tightly-wrapped linen bandages are worn by pharaoh. Understand "yellow" or "yellowed" or "age" as the tightly-wrapped linen bandages. 

Understand "mummy" or "mummified" or "towering" or "figure" as Pharaoh.

Section 2 - Variables and quips

The cat-level is a number that varies. The cat-level is 0. 

To say deliverpharaoh:
	deliver pharaoh-hello

Pharaoh-hello is a quip. The printed name of Pharaoh-hello is "Problem". Understand "problem" as Pharaoh-hello. The preview of Pharaoh-hello is "What's wrong?"  The target of Pharaoh-hello is Pharaoh.

The TargetResponse of Pharaoh-hello is "His voice comes like the sound of a massive but distant sandstorm. 'I can't find my cat,' he says. 'Her name is Miut. It's time for her meal, but she's so hard to track down....Please find her! She hides under things, and she loves...organs. Hearts. Teeth.

'Please. She likes to play games, but she will get tired eventually. Thank you,' he says, and resumes his tormented walking."

A cat-ghost is a kind of animal. A cat-ghost is seldom talkative.

A cat-ghost can be catfound or uncatfound. A cat-ghost is usually uncatfound. Understand the catfound property as describing a cat-ghost. Understand "cat" or "ghost" as catfound. Understand "sound" or "whisper" or "whispering" or "sand" or "sands" as uncatfound.

The printed name of a cat-ghost is "[if the noun is uncatfound]sound of whispering sand[otherwise]cat ghost[end if]". 

To resolve (currentcat - a cat-ghost):
	if currentcat is uncatfound:
		increment cat-level;
		if cat-level is 1:
			say "[conditional paragraph break]You spy a little cat-shaped shadow, but it's already slipping away. It seems like the cat wants to play; where could she be now?";
		otherwise if cat-level is 2:
			say "[conditional paragraph break]There's the cat again! This time you see a transparent little tail as it slips away. You're getting close.";
		otherwise if cat-level is 3:
			say "[conditional paragraph break]You've found the cat! A ghostly little feline, looking tired and curled up in a ball. She stretches, gets up and walks through the wall.

You can here the Pharaoh's pleased voice in the other room.";
		otherwise:
			say "Dang, you found four cats and there are only three in this game. That's a bug! Feel free to report it!";
	now the currentcat is catfound;
	if cat-level is 3:
		now pharaoh is fullcatfound;

Pharaoh can be fullcatfound or not fullcatfound. Pharaoh is not fullcatfound.

Report looking in grand-room when pharaoh is fullcatfound:
	if the grand-mounds are in grand-room:
		say "As you enter the room, you hear a loud mewing. The ghost-cat Miut has found Pharaoh at last, and he is smiling and holding her close. Then she fades away in his arms, sinking into his chest.

	'Thank you,' says Pharaoh. 'I usually keep her memory in my heart, but I let her slip away for a time.' The sand that was moving around the room dissipates, giving you access to the stairs. Pharaoh himself crumbles into dust, which fades away.

	One of the gold disks that decorating him falls to the ground.";
		now pharaoh is nowhere;
		now the grand-mounds are nowhere;
		now the grand-whisper is nowhere;
		now the gold-token is in Grand-room;
	
The gold-token is a token. The token-target of gold-token is "Pharaoh". The printed name of the gold-token is "gold token". Understand "gold" or  "pharaoh" as the gold-token. 

Section 3 - Sand mounds

The Grand-mounds are a plural-named thing in the Grand-room. "Behind the mummy, great mounds of sand slowly shift and slither, blocking the staircase above. They make a sound like a thousand whispering souls that makes you shiver with dread." The printed name of the Grand-mounds is "mounds of sand". Understand "mounds" or "sand" or "mound" or "mounds of sand" or "mound of sand" or "great" as the Grand-mounds.  The description of the grand-mounds is "The sand moves like a living thing, whispering around the room."

The Grand-whisper is an intangible scenery in the Grand-room. The description of the Grand-whisper is "This is the dread sound of thousands of whispering souls, lamenting for a great loss." The printed name of the Grand-whisper is "whisper of lost souls". Understand "whisper" or "lost" or "souls" or "whispering" or "dread" or "sound" as the Grand-whisper.

Instead of taking the Grand-mounds:
	say "The sand slips through your fingers".

Instead of touching the Grand-mounds:
	say "The sand makes you shiver as it slips over your hands. It's unnerving."

Shivering is an action applying to nothing. Understand "shiver" as shivering.

Instead of shivering:
	say "You tremble, but with what emotion, you know not."

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

The library-shelves are plural-named scenery  in Library-room. The library-shelves are a supporter. The printed name of library-shelves is "bookshelves". Understand "bookshelf" or "row" or "rows" or "shelf" or "shelves" or "bookshelves" or "nonsensical" or "tome" or "tomes" or "books" as the library-shelves. 

The description of the library-shelves is "The bookshelves are filled to the brim with nonsensical tomes[listbookstime]. There may be other books, but you wouldn't be able to find them unless you knew their name."

Instead of inserting something into library-shelves: try putting the noun on the library-shelves

A book is a kind of thing. Understand "book" as a book.

Check putting something on the library-shelves:
	if the noun is not a book:
		say "Only books go on the shelves."

To say listbookstime:
	let L be the list of things enclosed by library-shelves;
	if L is not empty:
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

The organ-stop is part of the library-organ. The printed name of the organ-stop is "stop". Understand "stop" or "shiny" or "mirror" or  "mirrored" or "odd" or "unusual" or "shiny" or "button" or "organ stop" as the organ-stop. The description of the organ-stop is "This is an organ stop, a part of the organ that can be pushed in or pulled out to change the tone of the organ. This one is shiny like a mirror. It is currently [stopoff]."

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
		say "You haven't figured out how to play [the noun], yet. And likely never will."

Instead of playing the Library-organ:
	if the dracula-bats are trapped:
		say "Not after all the work you did to get the bats to sleep!";
	otherwise:
		say "Your fingers fly over the keys while your feet quickly work the pedals. Out of each pipe comes a beautiful tone; however, your utter lack of talent makes it sound like three angry ferrets trapped in a sack.

Dracula winces, and says, 'Perhaps I should play instead. If you give me some of the music on the shelves, I can play it.'"

Section 2 - Cat

The Library-cat is a cat-ghost. The Library-cat is scenery in the Library-room.

Instead of looking under the Library-organ:
	say "This area is dark and dusty. It gives you an ill feeling.";
	resolve the Library-cat;

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

Advenit is a musical. The description of Advenit is "This is a slim volume titled 'Advenit, by Johannes L. and Saul M.'" Understand "slim" or "volume" as Advenit.

Sinistram is a musical. The description of Sinistram is "This is a loose sheaf of pages of music titled 'Ad Sinistram, by B. Knowles'."

Understand "loose" or "sheaf" or "page" or "pages" as Sinistram.

Gyra is a musical. The description of Gyra is "This is a folder containing music.  It's embossed with the words, 'Tu me Gyras, by Mortuum vel Vivum.'" Understand "folder" as Gyra.

Advenit, Sinistram, and Gyra are on the library-shelves.

Instead of opening a musical:
	say "You open [the noun] and peruse it for a bit. Looks neat, but not anything you'd know how to play yourself."

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
		say "Dracula tenderly plays a lilting melody about loss and renewal. The bats all [if the dracula-bats are leftsided] continue swarming [else]swarm [end if]to the left side of the room, away from the cage.";
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

Every turn:
	if the dracula-bats are not trapped:
		if the dracula-bats are in the library-cage:
			if the library-cage is closed:
				now the dracula-bats are trapped;
				now the red-token is carried by the player;
				say "Dracula pauses, looking up at the cage. The bats, realising they are now finally contained, begin to calm down and settle in for a nap. Soon, they are all hanging silently.

Dracula smiles with relief, his long fangs reflecting the flickering light. 'Thank you, my friend. I love my bats, but sometimes I need a little help with them when I'm trying to focus. Here: a token of my admiration.' He hands you something, and then returns to his desk. He looks up at the bats and presses a single finger to his lips before waving you away.

You check what he gave you. It's a red token."

To reversemusicaffect (current - a musical):
	if the dracula-bats are trapped:
		say "Dracula whispers nervously, 'I don't want to disturb the little darlings anymore,' looking nervously at the music.";
	otherwise if current is advenit:
		if the dracula-bats are clustered:
			say "A driving harmony comes from the organ as Dracula lays down some rocking beats. The bats, already scattered, spread out just a bit more.";
		otherwise:
			say "A driving harmony comes from the organ as Dracula lays down some rocking beats. The bats spread out into a large mass[if the dracula-bats are in library-cage], leaving the cage[end if].";
			now the dracula-bats are unclustered;
			now the dracula-bats are in library-room;
	otherwise if current is sinistram:
		say "Dracula tenderly plays a lilting melody about loss and renewal. The bats all swarm to the right side of the room[cageaction].";
		now the dracula-bats are rightsided;
	otherwise if current is gyra:
		say "Dracula hammers the keys, producing a loud, droning, constantly shifting melody. A single, small bat emerges from the flock, travelling in a counter-clockwise direction [reversecagegyra].";
	otherwise:
		say "Dracula looks over the music. 'Hmmm, I don't know how to play this one, sorry,' he says.";

To say cageaction:
	if the dracula-bats are clustered:
		if the library-cage is open:
			say ", gathering inside of the cage";
			now the dracula-bats are in the library-cage;
		otherwise:
			say "smacking into the outside of the closed cage before reforming in a group nearby";
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
		say "direction.";

Instead of giving a musical to Dracula:
	say "Dracula takes [the noun] from you and carries it back to the organ. He opens it carefully.[paragraph break]";
	if the organ-stop is inpushed:
		musicaffect the noun;
	otherwise:
		reversemusicaffect the noun;
	say "[conditional paragraph break]When he finishes, he hands [the noun] back to you.";

Section 4 - Dracula

Dracula is a man in the Library-room. "Dracula is here, muttering and sifting through a pile of papers[if the dracula-bats are trapped]. He seems relatively less stressed than before[otherwise]. He is constantly interrupted by the chirping and whirring of bats overhead, and looks positively stressed[end if][first time][deliverdracula][only]."

To say deliverdracula:
	deliver stressed-dracula;

The library-pile is scenery in library-room.  Understand "paper" or "papers" or "pile" as the library-pile. The printed name of library-pile is "pile of papers". The description of the library-pile is "It's impossible to decipher the antique handwriting Dracula uses."

Instead of taking the library-pile:
	say "Dracula looks tense, and says, 'Please don't do that.'"

The description of Dracula is "Dracula is a harried-looking older man wearing a rumpled white dress shirt, nifty suspenders and thick spectacles. He has a widow's peak and pronounced canines." Understand "widow's" or "widow" or "peak" or "pronounced" or "canine" or "canines" as dracula.

The dracula-shirt is worn by dracula. The description of the dracula-shirt is "The shirt is slightly unbuttoned and seems rumpled." Understand "white" or "dress" or "shirt" or "rumpled" as the dracula-shirt. The printed name of the dracula-shirt is "white dress shirt".

The dracula-suspenders are worn by dracula. Understand "suspenders" or "nifty" as the dracula-suspenders. The printed name of the dracula-suspenders is "suspenders". The description of the dracula-suspenders is "These looks very outdated, but he manages to pull it off somehow."

The dracula-spectacles are worn by dracula. Understand "spectacles" or "glasses" or "thick" as the dracula-spectacles. The printed name of the dracula-spectacles is "spectacles". The description of the dracula-spectacles is "The glasses seem especially thick; Dracula peers through them like a blinking owl."

Section 5 - Dictionary

The lagoon-dictionary is a book. Understand "blue" or "lacunic" or "dictionary" as the lagoon-dictionary. The printed name of the lagoon-dictionary is "Blue Lacunic Dictionary". The description of the lagoon-dictionary is "This is an extensive dictionary giving the basics of communication of the Blue Lacunic language."

After taking the lagoon-dictionary for the first time:
	say "You grab the dictionary and flip through it. You mumble parts of it out loud, until your recorder beeps. It seems like you might be able to talk to the creature better now.";
	deliver Retry-lagoon;
	
Instead of searching the library-shelves:
	try examining the library-shelves;
	
Retry-lagoon is a quip. The printed name of retry-lagoon is "Retry". Understand "retry" as retry-lagoon. The printed name of retry-lagoon is "Retry". The preview of Retry-lagoon is "Let's try communicating again. How are you?"

The target of retry-lagoon is the lagoon-creature. The targetresponse of retry-lagoon is "The creature looks at you gravely and bends closer, almost splashing you with a wave of water. 'Hello, little one. I'm afraid I'm not doing very well at all today. I seem to have misplaced my glasses, and without them, the outside sky appears dark and black. Could you find them for me?'"

Section 6 -conversation

Stressed-dracula is a quip. The printed name of stressed-dracula is "Stressed". Understand "stressed" as stressed-dracula. The target of stressed-dracula is Dracula. The preview of stressed-dracula is "What's wrong, Dracula?"

The targetresponse of stressed-dracula is "The bats! I love the little things but they're driving me crazy. I tried playing them soothing music earlier but I can't understand the way they're acting,' says Dracula."

Chapter 4 - Great Bath

[depression]

The Bath-room is a room in haunted-region. "You are standing at the edge of the largest swimming pool you've ever seen. The pool is enclosed by a glass dome that shows nothing but the darkness outside. An enormous comb leans against the wall near you. You can leave to the [boldeast]."

The bath-dome is distant scenery in bath-room. The printed name of the bath-dome is "glass dome". Understand "glass" or "dome" or "darkness" or "outside" or "unsupported" as the bath-dome. The description of the bath-dome is "The size of this unsupported glass dome makes it a true engineering feat. Outside, all is dark.

An enormous comb, larger than a rhinoceros, leans against the wall." The printed name of Bath-room is "Indoor Lagoon". 

The Bath-room is west of the Grand-room. 

The bath-pool is scenery in bath-room. The printed name of the bath-pool is "swimming pool". Understand "lagoon" or "largest" or "waves" or "wave" or "ripple" or "ripples" or "extensive" or "pool" or "crystal" or "clear" or "crystal-clear" as the bath-pool. The description of the bath-pool is "This very extensive pool is filled with crystal-clear water that moves with every breath of the creature."

The lagoon-stars are distant plural-named scenery. The printed name of the lagoon-stars is "stars". Understand "stars" or "star" as the lagoon-stars.  The description of the lagoon-stars is "Now that they've been pointed out, you can see the stars a bit yourself."

Section 1 - The creature

The lagoon-creature is a woman in the bath-room. The initial appearance of the lagoon-creature is "A creature that looks longer than your entire space vessel is floating here in the tub, staring up at the darkness. Her slightest movements send shallow waves across the pool[first time].

She looks over at you with clear intelligence in her expression, but then turns back. It's hard to tell if she'd understand you[only]." The printed name of the lagoon-creature is "lagoon creature". Understand "creature" or "black" or "lagoon" or "from" or "cross" or "humanoid" or "enormous" or "being" as the lagoon-creature.

The description of the lagoon-creature is "The creature seems to be a cross between the largest land creatures and beasts of the deepest seas, with a large green carapace and[if the creature-glasses are worn by the lagoon-creature] piercing black eyes behind a pair of enormous glasses[otherwise] a pair of blurry black eyes[end if]."

Creature-greeter is a quip. The printed name of Creature-greeter is "Communicate". Understand "communicate" as Creature-greeter. The preview of Creature-greeter is "[italic type]Attempt to communicate[roman type]" . The target of Creature-greeter is lagoon-creature.

Report going west from grand-room for the first time:
	deliver creature-greeter;

The TargetResponse of Creature-greeter is "The enormous being burbles and glurbles. You can't really understand it, except for one word:

'Dracula'."

After uttering Creature-greeter to lagoon-creature:
	deliver Creature-Interpreter;

Creature-Interpreter is a quip. The printed name of Creature-Interpreter is "Interpreter". Understand "Interpreter" as Creature-Interpreter. The preview of Creature-Interpreter is "Can you understand the creature in the Lagoon?" . The target of Creature-Interpreter is Dracula.

The targetresponse of creature-interpreter is "Dracula looks up with mild interest. 'Oh, her? Yes, I charted out her language long ago. I made a dictionary for it, once, but I haven't seen it in a while' he says, waving at the bookshelves. 'The language is Blue Lacunic, I believe.'"

After uttering creature-interpreter to dracula:
	now lagoon-dictionary is in library-shelves;

Section 2 - The cat

The bath-comb is scenery in the Bath-room. The printed name of the bath-comb is "enormous comb". Understand "enormous" or "comb" or "giant" or "tooth" or "teeth" as the bath-comb.

The description of the bath-comb is "This thing is huge! You shudder to imagine the foul creature that needs a comb this large. Its giant teeth lean against the wall, shadowing whatever might lay beneath."

Instead of taking the bath-comb:
	say "This comb is several times your size. It's not going anywhere."

The bath-cat is a cat-ghost. The bath-cat is scenery in the bath-room.

Instead of looking under the bath-comb:
	say "The teeth cast striped shadows, giving a surreal apperance to this secluded area. It feels unsettling.";
	resolve the bath-cat;

Section 3 - The token

The blue-token is a token. The printed name of the blue-token is "blue token". Understand "blue" or "lagoon" or  "scale" or "creature" as the blue-token. The token-target of the blue-token is "the lagoon creature".

Does the player mean examining the blue-token when the player is in bath-room:
	it is unlikely;

Chapter 5 - Game Room

The game-room is a room in haunted-region. The printed name of game-room is "Game Room".

"This sprawling and chilly room is filled with a variety of furniture all frozen-over with with icicles trailing its sides. You can leave to the [boldwest].

One side of the room has a roaring blue flame. It ought to warm up the room, but that area seems to be colder. In front of it is a rug, splayed with playing cards that have frozen to the fabric[if the frozen-target is broken]

Some of the furniture has unthawed, revealing a wardrobe, a shoe rack, and a pile of junk[end if]."

The frozen-flame is scenery in the game-room. The printed name of the frozen-flame is "roaring blue flame". Understand "roaring" or "blue" or "flame" as the frozen-flame. The description of the frozen-flame is "It looks like the color of blue Christmas lights on a dark night."

Instead of physicality when the noun is the frozen-flame:
	say "It's far too cold to approach."

The frozen-furniture is scenery in the game-room. The printed name of the frozen-furniture is "frozen furniture". Understand "Frozen" or "Furniture" or "icicle" or "ice"or  "icicles" or "solid" as the frozen-furniture. The description of the frozen-furniture is "There could be anything under here; it's hard to tell. This furniture is frozen solid."

Instead of touching the frozen-furniture:
	say "It is bittery cold."

Section 1 - Cards and cat

The game-room is east of the Grand-room.

The frozen-cards are scenery in game-room. The printed name of the frozen-cards is "frozen playing cards". Understand "heart" or "hearts" or "card" or "cards" or "frozen" or "playing" as the frozen-cards. The description of the frozen-cards is "It appears someone was playing a game of Hearts earlier, but the cards have sat unused so long they've frozen to the rug."

Instead of taking the frozen-cards:
	say "They are held fast by the rug, and the longer you try, the colder you feel."

The frozen-rug is scenery in the game-room. The printed name of the frozen-rug is "rug". Understand "rug" or "heavy" or "thick" as the frozen-rug. The description of the frozen-rug is "This heavy, thick rug is sprawled before the cold fire. Stuck to it are playing cards; it looks like someone was playing Hearts."

Instead of looking under the frozen-cards:
	try looking under the frozen-rug

The frozen-cat is a cat-ghost. The frozen-cat is scenery in the game-room.
	
Instead of looking under the frozen-rug:
	say "You lift up the rug, cards and all. The expanse of stone under here is surprisingly lumpy.";
	resolve the frozen-cat;

Section 2 - Yeti

[emotion is hatred]

The yeti is a woman in game-room.  "An imperious yeti covered in fine white fur stands here, [if the frozen-target is unbroken]shooting arrows at a target on the far wall[otherwise]looking at you impatiently[end if][first time].

When she sees you enter, she spins towards you, nocking an arrow with hatred in her eyes. Then she squints and says, 'Oh, you're not him,' and turns back to her target practice[only]." 

The description of the yeti is "This yeti is much taller than you, wearing an elegant wooden necklace and leather quiver and [if the frozen-target is unbroken]shooting at the target on the wall[otherwise]waiting for you to bring her a new archery target[end if]."

Understand "maya" as the yeti.

Report going east from grand-room for the first time:
	deliver Mistaken-yeti;

The yeti-necklace is worn by the yeti. The printed name of the yeti-necklace is "wooden necklace". Understand "wooden" or "necklace" or "spheres" or "paint" or "painted" as the yeti-necklace. The description of the yeti-necklace is "This necklace is made of several wooden spheres, brightly painted and strung together."

The yeti-quiver is worn by the yeti. The printed name of the yeti-quiver is "leather quiver". Understand "leather" or "quiver" or "arrows" as the yeti-quiver. The description of the yeti-quiver is "You wonder what strange creature this pinkish leather quiver is made from, but feel it better not to ask. It is filled with many arrows."

The frozen-target is scenery in the game-room. The printed name of the frozen-target is "target". Understand "archery" or "far" or "center" or "wall" or  "target" as the frozen-target. The description of the frozen-target is "This is an archery target, and it has numerous shot arrows stuck into it, clustered around the center. Apparently the archer has some skill[if the frozen-target is broken]

It's currently broken in half[end if]."

The frozen-target can be broken or unbroken. Understand the broken property as describing the frozen-target. Understand "broken" as broken .

The shot-arrows are part of the frozen-target. Understand "shot" or "arrows" as the shot-arrows. THe printed name of the shot-arrows is "shot arrows".  The description of the shot-arrows is "All the arrows are clustered near the center."

Instead of physicality when the noun is the shot-arrows:
	if the noun is broken:
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

The TargetResponse of Mistaken-yeti is "She looks at you coolly. 'I thought you were my cousin Harry. He abandoned our game of cards two days ago and hasn't been back since. I've been taking out my frustration on this target while we wait. Honestly, I hate him right now.'

She lets lose another arrow, and the target breaks[breaktarget]. The yeti curses, and turns to you to ask, 'You wouldn't mind getting me another target, do you? You can just show me it and I'll tell you if it works. There should be enough stuff in this room.'

'Isn't it all frozen over, though?' you ask.

She glares at you and concentrates. Some of the furniture defrosts. 'There,' she says. 'That should work.'"

To say breaktarget:
	now the frozen-target is broken;
	now the frozen-wardrobe is in game-room;
	now the frozen-pile is in game-room;
	now the shoe-rack is in game-room;

Report uttering mistaken-yeti to yeti:
	deliver cards-yeti;
	deliver harry-yeti;
	deliver name-yeti;

cards-yeti is a quip. The printed name of cards-yeti is "Cardgame". Understand "cardgame" as cards-yeti. The preview of cards-yeti is "I could play a game of cards with you instead."  The target of cards-yeti is the yeti.

The TargetResponse of cards-yeti is "'No,' she says decidedly. 'I want Harry to come back and finish his game with me. I'm only one trick away from winning!'"

name-yeti is a quip. The printed name of name-yeti is "Address". Understand "address" as name-yeti. The preview of name-yeti is "What's your name?"  The target of name-yeti is the yeti.

The TargetResponse of name-yeti is "'It's Maya,' she says with pride."

Report uttering name-yeti to the yeti:
	now the printed name of the yeti is "Maya";
	now yeti is proper-named;

Harry-yeti is a quip. The printed name of Harry-yeti is "Harry". Understand "Harry" as Harry-yeti. The preview of Harry-yeti is "Where do you think Harry is?"  The target of Harry-yeti is the yeti.

The TargetResponse of Harry-yeti is "'Probably with humans again. The last time he was missing I found him tramping around the Pacific northwest with his big feet,' says [the yeti]."

[todo: finish with her and harry]

Section 4 - Possible targets

To say breaktarget:
	now the frozen-target is broken;
	now the frozen-wardrobe is in game-room;
	now the frozen-pile is in game-room;
	now the shoe-rack is in game-room;

A frozen-exclusive is a kind of thing.

The frozen-wardrobe is a scenery closed openable container. The printed name of the frozen-wardrobe is "wardrobe". Understand "wardrobe" or "dark" or "oak" or "costumes" as the frozen-wardrobe. The description of the frozen-wardrobe is "This wardrobe is made of dark oak, and is labeled 'COSTUMES'. It is currently [wardrobe-closed]."

To say wardrobe-closed:
	if the frozen-wardrobe is open:
		say "open";
	otherwise:
		say "closed";

The fur-coat is a frozen-exclusive in the frozen-wardrobe. The printed name of the fur-coat is "fur coat". Understand "fur" or "coat" as the fur-coat. The description of the fur-coat is "This is a long and very hairy fur coat."

The wolf-handcuffs are in the frozen-wardrobe. The printed name of the wolf-handcuffs is "handcuffs". Understand "handcuffs" or "Hand cuffs" or "handcuff" as the wolf-handcuffs. The description of the wolf-handcuffs is "Maybe these were part of a police officer costume?"

Instead of putting the wolf-handcuffs on someone when the second noun is not the wolfman:
	say "Handcuffing people against their will is not part of your ethos."

Instead of wearing the wolf-handcuffs:
	say "Handcuffing yourself without a way to get out seems like a bad idea at the moment."

This is the pile-examine rule:
	say "You don't see anything else interesting in the pile.";
	stop the action;

To decide if the pile is cool: 
	if the current action is not examining the frozen-pile, decide no; 
	if the number of things in the frozen-pile is greater than 0, decide no; 
	decide yes. 

The pile-examine rule substitutes for the examine containers rule if the pile is cool.

The frozen-pile is an open unopenable scenery container. The printed name of the frozen-pile is "pile of junk". Understand "pile" or "junk" or "pile of junk" as the frozen-pile. The description of the frozen-pile is "This is a large pile of assorted detritus from games no one has played in a long time."

Instead of searching the frozen-pile:
	try examining the frozen-pile;

The frozen-mannequin is a frozen-exclusive in the frozen-pile. The printed name of the frozen-mannequin is "mannequin". Understand "mannequin" or "head" or "feet" or "gashes" as the frozen-mannequin. The description of the frozen-mannequin is "This is a very tall mannequin that seems to have been hacked at multiple times, with gashes on its head and feet. It seems pretty light though[if the fur-coat is part of the frozen-mannequin].

It has a big fur coat on it, making it look large and hairy[end if][if the giant-shoes are part of the frozen-mannequin].

Some gigantic shoes are stuck on the bottom, making it look like it has enormous feet[end if][if the large-fencing is part of the frozen-mannequin].

It has a large fencing mask balanced on its head[end if]."

The large-fencing is a frozen-exclusive in the frozen-pile. The printed name of the large-fencing is "large fencing mask". Understand "large" or "fencing" or "mask" as the large-fencing. The description of the large-fencing is "This is a fencing mask, but unusually large, and seemingly shaped for a...non-human face."

Instead of wearing the large-fencing:
	say "You put on the large fencing mask, but its size and weight pull make you unsteady. Unable to see, you bump into something and fall over.

You take the mask off, just to be safe."

The shoe-rack is a scenery supporter. The printed name of the shoe-rack is "shoe rack". Understand "shoe" or "rack" or "swedish" as the shoe-rack. The description of the shoe-rack is "This shoe rack looks Swedish, somehow." 

The giant-shoes are a plural-named frozen-exclusive on the shoe-rack. The printed name of the giant-shoes is "giant shoes". Understand "giant" or "shoes" as the giant-shoes. The description of the giant-shoes is "These shoes are giant; each one is big enough to use as a baby crib or a toy box. Who has feet this big?"

Instead of wearing the giant-shoes:
	say "These are huge. You'd have a better chance wearing a crock-pot.";

Instead of taking something when the noun is part of the frozen-mannequin:
	say "Taken.";
	now the noun is carried by the player;

Instead of putting the large-fencing on the frozen-mannequin:
	say "You balance the large fencing mask on top of the mannequin."

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
	if the fur-coat is not part of the frozen-mannequin or the giant-shoes are not part of the frozen-mannequin:
		say "'Hmmph,' says [the yeti]. That's not bad...it even looks a lot like Harry. Can you make it look[if the fur-coat is not part of the frozen-mannequin or the giant-shoes are part of the frozen-mannequin] even[end if] more like Harry? He's tall, hairy, and has huge feet.'";
	otherwise:
		say "Her eyes narrow. She growls, saying 'That looks just like him.'

She pulls back an arrow, aiming it at you and the mannequin. 'Drop it,' she commands.

Afraid of the arrow, you drop the mannequin and back off. As you do so, flakes of ice and snow rain fly into the air, covering the target in snow. It looks a lot like the yeti, now.

[The yeti] stares, then sighs, and lowers the bow. 'It looks just like me, too. Me and Harry are a lot alike. Maybe instead of stewing here, I should go look for him myself.'

She picks up the mannequin and says, 'Thanks for your help, though. You can have this,' she says, as she hands you something and walks out of the room, carrying the mannequin absent-mindedly with her.

You check to see what she handed you. It's a white token.";
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

The landing-trap is a closed locked openable lockable scenery door. The landing-trap is up from the landing-room and down from the tower-room. The printed name of the landing-trap is "trapdoor". Understand "trap" or "door" or "trapdoor" as the landing-trap.  The description of the landing-trap is "The trapdoor is within reach, due to the low height of the landing you are on."

The landing-room is in haunted-region.

Section 1 - The stairs

The grand-stairs are a plural-named staircase. The grand-stairs are above the Grand-room and below the landing-room. Understand "wide" as the grand-stairs. The grand-stairs are scenery. The description of the grand-stairs is "These sweeping stairs lead up and down between the two floors."

Instead of going up from Grand-room when the grand-mounds are in grand-room:
	say "The slithering sands, caused by the  mummified Pharaoh's unhappy mood, prevent you from making it up the stairs. All other directions have exits, though."


Chapter 7 - Ghost

The ghost-door is a scenery door. The ghost-door is west from the ghost-room and east from the landing-room. The printed name of the ghost-door is "[if the player is in landing-room]eastern door[otherwise]door[end if]". Understand "eastern" or "east" or "door" or "old" or "name" or "christine"  as the ghost-door. The description of the ghost-door is "This is an old-looking door with the name 'Christine' on it."

The ghost-room is in haunted-region.

The description of the ghost-room is "This room looks older than the rest of the house. There is little light, and even less room. The cold almost takes your breath away. You can leave to the [boldwest].

A crystal ball floats in the middle of the room, glowing eerily." The printed name of the ghost-room is "East Bedroom".

The ghost-cold is a intangible scenery in the ghost-room. The printed name of the ghost-cold is "cold". Understand "cold" as the ghost-cold.

The description of the ghost-cold is "You can't find any source for the cold; it pervades the whole room."

Section 1 - The ghost

Christine is a woman in ghost-room. "A woman[first time], whom you infer to be Christine from the name on the door,[only] is floating here, furiously tapping at the crystal ball in the room and muttering to herself[first time].

She looks at you with a clearly angry expression, and says something that you don't quite understand. Your recorder kicks in, though, and interprets for you: 'Are you the one blocking me? The orb should be responding to me, but it refuses. Tell me, what have you done?' She finishes this with a glare[only]." The description of Christine is "Christine is a middle-aged woman wearing a dark, worn woolen dress. She is also transparent, and tapping furiously at the crystal ball."

Instead of physicality when the noun is Christine:
	say "She's not really there; touching her in any way is impossible."

Innocent-me is a quip. The target of innocent-me is Christine. The preview of Innocent-me is "I promise, I didn't do anything!" The printed name of innocent-me is "Innocent". Understand "innocent" as Innocent-me.

The targetresponse of innocent-me is "She says, 'Hmph, that seems most unlikely. I was told that I could be completely private here. Wait, the orb is speaking....' She taps it again and peers into it intently. 'It says that you are not like the others here, nor like me. It says that you are a weaver of destinies. And it says that you must be permitted because today is--' she cuts off, then whispers. '--the Day of Weft's End.'

She looks up, her rage now mingled with fear. 'Tell me, fearful wanderer. Who are you?' she asks, trembling."

Report going east from landing-room for the first time:
	deliver innocent-me;

Report uttering innocent-me to christine:
	deliver Identify-self;
	
Identify-self is a quip. The target of Identify-self is Christine. The preview of Identify-self is "I am Emrys Tisserand, Storyweaver of the Starship Eilifligr." The printed name of identify-self is "Identity". Understand "identity" as identify-self. 

The targetresponse of identify-self is "At the sound of your name, Christine shrieks in apparent terror. She goes pale, a surprising feat for an already-faded ghost, and, taking another look at you, speeds out of the house through the wall.

You can hear her shouts as she flees into the distance. 'The weaver! The weaver has come!'

The crystal ball remains."

Report uttering identify-self to Christine:
	now Christine is nowhere;

Section 2 - Crystal ball

The crystal-ball is scenery in the ghost-room. Understand "crystal" or "glass" or "orb" or "eery" or "ball" or "glowing" as the crystal-ball. The printed name of the crystal-ball is "crystal ball". The description of the crystal-ball is "This is a clear ball made of crystal, or perhaps glass, floating in the air.

It is filled with symbols which you're certain you've never seen, but which are also somehow familiar."

Instead of physicality when the noun is the crystal-ball and Christine is in Ghost-room:
	say "Christine floats protectively between you and the ball. 'Oh no you don't!' she says. 'This is mine!'"

The ball-symbols are part of the crystal-ball. The printed name of the ball-symbols is "familiar symbols". Understand "familiar" or "symbol" or "symbols" as the ball-symbols.

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
		say "a nervous-looking man with fangs and suspenders (as well as other things that aren't quite as identifidable).";
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
		say "[if wolfman is not nowhere]a glowing yellow eye staring back at you[otherwise]you see a pile of debris in a room with gouged floorboards[end if].";
		tokencheck blue-token;
	otherwise if roomcounter is 7:
		say "you see yourself, looking at a ball, in which is yourself, looking at a ball, in which is yourself, looking at a ball...";
		if the number of not oncecarried tokens is 1:
			say "[conditional paragraph break]The ball chimes loudly, showing [a list of oncecarried tokens], each with a green checkmark next to it. Then the crystal ball falls to the ground and shatters, its fragments then evaporating into the air. All that remains is a final, clear token.";
			now the clear-token is in the ghost-room;
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
		
Chapter 8 - Werewolf

The wolf-room is west from the landing-room. The printed name of the wolf-room is "The Den". "This room looks like the product of a frightful battle. Gouges have dug deep into the floorboards, a pipe is exposed in the corner, and a big mound of debris covers much of the room. You can leave to the [boldeast]."

The wolf-room is in haunted-region.

The wolf-boards are plural-named scenery in the wolf-room. The printed name of the wolf-boards is "floorboards". Understand "floorboards" or "gouges" or "board" or "floor" or "gouge" or "floorboard" as the wolf-boards. The description of the wolf-boards is "These floorboards look like they were repeatedly scratched by small claws."

The wolf-pipe is scenery in the wolf-room. The printed name of the wolf-pipe is "pipe". Understand "pipe" or "exposed" or "corner" as the wolf-pipe. The description of the wolf-pipe is "It looks like this was once inside a wall, but now stands exposed."

The wolf-debris is scenery in the wolf-room. The printed name of the wolf-debris is "debris". Understand "debris" or "mound" or "big" or "fabric" or "wood" or "cardboard" as the wolf-debris. The description of the wolf-debris is "You can see fabric, wood, and cardboard in the mound, but it's all mushed together." 

Section 1 - The wolf

The wolfman is a man in wolf-room.  "A wolfish-looking man[if the large-fencing is nowhere] wearing a large fencing mask[end if] is [if the wolf-handcuffs are nowhere]handcuffed to the pole[otherwise]anxiously pacing the room[end if]. He stares timidly around the room and trembles as he shifts around[one of].

The wolfman jumps as you enter the room. 'Back!' he says. 'Back! I'm a terrible man, a terrible [italic type]thing[roman type], and you're not safe here!' He looks at you earnestly[or].

He looks up hopefully. 'Have you brought anything that can make us truly safe?' he asks[stopping]." Understand "wolfish" or "tall" or "hairy" or  "hairy-looking" or "short" or "stiff" or "black" or "hair" or "dark" or "dark-ringed" or "eye" or "eyes" or "looking" or "wolfish-looking" or "wolf-man" or "wolf" as the wolfman. The description of the wolfman is "This is a tall, hairy-looking man with short, stiff black hair and dark-ringed eyes[if the large-fencing is nowhere], both barely visible through the large fencing mask on his head[end if]. [if the wolf-handcuffs are nowhere]He is handcuffed to the pole[otherwise]He's pacing the room nervously[end if][if the wolfs-bane is nowhere], some wolfs-bane poking out of his pocket[end if]."

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
	now the wolf-handcuffs are nowhere;

Instead of giving the wolfs-bane to the wolfman:
	say "'Is that...' he says, peering closely. 'Wolfsbane! Yes, this will trap my animal essence and prevent it from taking over my fragile mind! I'll place it in my pocket, so that when the dreadful transformation comes, it will weaken my beastly self!' 

He grabs the aconite from you and sticks it in his pocket, where it pokes out a bit.

'Careful with that,' you say. 'It's actually toxic to--'

'To the beast within?' he ask hopefully, peering at you intently.

'Uh, no, to humans,' you answer, to his visible disappointment. He keeps the wolfsbane though.";
	wolfupdate;
	now the wolfs-bane is nowhere;

Instead of giving the large-fencing to the wolfman:
	say "'Of course!' shouts the wolf-man. 'Like a muzzle, this will protect others from my serrated teeth.' 

He places the comically large mask on his head. 'Do not worry, fair stranger, this will fit quite snuggly when I assume my murderous form.'

You nod politely.";
	wolfupdate;
	now the large-fencing is nowhere;

wolf-counter is a number that varies. wolf-counter is 0.

To wolfupdate:
	say conditional paragraph break;
	increment wolf-counter;
	if wolf-counter is 1:
		say "He says, 'thank you for this help. I can feel the transformation nearer than ever. But I will need much more to keep you safe!";
	otherwise if wolf-counter is 2:
		say "He trembles a little as he says, 'My time is almost here. Look, as the beastly hair begins to cover my flesh,' he says, pointing to his arm, which looks quite the same as before. 'I need just a little more to keep everyone safe[if the wolfs-bane is not nowhere]. I hope you are looking everywhere in the house and not just grabbing random things from Maya.'";
	otherwise if wolf-counter is 3:
		say "He starts to twitch and tremble. 'The change! It is upon me!'

He screams, and the scream becomes a howl. He shifts and morphs, hair growing and muscles rippling, as he transforms into a well-coifed poodle.

The handcuffs and mask fall off, and the wolfsbane tumbles away into the debris. The poodle rushes up to you and licks your hand. You tousle his hair, and he runs out of the room. Something has been left behind.";
		now the grey-token is in wolf-room;
		now the wolfman is nowhere;
	otherwise:
		say "You seem to have made the wolf much safer than the game should allow, or much less. This is a bug!";

The grey-token is a token. The printed name of the grey-token is "grey token". Understand "grey" as the grey-token. The token-target of the grey-token is "the Wolfman".

[add wolfsbane visually sticking out of pocket, handcuffs visually holding him in place]

Chapter 9 - Front Yard

The front-room is in haunted-region.

The front-room is a room. The printed name of the front-room is "Front Yard". The description of the Front-room is "You are standing before a gorgeous, well-preserved Victorian mansion that gleams in the moonlight. An overgrown flowerbed lies in stark contrast to the tidy-looking mansion.

To the [boldnorth], you can enter the parlor of the mansion. To the [boldeast] lies a dark and foreboding river[first time]

The monkey-like creature sees you coming, and leaps away to the east, jumping over the river in one enormous bound[only]." 

The front-bed is an open unopenable scenery container in the front-room. The printed name of the front-bed is "overgrown flowerbed". Understand "overgrown" or "flower" or "bed" or "flowerbed" or "weeds" or "over-grown" as the front-bed. The description of the front-bed is "This flowerbed has run wild with weeds, but some purple flowers grow here as well."

The wolfs-bane is in the front-bed. The printed name of the wolfs-bane is "wolfsbane". Understand "wolves" or "wolfs" or "bane" or "wolfsbane" or "purple" or "flower" or "flowers" as the wolfs-bane. The description of the wolfs-bane is "These purple flowers are, you recognzie [italic type]aconitum[roman type], or, in other words, wolfsbane."

Instead of eating the wolfs-bane:
	say "Wolfsbane is pretty toxic; better not to eat plants that you know will cause a negative reaction."

The scenery-mansion is scenery in the front-room. The printed name of the scenery-mansion is "mansion". Understand "gorgeous" or "well-preserved" or "well" or "tidy-looking" or "tidy" or "looking" or  "mansion" or "queen" or "anne" or "preserved" or "victorian" or "tall" or "stately" or "handsome" or "old" or "parlor" as the scenery-mansion. The description of the scenery-mansion is "This is a tall and stately old Victorian mansion in the Queen Anne style. It is asymmetrical, with a tower on one side and some steps leading up to a tall wooden door on the other."

The mansion-door is a scenery closed openable door.  The mansion-door is south of the parlor-room and north of the front-room. The printed name of the mansion-door is "tall wooden door". Understand "door" or "tall" or "wooden" or "opaque" or "windows" or "window" or "italianate" as the mansion-door. The description of the mansion-door is "This is a tall, Italianate wooden door with opaque windows set into it."

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

Chapter 10 - Styx

The styx-room is in haunted-region.

The styx-room is east of the front-room. The printed name of the styx-room is "Styx". The description of the styx-room is "A sign proclaims this to be the dread river Styx. You know that name from mythology: the river that divides the living from the dead.

You can return to the front yard to the [bold type]west[roman type]."

The styx-sign is scenery in the styx-room. The printed name of the styx-sign is "sign". Understand "sign" or "granite" or "low" as the styx-sign. The description of the styx-sign is "This is a low, black granite sign that is labelled 'The River Styx.'"

The scenery-styx is a backdrop in the styx-room. The printed name of the scenery-styx is "river Styx". Understand "river" or "Styx" or "water" or "dread" as the scenery-styx.

The description of the scenery-styx is "The waters flow by slowly, deeply, and powerfully"

To styx-react:
	say "A chill passes through you as you touch the water."

Instead of physicality when the noun is scenery-styx:
	styx-react;
	
Charon is a man in the styx-room. "A figure in dark robes stands at the water's edge, one foot in a boat. If this river is the Styx, then this figure must be Charon."The description of Charon is "This figure is completely covered by his dark, heavy robe. He waits silently, one foot in the boat, and one on water." Understand "figure" or "ferryman" as charon.

The charon-robes are worn by charon. The printed name of the charon-robes is "dark robes". Understand "dark" or "heavy" or "robe" or "robes" as the charon-robes. The description of the charon-robes is "These heavy robes look quite luxurious. Charon must make a killing from all the money he collects from the dead."

The charon-boat is scenery in styx-room. The printed name of the charon-boat is "boat". Understand "boat" as the charon-boat. The description of the charon-boat is "This simple boat is said to be the one that ferries the souls of the dead."

Instead of entering the charon-boat:
	say "Charon shakes his head. Looks like you need to pay."

Instead of inserting something into the charon-boat :
	say "Charon interposes himself, preventing you from placing anything in the boat."

Instead of putting something on the charon-boat:
	say "Charon interposes himself, preventing you from placing anything in the boat."

Instead of giving the obol to charon:
	say "Charon extends a bony claw from within his robe and takes the obol. He indicates the boat.

You step on, and he pushes his pole into the dark waters. The two of you glide silently across the river Styx.

As you travel, the world glitches around you, and begins to crumble , showing blank metal panels all around you. All that remains is the boat, the boatman, and the river. A robotic voice states, now exiting 'Holoprogram CHR-9815: 'Pscary Psychology. Next up is Holoprogram GAR-0001: Dr Gareth Djomo Memorial.'

All around you, a night sky reforms, as does a distant shore. After a few more moments, the boat runs ashore, and you step out.";
	now the player is in distant-shore;
	now Charon is in Distant-shore;
	now the charon-boat is in distant-shore;
	now the obol is nowhere;
	now charon is obolpaid;
	
A thing can be obolpaid or not obolpaid. A thing is usually not obolpaid.

Before going east from styx-room:
	if charon is not obolpaid:
		say "The ferryman has not yet been paid. You may not cross.";
	otherwise:
		say "The ferryman obliges you, taking you to the other side.";
		now Charon is in Distant-shore;
		now the charon-boat is in distant-shore;

Before going west from the distant-shore:
	say "The ferryman obliges you, taking you to the other side.";
	now Charon is in styx-room;
	now the charon-boat is in styx-room;

Chapter 11 - Tower room

[this will probably be part of access corridors later]

The tower-room is a room. The tower-room is in haunted-region. The printed name of tower-room is "Tower Room". The description of tower-room is "This is a clean, metallic hallway with ambient lighting from an unknown source. It seems to be a kind of access tunnel.

Sorry, testers; this connects to areas that haven't been implemented. Shouldn't matter for this part of the game, though!"

Chapter 12 - Distant shore

Distant-shore is east of styx-room. The printed name of distant-shore is "Distant Shore". Distant-shore is a room in haunted-region. "You are at the edge of the great river Styx. [Charon] is waiting to take you back [boldwest] over the river.

You've landed on a small beach. A large wall of overgrown thorns sweeps around you on most sides; the only way forward is through a small tunnel to the [boldeast]. Farther to the east, you can see a ruined castle[first time]

The monkey-like thief is still here, carrying the action figure. It recoils from you, leaping through the thorny wall. After a few seconds, you can see it in the distance, climing onto the tower of the castle and into a hole on the roof, out of sight.[only]."

The ruined-scenery is distant scenery in distant-shore. The printed name of the ruined-scenery is "ruined castle". Understand "ruined" or "ruins" or "ruin" or "tower" or "hole" or "spire" or "roof" or "holes" as the ruined-scenery. The description of the ruined-scenery is "Past the wall of thorns rises the ruins of a castle. It still has a tower left standing, with holes in the roof."

The shore-beach is scenery in distant-shore. THe printed name of shore-beach is "beach". Understand "small" or "beach" as the shore-beach. The description of the shore-beach is "This beach is bleak and seems relatively new, as it has not yet been washed into sand."

The thorn-wall is scenery in the shore-beach. The printed name of the thorn-wall is "wall of thorns". Understand "overgrown" or "wall" or "large" or "thorns" or "wall of thorn" or "wall of thorns" as the thorn-wall. The description of the thorn-wall is "Thorns don't usually grow this large. Something has caused unusual growth here."

The thorn-tunnel is a backdrop. The thorn-tunnel is in shore-beach. The thorn-tunnel is in thorn-passage. The thorn-tunnel is in ruined-courtyard.

The scenery-styx is in Distant-shore.

Chapter 13 - Thorn passage

Thorn-passage is east from distant-shore.  Thorn-passage is in haunted-region. The printed name of the thorn-passage is "Thorn Passage". The description of Thorn-passage is "You can return to the shore to the [boldwest], or continue to the castle to the [boldeast].";

The thorn-spike is in thorn-passage. The printed name of the thorn-spike is "giant thorn". Understand "giant" or "thorn" or "nasty" or "point" or "cylinder" as the thorn-spike. The description of the thorn-spike is "This is a very big, roughly cylindrical thorn a couple centimeters thick that tapers to a nasty point at one end."

Chapter 14 - Ruined courtyard

Ruined-courtyard is east from thorn-passage. The ruined-courtyard is in haunted-region. The printed name of ruined-courtyard is "Ruined Courtyard". The description of ruined-courtyard is "This once-beautiful courtyard is now blighted and ruined. Dead grass runs past empty flowerbeds, and crumbling walls surround most of the area. You can go [boldnorth] or [boldsouth] into wings of the castle, go [boldeast] into the throne room, or return [boldwest] to the thorn passage."

The scenery-courtyard is scenery in ruined-courtyard. Understand "courtyard" as the scenery-courtyard. THe printed name of the scenery-courtyard is "courtyard". THe description of the scenery-courtyard is "This seems like it was once a regal and delightsome area, now barren and dry."

The courtyard-grass is part of the scenery-courtyard. The printed name of the courtyard-grass is "dead grass". Understand "dead" or "dry" or "grass" as the courtyard-grass. The description of the courtyard-grass is "The grass here has been dead for a long, long time."

The empty-flowerbeds are scenery in ruined-courtyard. The printed name of the empty-flowerbeds is "empty flowerbeds". Understand "empty" or "flower" or "flowers" or "flowerbed" or "bed" or "beds" or "Flowerbeds" as the empty-flowerbeds. The description of the empty-flowerbeds is "Whatevery grew here once is now long gone."

The crumbling-walls are scenery in ruined-courtyard. The printed name of the crumbling-walls is "crumbling walls". Understand "crumbling" or "wall" or "castle" or "crumbling-walls" as the crumbling-walls. The description of the crumbling-walls is "The walls of the couryard have begun to tumble down, and are crumbling."

The heavy-block is in ruined-courtyard. "A heavy block has fallen in front of the throne room, preventing entry."The printed name of the heavy block is "heavy block". The description of the heavy-block is "This heavy block must have fallen off from part of the castle higher up. It's very long and heavy."

The left-end and right-end are parts of the heavy-block. The printed name of left-end is "left end". The printed name of right-end is "right end". Understand "left" or "end" or "side" as the left-end. Understand "right" or "end" or "side" as the right-end. The description of the left-end is "The left end of the block is rough and looks easy to grasp." The description of the right-end is "The right end of the block is a little cumbersome but shouldn't be hard to grab."

Instead of taking the heavy-block:
	say "It's so large, you'll have to pick an end to try to pick up."

Instead of taking the left-end:
	say "Okay, now you're holding on to the left end."

Instead of clone-you taking the left-end:
	say "Okay, now you're holding on to the left end."

[also have a flaming sword in treasury that can burn vines on wall? And a key in the throne room that unlocks the flaming sword, which can clear the vines]

Chapter 15 - Battered pantry

Battered-pantry is north from ruined-courtyard. Battered-pantry is in haunted-region.

The notched-plank is in battered-pantry.  The printed name of the notched-plank is "notched plank". Understand "notched" or "plank" as the notched-plank. The description of the notched-plank is "This is a long plank, sturdy enough for several people to stand on. There is a notch in the center, which cuts the short way across the plank, leaving the two sides balanced."

The plank-notch is part of the notched-plank. The printed name of the plank-notch is "notch". Understand "notch" as the plank-notch. The description of the plank-notch is "This notch is a several centimeters wide and about fifty centimeters long, running the width of the board."

Chapter 16 - Raised larder

Raised-larder is east from battered-pantry. Raised-larder is in haunted-region. The printed name of raised-larder is "Larder."

Chapter 17 - Dark pool

Dark-pool is south from ruined-courtyard. Dark-pool is in haunted-region. THe printed name of dark-pool is "Dark Pool". "This room frightens you. It's hard to say why, exactly, but it may be due to the pool of luminescent green liquid in the center of it."

The shimmer-pool is scenery in the dark-pool. The printed name of the shimmer-pool is "pool of luminescent green liquid". Understand "pool" or "pool of" or "luminescent" or "green" or "liquid" as the shimmer-pool. The description of the shimmer-pool is "This pool of luminescent liquid bubble and boils in an unholy manner[trigger-clone]."

Hidden-pool is a room.

Section 1 - Your clone

A Clone-you is a woman in hidden-pool. Understand "clone" or "shadow" or "copy" as clone-you. The printed name of clone-you is "clone". The indefinite article of clone-you is "your".

To say trigger-clone:
	say ". As you stare into the waters, you see your reflection staring back. Then your reflection winks.

Soon, it begins climbing its way out of the pool. Before you stands a copy of yourself. She says, 'Well, I guess I'll follow your lead. I'll give you a head start'";
	now clone-you is in dark-pool;

Clone-actions is a list of stored actions that varies.

After doing something when clone-you is not in Hidden-pool:
	now the actor is clone-you; 
	add the current action to clone-actions; 
	now the actor is the player; 
	continue the action. 
	
Every turn when clone-you is in Hidden-pool:
	now clone-actions is {looking, looking}

Every turn when clone-you is not in Hidden-pool: 
	truncate clone-actions to the last two entries;
	try entry 1 of clone-actions; 
	
Every turn:
	say "The clone-actions list is currently [clone-actions]";
			
Chapter 18 -Throne room

Throne-room is east from ruined-courtyard. Throne-room is in haunted-region. Throne-room is south from raised-larder. The printed name of the throne-room is "Throne Room". "This is the vast ruin of a once-glorious throne room. Pillars line the walls, some fallen and crumbling. Stairs once must have led upwards, as there is an entrance, towards the north part of the room, but it is a few meters above your grasp, even when jumping. Similarly, the wall to the [boldnorth] has crumbled, leaving an exposed hole high above ground to what seems to have been a larder.

The center of the room on the east side is a raised dais with a broken throne on it. It looks like it was once flanked with rows and rows of ornate wooden poles leading down the dais to the other side, but they are all broken on the floor. To the north, near the hole in the wall, one pair of stone supports remain, but the pole that once went through them is shattered."

The stone-pair is scenery in the throne-room. The printed name of the stone-pair is "pair of stone supports". Understand "pair" or "pair of" or "stone" or "support" or "hole" or "holes" or "sewing" or "needle" or "needles"or "supports" as the stone-pair. The description of the stone-pair is "This is a pair of stone supports, about half a meter apart from each other and a few meters away from the wall. They each have a hole in them a few centimeters wide, with the holes facing each other. Overall, they look a bit like two large sewing needles stuck into the ground."

Before going north from the throne-room:
	say "You climb up into the hole that goes to the larder."

Instead of going up from the throne-room:
	say "Even jumping, you can't reach the entrance above."

Chapter 19 - Spire

The castle-spire is up from the throne-room. The castle-spire is in haunted-region.

Chapter 20 - Dark tunnel

The dark-tunnel is east from dark-pool. The dark-tunnel is in haunted-region. The printed name of the dark-tunnel is "Dark Tunnel". "This dark tunnel leads to a glowing purple door to the [boldeast]. In front of the door, however, is a deep pit that is too far for you to jump over. A thin iron rail is halfway across the pit, running from side to side."

The giant-pit is scenery in the dark-tunnel. Understand "deep" or "pit" as the giant-pit. The printed name of the giant-pit is "deep pit".

Instead of physicality when the noun is the giant-pit:
	say "You can't really touch a pit, it's just the absence of solid material."

The iron-rail is scenery in the dark-tunnel. The printed name of the iron-rail is "iron rail". Understand "iron" or "rail" as the iron-rail. The description of the iron-rail is "This iron rail is a couple of centimeters wide and spans the pit from the left side to the right side. You can't reach it from where you are."

Chapter 21 - Treasure room

Treasure-room is a dark room in haunted-region. The printed name of treasure-room is "Treasure Room". 
The treasure-room is east from dark-tunnel. 

Part 7 - Murder mystery dimension

The murder-region is a region.

Chapter 1 - Lavatory

[make this a train and not a house, since we already have a house! and train is good]

The lavatory-room is a room in murder-region. The printed name of lavatory-room is "Lavatory". "The door opens to the [boldeast]."

Chapter 2 - First car

first-class is east from lavatory-room. The printed name of first-class is "First Class". The description of First Class is "This is a comfortable-looking car with wide seats, each with their own table."

Maeve is a woman in first-class. "A woman who looks just like Officer Mefe is here, but dressed in a rhinestone jumpsuit."

[make a woman here who looks just like the flight engineer in the main ship, so the player thinks it's her transformed]

Part 8 - Spell dimension

[spells are actually computer commands]

The spell-region is a region.

Chapter 1 - Foyer

The Foyer-room is a room in spell-region. The printed name of Foyer-room is "Foyer".

Part 9 - Combat dimension

The combat-region is a region.

[multiple opponents is the only way to make it interesting, someone said. I like that]

[maybe you're combatting service drones?]

Part 10 - Wildcard dimension

The wildcard-region is a region.

[This can be the finale part. It can include the player's own memorial, the engine in the main ship they go through, and in any case can include a book that includes the player most recent actions.]

Part 11 - Intership parts 

Volume 3 - Standard responses, endgame text, etc

Book 1 - Standard Responses

Part 1 - Standard Responses

Chapter 1 - Redirecting to standard responses

Understand "Look behind [something]" as looking under.

Part 2 - Special kinds of responses
	
Book 2 - Endgame text

Book 3 - Help System

Book 4 - Testing

Part 1 - Ship tests

Part 2 - Specific dimension tests

Chapter 1

Chapter 2

Chapter 3

Chapter 4

Chapter 5 

Chapter 6 - Haunted Mansion

Test pharaoh with "xyhaunt/n/n/look under organ/s/e/look under rug/w/w/look under comb/e/take token"

Test dracula with "xyhaunt/n/n/get all from bookshelves/give advenit to dracula/pull stop/give sinistram to dracula/push stop/give gyra to dracula/take token"

Test creature with "xyhaunt/n/w/say communicate/e/n/say interpreter/take blue/s/w/say retry/e/s/give book to frankenstein/n/w/give staff to creature/take token"

Test yeti with "xyhaunt/n/e/say mistaken/open wardrobe/take coat/take mannequin/take shoes/put coat on mannequin/put shoes on mannequin/give mannequin to yeti"

Test frank with "xyhaunt/n/u/e/say innocent/say identity/touch orb/g/g/g/g/w/d/s/say xyzzystein"

Test wolf with "xyhaunt/n/u/w/say safety/e/d/e/take mask/open wardrobe/take handcuffs/w/s/s/x flowers/take wolfsbane/n/n/u/w/give mask to wolf/give handcuffs to wolf/give wolfsbane to wolf/take token"

Test ghost with "xyhaunt/n/u/e/touch ball/g/take token"

Test obol with "test pharaoh/test dracula/test creature/test yeti/test frank/test wolf/test ghost/xywax/e/put all tokens in machine/take obol"

Test charon with "xyhaunt/s/e/give obol to charon"

Test allhaunt with "test obol/test charon"

Part 3 - Checking missing stuff

Alldescriptioning is an action out of world. Understand "alldesc" as alldescriptioning.

Carry out alldescriptioning:
	repeat with current running through things:
		if current is not nothing:
			say "[current]: [description of current][paragraph break]"

Part 4 - Temporary beta-testing stuff

Chapter 1 - The fairy


The exposition fairy is a talkative woman in Hangar-room. "The exposition-fairy is here, eager to dump some exposition[deliverexplanation]." The description of the exposition fairy is "She is a small woman with vibrant rainbow wings, which aren't implemented because she's getting taken out as soon as testing is over. Try TALK TO fairy if you don't know how conversation works in this game, or SAY EXPLANATION if you do."

To say deliverexplanation:
	deliver fairy-explanation;
	
Fairy-explanation is a quip. The printed name of Fairy-explanation is "Explanation".  Understand "explanation" as fairy-explanation. The preview of fairy-explanation is "Hey, can you tell me everything about the game?" The target of fairy-explanation is the exposition fairy.

The targetresponse of fairy-explanation is "'Of course! This game will eventually have a prologue where it says that you, Emrys Weaver, are the Storyweaver of the Starship Eilifligr, a relatively unimportant position on a seedship carrying colonists to a distant planet. Your ship is badly damaged and everyone is going to die. Strange rips or tears in space have opened up in different rooms on the ship. You are the only one who can see them, and the only one who can go through them.

'You are wearing a recorder that records all audio you hear, and can help with translation. It's what enables your conversation system. You can examine the recorder for more info.

'To start this tutorial, go to the [boldeast]. The tear in space to the [boldnorth] of you in this current room, the Hangar, is very underimplemented; however, it contains one machine that will be necessary for you to complete the testing of this game.'

'Good luck!' she says, and waves her wand at you."

Chapter 2 - Teleporting

haunted-teleporting is an action applying to nothing. Understand "xyhaunt" as haunted-teleporting.

Carry out haunted-teleporting:
	now the player is in the Parlor-room;

napoleon-teleporting is an action applying to nothing. Understand "xywax" as napoleon-teleporting.

Carry out napoleon-teleporting:
	now the player is in the napoleon-room;

Book 5 - Notes

Part 1

Part 2

Part 3

Part 4

Part 5 

Part 6 - Haunted Mansion

[add reading to books]

[instead of getting Retry delivered after taking the dictionary, find a different way]

[add the part over the river, under construction ]

[tattered? untethered? Tattered and untethered]

[need hints that frankenstein wants your stuff]

[add space monkey that steals figurine, motivating you to enter the tear in space]