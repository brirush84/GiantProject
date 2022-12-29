"Never Gives Up Her Dead" by Brian Rushton

Volume 1 - Pre-game setup

When play begins:
	say "You are Emrys Tisserand, Storyweaver of the Starship Eilifligr, on a quest to establish a new colony with thousands of passengers in cold storage. For three months, it has been your job to entertain the crew with your tales while recording the ship's history. Storyweavers have the gift, they say, and bring luck to everyone aboard. 

But your starship has suffered catastrophic damage from a meteoric collision.

This is the story of how you die."

Book 1 - Metadata, out of world actions and extensions

Part 1 - Metadata

Chapter 1 - Genre, description, etc


Section 1 - Genre, description, etc

The story genre is "Science Fiction". The story description is "Hop through dimensions to save your ship." The story creation year is 2022. The release number is 5

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
	say "This game was written by Brian Rushton/Mathbrush using Inform 7 (by Graham Nelson). Beta testers include Amanda Walker, the Xenographer, John Ziegler, Jade and LAST_TESTER_HERE. Hanon Ondricek gave helpful advice about the concept and title.

Matt Weiner served as inspiration for some puzzle content."

[for testing]
Understand "* [text]" as a mistake ("Noted."). 

Part 3 - Extensions

Include Clues and Conversation by Brian Rushton.

Book 2 - Rules and types of things

Part 1 - Doors

Chapter 1 -Tears in space

Section 1 -Definition

A space-tear is a kind of door. A space-tear is usually unopenable. A space-tear is usually open. Understand "tear" or "space" or "tear in space" or "rip" as a space-tear.

A space-tear can be red or green. A space-tear is usually red. Understand the red property as describing a space-tear.

The description of a space-tear is "This is a tear in the fabric of space and time. Going through it will take you to somewhere new and, perhaps, dangerous. It is glowing [if the noun is red]red[otherwise]green[end if]."

[change description if you passed through it once]

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

Touching something is physicality. Rubbing something is physicality. Pushing something is physicality. Taking something is physicality. Pulling something is physicality. Opening something is physicality. Closing something is physicality. Turning something is physicality. Switching on something is physicality. Switching off something is physicality. Kissing something is physicality. 

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
		now target of current is talkative;
	try topicing;

The standard singleuttering rule response (B) is "Your recorder beeps. This is a message meant for [The target of the noun], who isn't here.";

The advice on talking to just one person rule response (A) is "[We] [can] see just the topics for one person at a time by TALKing TO that person[first time]

To say a specific topic to someone, type SAY the topic TO that person[only]."

Part 5 - Player character

Chapter 1 - Name and identity

[maybe Angharad instead]

Emrys-weaver is a person. Understand "emrys" or "weaver" or "storyweaver" or "Tisserand" as emrys-weaver.

The player is emrys-weaver. 

The description of emrys-weaver is "You are Emrys Tisserand, and you are the active Storyweaver of the seedship Eilifligr. It is your job to preserve and share the history of this people in the form of stories. 

They say that Storyweavers have the Gift, but what that gift is, all disagree on. For most of your career, you haven't noticed anything strange or supernatural about you. But that's changed today."

Chapter 2 - Recorder

The all-recorder is worn by the player. The printed name of the all-recorder is "recorder". Understand "recorder" or "slender" or "contraption" or "earpiece" or "metal" or "microphone" as the all-recorder.

Instead of taking off the all-recorder:
	say "It's actually attached to your nervous system. It might be a bad idea to remove it manually."

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

The ship-floor is a backdrop. The ship-floor is in ship-region. The description of the ship-floor is "Most of the floor on the ship is stainless steel." The printed name of the ship-floor is "floor". Understand "floor" or "floors" or "stainless" or "steel" as the ship-floor.

Does the player mean doing something with the ship-floor:
	it is unlikely;

Chapter 1 - Hangar

Hangar-room is a room in ship-region. The printed name of Hangar-room is "Hangar".   The description of hangar-room is "You can go to the psychologist's office to the [boldeast] or to the engineering room to the [boldwest]."

Section 1 - Tear in space

The hangar-tear is a space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in Hangar-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the hangar-tear is red]red[otherwise]green[end if]." The hangar-tear is north of Hangar-room and south of Napoleon-room. 

Chapter 2 - Psychologist's office

Psych-room is east from Hangar-room. psych-room is in ship-region. The printed name of Psych-room is "Psychologist's Office". The description of psych-room is "This is a small office with softer lighting and more furnishings than most of the ship. The walls are plastered with classic movie posters and the desk is overflowing with action figures. You can return to the hangar to the [boldwest]."

The classic-posters are plural-named scenery in psych-room. The printed name of the classic-posters is "classic movie posters". Understand "classic" or "movie" or "poster" or "posters"as the classic-posters. The description of the classic-posters is "These are all from old Earth. You know Gareth is a fan of the old movies; he's been trying to purchase an actual film reel for years."

The action-figures are plural-named scenery. The action-figures are on the psych-desk. The printed name of the action-figures is "action figures". Understand "action" or "figure" or "action figures" or "toys" or "toy" or "figures" or "horror" or "various" or "character" or "characters" as the action-figures. The description of the action-figures is "There are a variety of plastic toys here representing various horror characters."

The psych-desk is a scenery supporter in psych-room. Understand "desk" as the psych-desk. The printed name of the psych-desk is "desk". The description of the psych-desk is "This is a plain desk without drawers. It's mostly cluttered with action figures."

Withplaying is an action applying to one thing. Understand "play with [something]" as withplaying.

Carry out withplaying:
	if the noun is the action-figures:
		say "Gareth has said that they're for looking at, not playing with.";
	otherwise if the noun is the gareth-toy:
		say "You wobble it back and forth a little and make it talk in a squeaky voice.";
	otherwise:
		say "This isn't the right time to play.";

Instead of taking the action-figures:
	say "Gareth would get very upset. This doesn't seem like the time for that."

Instead of kissing gareth:
	say "You give Gareth a hug. He lets you, and pats your hand absent-mindedly."

Instead of physicality when the noun is action-figures:
	say "Gareth asked you to leave these alone."

[implement individual movie posters?]

The softer-lighting is intangible scenery in the psych-room. The printed name of the softer-lighting is "softer lighting". Understand "softer" or "lighting" as the softer-lighting. The description of the softer-lighting is "The lighing in here is softer than the rest of the ship, but you can't discern its source."

Understand "furnishings" as the psych-couch. Understand "furnishings" as the psych-rug.

The psych-rug is scenery in the psych-room. Understand "comfortable" or "rug" as the psych-rug. THe printed name of the psych-rug is "comfortable rug". The description of the psych-rug is "This a comfortable rug that helps mute some of the clangs and echoes typical in spaceships."

The psych-couch is an enterable scenery supporter in the psych-room. Understand "couch" as the psych-couch. The printed name of the psych-couch is "couch". The description of the psych-couch is "While its usefulness in psychological evaluation is debatable, the couch is one of the best places for naps on the ship. When there isn't an emergency, that is."

Instead of looking under the psych-couch:
	say "Hmm, pretty clean. Gareth must take good care of his office."

Section 1 - Psychologist

Gareth is a man in Psych-room. "Gareth is here, huddled on his couch and staring at the wall." Understand "doctor" or "Djomo" as Gareth. The description of Gareth is "Gareth is a disheveled middle-aged man with a mop of curly black hair and a lean frame. He has a thousand-yard stare right now and doesn't seem very responsive."

Report going to psych-room:
	deliver Consolation-gareth;
	deliver simians-gareth;
	
Consolation-gareth is a quip. The target of consolation-gareth is gareth. The preview of Consolation-gareth is "Hey, Gareth, are you feeling okay?" The printed name of consolation-gareth is "Consolation". Understand "consolation" as consolation-gareth.

The targetresponse of consolation-gareth is "Gareth looks up at you disconsolately. 'I wasn't trained for this. Do you know there are twenty-three psychologists on board? Some of them have seen combat. Not me; I was supposed to be the colony's family psychologist. And somehow I'm the one they defrosted right before we all go up in flames. I could have just died in my sleep like the other ten thousand passengers. I don't know how to be helpful at all right now,' he says.

You don't say anything, but squeeze his hand in support. He barely seems to register it."

Simians-gareth is a quip. The target of simians-gareth is gareth. The preview of simians-gareth is "Gareth, a random robot monkey just took your toy!" The printed name of simians-gareth is "Simians". Understand "simians" as simians-gareth.

The targetresponse of simians-gareth is "Gareth turns away from you sulikly. 'You don't have to make fun of me,' he says. 'We're all going to die, the least you could do is to not bully me about my action figures.'

'But Gareth, that's not--' you start, but he just shakes his head."

Section 1 - Tear in space

The psych-tear is a space-tear. "[one of]The current psychologist on duty, Gareth Djomo, is in here, huddled on his couch. Oblivious to the chaos outside, or perhaps overwhelmed by it, he stares off into the corner. 

There is a tearing sound, and the fabric of reality rips open to the [boldnorth]. Out of the tear comes a bizarre little creature that looks like a kind of robotic monkey. It leaps up onto Gareth's desk and grabs one of the action figures, then rushes back into the tear in space. [Gareth] doesn't seem to notice any of this. Could this be the weaver's gift?

You'll have to chase that creature down; but in the meantime, what are you going to do about Gareth? He's in a bad spot[or][if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in psych-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the psych-tear is red]red[otherwise]green[end if][stopping]." The psych-tear is north of psych-room and south of the front-room.

Chapter 3 - Engineering room

The engineering-room is west from hangar-room. The engineering-room is in ship-region. THe printed name of the engineering-room is "Engineering Room". "You can return to the hangar to the [boldeast]."

The engineering-tear is a space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in engineering-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the engineering-tear is red]red[otherwise]green[end if]." The engineering-tear is north of engineering-room and south of device-room. 

Chapter 4 - Bridge, flight control

The flight-room is up from hangar-room. THe flight-room is in ship-region. The printed name of the flight-room is "Bridge: Flight Controls".

Mefe is a woman in flight-room. "Officer Mefe is here, frantically trying to restore navigation while helping everyone else on the bridge." The description of Mefe is "Flight Officer Mefe Azimov is a short woman with wavy black hair tucked under a cap. While trying to repair the controls, she constantly scans the room, looking for other problems to fix, but finding too many to handle.". Understand "flight" or "officer" as Mefe.

The flight-cap is worn by Mefe. Understand "cap" as the flight-cap. The printed name of the flight-cap is "cap". The description of the flight-cap is "This cap signifies Mefe's rank as Officer."

The flight-tear is a space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in flight-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the flight-tear is red]red[otherwise]green[end if]." The flight-tear is north of flight-room and south of lavatory-room.

Book 2 - Future Ship

Part 1 - Wax museum dimension

The wax-region is a region.

Chapter 1 - Napoleon room

Napoleon-room is a room in the wax-region. "The gift shop is to the [boldeast]." The printed name of Napoleon-room is "Napoleon Room".

Section 1 - Wax figures

Chapter 2 - Gift shop

Gift-room is east from Napoleon-room. "A coin machine is here. The author is going to make it so that you can put tokens in and get an obol out.

You can leave to the [boldwest]."

The gift-room is in wax-region.

The coin-machine is scenery in Gift-room. The printed name of the coin-machine is "coin machine". Understand "coin" or "machine" as the coin-machine. The description of the coin-machine is "It has a little tray and a slot. Above the slot is a sign saying 'Deposit tokens to receive an obol! You'll need to collect all seven!'"

The coin-slot is part of the coin-machine. Understand "slot" as the coin-slot. The printed name of the coin-slot is "slot". The description of the coin-slot is "This is a vertical slot for inserting tokens." 

Instead of inserting something into the coin-slot:
	try inserting the noun into the coin-machine;

The coin-tray is part of the coin-machine. The coin-tray is a supporter. The printed name of the coin-tray is "tray". Understand "tray" as the coin-tray. The description of the coin-tray is "This is a simple tray for collecting things that come out of the machine."

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

Device-room is a room in the tool-region. The printed name of Device-room is "The Device". "This room is dominated by a single, big, complex device. There is a hallway leading [boldnorth]."

The strange-device is scenery in the device-room. The printed name of the strange-device is "strange device". Understand "strange" or "device" as the strange-device. 

Chapter 2 - Tool room

Tool-room is a room in the tool-region. Tool-room is north from device-room. The printed name of tool-room is "Tool Room". "This bare room contains a single black pedestal. You can return to the device room to the [boldsouth]."

The tool-pedestal is an enterable scenery supporter in the tool-room. The printed name of the tool-pedestal is "pedestal". Understand "single" or "simple" or "black" or "pedestal" as the tool-pedestal. The description of the tool-pedestal is "This is a solid black pedestal whose sole purpose seems to be display."

Section 1 - The curious tool itself

The curious-tool is on the tool-pedestal. The printed name of the curious-tool is "curious tool". Understand "curious" or "tool" or "cylinder" or "lockpick" or "flashlight" as the curious-tool. The description of the curious-tool is "This is a cylindrical device with a dial at one end. The dial is currently set to [tool-mode of the curious-tool]. The available settings are inert, lockpick and flashlight."

The tool-dial is part of the curious-tool. Understand "dial" as the tool-dial. The printed name of the tool-dial is "dial". The description of teh tool-dial is "The dial is currently set to [tool-mode of the curious-tool]. The available settings are inert, lockpick and flashlight."

Tool-Mode is a kind of value. The tool-modes are inert, lockpick and flashlight. The curious-tool has a tool-mode. The curious-tool is inert. 

Understand "set [curious-tool] to [a tool-mode]" or "set [tool-dial] to [a tool-mode]" as tuning it to. Tuning it to is an action applying to one thing and one tool-mode. 

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
		say "[bracket]To use the lockpick, simple UNLOCK a locked door WITH the tool.[close bracket]";
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

Carry out atpointing:
	if the noun is the curious-tool:
		if the tool-mode of the curious-tool is flashlight:
			say "You point the flashlight at [the second noun].";
		otherwise:
			say "Nothing happens.";
	otherwise:
		say "Nothing happens.";

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

A token is a kind of thing. Understand "token" as a token. Understand "token" or "round" or "disk" or "depiction" or "waxworks" or "reverse" as a token. 

A token has some text called the token-target. The token-target of a token is usually "Frankenstein".

The description of a token is usually "This is a round disk with a depiction of [the token-target of noun] on it. On the reverse, it says 'WAXWORKS'."


Chapter 1 - Parlor

The Parlor-room is a room in haunted-region. The printed name of Parlor-room is "Frankenstein's Parlor".

The description of Parlor-room is "This room is dominated by a large trophy case. In the trophy case, you can see [a list of things enclosed by the treasure-case]. You can go outside to the [boldsouth], or deeper into the building to the [boldnorth]."

Section 1 - Frankenstein

[maybe frank is a kleptomaniac, like a zork treasurer? psychology is envy/greed/idolatry]

[frank can give you the glasses, but only if you have the right conversation topic. He really wants the treasures across the river, which is like the zork underworld.]

Understand "man" as a man. Understand "woman" as a woman.

Frankenstein is a man in Parlor-room. "A tall man with pale, translucent skin and black lips is standing nearby with an avaricious look in his eye. He has a nametag on his overalls that says, 'Frankenstein'. He is holding [a list of things carried by Frankenstein][first time].

Did that say, Frankenstein? You have many questions[deliverfrankstuff][only]." The description of Frankenstein is "This is a very tall man. He has translucent skin, with a dark web of blood vessels underneath, and black lips. He wears overalls with a nametag that says 'Frankenstein: Treasure Collector'. He keeps glancing over at you with a greedy look in his eye.". Understand "Frank" or "tall" or "creature" or "monster" or "translucent" or "skin" or "web" or "pale" or "blood" or "vessels" or "vessel" or "corpse" or "avaricious" or "eye" or "corpse-like" as Frankenstein.

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

The TargetResponse of Franken-confusion is "Frankenstein says, 'This is Frankenstein's Frightening Fantasy, home of the horrible and den of the despicable! Although you must forgive us, we are all a bit out of sorts today. If you help us out, we can give you...' he fishes something out of his pocket and waves it around, continuing, '...exciting tokens!'

'What do I do with the tokens?' you ask. 'Helping horrifying monsters seems like a big risk for a few plastic tokens.'

He puts the token back out of sight, a little embarassed, and says, 'I may have exaggerated how horrible they are. And I'm sure you'll find a use for the tokens. Some people use them for work. I even know someone that got out of jail using tokens. In any case, I'll leave you to it. If you find any treasure, though, let me know; I'm quite the collector myself.'

'Will you give me your token if I give you treasure?' you ask.

He smiles, and says, 'No. But I'll give you something of mine. To get my token, you must say the magic word[delivermagic].'"

The disguised-glasses are a thing carried by Frankenstein. The description of the disguised-glasses is "This is a long staff with two prongs in the middle and what look like large shield-shaped pieces of glass on both ends." Understand "long" or "staff" or "prongs" or "prong" or "staff" or "staves" or "glass" or "shield" or "unusual" or "staff" or "shield-shaped" or "piece" or "pieces" as the disguised-glasses. The printed name of the disguised-glasses is "unusual staff".

The creature-glasses are a plural-named thing. The printed name of the creature-glasses is "giant glasses". Understand "glasses" or "giant" or "cute" as the creature-glasses.

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
	if the noun is a token:
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
	say "Frankenstein backs away and says, 'Hey! I won't give up anything without a fair trade! You give me something, I give you the staff. That's how it works!'";

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

The treasure-case is scenery in Parlor-room. The treasure-case is a closed, locked, openable lockable transparent container. The printed name of the treasure-case is "treasure case". Understand "treasure" or "treasures" or "case" or "cabinet" or "glass" as the treasure-case. The description of the treasure-case is "This is a large glass cabinet that contains a variety of treasures. It contains [a list of things enclosed by treasure-case]."

After unlocking the treasure-case with the curious-tool:
	say "You unlock the treasure case.

Frankenstein looks at you in horror. 'Excuse me, just who do you think you are?' he asks, then stands in front of the case. 'Stop touching that.'"
	
Instead of opening the treasure-case when the treasure-case is unlocked:
	say "'No.' says Frankestein firmly, interposing himself."

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

The description of a parlor-treasure is usually "Frankenstein sees you looking, and says, 'Oh, that? [They're] [a noun] that I collected during my adventures.[makepast] [one of]I had to wrestle a clam to get [them][or][They] [are] dropped by a grue[or]I found [them] inside a portal to the underworld[or]A wizard summoned [them] to attack me. Don't worry, [makepresent][they] [are] no longer animate[or]I bought [them] at a flea market in another world[at random].[makepresent]'"

To say makepast:
	now the story tense is past tense;

To say makepresent:
	now the story tense is present tense;

[add some variations to the above]

Section 3 - XYZZYStein

To say delivermagic:
	deliver Franken-magic;

Franken-magic is a quip. The printed name of Franken-magic is "Magical". Understand "magical" as Franken-magic. The preview of Franken-magic is "I have to say the magic word? Okay...Please may I have your token?"  The target of Franken-magic is Frankenstein.

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

Pharaoh is a man in Grand-room. "A mummy is here, adorned with gold, lapis lazuli and turquoise jewelry that constrast with his threadbare linene bandages. He is walking gravely around the room, seemingly troubled[first time][deliverpharaoh][only]." The description of Pharaoh is "The mummified Pharaoh is a towering figure that looms over you, making you shrink away a bit. He is covered in tightly-wrapped linen bandages, yellowed with age, and is covered in bracelets and jewels made of lapis lazuli, turquoise, and beaten gold[if absent-quip is targetgiven].

He's still waiting for you to find his cat[end if]."

The pharaoh-jewels are worn by pharaoh. The pharaoh-jewels are plural-named. Understand "bracelet" or "beaten" or "gold" or "jewel" or "lapis" or "lazuli" or "turquoirse" or "jewelry" or "jewels" or "bracelets" as the pharaoh-jewels. The printed name of the pharaoh-jewels is "jewels". The description of the pharaoh-jewels is "The jewels look priceless to you, and are of such fine craftmanship it makes you want to cry. "

The tightly-wrapped linen bandages are worn by pharaoh. Understand "magnificent" or "yellow" or "yellowed" or "threadbare" or  "age" as the tightly-wrapped linen bandages. The description of the tightly-wrapped linen bandages is "While these bandages are yellowed and aged, they appear to have once been magnificent."

Understand "mummy" or "mummified" or "towering" or "figure" as Pharaoh.

Section 2 - Variables and quips

The cat-level is a number that varies. The cat-level is 0. 

To say deliverpharaoh:
	deliver pharaoh-hello

Pharaoh-hello is a quip. The printed name of Pharaoh-hello is "Problem". Understand "problem" as Pharaoh-hello. The preview of Pharaoh-hello is "What's wrong?"  The target of Pharaoh-hello is Pharaoh.

The TargetResponse of Pharaoh-hello is "His voice comes like the sound of a massive but distant sandstorm. 'I can't find my cat,' he says. 'Please. She likes to play games, but I'm worried she might be actually lost. I know she's not here in our room. Can you find her[deliverabsent]?"

To say deliverabsent:
	deliver absent-quip;

Absent-quip is a quip. The printed name of absent-quip is "Absent". Understand "absent" as absent-quip. The preview of absent-quip is "What can you tell me about your missing cat?" The target of absent-quip is pharaoh. 

The targetresponse of absent-quip is "The pharaoh says, 'Her name is Miut. It's time for her meal, but she's so hard to track down....Please find her! She hides under things, and she loves...organs. Hearts. Teeth.'

'That's...pretty weird. But I'll try to find her,' you say.

Thank you,' he says, and resumes his tormented walking."

A cat-ghost is a kind of animal. A cat-ghost is seldom talkative.

A cat-ghost can be catfound or uncatfound. A cat-ghost is usually uncatfound. Understand the catfound property as describing a cat-ghost. Understand "cat" or "ghost" as catfound. Understand "sound" or "whisper" or "whispering" or "sand" or "sands" as uncatfound.

The printed name of a cat-ghost is "[if the noun is uncatfound]sound of whispering sand[otherwise]cat ghost[end if]". 

Instead of doing something with a catfound cat-ghost:
	say "The cat isn't here anymore."

To resolve (currentcat - a cat-ghost):
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

Targetresponse of Sawcatonce-quip is "The pharaoh smiles and says, 'Excellent, thank you for your help. She can be so mischievous.'

He seems somewhat happier than before."

Pharaoh can be fullcatfound or not fullcatfound. Pharaoh is not fullcatfound.

Report looking in grand-room when pharaoh is fullcatfound:
	if the grand-mounds are in grand-room:
		say "As you enter the room, you hear a loud mewing. The ghost-cat Miut has found Pharaoh at last, and he is smiling and holding her close. Then she fades away in his arms, sinking into his chest.

	'Thank you,' says Pharaoh. 'I usually keep her memory in my heart, but I let her slip away for a time.' The sand that was moving around the room dissipates, giving you access to the stairs. Pharaoh himself crumbles into dust, which fades away.

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

The library-shelves are plural-named scenery in Library-room. The library-shelves are a supporter. The printed name of library-shelves is "bookshelves". Understand "bookshelf" or "row" or "rows" or "shelf" or "shelves" or "bookshelves" or "nonsensical" or "tome" or "tomes" or "library" or "books" as the library-shelves. 

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
		say "You haven't figured out how to play [the noun], yet. And likely never will."

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

Advenit is a musical. The description of Advenit is "This is a slim volume titled 'Advenit, by Johannes L. and Saul M.'" Understand "slim" or "volume" as Advenit.

Sinistram is a musical. The description of Sinistram is "This is a sheaf of loose pages of music titled 'Ad Sinistram, by B. Knowles'." Understand "ad" as sinistram.

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

Dracula smiles with relief, his long fangs reflecting the flickering light. 'Thank you, my friend. I love my bats, but sometimes I need a little help with them when I'm trying to focus. Here: a token of my admiration.' He hands you something and then returns to his desk. He looks up at the bats and presses a single finger to his lips before waving you away.

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
		say "Dracula hammers the keys, producing a loud, droning, constantly shifting melody. A single, small bat emerges from the flock, travelling in a counter-clockwise [reversecagegyra].";
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

To say deliverdracula:
	deliver stressed-dracula;

The library-pile is scenery in library-room. Understand "paper" or "papers" or "pile" as the library-pile. The printed name of library-pile is "pile of papers". The description of the library-pile is "It's impossible to decipher the antique handwriting Dracula uses."

Instead of pushing, pulling, or taking the library-pile:
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

She looks over at you with clear intelligence in her expression but then turns back. It's hard to tell if she'd understand you[only]." The printed name of the lagoon-creature is "lagoon creature". Understand "creature" or "black" or "lagoon" or "from" or "cross" or "humanoid" or "enormous" or  "scaled" or "humanoid" or "being" as the lagoon-creature.

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

"This sprawling and chilly room is filled with a finely-carved furniture, all frozen over and dripping with icicles. You can leave to the [boldwest].

One side of the room has a roaring blue flame. It ought to warm up the room, but that area seems to be colder. In front of it is a rug, splayed with playing cards that have frozen to the fabric. It seems like they were playing Hearts[if the frozen-target is broken].

Some of the furniture has unthawed, revealing a wardrobe, a shoe rack, and a pile of junk[end if]."

The frozen-flame is scenery in the game-room. The printed name of the frozen-flame is "roaring blue flame". Understand "roaring" or "blue" or "flame" as the frozen-flame. The description of the frozen-flame is "It looks like the color of blue Christmas lights on a dark night."

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
	say "You lift up the rug, cards and all. The expanse of stone under here is surprisingly lumpy.";
	resolve the frozen-cat;

The stone-expanse is scenery in game-room. THe printed name of stone-expanse is "lumpy stone". Understand "expanse" or "lumpy" or "floor" or "stone" as the stone-expanse.

The description of the stone-expanse is "Unlike the rest of the building, the floor here is mostly stone and quite lumpy."

Instead of pushing or pulling the frozen-rug:
	say "This is a very large rug, much of which is frozen to the floor. You can't push or pull the whole thing."

Section 2 - Yeti

[emotion is hatred]

The yeti is a woman in game-room. "An imperious yeti covered in fine white fur stands here, [if the frozen-target is unbroken]shooting arrows at a target on the far wall[otherwise]looking at you impatiently[end if][first time].

When she sees you enter, she spins towards you, nocking an arrow with hatred in her eyes. Then she squints and says, 'Oh, you're not him,' and turns back to her target practice[only]." 

The description of the yeti is "This yeti is much taller than you, wearing an elegant wooden necklace and leather quiver and [if the frozen-target is unbroken]shooting at the target on the wall[otherwise]waiting for you to bring her a new archery target[end if]."

Understand "maya" as the yeti.

Report going east from grand-room for the first time:
	deliver Mistaken-yeti;

The yeti-necklace is worn by the yeti. The printed name of the yeti-necklace is "wooden necklace". Understand "wooden" or "necklace" or "spheres" or "paint" or "painted" as the yeti-necklace. The description of the yeti-necklace is "This necklace is made of several wooden spheres, brightly painted and strung together."

The yeti-quiver is worn by the yeti. The printed name of the yeti-quiver is "leather quiver". Understand "leather" or "quiver" or "arrows" as the yeti-quiver. The description of the yeti-quiver is "You wonder what strange creature this pinkish leather quiver is made from, but feel it better not to ask. It is filled with many arrows."

The frozen-target is scenery in the game-room. The printed name of the frozen-target is "target". Understand "archery" or "far" or "center" or "wall" or "target" as the frozen-target. The description of the frozen-target is "This is an archery target, and it has numerous shot arrows stuck into it, clustered around the center. Apparently the archer has some skill[if the frozen-target is broken]

It's currently broken in half[end if]."

The frozen-target can be broken or unbroken. Understand the broken property as describing the frozen-target. Understand "broken" as broken .

The shot-arrows are part of the frozen-target. Understand "shot" or "arrows" as the shot-arrows. THe printed name of the shot-arrows is "shot arrows". The description of the shot-arrows is "All the arrows are clustered near the center."

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

The TargetResponse of Mistaken-yeti is "She looks at you coolly. 'I thought you were my cousin Harry. He abandoned our game of Hearts two days ago and hasn't been back since. I've been taking out my frustration on this target while we wait. Honestly, I hate him right now.'

She lets loose another arrow and the target breaks[breaktarget]. The yeti curses, and turns to you to ask, 'You wouldn't mind getting me another target, do you? You can just show me it and I'll tell you if it works. There should be enough stuff in this room.'

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
		say "You don't have anything to use as handcuffs."

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

Afraid of the arrow, you drop the mannequin and back off. As you do so, flakes of ice and snow  fly into the air, covering the target in snow. It looks a lot like the yeti, now.

[The yeti] stares, then sighs, and lowers the bow. 'It looks just like me, too. Me and Harry are a lot alike. Maybe instead of stewing here, I should go look for him myself.'

She picks up the mannequin and says, 'Thanks for your help, though. You can have this,' she says, as she hands you  and walks out of the room, carrying the mannequin absent-mindedly with her.

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

[if crystaltapped is false]It is filled with symbols which you're certain you've never seen, but which are also somehow familiar. There has to be some way to activate it[otherwise]You can see [roomview][conditional paragraph break]The picture is quite clear[end if]."

Instead of rubbing the crystal-ball:
	try touching the crystal-ball;
	
Instead of pushing or pulling the crystal-ball:
	try touching the crystal-ball;

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
		
Chapter 8 - Werewolf

The wolf-room is west from the landing-room. The printed name of the wolf-room is "The Den". "This room looks like the product of a frightful battle. Gouges have dug deep into the floorboards, a pipe is exposed in the corner, and a big mound of debris covers much of the room. You can leave to the [boldeast]."

The wolf-room is in haunted-region.

The wolf-boards are plural-named scenery in the wolf-room. The printed name of the wolf-boards is "floorboards". Understand "floorboards" or "gouges" or "board" or "floor" or "gouge" or "floorboard" as the wolf-boards. The description of the wolf-boards is "These floorboards look like they were repeatedly scratched by small claws."

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
	now the wolf-handcuffs are nowhere;

Instead of giving the wolfs-bane to the wolfman:
	say "'Is that...' he says, peering closely. 'Wolfsbane! Yes, this will trap my animal essence and prevent it from taking over my fragile mind! I'll place it in my pocket, so that when the dreadful transformation comes, it will weaken my beastly self!' 

He grabs the aconite from you and sticks it in his pocket, where it pokes out a bit.

'Careful with that,' you say. 'It's actually toxic to--'

'To the beast within?' he asks hopefully, peering at you intently.

'Uh, no, to humans,' you answer, to his visible disappointment. He keeps the wolfsbane though.";
	wolfupdate;
	now the wolfs-bane is nowhere;

Instead of giving the large-fencing to the wolfman:
	say "'Of course!' shouts the wolf-man. 'Like a muzzle, this will protect others from my serrated teeth.' 

He places the comically large mask on his head. 'Do not worry, fair stranger, this will fit quite snugly when I assume my murderous form.'

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
		say "He trembles a little as he says, 'My time is almost here. Look, as the beastly hair begins to cover my flesh,' he says, pointing to his arm, which looks quite the same as before. 'I need just a little more to keep everyone safe[if the wolfs-bane is not nowhere]. I hope you are looking everywhere in the house and not just grabbing random things from Maya[end if].'";
	otherwise if wolf-counter is 3:
		say "He starts to twitch and tremble. 'The change! It is upon me!'

He screams, and the scream becomes a howl. He shifts and morphs, hair growing and muscles rippling, as he transforms.

'It's happening!' he screams. He bares his teeth, which are morphing into terrible canines.

Then he collapses, his body finally turning into...a well-coifed toy poodle.

The handcuffs and mask fall off, and the wolfsbane tumbles away into the debris. The poodle rushes up to you and licks your hand. You tousle his hair, and he runs out of the room. Something has been left behind.";
		now the grey-token is in wolf-room;
		now the wolfman is nowhere;
	otherwise:
		say "You seem to have made the wolf much safer than the game should allow, or much less. This is a bug!";

The grey-token is a token. The printed name of the grey-token is "grey token". Understand "grey" as the grey-token. The token-target of the grey-token is "the Wolfman".

[add wolfsbane visually sticking out of pocket, handcuffs visually holding him in place]

Chapter 9 - Front Yard

The front-room is in haunted-region.

The front-room is a room. The printed name of the front-room is "Front Yard". The description of the Front-room is "[first time]Travel through the [psych-tear] is almost instantaneous, just a flash of color. One minute, you're in Gareth's office; the next, you're in a bizarre new world.

[only]You are standing before an asymmetrical, well-preserved Victorian mansion with a tower on one side and steps up to a door on the other. The mansion gleams, despite the lack of apparent light sources. The sky above is dark and overcast. An overgrown flowerbed lies in stark contrast to the tidy-looking mansion.

To the [boldnorth], you can enter the parlor of the mansion. To the [boldeast] lies a dark and foreboding river[first time].

As soon as you arrive, you see the monkey-like robot, still clutching the action figure.

'Hey, drop that!' you shout. But the robot chitters at you, running away to the east and jumping over the river in one enormous bound[only]." 

The lightless-sky is in front-room.

A thing can be examined or not examined. A thing is usually not examined.

Report examining something:
	now the noun is examined;

The examine containers rule does nothing when the noun is the front-bed.

The front-bed is an open unopenable scenery container in the front-room. The printed name of the front-bed is "overgrown flowerbed". Understand "overgrown" or "flower" or "bed" or "flowerbed" or "over-grown" as the front-bed. The description of the front-bed is "This flowerbed has run wild with [front-weeds][if wolfs-bane is in front-bed], but some [wolfs-bane] grow here as well[end if]."

The front-weeds are in the front-bed. The front-weeds are plural-named. The printed name of the front-weeds is "weeds". Understand "weed" or "weeds" as the front-weeds. The description of the front-weeds is "Weeds have choked away whatever else use to grow here[if wolfs-bane is in front-bed], except for the purple flowers[end if]."

The wolfs-bane is in the front-bed. The wolfs-bane is ambiguously plural. The indefinite article of the wolfs-bane is "some". The printed name of the wolfs-bane is "[if wolfs-bane is examined]wolfsbane[otherwise]purple flowers[end if]". Understand "wolves" or "wolfs" or "bane" or "wolfsbane" or "purple" or "flower" or "flowers" as the wolfs-bane. The description of the wolfs-bane is "You recognize these purple flowers; they are [italic type]aconitum[roman type], or, in other words, wolfsbane."

Instead of eating the wolfs-bane:
	say "Wolfsbane is pretty toxic; better not to eat plants that you know will cause a negative reaction."

The scenery-mansion is scenery in the front-room. The printed name of the scenery-mansion is "mansion". Understand "gorgeous" or "well-preserved" or "well" or "tidy-looking" or "tidy" or "asymmetrical" or "looking" or "house" or "mansion" or "queen" or "anne" or "preserved" or "victorian" or "tall" or "tower" or "stately" or "handsome" or "old" or "parlor" as the scenery-mansion. The description of the scenery-mansion is "This is a tall and stately old Victorian mansion in the Queen Anne style. It is asymmetrical, with a tower on one side and some steps leading up to a tall wooden door on the other."

Instead of entering the scenery-mansion:
	try going north;

The mansion-door is a scenery closed openable door. The mansion-door is south of the parlor-room and north of the front-room. The printed name of the mansion-door is "tall wooden door". Understand "door" or "steps" or "stairs" or "tall" or "wooden" or "opaque" or "windows" or "window" or "italianate" as the mansion-door. The description of the mansion-door is "Steps lead up to a tall, Italianate wooden door with opaque windows set into it and steps leading up to it."

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

The styx-room is east of the front-room. The printed name of the styx-room is "Styx". The description of the styx-room is "To your east is a wide river that flows dark and smooth under the lightless sky. A sign proclaims this to be the dread river Styx. You know that name from mythology: the river that divides the living from the dead.

You can return to the front yard to the [bold type]west[roman type]."

The styx-sign is an enterable scenery supporter in the styx-room. The printed name of the styx-sign is "sign". Understand "sign" or "granite" or "smaller" or "text" or "low" as the styx-sign. The description of the styx-sign is "This is a low, black granite sign that is labelled 'The River Styx.'

Underneath, in smaller lettering, it says, 'ONE OBOL'."

The lightless-sky is distant backdrop in styx-room. Understand "lightless" or "sky" as the lightless-sky. The printed name of the lightless-sky is "sky". The description of the lightless-sky is "Perhaps it's overcast, since you see no light at all."

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

Instead of pushing, pulling, or turning the charon-boat:
	say "Charon waves you away with his skeletal hand.";

Instead of inserting something into the charon-boat :
	say "Charon interposes himself, preventing you from placing anything in the boat."

Instead of putting something on the charon-boat:
	say "Charon interposes himself, preventing you from placing anything in the boat."

Instead of giving the obol to charon:
	say "Charon extends a bony claw from within his robe and takes the obol. He indicates the boat.

You step on, and he pushes his pole into the dark waters. The two of you glide silently across the river Styx.

As you travel, the world glitches around you for one moment, showing blank metal panels above you instead of a lightless sky. A robotic voice states, 'Now exiting Holoprogram CHR-9815: 'Pscary Psychology. Next up is Holoprogram GAR-0001: Self-Reflection. You can return to your former program at any time by crossing back over the river. Apologies for any errors that occur in loading.'

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

The shore-beach is scenery in distant-shore. THe printed name of shore-beach is "beach". Understand "small" or "beach" as the shore-beach. The description of the shore-beach is "This beach is bleak and seems relatively new, as it has not yet been washed into sand."

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

The iron-bar is part of iron-gate. "An iron bar lies on the ground here." The printed name of the iron-bar is "iron bar". Understand "iron" or "broken" or "heavy" or "missing" or "weak" or "bar" or "end" or "ends" or "solid" or "center" or "rusted" or "strong" as the iron-bar. The description of the iron-bar is "[if the iron-bar is part of iron-gate]One bar looks like it's rusted through; a good push might knock it out[otherwise]This heavy bar is a couple centimeters thick and about a meter long. It once barred the way to a castle, but no longer fulfills that task. Only the ends are rusted; the center is solid and strong[end if]."

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

Instead of entering the gate-gap:
	try going east;

Instead of physicality when the noun is the gate-gap:
	say "The gap is just a hole."
	
Instead of inserting something into the gate-gap:
	try dropping the noun;

Before turning  or pushing or pulling or taking or attacking the iron-bar:
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

The scenery-courtyard is scenery in ruined-courtyard. Understand "courtyard" as the scenery-courtyard. THe printed name of the scenery-courtyard is "courtyard". THe description of the scenery-courtyard is "This seems like it was once a regal and delightsome area, now barren and dry."

The courtyard-grass is part of the scenery-courtyard. The printed name of the courtyard-grass is "dead grass". Understand "dead" or "dry" or "grass" as the courtyard-grass. The description of the courtyard-grass is "The grass here has been dead for a long, long time."

The empty-flowerbeds are scenery in ruined-courtyard. The printed name of the empty-flowerbeds is "empty flowerbeds". Understand "empty" or "flower" or "flowers" or "flowerbed" or "bed" or "beds" or "Flowerbeds" as the empty-flowerbeds. The description of the empty-flowerbeds is "Whatever grew here once is now long gone."

The crumbling-walls are scenery in ruined-courtyard. The printed name of the crumbling-walls is "crumbling walls". Understand "crumbling" or "wall" or "castle" or "crumbling-walls" as the crumbling-walls. The description of the crumbling-walls is "The walls of the couryard have begun to tumble down, and are crumbling."

The heavy-block is in ruined-courtyard. "[if blockblocking is true]A heavy block has fallen in front of the northern exit, preventing entry to the north wing of the castle[otherwise]The heavy block has been pushed out of the way[end if]."The printed name of the heavy-block is "heavy block". The description of the heavy-block is "This heavy block must have fallen off from part of the castle higher up. You might be able to push it." Understand "heavy" or "block" as the heavy-block.



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

The battered-heap is scenery in the battered-pantry. THe printed name of battered-heap is "heap of rubble". Understand "heap" or "rubble" or "heap of" or "cupboards" or "shelve" or "shelves" as the battered-heap. The description of the battered-heap is "After looking over this heap thoroughly, you can't identify anything of use in it. It's just junk."

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

Dark-pool is south from ruined-courtyard. Dark-pool is in castle-region. THe printed name of dark-pool is "Dark Pool". "You are in a dank cave. It looks older than the rest of the castle, hewn roughly out of stone. This room frightens you. It's hard to say why, exactly, but it may be due to the pool of luminescent green liquid in the center of it. Exits lead [boldeast] and [boldnorth][first time].

You can hear murmuring coming from the pool. As you walk closer, the pool's bubbling softens and ceases, and the pool goes flat. You look in, and see your own [clone-you]. It winks at you.

'Hello, Emrys,' she says[trigger-reflection][only]."	

Instead of going nowhere from dark-pool when the noun is down:
	say "The pool does not look like a pleasant place to be."

Instead of entering the shimmer-pool:
	say "The pool does not look like a pleasant place to be."

Instead of drinking the shimmer-pool:
	say "It looks like you could catch twenty different diseases and radiation poisoning just from one sip."

The dank-cave is scenery in the dark-pool. The printed name of the dank-cave is "dank cave". Understand "dank" or "cave" as the dank-cave. The description of the dank-cave is "The walls are hard to see in the darkness, but they appear to be of sturdy stone." Understand "wall" or "walls" or "sturdy" or "stone" as the dank-cave.

Instead of touching the dank-cave:
	say "The walls are cold."

The shimmer-pool is scenery in the dark-pool. The shimmer-pool is a transparent unopenable closed container. The printed name of the shimmer-pool is "pool of luminescent green liquid". Understand "pool" or "pool of" or "luminescent" or "green" or "liquid" or "water" as the shimmer-pool. The description of the shimmer-pool is "This pool of luminescent liquid bubbles and boils in an unholy manner[if clonesubmerged is true].

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

A clone-you is a woman in dark-pool. "[if clonesubmerged is true]Your reflection still floats in the pool[otherwise]Your clone is here, watching you[end if].". The printed name of clone-you is "[if currentactee is clone-you ]herself[otherwise if clonesubmerged is true]reflection[otherwise]clone[end if][if currentactor is clone-you][setcloneact][end if]". The indefinite article of clone-you is "your". Understand "image" or "reflection" or "clone" or "shadow" or "copy" or "curious" or "dark" or "eyes" or "resolute" or "jaw" as the clone-you. The description of clone-you is "Your clone looks exactly like you: curious, dark eyes; resolute jaw; and increasing years[if the number of things held by clone-you > 0].

Your clone is carrying [a list of things held by clone-you][end if][if clone-you is on balanced-plank or clone-you is on balanced-plank2].

Your clone is standing on the balanced plank[end if]."

Reflecting-me is a quip. The printed name of reflecting-me is "Reflecting". Understand "reflecting" as reflecting-me. The target of reflecting-me is clone-you. The preview of reflecting-me is "And who exactly are you?"

The targetresponse of reflecting-me is "She says, 'Your reflection, of course.'

'Hmm,' you say. 'Kind of cheeky to use my image. When I was on the boat over here, it said this was a holoprogram. Is that right?'

'Yes,' she says. 'A psychotherapy holoprogram.'

'And you're part of it? Or are you...real?'

'I'm part of the program,' she says. 'I have fairly advanced AI, but you might notice some oddities. I serve as your reflection.'

'Let me guess,' you say. 'If it's psycotherapy, then you represent my inner self, or my feelings about myself.'

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

Section 1 - Your clone

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

Before the player doing something:
	now the actor is clone-you;
	if clonesubmerged is false:
		add the current action to past-actions; 
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
		say "You clone heads out to [the noun]."

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

The print protagonist internal rule response (B) is "[if currentactor is clone-you]you[otherwise]yourself"

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
			say "[one of]Your clone[setcloneact] attempts to grab [the current], but fails completely.[or]Your clone[setcloneact] looks at you in disbelief, but attempts to grab [the current] unseccessfully.[or]Your clone[setcloneact] unsuccessfully tries to grab [the current].[stopping]";
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

Instead of locking something with something:
	if clone-you is enclosed by the location of the player:
		if the second noun is not enclosed by clone-you:
			say "Your clone[setcloneact] pretends to lock [the noun] with an imaginary [second noun].";
		otherwise:
			say "Your clone[setcloneact] fumbles with [the second noun], saying 'I'm sorry, I've never really locked anything before."

Instead of unlocking something with something:
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
	
The rucksack is an openable closed container. The rucksack is carried by the player. The description of the rucksack is "This rucksack is for testing purposes only."

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

The center of the room on the east side is a raised dais that is missing its throne. It looks like it was once flanked with rows and rows of ornate wooden poles leading down the dais to the other side, but they are all broken on the floor. To the north, under the balcony, one pair of stone supports remain[if rodheld is true], with the [iron-bar] firmly placed between them[otherwise], but the pole that once went through them is shattered[end if]."

The throne-dais is an enterable scenery supporter in throne-room. The printed name of the throne-dais is "dais". Understand "dais" as the throne-dais. The description of the throne-dais is "This must have been beautiful, once, but all is gone, now." 

The strange-veins are distant plural-named scenery in throne-room. The printed name of the strange-veins is "strange black veins". Understand "strange" or "black" or "vein" or "veins" as the strange-veins. The description of the strange-veins is "Strange black veins have crawled all over the balcony above you. They seem to be coming from somewhere else in the castle."

The scenery-pillars are plural-named scenery in throne-room. The printed name of the scenery-pillars is "pillars". Understand "pillar" or "pillars" or "fallen" or "crumbling" as the scenery-pillars. The description of the scenery-pillars is "These pillars seem more decorative than functional. Those that have fallen don't seem to have weakened the surrounding structure at all."

The missing-throne is scenery in throne-room. The printed name of the missing-throne is "throne". Understand "throne" as the missing-throne.

Instead of doing something with the missing-throne:
	say "Perhaps surprisingly for a throne room, there is actually no throne here."

Instead of entering the scenery-pillars:
	say "There's just not enough handholds.";

The broken-poles are scenery in the throne-room. THe printed name of the broken-poles is "broken poles". Understand "broken" or "poles" or "pole" as the broken-poles. The description of the broken-poles is "These must have seemed beautiful, once."

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

The stone-pair is scenery in the throne-room. The printed name of the stone-pair is "pair of stone supports". Understand "pair" or "pair of" or "stone" or "support" or "hole" or "holes" or "sewing" or "eyes" or "stable" or  "needle" or "needles"or "supports" as the stone-pair. The description of the stone-pair is "This is a pair of stone supports, about a meter apart from each other and a few meters away from the wall. They each have a hole in them a few centimeters wide, with the holes facing each other. Overall, they look a bit like two large sewing needles stuck into the ground[if rodheld is false].

The pole they once held is long gone[otherwise].

Together, they are currently holding an iron rod[end if]."

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

Instead of putting something on the balanced-plank2:
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

The gareth-toy is carried by the spire-bot. The printed name of the gareth-toy is "Dracula toy". Understand "action" or "figure" or "gareth's" or "toy" or "dracula" or "vampire" as the gareth-toy. The description of the gareth-toy is "This is Gareth's vintage dracula action-figure; you know that it's his very favorite. He'll definitely be wanting this back!"

The spire-wall is scenery in castle-spire. The printed name of spire-wall is "unusual wall". Understand "unusual" or "wall" or "solid" or "stainless" or "steel" as the spire-wall. The description of the spire-wall is "This must be the true edge of the holo-program chamber. There is a dedication plaque affixed onto it."

Instead of going nowhere from castle-spire when the noun is outside:
	try going down;

The spire-plaque is scenery in the castle-spire. The printed name of the spire-plaque is "dedication plaque". Understand "dedication" or "plaque" as the spire-plaque. The description of the spire-plaque is "You read the plaque out loud:

'This holo-chamber is dedicated to Gareth Djomo, Ship Psychologist of the Starship Eilifligr.

'Gareth's calm head and quick thinking prevented mass panic during the near-fatal accident that the Eilifligr suffered on its maiden voyage. He was instrumental to the survival of the ship. 

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
	now the psych-tear is green;
	now gareth is nowhere;
	end the story finally saying "You've won the demo! Thanks for testing!";

[maybe add part where he's looking for toy?]

Instead of going down from castle-spire:
	now the player is on high-balcony;

Instead of going nowhere from throne-room when the noun is down:
	if the player is on high-balcony:
		try getting off the high-balcony;

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

Instead of physicality when the noun is the giant-pit:
	say "You can't really touch a pit, it's just the absence of solid material."

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

	But, too your surprise, something comes up from the pit as well. A counterweight must be falling somewhere, as both the portcullis and the bottom of the pit rise at once. Soon the floor of the pit rushes up, slowing down right before covering up the steel rail and gently pushin aside the notched plank and your clone[setcloneact], both of whom are now on solid ground. 

	The portcullis is open.

	Your clone[setcloneact] grins, and says, 'Solving one problem fixed a lot more, I guess. Let's get our reward.'";
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

The intricate-engravings are part of the gold-walls. The intricate-engravings are plural-named. The printed name of the intricate-engravings is "intricate engravings". Understand "intricate" or "engraving" or "engravings" or "dyad" or "dyads" or "chords" or "chord" or "note" or "notes" as the intricate-engravings. The description of the intricate-engravings is "A complex set of engravings is on the wall. One you recognize from your school training as music; it looks like chords. Or, no, dyads, since there are just two notes at a time.

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
						say "[conditional paragraph break]The song is out of tune with the notes of the engraving. The malignant mass recovers and grows larger than ever.

				'It's okay,' says your clone[setcloneact]. 'We'll try again.'";
						now justbroke is true;

The malignant-wall is scenery in the treasure-room. The printed name of the malignant-wall is "malignant mass". Understand "malignant" or "mass" or "wall" or "crumbling" or "organic" or "rotten" or "matter" as the malignant-wall. The description of the malignant-wall is "This looks a crumbling, rotten mass of some kind of organic matter. Strange black veins stretch out from it, infecting the castle."

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

The outside-treasure is east from treasure-room. The outside-treasure is in castle-region. The printed name of outside-treasure is "Outside". "It is bright and brilliant outside, a complete contrast to the gloominess of the other areas of the castle. You are surrounded by vibrant vegetation. The sun is bright, and a great feeling of warmth and comfort surrounds you[first time][triggercloneout][only].

There's nowhere really to go, besides back to the [boldwest]."

Basking is an action applying to nothing. Understand "bask" as basking.

Carry out basking:
	say "The environment isn't really suitable for basking.";
	
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

'You've beat the game,' she says. 'This was the first one the author made, years ago. He made better ones since then, but I'm glad this is the one you saw. 

'For most players, the game would end there. But you're looking for something up there, aren't you?' she says, pointing at the spire. 'I think we can make it. Let's see if we can find a way up.' You nod"

The outside-scenery is distant scenery in distant-shore. The printed name of the outside-scenery is "ruined castle". Understand "ruined" or "ruins" or "ruin" or "tower" or "hole" or "spire" or "roof" or "holes" as the outside-scenery. The description of the outside-scenery is "Above you rises the ruins of a castle. It still has a tower left standing, with holes in the roof."

Instead of going nowhere from outside-treasure when the noun is up:
	say "It'll probably be easier to get into the spire from inside the castle than outside. There's no clear way up out here."
	
Part 7 - Murder mystery dimension

The murder-region is a region. The train-region is a region. The train-region is in murder-region.

Chapter 1 - Lavatory

[make this a train and not a house, since we already have a house! and train is good]

The lavatory-room is a room in train-region. The printed name of lavatory-room is "Lavatory". "You find yourself in a very cramped lavatory that reminds you of the head in the first ship you served on. The walls are some kind of wood-laminate, pretty cheap-looking.

You would assume that this lavatory has the usual amenities, but the [flight-tear] to the [boldsouth] takes up almost the entire room.

The flimsy lavatory door opens to the [boldeast][if the lavatory-door is locked]. It is currently held shut by a latch on the nearby wall."

Section 1 - Background details

The missing-toilet is scenery in the lavatory-room. The printed name of the missing-toilet is "absent toilet". Understand "toilet" or "amenities" or "amenity" as the missing-toilet. The missing-sink is scenery in the lavatory-room. Understand "sink" as the missing-sink. The printed name of the missing-sink is "absent sink".

The lavatory-wall is scenery in the lavatory-room. Understand "wall" or "nearby" or "walls" or "laminate" or "wood" as the lavatory-wall. The printed name of the lavatory-wall is "wall". The description of the lavatory-wall is "The lavatory has "

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

The police-badge is a thing in lavatory-room. The printed name of the police-badge is "[if badgeopened is false]leather wallet[otherwise]detective badge[end if]". Understand "small" or "police" or "detective" or "badge" or "strange" or "leather" or "wallet" as the police-badge. The description of the police-badge is "[if the police-badge is open]This has the form of a leather wallet, with your face with title 'Detective Emrys Weaver' on a card in a window on one side, and a metallic pin on the other saying 'Precinct 13'.[otherwise]This is a small leather wallet, or at least it looks like a wallet. It's currently closed.[end if]"

The police-badge can be open or closed. The police-badge is closed. 

Instead of opening the police-badge:
	if the police-badge is open:
		say "The badge is already open.";
	otherwise:
		say "[first time]Well, this is a surprise. [only] The wallet opens to reveal itself as a kind of police badge. On one side is a metallic pin saying 'Precinct 13'. But the other side has a plastic window with an ID card in it. The person on the card is you.";
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

The detective-card is part of the police-badge. The printed name of the detective-card is "identification card". Understand "identification" or "ident" or "id" or "card" or "photo" or "photograph" as the detective-card. The description of the detective-card is "It says, 'Detective Emrys Weaver, and has your picture; it looks like an altered version of your crew photo from two years ago."

The plastic-window is part of the police-badge. The printed name of the plastic-window is "plastic window". Understand "plastic" or "window" as the plastic-window. 

The description of the plastic-window is "This is part of the badge, allowing your identity card to be displayed easily."

Instead of taking the detective-card:
	say "It's firmly ensconced in its plastic window."

The metallic-pin is part of the police-badge. Understand "metal" or "metallic" or "pin" or "fleur-de-lys" as the metallic-pin. The printed name of the metallic-pin is "metallic pin". The description of the metallic-pin is "This metallic fleur-de-lys pin says, 'Precinct 13' on it."

Instead of taking the metallic-pin:
	say "The metallic pin seems adhered quite firmly to the badge; apparently it doesn't come off."

Chapter 2 - First car

The lavatory-door is a closed, locked, openable lockable scenery door. The lavatory-door is east from lavatory-room and west from first-class. Understand "door" or "lavatory" or "gap" or "gaps" or "light" or "material"  or "wood" or "laminate" as the lavatory-door. The printed name of the lavatory-door is "lavatory door". The description of the lavatory-door is "This is an ill-fitting door made of some light material. It lets in light in gaps all around it, and is covered in wood laminate[if the lavatory-door is locked]

It's currently locked shut by a latch on the nearby wall[end if]."

Instead of searching the lavatory-door:
	say "It's hard to see through any of the gaps. Otherwise, this is just a normal door."

The lavatory-latch is scenery in lavatory-room. The printed name of the lavatory-latch is "latch". Understand "latch" as the lavatory-latch. The description of the lavatory latch is "This is a curious-looking latch mounted on the wall; it seems to lock and unlock the lavatory door when you turn it. It is currently [if the lavatory-door is locked]locked[otherwise]unlocked[end if]."

Unlocking keylessly is an action applying to one thing. Understand "unlock [something]" as unlocking keylessly. Understand "unlock [a
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
		say "That's not something you can unlock.";
	otherwise if the noun is unlocked:
		say "That's already unlocked!";
	otherwise if the curious-tool is held by the player:
		if the tool-mode of curious-tool is lockpick:
			try unlocking the noun with the curious-tool;
		otherwise:
			say "Your tool is not currently set to 'lockpick' mode.";
	otherwise:
		say "You don't have anything to unlock that with."
		

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
		say "That's not something you can lock.";
	otherwise if the noun is unlocked:
		say "That's already locked!";
	otherwise if the curious-tool is held by the player:
		if the tool-mode of curious-tool is lockpick:
			try locking the noun with the curious-tool;
		otherwise:
			say "Your tool is not currently set to 'lockpick' mode.";
	otherwise:
		say "You don't have anything to unlock that with."
		

Instead of turning the lavatory-latch:
	if the lavatory-door is locked:
		say "You turn the latch, unlocking the door.";
		now the lavatory-door is unlocked;
	otherwise if the lavatory-door is unlocked:
		if the lavatory-door is open:
			say "You'll have to close the door first before you can lock it.";
		otherwise:
			say "You turn the latch, locking the door.";
			now the lavatory-door is locked.

first-class is a room in train-region. The printed name of first-class is "First Class". The description of First-Class is "This is a comfortable-looking car with wide seats, each with their own table. 

You can return [boldwest] to the lavatory, or go [boldsouth] to the Second Class car.[deliverstatement]"

Section 1- Maeve

Maeve is a woman in first-class. "A woman who looks just like Officer Mefe is here, but dressed in a rhinestone jumpsuit." The description of Maeve is "This woman looks surprisingly like Officer Mefe. But she is dressed much more glamorously, with a rhinestone jumpsuit enormous sapphire earrings."

[maeve is sitting in front of dedication to maeve, honored as a pioneer in navigation]

Section 2 -Arthur

Arthur is a man in first-class. "A bearded man with thick glasses and a slightly dirty plaid shirt is sitting here with an annoyed look on his face. He clutches a [arthur-briefcase]."

The arthur-briefcase is carried by arthur. Understand "brief" or "case" or "briefcase" or "suitcase" as the arthur-briefcase. The printed name of the arthur-briefcase is "briefcase".

Chapter 3 - Second class

train-door is a closed openable scenery door. Train-door is south from first-class and north from second-class. Understand "compartment" or "door" as the train-door. The printed name of the train-door is "compartment door".

second-class is a room in train-region. The printed name of second-class is "Second Class".  The description of second-class is "A corpse is here on the floor. You can return [boldnorth] to the First Class car."

The train-corpse is scenery in second-class. Understand "corpse" or "body" or "dead" or "daffyd" as the train-corpse. The printed name of the train-corpse is "corpse".

Section 1 - Mari

Mari is a woman in second-class. "A frazzled-looking young courier, wearing her uniform, is pacing back and forth in the train car."

Section 2 -Elen

[stern, emotionless-trying, but failing, is actually a celebrity]

Elen is a woman in second-class. "The train attendant keeps watch here with a stern but troubled face."

Chapter 4 - Statement definitions and mechanics

Statement-region is a region. Statement-region is in murder-region.

A person has a person called the doppelganger. The doppelganger of a person is usually emrys-weaver.

Playerswapped is a truth state that varies. Playerswapped is false.

To playerswap (current - a person):
	now the player is doppelganger of current;
	now playerswapped is true;

Before singleuttering:
	if the player is in first-class or the player is in second-class:
		say "Because there are multiple people present, you'll have to specify whom you'd like to say it to." instead;

Ceasing is an action applying to nothing. Understand "stop" as ceasing.

Carry out ceasing:
	if playerswapped is true:
		now the player is emrys-weaver;
		now playerswapped is false;
		try looking;
		
Statement-quip is a quip. The preview of Statement-quip is "Would you mind giving me your statement?"

Maeve heeds statement-quip. Arthur heeds statement-quip. Mari heeds statement-quip. Elen heeds statement-quip.

The targetresponse of statement-quip is "Sure. It was just like this..."

Report uttering statement-quip to someone:
	playerswap the second noun;

To say deliverstatement:
	deliver statement-quip;

Chapter 4 - Maeve statement world

Luxury-apartment is a room in statement-region.
Fake-maeve is a woman in luxury-apartment.  the doppelganger of maeve is fake-maeve.

Section 1 - Author Maeve's apartment 

[we see this twice, once rich and once faux-rich. consider making two apartments].


Chapter 5 - Professor Arthur statement world

Bio-lab is a room in statement-region.

fake-Arthur is a man in bio-lab. The doppelganger of arthur is fake-arthur.

Section 1 - Biolab

Chapter 6 - Courier Mari statement world

City-streets is a room in statement-region.

Fake-mari is a woman in city-streets.

The doppelganger of mari is fake-mari.

Section 1 - City streets


Chapter 7 - Attendant Elen statement world

train-locker is a room in statement-region.
Fake-elen is a woman in train-locker.

The doppelganger of elen is fake-elen.

Section 1 - Locker room

[The whole dimension should end with the asking how they found you at the last second, then someone saying it was automatically added by computer, then them recognizing who you are at the last second]

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

Understand "Look behind [something]" or "go behind [something]" as looking under.

Instead of climbing a supporter:
	try entering the noun;

Understand "kick [something]" as attacking.

Chapter 2 - Responses for the game

The block vaguely going rule response (A) is "What direction do you want to go?"
 The can't take yourself rule response (A) is "[if clone-you is enclosed by the location of the player]Your clone[setcloneact] might not like that, and it's kind of weird[otherwise]You give yourself a big hug[end if]."

 The can't take other people rule response (A) is "[if the noun is a man or the noun is a woman]People[otherwise]Animals[end if] aren't possessions, so you can't take them."
 The can't drop yourself rule response (A) is "Never let go of yourself."
 The can't eat unless edible rule response (A) is "You've learned from long experience not to eat anything that you're not sure is food.".

Instead of eating the player:
	say "You chew on yourself a little. It's a nervous habit."

 The examine undescribed things rule response (A) is "You don't see any interesting details."
 The standard looking under rule response (A) is "You don't find anything underneath [the noun]."

The block showing rule response (A) is "You don't provoke a reaction."
	
The block throwing at rule response (A) is "You never know when you might need something; better not to throw it."
	
The block attacking rule response (A) is "You'll resort to violence when you have to. But not right now."

The kissing yourself rule response (A) is "You already love yourself quite a bit."
	
The block kissing rule response (A) is "This is better imagined than attempted."

The standard report waiting rule response (A) is "[if clonesubmerged is false and clone-you is enclosed by the location]You wait for a bit, watching your clone.[otherwise]You wait, taking your time.".

The report touching yourself rule response (A) is "You feel like skin, meat and bones."
The report touching other people rule response (A) is "This isn't a game about wandering hands."
The report touching things rule response (A) is "You don't gain any useful tactile information from your attempt."
The can't pull people rule response (A) is "You can't find a good way to pull efficiently. Or politely, for that matter."
	
The can't push people rule response (A) is "There are better ways to deal with people than pushing."

The can't turn people rule response (A) is "Turning people is not a necessary part of this game."
	
The innuendo about squeezing people rule response (A) is "You tried that with others, once, to disastrous results. Never again."
	
The block burning rule response (A) is "As the crewmember of a starship, you've long eschewed fire except in necessity."
The block waking up rule response (A) is "Isn't all of life a dream?"
The block thinking rule response (A) is "You take a step back and try to remember your goals."
The report smelling rule response (A) is "You have difficulty smelling things, most days."
The report listening rule response (A) is "It's hard to pick out any unusual sounds that you haven't already noticed." 
The report tasting rule response (A) is "Tasting things is a last resort. And you're not even close to needing to do that."	
The block cutting rule response (A) is "Cutting things might render something useful inoperational. Better to not.".
 
The parser error internal rule response (E) is "I didn't understand the object in that command.";

The parser error internal rule response (X) is "You forgot to enter a command.";

The parser error internal rule response (N) is "I didn't understand the first word or two that you typed."; 

The parser error internal rule response (B) is "I understand simple sentences best; I believe you just want to ";[fix this and the next one]

The parser error internal rule response (C) is "I understand a simple set of commands; I believe you just want to (go)";
	
The report jumping rule response (A) is "You jump up into the air fairly athletically before landing."

The block tying rule response (A) is "You will rarely, if ever, need to tie anything. There's no need to do so right now."

The block drinking rule response (A) is "Drinking unusual beverages is not one of your pastimes."
The block saying sorry rule response (A) is "Feeling guilty for something?"
The block swinging rule response (A) is "Swinging isn't the best option here."

The can't rub another person rule response (A) is "That might get you in trouble."

The block buying rule response (A) is "Any financial transactions you have can be accomplished by the physical transfer of legal tender."
The block climbing rule response (A) is "You don't see a clear path upwards."

The block sleeping rule response (A) is "Despite the craziness of the day, you're not tired yet.".

The can't go that way rule response (A) is "It doesn't look like you can go that way."

Asking someone for something is chatty behavior. Telling someone about something is chatty behavior. Answering someone that something is chatty behavior. Asking someone about something is chatty behavior.

Instead of chatty behavior:
	say "In this game, conversation is handled by SAYING a topic TO another person. Available topics can be seen by typing TOPICS, or just T."

Part 2 - Special kinds of responses
	
Instead of searching a person:
	say "That's not really something you feel comfortable with."
	
Swimming is an action applying to nothing. Understand "swim" as swimming. 

Carry out swimming:
	say "You don't swim at all, since your recorder could get wet."

xyzzying is an action applying to nothing. Understand "xyzzy" or "plugh" as xyzzying. 

A room can be xyzzypossible or not xyzzypossible. A room is usually not xyzzypossible.

frankytrue is a truth state that varies. Frankytrue is false.

Carry out xyzzying:
	now frankytrue is false;
	if frankenstein is in the location:
		if franken-confusion is targetgiven:
			now frankytrue is true;
	repeat with current running through  rooms: 
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

Carry out dancing:
	say "Unfortunately, you specifically have been banned from dancing since the ship's last Christmas party.";


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

Test firstgareth with "e/say consolation/n/n"

Test pharaoh with "n/n/look under organ/s/e/look under rug/w/w/look under comb/e/take token"

Test dracula with "n/get all from bookshelves/give advenit to dracula/pull stop/give sinistram to dracula/push stop/give gyra to dracula/take token"

Test creature with "s/w/say communicate/e/n/say interpreter/take blue/s/w/say retry/e/s/give book to frankenstein/n/w/give staff to creature/take token"

Test yeti with "e/e/say mistaken/open wardrobe/take coat/take mannequin/take shoes/put coat on mannequin/put shoes on mannequin/give mannequin to yeti"

Test frank with "w/u/e/say innocent/say identity/touch orb/g/g/g/g/w/d/s/say xyzzystein"

Test wolf with "n/u/w/say safety/e/d/e/take mask/open wardrobe/take handcuffs/w/s/s/x flowers/take wolfsbane/n/n/u/w/give mask to wolf/give handcuffs to wolf/give wolfsbane to wolf/take token"

Test ghost with "e/e/touch ball/g/take token"

Test obol with "test firstgareth/test pharaoh/test dracula/test creature/test yeti/test frank/test wolf/test ghost/w/d/s/s/s/w/n/e/put all tokens in machine/take obol"

Test tool with "w/s/w/n/n/take tool"

Test charon with "s/s/e/e/n/e/give obol to charon"

Test allhaunt with "test obol/test tool/test charon"

Test clonesummon with "e/push bar/take bar/e/s/x pool/say reflecting/say assistance"

Test movestone with "n/push block/z/push block"

Test useplank with "n/take plank/s/s/e/put plank on rail/e/z/z/e/turn wheel"

Test singing with "e/x engravings/sing d/sing d/sing f/sing g/sing g/e"

Test spiring with "w/w/take plank/w/n/e/put bar in supports/put plank on bar/stand on plank/jump/z/z/set tool to flashlight/u"

Test endgareth with "x plaque/take toy/d/w/w/w/w/w/s/give toy to gareth/say dedication"

Test allgareth with "test allhaunt/test clonesummon/test movestone/test useplank/test singing/test spiring/test endgareth"

Part 3 - Checking missing stuff

Alldescriptioning is an action out of world. Understand "alldesc" as alldescriptioning.

Carry out alldescriptioning:
	repeat with current running through things:
		if current is not nothing:
			say "[current]: [description of current][paragraph break]"

Part 4 - Temporary beta-testing stuff

Chapter 1 - The fairy


The exposition fairy is a talkative woman in Hangar-room. "The exposition fairy is here, eager to dump some exposition[deliverexplanation]." The description of the exposition fairy is "She is a small woman with vibrant rainbow wings, which aren't implemented because she's getting taken out as soon as testing is over. Try TALK TO fairy if you don't know how conversation works in this game, or SAY EXPLANATION if you do." Understand "wand" or "wings" or "wing" as the exposition fairy.

To say deliverexplanation:
	deliver fairy-explanation;
	
Fairy-explanation is a quip. The printed name of Fairy-explanation is "Explanation". Understand "explanation" as fairy-explanation. The preview of fairy-explanation is "Hey, can you tell me everything about the game?" The target of fairy-explanation is the exposition fairy.

The targetresponse of fairy-explanation is "'Of course! This game will eventually have a prologue where it says that you, Emrys Weaver, are the Storyweaver of the Starship Eilifligr, a relatively unimportant position on a seedship carrying colonists to a distant planet. Your ship is badly damaged and everyone is going to die. Strange rips or tears in space have opened up in different rooms on the ship. You are the only one who can see them, and the only one who can go through them.

'You are wearing a recorder that records all audio you hear, and can help with translation. It's what enables your conversation system. You can examine the recorder for more info.

'To start this demo, go to the [boldeast]. The tear in space to the [boldnorth] of you in this current room, the Hangar, is very underimplemented; however, it contains one machine that will be necessary for you to complete the testing of this game. Similarly, there is a tool in the tear in space to the [boldwest] of you that will be used in one or two places in the demo.'

'Good luck!' she says, and waves her wand at you."

Chapter 2 - Teleporting

haunted-teleporting is an action applying to nothing. Understand "xyhaunt" as haunted-teleporting.

Carry out haunted-teleporting:
	now the player is in the Parlor-room;

napoleon-teleporting is an action applying to nothing. Understand "xywax" as napoleon-teleporting.

Carry out napoleon-teleporting:
	now the player is in the napoleon-room;

shore-teleporting is an action applying to nothing. Understand "xyshore" as shore-teleporting.

Carry out shore-teleporting:
	now the player is in the distant-shore;

Book 5 - Notes

Part 1

Part 2

Part 3

Part 4

Part 5 

Part 6 - Haunted Mansion

[add reading to books]


[player MUST die to save the ship!]
