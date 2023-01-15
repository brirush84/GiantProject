"Never Gives Up Her Dead" by Brian Rushton

Volume 1 - Pre-game setup

When play begins:
	say "You are Emrys Tisserand, Storyweaver of the Starship Eilifligr, on a quest to establish a new colony with thousands of passengers in cold storage. For three months, it has been your job to entertain the crew with your tales while recording the ship's history. Storyweavers have the gift, they say, and bring luck to everyone aboard. 

But your starship has suffered catastrophic damage from a meteoric collision.

This is the story of how you die."

Book 1 - Metadata, out of world actions and extensions

Part 1 - Metadata

Chapter 1 - Game essentials

Section 1 - Genre, description, etc

The story genre is "Science Fiction". The story description is "Hop through dimensions to save your ship." The story creation year is 2022. The release number is 7.

Section 2 - Increasing memory sizes

Use MAX_PROP_TABLE_SIZE of 300000.

Part 2 - Out of world actions

Abouting is an action out of world. Understand "About" as abouting. 

Carry out abouting:
	say "Never Gives Up Her Dead is a large-scale text adventure. For help, type HELP. For credits, type CREDITS."

Helping is an action out of world. Understand "Help" as helping.

Carry out helping:
	say "In-game hints are not yet available. You should have received a walkthrough with the game file.

Speech works by typing SAY [bracket]a topic[close bracket], or SAY [bracket]a topic[close bracket] TO [bracket]a person[close bracket]. Each topic can only be said to one person. All topics that are useful in the current region of the game you are in are listed in your topic inventory, accessible by typing TOPICS or T. To get all topics in all areas, type AT[if the player is in murder-region].

While solving the murder mystery, all clues are available as topics of conversation for all the suspects.

The special clue called Statement will transport you into a suspect's past when used. To leave early, type STOP[end if]."

[enable a mode where the preview of a topic is always printed when it is delivered?]

Crediting is an action out of world. Understand "Credits" as crediting. 

Carry out crediting:
	say "This game was written by Brian Rushton/Mathbrush using Inform 7 (by Graham Nelson). Beta testers include Amanda Walker, the Xenographer, John Ziegler, Jade, Christopher Merriner, and LAST_TESTER_HERE. Hanon Ondricek gave helpful advice about the concept and title.

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

Before going through a space-tear:
	say "You are engulfed in a [if the noun is red]red[otherwise]green[end if] haze, losing all sense of direction. Slowly the haze clears."

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
		if current heeds a quip carried by the player:
			now current is talkative;
		otherwise:
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
	otherwise if the second noun heeds the noun:
		if the second noun does not forsake the noun:
			say "'[preview of noun]'[paragraph break]";

All-topicing is an action applying to nothing. Understand "AT" as all-topicing.

Carry out all-topicing:
	repeat with current running through quips carried by the player:
		now target of current is talkative;
	try topicing;

The standard singleuttering rule response (B) is "Your recorder beeps. This is a message meant for [The target of the noun], who isn't here.";

The advice on talking to just one person rule response (A) is "[We] [can] see just the topics for one person at a time by TALKing TO that person[first time]

To say a specific topic to someone, type SAY the topic TO that person[only]."

[Replacing some code that doesn't work when becoming a suspect]
A quip can be once-delivered or not once-delivered. A quip is usually not once-delivered.

To clear the flags:
	let somethingDelivered be 0;
	repeat with currentquip running through once-delivered deliveryflagged quips:
		now currentquip is not deliveryflagged;
	repeat with currentquip running through deliveryflagged quips:
		say "[bracket]New [ClueOrTopic of currentquip] - [currentquip][close bracket][roman type]";
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

[squips are used for suspects: suspect-quips]
A squip is a kind of quip. 

Part 5 - Player character

Chapter 1 - Name and identity

[maybe Angharad instead]

Emrys-weaver is a person. Understand "emrys" or "weaver" or "storyweaver" or "Tisserand" as emrys-weaver.

The player is emrys-weaver. 

The description of emrys-weaver is "You are Emrys Tisserand, and you are the active Storyweaver of the seedship Eilifligr. It is your job to preserve and share the history of this people in the form of stories. 

They say that Storyweavers have the Gift, but what that gift is, all disagree on. For most of your career, you haven't noticed anything strange or supernatural about you. But that's changed today."

Chapter 2 - Recorder

The all-recorder is worn by the player. The printed name of the all-recorder is "recorder". Understand "recorder" or "slender" or "contraption" or "earpiece" or "metal" or "microphone" as the all-recorder.

[make turning off the recorder put all quips out of scope]

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
		say "This [aren't] the right time to play.";

Instead of taking the action-figures:
	say "Gareth would get very upset. This doesn't seem like the time for that."

Instead of kissing gareth:
	say "You give Gareth a hug. He lets you, and pats your hand absent-mindedly."

Instead of physicality when the noun is action-figures:
	say "Gareth asked you to leave these alone."

[implement individual movie posters?]

The softer-lighting is intangible scenery in the psych-room. The printed name of the softer-lighting is "softer lighting". Understand "softer" or "lighting" as the softer-lighting. The description of the softer-lighting is "The lighing in here is softer than the rest of the ship, but you can't discern its source."

Understand "furnishings" as the psych-couch. Understand "furnishings" as the psych-rug.

The psych-rug is scenery in the psych-room. Understand "comfortable" or "rug" as the psych-rug. The printed name of the psych-rug is "comfortable rug". The description of the psych-rug is "This a comfortable rug that helps mute some of the clangs and echoes typical in spaceships."

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

Section 2 - Tear in space

The psych-tear is a space-tear. "[one of]The current psychologist on duty, Gareth Djomo, is in here, huddled on his couch. Oblivious to the chaos outside, or perhaps overwhelmed by it, he stares off into the corner. 

There is a tearing sound, and the fabric of reality rips open to the [boldnorth]. Out of the tear comes a bizarre little creature that looks like a kind of robotic monkey. It leaps up onto Gareth's desk and grabs one of the action figures, then rushes back into the tear in space. [Gareth] doesn't seem to notice any of this. Could this be the weaver's gift?

You'll have to chase that creature down; but in the meantime, what are you going to do about Gareth? He's in a bad spot[or][if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in psych-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the psych-tear is red]red[otherwise]green[end if][stopping]." The psych-tear is north of psych-room and south of the front-room.

Chapter 3 - Engineering room

The engineering-room is west from hangar-room. The engineering-room is in ship-region. The printed name of the engineering-room is "Engineering Room". "You can return to the hangar to the [boldeast]."

The engineering-tear is a space-tear. "[if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in engineering-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the engineering-tear is red]red[otherwise]green[end if]." The engineering-tear is north of engineering-room and south of device-room. 

Chapter 4 - Bridge, flight control

The transport-tube is an open unopenable scenery door. The transport-tube is up from hangar-room and down from flight-room.The printed name of the transport-tube is "transport tube". Understand "transport" or "tube" or "elevator" as the transport-tube. The description of the transport-tube is "The transport tube is completely safe to use. Much better than the old model; you know a guy who only has three fingers on his right hand because of it." 

Bridge-region is a region. Bridge-region is in ship-region.

The bridge-background is a plural-named distant backdrop. The printed name of the bridge-background is "crew". Understand "crew" as the bridge-background. The bridge-background is in bridge-region. The description of bridge-background is "All the crew are busy. You can find the rest by walking around the bridge."

The bridge-stations is a plural-named distant backdrop. The printed name of the bridge-stations is "stations". Understand "station" or "Stations" as the bridge-stations. The bridge-stations is in bridge-region. "The other stations are further away. You can reach them by walking around the bridge."

The flight-room is in bridge-region. The printed name of the flight-room is "Bridge: Flight Controls". The description of the flight-room is "The bridge of the ship is massive, spreading around you in multiple directions, each spot with its own crew and station. This is the flight control section, featuring a large console covered in lights and buttons, as well as [a murder-orient].

The transport tube leads back [bold type]down[roman type] to the rest of the ship."

[FIX THIS LATER]
Instead of going nowhere from flight-room:
	say "[bracket]Most of this area hasn't been implemented yet. The part I'm asking testers to look at is through the tear in space to the [boldnorth].[close bracket][paragraph break]"

Mefe is a woman in flight-room. "Officer Mefe is here, frantically trying to restore navigation function to the console." The description of Mefe is "Flight Officer Mefe Azimov is a short woman with wavy black hair tucked under a cap. While trying to repair the controls, she constantly scans the room, looking for other problems to fix, but finding too many to handle.". Understand "flight" or "officer" as Mefe.

The flight-console is a scenery supporter in flight-room. The printed name of the flight-console is "flight console". Understand "flight" or "console" or "wide" or "wing" or "shaped" or "button" or "buttons" or "setting" or "settings" or "wing-shaped" or "numerous" or "blinking" or "light" or "lights" or "switch" or "switches" as the flight-console. The description of the flight-console is "This is a wide, wing-shaped flight console with numerous blinking lights and switches."

The murder-orient is a thing on flight-console. The printed name of the murder-orient is "[if the murder-orient is examined][italic type]Murder on the Orient Express[roman type][otherwise]vintage mystery novel[end if]"

Understand "murder" or "book" or "books" or "orient" or "express" or "vintage" or "mystery" or "novel" or "ancient" as the murder-orient.

The description of the murder-orient is "Mefe has a habit of reading ancient books during slow times, of which this is not one. This is a murder mystery called [italic type]Murder on the Orient Express[roman type]."

Instead of physicality when the noun is murder-orient:
	say "Officer Mefe shouts, 'Hey, wait until after we're not on a crash-course with death before you mess with my stuff, okay?'"

Instead of physicality when the noun is flight-console:
	say "Mefe says, 'Watch it! I'm trying to correct our flight path!'"

The flight-cap is worn by Mefe. Understand "cap" as the flight-cap. The printed name of the flight-cap is "cap". The description of the flight-cap is "This cap signifies Mefe's rank as Officer."

The flight-tear is a space-tear. "[first time]As you come out of the transport, you arrive on a scene of chaos. 

Flight Officer [Mefe] Azimov is frantically operating the flight console. 'Come on, come on!' she says, trying combination after combination of buttons and settings.

While you watch, a strange robotic monkey-like creature clambers out from behind the console. It holds a sparking computer chip in its hand.

It issues a series of beeps, and the space in front of you to the north rips open violently, space itself tearing. It dives through the tear. Officer Mefe doesn't seem to notice anything at all[deliverchipless].

[only][if the player is in ship-region]A tear in space has opened up here[otherwise]The tear in space leading back to the ship is here[end if], to the [if the player is in flight-room][boldnorth][otherwise][boldsouth][end if]. It is glowing [if the flight-tear is red]red[otherwise]green[end if]." The flight-tear is north of flight-room and south of lavatory-room.

To say deliverchipless:
	deliver chipless-quip;
	
Chipless-quip is a quip. The printed name of chipless-quip is "Chipless". Understand "chipless" as chipless-quip. The target of chipless-quip is Mefe. The preview of chipless-quip is "A robot monkey ran off with a chip from your computer!"

The targetresponse of chipless-quip is "'Sorry, Emrys, I don't have time to talk about...wait, did you say something took a chip? A monkey?' You nod.

She leans over the console. 'The little gremlin! Emrys, I've got to get this ship under control or we're all going to die. Where did it go?'

'Into that,' you say, pointing towards the large rip in space. 

Mefe stares, then looks back at you. 'I can't see it.' Then her face clears, and she says, 'It must be your weaver's gift. Something is trying to help us. My great-grandma used to be a weaver, and she'd tell us stories like this. Emrys, can you grab that chip for me? I'll do the best I can here while you're gone.'

'Don't worry, Mefe, I'll do everything I can to get it back,' you say."


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

[setttings could include counting number of life forms in the area, altering electronics, breaking glass, unscrewing]

[Make its first setting beep whenever there is an energy core, and put energy cores in quiet areas of the game.]

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

The tightly-wrapped linen bandages are worn by pharaoh. Understand "magnificent" or "yellow" or "yellowed" or "threadbare" or "age" as the tightly-wrapped linen bandages. The description of the tightly-wrapped linen bandages is "While these bandages are yellowed and aged, they appear to have once been magnificent."

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

Dracula smiles with relief, his long fangs reflecting the flickering light. 'Thank you, my friend. I love my bats, but sometimes I need a little help with them when I'm trying to focus.' He then returns to his desk. 

Before he starts back on his work, he quietly throws you a red token."

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

She looks over at you with clear intelligence in her expression but then turns back. It's hard to tell if she'd understand you[only]." The printed name of the lagoon-creature is "lagoon creature". Understand "creature" or "black" or "lagoon" or "from" or "cross" or "humanoid" or "enormous" or "scaled" or "humanoid" or "being" as the lagoon-creature.

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

The stone-expanse is scenery in game-room. The printed name of stone-expanse is "lumpy stone". Understand "expanse" or "lumpy" or "floor" or "stone" as the stone-expanse.

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

The shot-arrows are part of the frozen-target. Understand "shot" or "arrows" as the shot-arrows. The printed name of the shot-arrows is "shot arrows". The description of the shot-arrows is "All the arrows are clustered near the center."

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
		say "[We] [don't] have anything to use as handcuffs."

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

The front-room is a room. The printed name of the front-room is "Front Yard". The description of the Front-room is "You are standing before an asymmetrical, well-preserved Victorian mansion with a tower on one side and steps up to a door on the other. The mansion gleams, despite the lack of apparent light sources. The sky above is dark and overcast. An overgrown flowerbed lies in stark contrast to the tidy-looking mansion.

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

Dark-pool is south from ruined-courtyard. Dark-pool is in castle-region. The printed name of dark-pool is "Dark Pool". "You are in a dank cave. It looks older than the rest of the castle, hewn roughly out of stone. This room frightens you. It's hard to say why, exactly, but it may be due to the pool of luminescent green liquid in the center of it. Exits lead [boldeast] and [boldnorth][first time].

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

A clone-you is a woman in dark-pool. "[if clonesubmerged is true]Your reflection still floats in the pool[otherwise]Your clone is here, watching you[end if].". The printed name of clone-you is "[if currentactee is clone-you ]herself[otherwise if clonesubmerged is true]reflection[otherwise]clone[end if][if currentactor is clone-you][setcloneact][end if]". The indefinite article of clone-you is "your". Understand "image" or "reflection" or "clone" or "shadow" or "copy" or "curious" or "dark" or "eyes" or "resolute" or "jaw" as the clone-you. The description of clone-you is "[The clone-you] looks exactly like you: curious, dark eyes; resolute jaw; and increasing years[if the number of things held by clone-you > 0].

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

Before the player doing something:
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
		say "You clone heads out to [the noun]."

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
	
The rucksack is an openable closed container. The rucksack is carried by the player. Understand "ruck" or "sack" or "backpack" or "back pack" as the rucksack. The description of the rucksack is "This is your standard-issue rucksack you were given on your first day on the Starship Eilifligr."

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

The outside-treasure is east from treasure-room. The outside-treasure is in castle-region. The printed name of outside-treasure is "Outside". "It is bright and brilliant outside, a complete contrast to the gloominess of the other areas of the castle. You are surrounded by vibrant vegetation. The sun is bright, and a great feeling of warmth and comfort surrounds you[first time][triggercloneout][only].

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

'You've beat the game,' she says. 'This was the first one the author made, years ago. He made better ones since then, but I'm glad this is the one you saw. 

'For most players, the game would end there. But you're looking for something up there, aren't you?' she says, pointing at the spire. 'I think we can make it. Let's see if we can find a way up.' You nod"

The outside-scenery is distant scenery in outside-treasure. The printed name of the outside-scenery is "ruined castle". Understand "ruined" or "ruins" or "ruin" or "tower" or "hole" or "spire" or "roof" or "holes" as the outside-scenery. The description of the outside-scenery is "Above you rises the ruins of a castle. It still has a tower left standing, with holes in the roof."

Instead of going nowhere from outside-treasure when the noun is up:
	say "It'll probably be easier to get into the spire from inside the castle than outside. There's no clear way up out here."
	
Part 7 - Murder mystery dimension

The murder-region is a region. The train-region is a region. The train-region is in murder-region.

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

The standard topicing rule response (B) is "[bold type]Clues and Questions[roman type]";

Carry out linking it to:
	say "For some reason or another, you can't find any contradictions in these two clues.";

The advice on talking to just one person rule response (A) is "[We] [can] see just the topics for one person at a time by TALKing TO that person[if the player is in murder-region].

Clues can be combined to point out inconsistencies in suspect's statements. You can LINK a clue TO another clue to combine them into one[end if]."

After deciding the scope of the player when the player is not emrys-weaver: 
	repeat with current running through quips enclosed by emrys-weaver:
		place current in scope;
		
Before uttering something to someone when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO.[close bracket][paragraph break]" instead;
	
Before singleuttering something when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO.[close bracket][paragraph break]" instead;

Check topicing when the player is not emrys-weaver:
	say "[bracket]Because you are in a flashback, all conversation is handled by TALK TO.[close bracket][paragraph break]" instead;

Chapter 1 - Lavatory

The lavatory-room is a room in train-region. The printed name of lavatory-room is "Lavatory". "You find yourself in a very cramped lavatory that reminds you of the head in the first ship you served on. The walls are some kind of wood-laminate, pretty cheap-looking.

You would assume that this lavatory has the usual amenities, but the [flight-tear] to the [boldsouth] takes up almost the entire room.

The flimsy lavatory door opens to the [boldeast][if the lavatory-door is locked]. It is currently held shut by a latch on the nearby wall[first time]

There's no sign of the monkey-like creature you followed here[only]."


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

The police-badge is a thing in lavatory-room. "[if police-badge is not oncecarried]What appears to be a thick leather wallet is lying on the floor near the door[otherwise]The [police-badge] is lying on the floor here[end if]."

The printed name of the police-badge is "[if badgeopened is false]leather wallet[otherwise]detective badge[end if]". Understand "small" or "police" or "detective" or "badge" or "strange" or "leather" or "thick" or "wallet" as the police-badge. The description of the police-badge is "[if the police-badge is open]This has the form of a leather wallet, with your face with title 'Detective Emrys Weaver' on a card in a window on one side, and a metallic pin on the other saying 'Precinct 13'.[otherwise]This is a small leather wallet, or at least it looks like a wallet. It's currently closed.[end if]"

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

The detective-card is part of the police-badge. The printed name of the detective-card is "identification card". Understand "identification" or "ident" or "id" or "card" or "photo" or "photograph" as the detective-card. The description of the detective-card is "It says, 'Detective Emrys Weaver, and has your picture; it looks like an altered version of your crew photo from two years ago."

The plastic-window is part of the police-badge. The printed name of the plastic-window is "plastic window". Understand "plastic" or "window" as the plastic-window. 

The description of the plastic-window is "This is part of the badge, allowing your identity card to be displayed easily."

Instead of taking the detective-card:
	say "It's firmly ensconced in its plastic window."

The metallic-pin is part of the police-badge. Understand "metal" or "metallic" or "pin" or "fleur-de-lys" as the metallic-pin. The printed name of the metallic-pin is "metallic pin". The description of the metallic-pin is "This metallic fleur-de-lys pin says, 'Precinct 13' on it."

Instead of taking the metallic-pin:
	say "The metallic pin seems adhered quite firmly to the badge; apparently it doesn't come off."

Section 3 - Lavatory door

The lavatory-door is a closed, locked, openable lockable scenery door. The lavatory-door is east from lavatory-room and west from first-class. Understand "door" or "lavatory" or "gap" or "gaps" or "light" or "material" or "wood" or "laminate" as the lavatory-door. The printed name of the lavatory-door is "lavatory door". The description of the lavatory-door is "This is an ill-fitting door made of some light material. It lets in light in gaps all around it, and is covered in wood laminate[if the lavatory-door is locked]

It's currently locked shut by a latch on the nearby wall[end if]."

This is the opening locked lavatory rule:
	if the lavatory-door is locked:
		say "The door is currently locked by a latch.";
		stop the action;

The opening locked lavatory rule substitutes for the can't open what's locked rule when the player is in lavatory-room.

Instead of searching the lavatory-door:
	say "It's hard to see through any of the gaps. Otherwise, this is just a normal door."

The lavatory-latch is scenery in lavatory-room. The printed name of the lavatory-latch is "latch". Understand "latch" as the lavatory-latch. The description of the lavatory-latch is "This is a curious-looking latch mounted on the wall; it seems to lock and unlock the lavatory door when you turn it. It is currently [if the lavatory-door is locked]locked[otherwise]unlocked[end if]."

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
	if the lavatory-latch is closed:
		try turning the lavatory-latch;
	otherwise:
		say "The latch is already unlocked.";

Instead of closing the lavatory-latch:
	if the lavatory-latch is open:
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
			now the lavatory-door is locked.

Before opening the lavatory-door:
	if the police-badge is in lavatory-room:
		if the lavatory-door is unlocked:
			say "The [police-badge] is in the way of the door opening. It usually wouldn't matter, but this is a very cramped room." instead;

Chapter 2 - First car

first-class is a room in train-region. The printed name of first-class is "First Class". The description of First-Class is "This spacious train-car only holds a few, scattered seats, each an overstuffed armchair. The floor is luxuriously carpeted, and brightly-colored silk curtains are drawn back, allowing a full view of the wide picture windows. 

You can return [boldwest] to the lavatory, or go [boldsouth] to [if second-class is unvisited]what seems to be [end if]the Second Class car."

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

The first-windows are plural-named scenery in first-class. The printed name of the first-windows is "windows". Understand "window" or "wide" or "picture" or "windows" as the first-windows. The description of the first-windows is "These windows are huge, several feet across each, with minimal obstructions to the view.

Outside is a moving landscape of snow-covered mountains and forests."

Instead of searching the first-windows:
	try examining the moving-landscape

Instead of opening the first-windows:
	say "They aren't designed to open."

Instead of closing the first-windows:
	say "They aren't designed to open or close."

The moving-landscape is distant scenery in first-class. The printed name of the moving-landscape is "moving landscape". Understand "moving" or "landscape" or "mountain" or "tall" or "mountains" or "dense" or "forest" or "forests" or "deep" or "snowbank" or "snowbanks" or "snow-covered" or "snow" or "outside" or "covered" as the moving-landscape. The description of the moving-landscape is "The moving landscape that you can see through the windows has tall mountains, dense forests, and deep snowbanks. It's hard to look away from."

The bright-curtains are plural-named scenery in first-class. The printed name of the bright-curtains is "brightly-colored curtains". Understand "bright" or "brightly" or "colored" or "silk" or "curtain" or "marble-dyed" or "dyed" or "marble" or "dye" or "fabric" or "warm" or "light" or "colors" or "curtains" or "color" as the bright-curtains. 

The description of the bright-curtains is "These are marble-dyed silk curtains in a variety of warm, light colors. They are drawn back, allowing a full view of the outside landscape."

Instead of opening the bright-curtains:
	say "They are already open."
	
Instead of closing the bright-curtains:
	say "You go to close the curtains, but the view outside captures your fancy, and you hesitate. It's too beautiful out there to shut it all out right now. Besides, the silk fabric would hardly block the light."

Section 1 Maeve

Maeveknown is a truth state that varies. Maeveknown is false.

The Maeve is a female suspect in first-class. "[if maeveknown is false]A woman who looks just like Officer Mefe is here, but dressed in a rhinestone jumpsuit and heavy sunglasses. She is pacing anxiously[otherwise]Maeve is sprawled in one of the armchairs, covering her eyes with one hand and holding her designer sunglasses with the other[end if]." The description of Maeve is "[The maeve] looks surprisingly like Officer Mefe: the same square chin, the same curiously small ears, the same shade of blonde. But this woman is dressed much more glamorously, with a rhinestone jumpsuit, dangly sapphire earrings, and thick sunglasses."

Understand "glamorous" or "anxious" or "blonde" or "blond" or "square" or "chin" or "woman" as Maeve.

The printed name of Maeve is "[if maeveknown is false]glamorous woman[otherwise]Maeve[end if]"

The sapphire-earrings are worn by Maeve. The printed name of the sapphire-earrings is "sapphire earrings". Understand "dangly" or "sapphire" or "sapphires" or "thread" or "lab" or "grown" or "earring" or "ear" or "ring" or "string" or "strings" or "earrings" or "rings" as the sapphire-earrings. The description of the sapphire-earrings is "These earrings are quite long, with several sapphires threaded along strings. The sapphires are very clear; probably lab-grown."

The maeve-sunglasses are worn by Maeve. The printed name of the maeve-sunglasses is "designer sunglasses". Understand "designer" or "logo" or "glass" or "sun" or "sunglass" or "expensive" or "sunglasses" or "heavy" or "glasses" or "designer" or "shades" as the maeve-sunglasses. The description of the maeve-sunglasses is "These heavy-looking sunglasses have a logo on them you can't identify, but they are certainly very expensive."

The rhinestone-jumpsuit is worn by Maeve. The printed name of the rhinestone-jumpsuit is "rhinestone jumpsuit." Understand "rhinestone" or "rheinstone" or "jump" or "suit" or "jumpsuit" or "ankle" or "ankles" as the rhinestone-jumpsuit. The description of the rhinestone-jumpsuit is "This is perhaps the flashiest outfit you've ever seen. Rhinestones are absolutely everywhere. Well, not everywhere--some seem to have fallen off near the ankles[delivermissing].";

WelcomeScene is a scene. WelcomeScene begins when the player is in first-class for the first time.

When welcomescene begins:
	say "The woman looks up at you. 'Look, there was someone in there after all!' she says to the bearded man. 'I told you there was a police officer on board.'

The man frowns. 'She certainly doesn't look like a police officer. Do you have any identification on you?' he asks you."

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
		say "She crouches down, staring between you and the photo. 'Oh, all right,' she says. 'I believe you.' She stands up and steps back a bit.

'I'm sure you've already guessed, and it's true. I am celebrity author Maeve Miller, travelling incognito'--and here she tips her sunglasses down, revealing watery blue eyes, leaning in to whipser--'to avoid the paparazzi. They can be brutal, you know,' she says, nodding. 

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

The description of arthur is "[The arthur] looks to be an older man, with an air of confidence bordering on arrogance. He has a heavy beard and wears thick glasses. His plaid shirt is a bit dirty. He's holding a battered leather briefcase.

 He has some discoloration on his face; some kind of bruise, it seems."

The face-discoloration is part of arthur. The indefinite article of the face-discoloration is "some". The printed name of the face-discoloration is "[if the face-discoloration is examined]bruise[otherwise]discoloration". Understand "face" or "discoloration" or "bruise" or "jaw" as the face-discoloration.

The description of the face-discoloration is "Looking closely as the discoloration on [the Arthur]'s face, you can see it is actually a bruise along his jaw."

Understand "beard" or "heavy" or "bearded" or "man" as arthur. The printed name of arthur is "[if arthurknown is true]Arthur[otherwise]bearded man[end if]".

The thick-glasses are worn by arthur. Understand "glasses" or "thick" or "arthur's" as the thick-glasses. The printed name of the thick-glasses is "[if arthurknown is true][arthur]'s [otherwise]thick [end if]glasses". The description of the thick-glasses is "It looks like [the arthur]'s prescription is quite strong if it requires such thick glasses."

The arthur-briefcase is carried by arthur. Understand "brief" or "case" or "battered" or "briefcase" or "suitcase" or "black" or "leather" or "brass" or "hardware" as the arthur-briefcase. The printed name of the arthur-briefcase is "briefcase". The description of the arthur-briefcase is "[The arthur] is clutching the briefcase tightly, but hasn't opened it. It's a battered black leather briefcase with brass hardware."

The arthur-briefcase is a locked, closed openable lockable container.

The dirty-plaid is worn by arthur. The printed name of the dirty-plaid is "dirty plaid shirt". Understand "dirty" or "slightly" or "plaid" or "shirt" as the dirty-plaid. The description of the dirty-plaid is "This shirt looks like it has been worn several times since it was last washed."

Instead of showing the police-badge to arthur:
	if arthurknown is false:
		say "The man frowns when he sees the badge. 'I see. I suppose you're the best we have available for now. My name is Dr. Arthur Svenson, Professor of Nanobiotics at Textor University. And while I had intended to focus on my research during this voyage, I suppose I can spare some of my time to assist you in your investigation[deliverstatement].'";
		now arthurknown is true;
		now arthur is proper-named;
		if maeveknown is false:
			try showing the police-badge to maeve;
	otherwise:
		say "Arthur grimaces. 'If you don't mind, Detective, I'd rather not waste all of our time on repetitive trivialities. You've already shown me your badge; once should suffice.'"

Chapter 3 - Second class

train-door is a closed openable scenery door. Train-door is south from first-class and north from second-class. Understand "compartment" or "door" or "steel" as the train-door. The printed name of the train-door is "compartment door". The description of the train-door is "This is a steel door that divides the two compartments. Surprisingly, it has no window."

Dafyddknown is a truth state that varies. Dafyddknown is false.

second-class is a room in train-region. The printed name of second-class is "Second Class". The description of second-class is "This cramped car has row after row of molded orange plastic bucket seats. Dim light filters through numerous small, dingy windows. The floor is some kind of rubbery, textured plastic that seems designed to be hosed down every night. 

[if dafyddknown is false]On the floor is the body of a small, slim man with remarkably smooth skin[otherwise]Dafydd's body is on the floor[end if], a trail of blood leaking from under him[one of].[or]. The chip you were looking for lies next to him on the ground.[stopping] You can return [boldnorth] to the First Class car[first time]

The chip that the monkey-like robot took from Mefe's computer lies here, incongruous, next to the corpse. The robot itself is nowhere to be seen[only]."

The weird-chip is scenery in second-class. The printed name of weird-chip is "computer chip". Understand "mefe's" or "chip" or "computer" as the weird-chip. The description of the weird-chip is "The chip that the monkey took looks only lightly damage. Hopefully it will still work when you get it back to Mefe!"

Instead of taking the weird-chip:
	say "[The elen] shakes her head and says, 'No. That's evidence. We can't touch that until we reach the next station and the crime scene technicians can inspect everything. You should know this, officer.'"

The rubbery-floor is scenery in second-class. The printed name of the rubbery-floor is "floor". Understand "floor" or "rubbery" or "rubber" or "texture" or "textured" or "utilitarian" or "sturdy" or "plastic" as the rubbery-floor.

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

The description of the train-corpse is "[if dafyddknown is true]Dafydd was [otherwise]This body belongs to [end if]a short, slender man no older than thirty. He is wearing a tank-top and gym shorts. His skin is pale, although remarkably smooth-looking, and his limbs are stiff and clenched. 

A piece of paper is clenched in his fist. There's something odd about the hand itself, too."

Report examining the train-corpse:
	now package-receipt is held by train-corpse.

The package-receipt is a thing. Understand "receipt" or "paper" or "piece" or "something" as the package-receipt. The printed name of the package-receipt is "receipt". 

The dead-fist is part of train-corpse. Understand "hand" or "fist" or "knuckle" or "knuckles" as the dead-fist. The printed name of the dead-fist is "fist".

The description of the package-receipt is "Clutched in [the train-corpse]'s fist is a receipt for United Carpundia Deliveries, signed by agent Mari Gallagher as the receiving courier[deliverPostal]."

To say deliverpostal:
	deliver postal-quip;
	
Postal-quip is a squip. The printed name of postal-quip is "Postal". Understand "Postal" as postal-quip. The preview of postal-quip is "[The train-corpse] gave a satchel directly to [the mari]."

[maybe instead use elen's statement]

The targetresponse of postal-quip is "[if currenttarget is mari]'Hmm, what's your point?' says [the mari]. 'I take deliveries all of the time.' 

She shifts uncomfortably, but sticks to her story[otherwise if currenttarget is arthur]He looks at you seriously. 'Have you determined what's in the satchel?' he asks.

'I'd prefer not to disclose this at this time,' you say, but he seems perturbed[otherwise if currenttarget is elen]'Interesting,' she says. 'Do you suppose the courier is the murderer?'

'I can't say that at this time,' you answer[otherwise if currenttarget is maeve]'Like a business transaction, right?' asks [the Maeve]. 'It's not like they were, dating or something, right?'

'There is no indication of a relationship,' you answer. She looks relieved[end if]."

The description of the dead-fist is "The knuckles on [the train-corpse]'s hand are discolored. You've seen this before, in basic training. He must have punched someone, and hard[deliverpunch]."

To say deliverpunch:
	deliver punch-quip;
	
Punch-quip is a squip. The printed name of punch-quip is "Punch". Understand "Punch" as punch-quip. The preview of punch-quip is "[The train-corpse] recently punched someone hard."

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

Understand "young" or "frazzled" or "courier" or "woman" or "anxious" or "gallagher" as mari. The description of Mari is "[The mari] is a young woman with a matching cap and satchel that say 'United Carpundia Deliveries'. She doesn't seem quite as upset as she should be, given the presence of a dead body."

The company-cap is worn by mari. The printed name of the company-cap is "cap". Understand "company" or "cap" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" as the company-cap. The description of the company-cap is "This is a slightly over-sized baseball cap that says 'United Carpundia Deliveries' on it and shows a logo that kind of looks like a carboard box floating in the Milky Way."

The company-satchel is a closed openable container. The company-satchel is worn by mari. The printed name of the company-satchel is "satchel". Understand "company" or "satchel" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or  "black" or "discrete" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" as the company-satchel. The description of the company-satchel is "The satchel is black and discrete, carrying the United Carpundia Deliveries Logo of a cardboard box floating in the Milky Way."

The signed-book is in the company-satchel. The printed name of the signed-book is "signed book". Understand "signed" or "package" or "book" or "ceri" or "torn" or "cover" or "front" or "autograph" as the signed-book. The description of the signed-book is "The package that was in [the Mari]'s satchel has fallen out and ripped open, revealing a book. It currently lays sprawled on the floor, open to the front cover which says, 'To my biggest fan Ceri. Love, Maeve Miller'".

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
	say "When you walk in, the courier looks up, startled, and the attendant looks you up and down. She says, 'You are the police officer, I presume? Do you have any identfication?'"

Before uttering something to mari:
	if mariknown is false:
		say "The train attendant intervenes. 'Please do not discuss anything until proper identification has been established,' she says." instead;

Section 3 - Elen

[stern, emotionless-trying, but failing, is actually a celebrity. she is mr bulstrode with the dark secret of stealing.]

Elenknown is a truth state that varies. Elenknown is false.

The Elen is a female suspect in second-class. "[if elenknown is true]Elen, the train attendant, [otherwise]The train attendant [end if]keeps watch here with a stern but troubled face."

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
		say "You show the badge to the train attendant. She inspects it carefully, taking so long that your arm gets tired holding out the badge. Then she nods. 'Very well,' she says. 'I can allow you to take charge of this crime scene investigation. However, I must remind you that no physical evidence can be touched until the crime tech team meets us at Pobydd Street.'

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

A person has a person called the doppelganger. The doppelganger of a person is usually emrys-weaver.

Playerswapped is a truth state that varies. Playerswapped is false.

Currentswap is a person that varies. Currentswap is emrys-weaver.

To playerswap (current - a person):
	now currentswap is current;
	now the story viewpoint is first person singular; 
	now the story tense is past tense;
	now the player is doppelganger of current;
	now playerswapped is true;
	try looking;

Before singleuttering:
	if the player is in first-class or the player is in second-class:
		say "Because there are multiple people present, you'll have to specify whom you'd like to say it to." instead;

Ceasing is an action applying to nothing. Understand "stop" as ceasing.

Carry out ceasing:
	if playerswapped is true:
		now the player is emrys-weaver;
		now the story viewpoint is second person singular; 
		now the story tense is present tense;
		now playerswapped is false;
		try looking;
		now currentswap does not forsake statement-quip;
		
Statement-quip is a squip. The printed name of statement-quip is "Statement". Understand "statement" as statement-quip. The preview of Statement-quip is "Would you mind giving me your statement?"

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
		now Dafmaevemet is false;
	otherwise if maeve-level is 1:
		now fake-maeve is in nice-apartment;
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
		now Dafmaevemet is false;
		now the lemon-water is on convenient-table;

Maeve-level is a number that varies. Maeve-level is 0.

Section 1 - Fake-Maeve

The printed name of fake-maeve is "maeve". Understand "maeve" as fake-maeve. The description of fake-maeve is "I'd describe myself as still fairly young for a famous author. Although I have had at least one review call me a 'middle-aged author', if you can believe it. I have platinum-blonde hair, and I can run a 10K in an hour."

The platinum-hair is part of fake-maeve. Understand "platinum" or "blonde" or "platinum-blonde" or "hair" as the platinum-hair. The description of the platinum-hair is "It's completely natural; I'm blessed with it."

Section 2 - Author Maeve's apartment 

[we see this twice, once rich and once faux-rich. consider making two apartments].

The printed name of Luxury-apartment is "Luxury Apartment". The description of luxury-apartment is "I was in the bedroom of my penthouse apartment, which overlooks the big city below with a magnificent view. That morning, the room was spotless and tidy, empty except for my king-sized hoverbed and my nightstand with the chef's freshly-prepared breakfast.

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

The king-hoverbed is an enterable scenery supporter in luxury-apartment. The printed name of the king-hoverbed is "king-sized hoverbed". Understand "hover" or "bed" or "blanket" or "blankets" or "pillow" or "pillows" or "comforter" or "comforters" or "king" or "size" or "sized" as the king-hoverbed. The description of the king-hoverbed is "Oh, you want to know how I sleep? Perfectly. The hoverbed is perfect for my temperament."

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
	say "It was excellent, I have to admit, although my chef still struggles with egg consistency. After I was finished, I rang for the maid, and she came and cleared the dishes for me before departing."

Before going east from luxury-apartment:
	if the delicious-breakfast is not nowhere:
		say "I simply couldn't think of work while I was still hungry. I keep a regular schedule, you know." instead;

Section 3 - Walk-in closet

The luxury-closet is south from luxury-apartment. The printed name of luxury-closet is "Walk-In Closet".

Luxury-closet is in statement-region.

The description of the luxury-closet is "My closet is about the same size as this train car we're in. At the time, it was filled with countless outfits, but most of them were of no interest to me. I have to wear what strikes my mood.

My bedroom was back to the [boldnorth]."

The countless-outfits are plural-named scenery in the luxury-closet. The printed name of the countless-outfits is "countless outfits". Understand "countless" or "outfits" or "outfit" or "clothing" or "clothe" or "clothes" as the countless-outfits.

The description of the countless-outfits is "Oh, it would take me forever to describe all of the clothes that I own."

The fake-jumpsuit is in luxury-closet. "The only clothing that stood out to me was my favorite rhinestone jumpsuit." The fake-jumpsuit is a wearable thing. The printed name of the fake-jumpsuit is "rhinestone jumpsuit". Understand "rhinestone" or "rheinstone" or "jump" or "suit" or "jumpsuit" or "tasteful" or "wardrobe" or "item" as the fake-jumpsuit. The description of the fake-jumpsuit is "It was the very same jumpsuit you see me wearing now, one of my more tasteful wardrobe items."

The fake-sapphires are a wearable thing.

After wearing the fake-jumpsuit when the fake-robe is worn by the player:
	now the fake-robe is in the location;
	now the fake-sapphires are worn by fake-maeve;
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

Luxury-office is in statement-region.

The luxury-desk is a scenery supporter in luxury-office. The printed name of the luxury-desk is "executive desk". Understand "my" or "executive" or "titanium" or "steel" or "oak" or "highlight" or "highlights" or "solid" or "glass" or "desks" or "carbon" or "nanotube" or "frame" or "desk" as the luxury-desk. The description of the luxury-desk is "My desk had a carbon nanotube frame, titanium steel and oak highlights, all covered with a layer of solid glass. 

On top of it was my wide-screen terminal, and nearby was the comfortable office chair I usually sit in."

The assistant-desk is a scenery supporter in luxury-office.  The printed name of the assistant-desk is "assistant's desk". Understand "assistant" or "assistant's" or "desk" or "thin" or "slab" or "wood" or "metal" or "leg" or "legs" or "desks" as the assistant-desk.

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
	say "I would never sit in my assistant's stool...especially not when my comfortable chair is nearby!"

The wide-terminal is a switched off scenery device in luxury-office. The printed name of wide-terminal is "wide-screen data terminal". Understand "wide-screen" or "wide" or "state" or "art" or "screen" or "terminal" or "data" as the wide-terminal.

The description of the wide-terminal is "My data terminal is state-of-the art, with a wide terminal and higher-tier access to data streaming. At the time, it was turned off, as I was done writing for the day."

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

The description of the fans-crowd is "My adoring fans came from walk of life to get a chance to meet me. And get their books signed, of course! "

Instead of listening to something when the player is in luxury-bookstore:
	say "It was hard to hear anything over the hubbub of the fans"

The velvet-ropes are distant plural-named scenery in luxury-bookstore. The printed name of the velvet-ropes is "velvet ropes". Understand "rope" or "ropes" or "velvet" as the velvet-ropes. The description of the velvet-ropes is "Those velvet ropes were the only thing standing between me and being crushed by fans."

The signing-table is a scenery supporter in luxury-bookstore. The printed name of the signing-table is "signing table". Understand "singing" or "table" as the signing-table.

The description of the signing-table is "This signing table was the best the bookstore could provide. It was acceptable, but I have had much better accomodations in the past."

The signing-pen is on the signing-table. The printed name of the signing-pen is "signing pen". Understand "signing" or "pen" as the signing-pen. The description of the signing-pen is "The pen was provided by the bookstore. It was simple, but effective."

dafmaevemet is a truth state that varies. Dafmaevemet is false.

The Book-dafydd is a man in luxury-bookstore. "[if dafyddbegged is true]Dafydd was sitting at his table, sobbing[otherwise if book-dafydd is in luxury-cafe]Dafydd was seated at a nearby table[otherwise]A charming young man was the next in line, waiting for me to [end if][if dafydd-copy is held by book-dafydd]talk to him. He held the copy of my book he had purchased at the front of the line[otherwise if book-dafydd is not in luxury-cafe]sign his book[end if]." The printed name of Book-dafydd is "[if dafydd-copy is held by book-dafydd]charming young man[otherwise]Dafydd[end if]". Understand "charming" or "young" or "man" or "dafydd" as book-dafydd. 

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

He put his copy on the table. As he did so, I saw his sleeve lift up. I noticed he was wearing a [italic type]very[roman type] nice watch. It was an Arawnz brand watch, monogrammed with what mus have been his initials: DY.";
		deliver timepiece-quip;
		deliver signed-quip;
		now dafydd-copy is on the signing-table;
	otherwise if book-dafydd is in luxury-bookstore:
		say "He said, 'I'm excited to get your autograph!' he said, pointing towards his book, which I was still holding.";
	otherwise if book-dafydd is in luxury-cafe:
		now dafyddbegged is true;
		say "'Dafydd,' I called out in surprise. 'What are you doing here?'

'Maeve,' he said, standing up and approaching my table, 'Maeve, I have to see you again. You're all I can think about.'

'I'm sorry,' I said, trying to let him down gently. 'I know how it feels to fall in love with a celebrity. It's called paraphilia, you should look it up.' 

He was shaking his head, but I put a finger on his lips. 'No, I said,'we can't be together. But I'll always remember you, Dafydd.'

He sat back down and put his head in his hands, crying. It was time for me to leave."

Booksigning is an action applying to one thing. Understand "sign [something]" as booksigning.

Check booksigning:
	if the signing-pen is not carried by the player:
		if the signing-pen is enclosed by the location:
			say "I grabbed the pen first.";
		otherwise:
			say "[We] [aren't] holding anything good to sign with." instead;

Book-signed is a truth state that varies. Book-signed is false.

Carry out booksigning:
	if the noun is not the dafydd-copy:
		say "The only thing I was signing that day was my book, Detective. I don't do freebies.";
	otherwise:
		now book-signed is true;
		say "Well, I signed that copy just like he wanted. 'For Dafydd,' I wrote, 'my greatest fan.' I read it out loud, and Dafydd giggle a little with happiness. It was...perfect.

He still stood around, awkwardly,waiting for his book."

The dafydd-copy is held by book-dafydd. The printed name of dafydd-copy is "blank copy of my book". Understand "blank" or "copy" or "book" or "my" as the dafydd-copy. The description of the dafydd-copy is "This was [the book-dafydd]'s personal copy of my book[if book-signed is false]. I hadn't signed it yet[otherwise]. I had already signed it, but I hadn't given it back to him yet[end if]."

Instead of giving dafydd-copy to book-dafydd:
	if book-signed is false:
		say "I hadn't signed the book yet!";
	otherwise:
		say "I handed him the book. His hand grazed mine as he grabbed it, and he looked like he was about to faint. I waved him goodbye, and finished the book signing.

I did see him again.";
		now dafydd-copy is on signing-table;
		now the player is in luxury-cafe;
		now book-dafydd is in luxury-cafe;
		now the signing-pen is nowhere;
		say "To my surprise, I saw Dafydd there. I can only assume he had been following me. It happens sometimes."
	
Timepiece-quip is a squip. The printed name of timepiece-quip is "Timepiece". Understand "timepiece" as timepiece-quip. The preview of timepiece-quip is "[The train-corpse] owned an expensive, monogrammed Arawnz wristwatch."

The targetresponse of timepiece-quip is "[if currenttarget is elen]'Is that so?' says Elen. 'He must have had excellent taste[otherwise if currenttarget is maeve]'Oh yes, I know,' says Maeve. 'I'm the one that told you that. Don't you remember? I saw it when I was signing his book[otherwise if currenttarget is arthur]'Hmm,' says Arthur, pursing his lips. 'That seems somewhat frivolous. Dafydd often complained about expenses; perhaps he should not have been so extravagant[otherwise if currenttarget is mari]'Just an Arawnz? That's not that special,' she says. Then she seems to catch herself, and says, 'I mean, yeah, that's some seriously expensive stuff. No wonder he got offed[end if].'".

Signed-quip is a squip. The printed name of signed-quip is "Collector".  Understand "collector" as signed-quip. The preview of signed-quip is "[The train-corpse] wanted a signed copy of Maeve's book for himself."

The targetresponse of signed-quip is "[if currenttarget is elen]'Oh,' says Elen, looking at [the train-corpse] with more dismay than before. 'I didn't realize that this young man had that kind of taste. It's rather...well, it's rather [italic type]common[roman type], I should think[otherwise if currenttarget is maeve]'Yes, I'd say that he is one of my most devoted fans. Perhaps a bit too devoted; after all, it seems he followed me here today! Poor boy. It's hard to chase after someone famous[otherwise if currenttarget is arthur]'Is that true?' he asks, looking intrigued. 'I've read some of her books,' he says, looking over at her on one of the other chairs. 'It's not terrible. Some of the, er, romantic scenes are quite extraordinary[otherwise if currenttarget is mari]'Yeah, I guess that would make sense. Although I swear that doesn't sound right...you sure you got those facts straight? Because he said something when he sent the package, I just can't remember what it was..[end if].'"

Section 6 - Cafe

Luxury-cafe is a room in statement-region. The printed name of Luxury-cafe is "Cafe" 

"This morning, I was at a cafe, in an outdoors patio. The sun was bright, and the air was fresh. I was seated at my usual table, sipping lemon water and contemplating life.

I could leave the cafe to the [boldnorth]."

The cafe-sun is distant backdrop in the luxury-cafe. The printed name of the cafe-sun is "sun". Understand "sun" as the cafe-sun. The description of the cafe-sun is "I've always adored being in the sun. I feel like a little plant, sometimes."

The outdoors-patio is a backdrop in luxury-cafe. The printed name of the outdoors-patio is "patio". Understand "outdoor" or "outdoors" or "patio" as the outdoors-patio. The description of the outdoors-patio is "I always ate outdoors when possible; the chance to see humanity and nature all at once is something I could never give up."

The usual-table is a scenery supporter in the luxury-cafe. The printed name of the usual-table is "usual table". The indefinite article of the usual-table is "my". Understand "usual" or "my" or "table" or "wrought-iron" or "wrought" or "iron" or "elaborate" or "floral" or "pattern" or "patterns" as the usual-table. The description of the usual-table is "[tabledesc]".

The nearby-table is a scenery supporter in the luxury-cafe. The printed name of the nearby-table is "nearby table". Understand "nearby" or "table" or "wrought-iron" or "his" or "wrought" or "iron" or "elaborate" or "floral" or "pattern" or "patterns" as the nearby-table. The description of the nearby-table is "[tabledesc]".

The lemon-water is a scenery thing on the usual-table. The printed name of the lemon-water is "lemon water". Understand "lemon" or "water" or "my" as the lemon-water. The description of the lemon-water is "Lemon water is a favorite of mine, especially when I'm doing a cleanse. It feels more substantial than plain water, but not as overwhelming as coffee or tea."

Understand "sip [something]" as drinking.

Instead of taking or drinking the lemon-water:
	say "I sipped from the lemon water. Truly refreshing, especially on such a lovely day!"

To say tabledesc:
	say "All of my the tables at my favorite cafe look alike: metal with a wrought-iron type finish, beaten into elaborate floral patterns."

dafyddbegged is a truth state that varies. Dafyddbegged is false.

Instead of going nowhere from luxury-cafe when the noun is north:
	if dafyddbegged is false:
		say "I couldn't leave yet without trying to figure out what was going on with this young man.";
	otherwise:
		say "But all good things have to come to end. I said goodbye to Dafydd, and left. He seemed sad to have to leave me.";
		silently try ceasing;
		say "'And that's everything that happened, Detective. We parted on good terms. I can only assume he came here to find me,' says Maeve."

Section 7 - Nice apartment

Nice-apartment is a room in statement-region.

The printed name of Nice-apartment is "Nice Apartment". The description of nice-apartment is "Okay, you're right. I'm not a millionaire. Books don't pay as much as you'd think! My apartment is still nice, though. It's rent controlled, and has original hardwood floors. I have a vintage queen bed, and a cozy nightstand that I rescued and refinished.

[if fake-pajamas are worn by the player]I was still in my pajamas, but my [otherwise]My [end if]wardrobe was standing in the corner. I could go [boldeast] to my living room."

The original-floors are plural-named scenery in nice-apartment. The printed name of original-floors is "original hardwood floors".  Understand "original" or "hard" or "wood" or "floor" or "floors" as the original-floors.

The description of the original-floors is "I ripped out the carpet when I moved in. Can you believe the last owner covered them up? [italic type]Original[roman type] hardwood floors?"

Instead of putting something on the original-floors:
	try dropping the noun;
	
The vintage-bed is an enterable scenery supporter in nice-apartment. The printed name of the vintage-bed is "vintage queen bed". Understand "vintage" or "queen" or "bed" as the vintage-bed. The description of the vintage-bed is "I got my bed at an estate sell a few years back. It's so heavy, I had to pay the movers double. But it'll outlast me."

Instead of entering the vintage-bed:
	say "Bed looks so comfortable. But if I got in,I knew I wouldn't get out for a long time."

The refinished-nightstand is a scenery supporter in nice-apartment. The printed name of the refinished-nightstand is "nightstand". Understand "nightstand" or "refinished" or "rescued" or "refurbished" or "new" or "screws" or "paint" or "night" or "stand" as the refinished-nightstand.

The description of the refinished-nightstand is "Gosh, this thing was my baby. I had found it, old, paint peeling on the side of the road. I stripped it, found new screws for it and repainted it."

The fake-pajamas are a wearable thing. The printed name of the fake-pajamas is "pajamas". Understand "pyjamas" or "pajamas" as the fake-pajamas. The description of the fake-pajamas is "I was wearing the pajamas I bought with my Christmas bonus. They made me feel like I was wearing a blanket."

A healthy-breakfast is an edible thing. The printed name of the healthy-breakfast is "healthy breakfast". Understand "healthy" or "breakfast" or "bagel" or "banana" as the healthy-breakfast. The description of the healthy-breakfast is "I had a healthy breakfast I had prepared the night before: a banana and a bagel. Not the tastiest, but good for me."

[put breakfast in]

Nice-wardrobe is a scenery closed openable container in nice-apartment. Understand "wardrobe" as the nice-wardrobe. The printed name of the nice-wardrobe is "wardrobe". The description of the wardrobe is "The wardrobe came with the apartment; the previous tenant couldn't get it out, and neither could I. It's a wonder how it was brought in in the first place. But it fits my aesthetic, so I kept it."

The other-clothes are plural-named things in the nice-wardrobe. "My other clothes were in the wardrobe, as well." The printed name of the other-clothes is "other clothes". Understand "other" or "clothe" or "clothes" as the other-clothes.

Instead of taking the other-clothes:
	say "My jumpsuit was the only thing that called out to me to wear that day."

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

The nice-couch is an enterable scenery supporter in nice-front. The printed name of the nice-couch is "houndstooth couch". Understand "yellow" or "houndstooth" or "couch" or "comfortable" as the nice-couch. The description of the nice-couch is "This yellow houndstooth couch has a bit of a story to it. The seller was a young couple that was completely overpriced it. I knew they were just trying to gouge me so I haggled them down to half the original price. Half! Can you imagine?"

After entering the nice-couch:
	say "Believe me, Detective, when I say that this is the most comfortable couch you can imagine."

The knotted-rug is scenery in nice-front. The printed name of the knotted-rug is "knotted hand-dyed rug". Understand "knotted" or "knot" or "knots" or "hand" or "dyed" or "hand-dyed" or "rug" as the knotted-rug. 

The description of the knotted hand-dyed rug is "I got it off a seller online. It wasn't quite as good as it looked in the photos, but it's grown on me.".

Instead of looking under the knotted-rug:
	say "I don't have any trapdoors or dust bunnies, Detective."

The nice-laptop is a scenery thing on the nice-couch. The nice-laptop is a switched off device. The printed name of the nice-laptop is "brand-new laptop". Understand "brand" or "new" or "laptop" as the nice-laptop.

Instead of switching on the nice-laptop:
	say "I didn't feel like writing right then."

Instead of taking the nice-laptop:
	say "I didn't feel like doing work right then."

The nice-box is in nice-front.  "A box of my books that I had ordered for the signing was ready for me to grab." Understand "box" or "books" or "box of books" as the nice-box. The printed name of the nice-box is "box of books". The description of the nice-box is "I'll admit, I only ordered a single box of books for the signing. Is that so wrong for a woman to lie about, Detective?"

Instead of opening the nice-box:
	say "The books would probably have spilled if I had opened them before I got to the bookstore."

Before taking the nice-box:
	if the fake-pajamas are worn by the player:
		say "I wanted to take the box and leave, but I couldn't go out in just my pajamas!"

Instead of taking the nice-box:
	say "I grabbed the box of books myself and carefully carried it with me. I then hailed a cab and headed to the bookstore.";
	now the player is in nice-bookstore;
	
Section 9 - Nice book store

Nice-bookstore is a room in statement-region. The printed name of nice-bookstore is "Bookstore". The description of nice-bookstore is "You know, yeah, they didn't open up a whole party room for me at the bookstore. But they did give me a desk right at the front, and there were at least, I mean, a couple dozen fans."

Nice-dafydd is a man in nice-bookstore. The printed name of nice-dafydd is "charming young man". Understand "dafydd" as nice-dafydd. The initial appearance of nice-dafydd is "[if dafyddbegged is true]Dafydd was sitting at his table, sobbing[otherwise if nice-dafydd is in nice-cafe]Dafydd was seated at a nearby table[otherwise]I wasn't lying about the guy, though. A charming young man was the next in line, waiting for me to [end if][if nice-copy is held by nice-dafydd]talk to him. He held the copy of my book he had picked at the front of the line[otherwise if nice-dafydd is not in nice-cafe]sign his book[end if]."

The description of nice-dafydd is "[The nice-dafydd] was sweet. He looked like one in a million. And he was at [italic type]my[roman type] signing. You understand?"

The nice-copy is a thing in nice-bookstore. The printed name of nice-copy is "blank copy of my book". Understand "blank" or "copy" or "book" or "my" as the nice-copy. The description of the nice-copy is "This was [the nice-dafydd]'s personal copy of my book. You know what that means? It means he though it was worth spending his own money on. He cared about me! Chew on that[if book-signed is false]. I hadn't signed it yet[otherwise]. I had already signed it, but I hadn't given it back to him yet[end if]."

The nice-table is a scenery supporter in nice-bookstore. The printed name of the nice-table is "signing table". Understand "signing" or "table" or "folding" as the nice-table. The description of the nice-table is "They had just grabbed a folding table from the back. It worked, but wasn't as glamorous as I hoped."

dafmaevemet is a truth state that varies. Dafmaevemet is false.

Instead of taking nice-copy when nice-copy is held by nice-dafydd:
	say "That's not how I remember it; I'm fairly sure we talked first."

The nice-crowd is plural-named distant scenery people in nice-bookstore. The printed name of the nice-crowd is "fans". Understand "crowd" or "couple" or "dozen" as the nice-crowd. The description of the nice-crowd is "Only a couple dozen fans were there, not my biggest event ever. But it's still nice getting out and meeting the fans, right?"

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

He grinned and said, 'I know just the place. A train is leaving in five minutes, no one ever's on it this early. Meet me there in five minutes.'

And then he was gone, leaving to the north.";
		now nice-dafydd is nowhere;

Instead of booksigning the nice-copy:
	now book-signed is true;
	say "He had been so sweet, I was happy to sign his book. 'For Dafydd, right?' I asked.

'Uh, no, actually, it's for a friend,' he answered. 'Can you put, [']To my biggest fan Ceri. Love, Maeve Miller[']?'

'Sure you don't want one for yourself?' I asked.

'No, I'm good,' he said politely. I have to admit, it stung a bit. But then he added, 'Anyone can get an autograph. I'm just glad to meet the author.'

That cheered me up, so I did what he asked, and signed the book, just like I told you before. He grinned, and his smile was like a million bucks.

I could tell he was excited for me to give him the book."

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

Section 10 - Nice cafe

Nice-cafe is a room in statement-region. The printed name of Nice-cafe is "Cafe". "The next day, I was seated at a cafe, in an outdoors patio. Thoughts of Dafydd weighed on my mind. I had grabbed a convenient table and was waiting for my order, sipping lemon water.

I could leave the cafe to the [boldnorth]."

The cafe-sun is in nice-cafe.

The outdoors-patio is in nice-cafe. 

The convenient-table is a scenery supporter in the nice-cafe. The printed name of the convenient-table is "convenient table". The indefinite article of the usual-table is "my". Understand "convenient" or "my" or "table" or "wrought-iron" or "wrought" or "iron" or "elaborate" or "floral" or "pattern" or "patterns" as the usual-table. The description of the usual-table is "[tabledesc]".

Understand "sip [something]" as drinking.


Instead of going nowhere from nice-cafe when the noun is north:
	if nice-dafydd is in nice-cafe:
		say "I couldn't leave yet without talking to Dafydd.";
	otherwise:
		say "I rushed to the train, hoping to find him here.";
		silently try ceasing;
		now secondmaeve is true;
		say "'And that's everything that happened, Detective. When I reached the train, I was trying to find him, but the lights went out, and I heard a man scream. It was Dafydd,' says Maeve. 'It was awful. I didn't want to tell you everything before, because, well, I didn't want you to suspect me.'"

Instead of going nowhere from nice-cafe when the noun is north:
	say "But all good things have to come to end. I said goodbye to Dafydd, and left. He seemed sad to have to leave me.";
	silently try ceasing;
	say "'And that's everything that happened, Detective. We parted on good terms. I can only assume he came here to find me,' says Maeve."

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
		now the other-slides are nowhere;

Arthur-level is a number that varies. Arthur-level is 0.

Section 1 - Fake Arthur

fake-Arthur is a man in bio-lab. The doppelganger of arthur is fake-arthur. The printed name of fake-arthur is "Arthur". The description of fake-Arthur is "I am a healthy man: I eat mostly vegetables and whole grains; I bike; I play handball. I've managed to avoid most of the diseases that plague my fellow academics. Those who know the human body ought to be kind towards it."

Section 2 - Bio lab

The printed name of the Bio-lab is "Bio Lab". The description of the Bio-lab is "My lab is the largest at Textor University, because I've been able to secure the most funding. Last night, when all of this happened, the lab was unusually empty; the floors were going to be waxed prior to new equipment being installed. 

However, I was still able to conduct my most recent research. All I needed was the samples refrigerator, my lab table, and my microscope, none of which had been moved.

The protocol poster I had established for the students hanged prominently on the wall.

I could go [boldeast] to the data lab or [boldsouth] to the department hallway."

The protocol-poster is scenery in bio-lab. The printed name of the protocol-poster is "protocol poster". Understand "protocol" or "poster" as the protocol-poster. The description of the protocol-poster is "My poster was written in simple language, to help my rather incompetent assistants.

1. Retrieve unmarked samples from the refrigerator.[line break]2. Put unmarked samples into the microscope.[line break]3. Look in the microscope to examine the slide, and look for distinguishing features.[line break]4. Use the red marker to mark any samples with line-shaped nano devices. Use the blue marker for samples that are roughly circular.[line break]5. Replace the samples in the fridge, and enter the data in the Data Lab."

The unwaxed-floors are scenery in the bio-lab. The printed name of the unwaxed-floors is "floors". Understand "floor" or "floors" as the unwaxed-floors. The description of the unwaxed-floors is "The floors had not yet been waxed, and were in poor repair. For all the funding I provide the university, one would think that they would have better maintenance protocols."

Instead of putting something on the unwaxed-floors:
	try dropping the noun;

The lab-table is a scenery supporter in bio-lab. The printed name of the lab-table is "lab table". Understand "lab" or "wood" or "plastic"or "top" or "tops" or "table" as the lab-table. The description of the lab-table is "Due to several recent accidents from clumsy assistants, our tables are simple wood with plastic tops, cheap and easy to replace."

Samples-fridge is a closed openable scenery container in bio-lab. The printed name of samples-fridge is "samples refrigerator". Understand "sample" or "samples" or "fridge" or "refrigerator" as the samples-fridge. The description of samples-fridge is "This refrigerator, the only one currently in the lab, held the results of my most recent experiment, a groundbreaking accomplishment that would assure government funding for a decade."

A sample-slide is a kind of thing. Understand "slide" or "slides" or "sample" or "nano" or "device" or "devices" as a sample-slide.

Instead of taking the other-slides:
	say "I had already marked those slides, so there was no need to interact with them further."

Dishesslopped is a truth state that varies. Dishesslopped is false.

The false-slides are plural-named things. "[if dataread is true]All of the slides...my experiment was ruined![otherwise if dishesslopped is true]I couldn't believe one of my researchers ruined the slides...I had to check the data.[otherwise]The samples...why were the samples out of the fridge?[end if]"

Does the player mean examining the samples-fridge:
	it is unlikely;

 The printed name of the false-slides is "sample slides". Understand "sample" or "samples" or "slide" or "slides" as the false-slides. The description of the false-slides is "The samples had been left out of the fridge. And all of them were marked red, despite some clearly belonging to the blue category...Who did this[dishesslopped]?"

Instead of taking the false-slides:
	say "There was no point in further contaminating this research."

After opening the samples-fridge when arthur-level is 0:
	say "I opened the refrigerator, revealing the last two samples to be marked, sample 4B and sample 5C. The other samples I had previously marked were also in the refrigerator."

Sample-4B is a sample-slide in the samples-fridge. Sample-5C is a sample-slide in the samples-fridge. The printed name of Sample-4B is "sample 4B". Understand "4b" as sample-4b. Understand "5c" as sample-5c. The printed name of sample-5c is "sample 5c". The description of sample-4B is "This was one of the more confusing samples of the experiment, and had been left for last, along with sample 5C. I couldn't see any pertinent details without the use of the microscope."

The description of sample-5C is "This was one of the more confusing samples of the experiment, and had been left for last, along with sample 4B. I couldn't see any pertinent details without the use of the microscope."

The other-slides are plural-named things in samples-fridge. The printed name of the other-slides is "other samples". Understand "slides" or "samples" or "other" as the other-slides. The description of the other-slides is "The slides I had previously, painstakingly marked were in the fridge already, where I had carefully placed them after analyzing them."

The lab-micro is a scenery thing in bio-lab. The printed name of the lab-micro is "microscope". Understand "microscope" or "micro" or "scope" as the lab-micro.

The description of the lab-micro is "While far from our most powerful microscope, this one served well enough for the experiment in question. It was easy to PUT slides INTO the microscope and to LOOK IN the microscope."

The lab-micro is an open unopenable container. The lab-micro can be switched on or switched off. The lab-micro is switched on.

Instead of examining a sample-slide when the noun is in the lab-micro:
	try searching the lab-micro;

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

I had marked with red all samples that were roughly circle-shaped, to put things in layman's terms."

The blue-marker is a marker on lab-table. The printed name of the blue-marker is "blue marker". The markercolor of blue-marker is "blue". The description of the blue-marker is "Blue is soothing, and I used it to symbolize to the rather simple-minded students in my lab that a sample was suited for our experiment. 

I mainly used it for marking samples that are shaped like lines, to put things in layman's terms."

Marking it with is an action applying to two things. Understand "mark [something] with [something]" as marking it with.

Does the player mean marking something with a marker:
	it is very likely;

[make sure you can only mark important things]

A sample-slide can be marked or unmarked. A sample-slide is usually unmarked.
Sloppynoticed is a truth state that varies. Sloppynoticed is false.

To mark is a verb.

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

For now, though, our current supercomputer would suffice. The lab was sterile and well-ventilated, with banks of servers to store our data. Our computer was here, currently turned [if big-computer is switched on]on[otherwise]off, to conserve electricity[end if].

 I could go [boldwest] to return to the Bio Lab." The printed name of the data-lab is "Data Lab".

The data-lab is in statement-region.

Before switching on the big-computer:
	if  the number of marked sample-slides < 2 and arthur-level is 0:
		say "I wasn't yet ready to enter all of our data, as I hadn't classified the remaining samples from the Bio Lab." instead;
	otherwise if sloppynoticed is false and arthur-level is 1:
		say "I considered checking the computer's data, but seeing the slides left out bothered me so much, I just had to go out and see what was going on.";

The server-banks are plural-named scenery in the data-lab. The printed name of the server-banks is "server banks". Understand "server" or "bank" or "banks" or "servers" as the server-banks. The description of the server-banks is "Our data storage was serviceable. The servers  were only accessible from the supercomputer itself, though."

[fix all these names; search for big-computer everywhere]
The big-computer is scenery in the data-lab. The big-computer is a switched off device. Understand "big" or "current" or "super" or "supercomputer" or "super-computer" or "computer" as the big-computer. The printed name of the big-computer is "supercomputer". The description of the big-computer is "This current computer dated back four or fives years. It was capable of processing our more elaborate models in a day or two. The newest model on the market could do it in an hour. Today, though, I just needed to input data.

The computer was currently turned [if big-computer is switched on]on[otherwise]off[end if]."

After switching on the big-computer:
	if arthur-level is 0:
		say "I turned on the computer and then I input all the data from the slides, including the two difficult ones I had just finished. 

Now the modeling work could begin, but not that night; I needed to go home and rest.";
		now dataentered is true;
		now lab-dafydd is in bio-lab;
	otherwise if arthur-level is 1:
		say "I turned on the supercomputer, worried now about the data.

And I was right to be. The data I read had no correlation whatsoever to the mess of slides I had just seen on the table in the other room. Someone had been falsifying data.";
		now dataread is true;
		now shifty-dafydd is in bio-lab;		

Section 4 - Lab Dafydd and shifty  Dafydd

Lab-dafydd is a man. The printed name of lab-dafydd is "Dafydd". Understand "dafydd" as lab-dafydd. "To my surprise, Dafydd was there, the last day I ever saw him alive. [if dafydd-finished is false]It seemed he wanted to speak with me[otherwise if lab-dafydd is in bio-lab]He was standing there, watching me with admiration[otherwise]He looked apologetic[end if]."

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

	I chuckled. Grad students can certainly be naive from time to time. 'Dafydd, it took me years to figure out how to manuever the politics and academic slogs of grant proposals. You'll find out for yourself, in time.'

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
		say "'And then I didn't see him again until I saw him on this train, dead,' concludes Arthur."

Shifty-dafydd is a man. The printed name of shifty-dafydd is "Dafydd". Understand "dafydd" as shifty-dafydd. "I was consternated to find Dafydd in my lab, the last day I ever saw him alive. [if dafydd-confronted is false]He was looking at me with guilt on his face. That's when I knew what he had done, even before he spoke[otherwise if shifty-dafydd is in bio-lab]He seemed completely shattered[otherwise]He stared at me, daring me to speak[end if]."

Dafydd-confronted is a truth state that varies. Dafydd-confronted is false;

Instead of talking to shifty-Dafydd:
	if shifty-dafydd is in bio-lab:
		if dafydd-confronted is true:
			say "I had already had enough of talking to Dafydd.";
		otherwise:
			say "'Dafydd,' I said, 'what are you doing here? And what have you done to the samples?'

	'You weren't supposed to be here this later,' he said, agony in his voice. 'I thought I could finish--'

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
		say "'And then I didn't see him again until I saw him on this train,' concludes Arthur. 'He must have been following me. I hope it was in the spirit of reconciliation. Too late now, though.'"

Section 5 - Department Hallway

[put a door between bio lab and department hallway; swinging door or lockable]

The lab-door is a closed  scenery door. The lab-door is south of bio-lab and north of department-hallway. The printed name of the lab-door is "lab door". Understand "swinging" or "doors" or "lab" or "door" as the lab-door.

Every turn:
	if the lab-door is open:
		if the player is fake-arthur:
			say "The door swung shut again.";
	now lab-door is closed;
		
Instead of swinging the lab-door:
	say "The door flops back and forth for a bit before settling down."

The description of the department-hallway is "The hallway outside the Bio Lab was dark, this late in the day. Few others are willing to work late hours the way that I do. 

I could return [boldnorth] to the Bio Lab, or leave [boldeast] or [boldwest] to get out of the building; both directions would eventually take me to the stair wells and out of the building."

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
		say "FI couldn't leave yet, because I had to sort out this whole mess."
		
After going south from bio-lab:
	try looking;
	if arthur-level is 0:
		say "As I exited the lab and closed the door, I heard Dafydd shout my name excitedly. I turned around, but before I could move he burst out of the door, hitting me soundly on the jaw[delivercollision]. And that is why I have this bruise on my face.

He stopped with a horror-stricken look on his face, waiting for me to react, to say anything.";
		now lab-dafydd is in department-hallway;
	otherwise if arthur-level is 1:
		say "As I walked out of the lab, my head spinning, I heard the door slam open behind me. Dafydd grabbed me by the shoulder, spun me around and socked me across the jaw.

He was incensed, gone mad with anger. I had to stand up to him.";
		now shifty-dafydd is in department-hallway;

Instead of attacking shifty-dafydd:
	say "Given our relative physical strengths, words would be better weapons than fists."

[maybe get rid of the bruise quip when you combine it with collision]

To say delivercollision:
	deliver collision-quip.
	
Collision-quip is a squip. The printed name of collision-quip is "Collision". Understand "collision" as the collision-quip. The preview of collision-quip is "Dafydd accidentally gave [the Arthur] a bruise by hitting him with a door."

The targetresponse of collision-quip is "[if currenttarget is elen]'Well, he seems to fairly physically fit,
 says [the elen] thoughtfully. 'One shouldn't be surprised that he could do some serious damage, intentionally or otherwise. On the other hand, from the few moments I saw him, I wouldn't characterize him as clumsy, unlike others I could name[otherwise if currenttarget is maeve]She puts her hand on her mouth. 'Oh!' she cries, looking at [the arthur] and back to you. 'How dreadfully violent! He must have been a passionate young man to do something so very reckless[otherwise if currenttarget is arthur]'Yes, I know. I told you myself,' he says. 'It was quite crude of the lad, not the way an aspiring professor should act. But he had many such troubles[otherwise if currenttarget is mari]'Yeah! That's right, sock it to them!' says [the Mari] with visible excitement. 'I wish I could do that to a bunch of academic stiffs[end if]".

Instead of linking collision-quip to punch-quip:
	linkcollpun;
	
Instead of linking punch-quip to collision-quip:
	linkcollpun;
	
To linkcollpun:
	say "[The arthur] says Dayfdd hit him with the door, but the bruising on [the train-corpse]'s fist suggests that they fought.";
	deliver alterc-quip;
	remove collision-quip;
	remove punch-quip;
	
Alterc-quip is a squip. The printed name of alterc-quip is "Altercation". Understand "altercation" as alterc-quip. The preview of alterc-quip is "[The arthur] and [the train-corpse] most likely fought with each other."

The targetresponse of alterc-quip is "[if currenttarget is maeve]She scowls and looks over at [the arthur] darkly. 'If it's true, then I'm disposed to think that our gentleman professor is nothing more than a bully[otherwise if currenttarget is mari]'Hmm,' she says, considering. 'I think that makes me like the young man more. Too bad he's dead, of course[otherwise if currenttarget is elen]'Well there must have been some mitigating circumstances,' she says. 'It's not like a professor to be so violent. He certainly must have been provoked[otherwise if currenttarget is arthur]Arthur is silent for a moment, calculating. Then he speaks.

'There was...a problem. At the lab. I didn't wish to speak of it, because I wanted to preserve the dignity of the deceased. But I have more to say about what happened between me and Dafydd[end if].'".

Report uttering alterc-quip to arthur:
	say "[bracket]Arthur has a new statement to give.[close bracket][paragraph break]";
	now arthur-level is 1;
	reset-arthur;

The stair-wells are plural-named distant scenery in department-hallway. Understand "stair" or "stairs" or "well" or "wells" or "stairwells" or "stairwell" as the stair-wells. The description of the stair-wells is "The stair wells were only barely visible, you see; and they did not matter in what I am about to tell you."

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
		
Mari-level is a number that varies. Mari-level is 0.

Section 1 - Fake Mari

The courier-office is a room in statement-region.

Fake-mari is a woman in courier-office. 

The printed name of Fake-Mari is "Mari". Understand "mari" as fake-mari. The description of fake-Mari is "I'm a fighter, a tough, a punch-it-out kind of lady. People see me and they get out of my way, because they know not to mess with Mari."

The fake-cap is worn by fake-mari. The printed name of the fake-cap is "cap". Understand "company" or "cap" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" or "badge" or "honor" as the fake-cap. The description of the fake-cap is "You've seen my cap, haven't you? It's the same one I'm wearing now! The badge of honor for a courier in this city."

The fake-satchel is a closed openable container. The fake-satchel is worn by fake-mari. The printed name of the fake-satchel is "satchel". Understand "company" or "satchel" or "delivery" or "matching" or "carpundia" or "oversized" or "over-sized" or "deliveries" or "united" or "cardboard" or "box" or "milky" or "way" or "logo" as the fake-satchel. The description of the fake-satchel is "My satchel is the same one you see now, standard courier fare. Many people have been hurt trying to take this from me, and many more will in the future."

Before inserting something into the fake-satchel:
	if the fake-satchel is closed:
		silently try opening the fake-satchel;

Section 2 - Courier office

[Change package to satchel]

The printed name of the courier-office is "Courier Office". The description of courier-office is "It all started this morning. I was in the United Carpundia Deliveries courier office on Maple Street[if mari-level is 1], an older office that could really use some renovations[otherwise], a dingy and run-down relic where only the toughest couriers can make a living[end if]. There was a counter splitting the room in half, with no chairs or other furniture. Don't want the locals to stay here any longer than they have to--or lazy couriers, for that matter.

I could go [boldsouth] to leave to the city streets."

The courier-boss is a person in courier-office. The printed name of the courier-boss is "boss". The indefinite article of the courier-boss is "my". Understand "My" or "margie"  or "boss" or "legend" or "thick" or "tangled" or "grey" or "hair" or "Body" or "jukebox"  as the courier-boss. The initial appearance of courier-boss is "[if bosstalked is false]My boss was on the other side of the counter, a tough old nut named Margie who'd been running the joint for the last fifty years. I could tell she wanted to talk. Hopefully it was about a job[otherwise]Margie was looking at me, annoyed that I was still there[end if]."

The description of courier-boss is "Margie was an older woman with thick, tangled grey hair and a body shaped like an oversized jukebox. Her right eye was missing, and she had ropy scars running up the other side of the body, but you should definitely see the other guys--although you'd have to visit the local cemetery. Margie was a local legend."

The missing-eye is part of margie. Understand "missing" or "right" or "eye" as the missing-eye. The printed name of the missing-eye is "missing eye". The description of the missing-eye is "The socket of Margie's missing right eye was completely closed up now. She never used a glass eye or a patch. It was more intimidating this way."

The ropy-scars are part of margie. Understand "ropy" or "scars" or "side" or "left" as the ropy-scars. The printed name of the ropy-scars is "ropy scars". The description of the ropy-scars is "No one knows how Margie got the ropy scars on the left side of the body, but we do know it happened around the time she cleared out the Maple Street Gang."

The mystery-package is a thing. The printed name of the mystery-package is "mystery package". Understand "mystery" or "package" or "rectangle" or "small" or "brown" or "butcher" or "paper" as the mystery-package. The description of the mystery-package is "Margie told me not to worry about the package, but it was intriguing: a small rectangle, wrapped in brown butcher paper, with no identifying marks."

Instead of opening the mystery-package:
	say "Margie would kill me. Possibly literally."

Understand "shake [something]" as attacking. 

Instead of attacking the mystery-package:
	say "Hey, there, I did [italic type]not[roman type] shake the package! And you can tell Margie that if she asks!"

The dafydd-package is a thing. The printed name of the dafydd-package is "package". Understand "boring" or "old" or  "package" as the dafydd-package.

The mari-dafydd is a man. "[one of]Okay, so I may have exaggerated a little in my earlier statement. I don't actually have a tough one-eyed boss named Margie. This morning, I was the one at the counter. I saw your stiff there, the dead guy. He wanted to give me a package. He was waiting for me to give him his receipt[or]The guy who was dropping off the package was waiting for his receipt[stopping]." The printed name of the mari-dafydd is "[if mari-dafydd is in courier-office]stressed-looking young man[otherwise]Dafydd[end if]". Understand "stressed" or "looking" or "stressed-looking" or "dafydd" or "guy" or "man" as the mari-dafydd. 

The description of mari-dafydd is "The guy looked pretty scruffy but could be handsome if he got good sleep and had better hygiene. He looked kinda worried about something."

The fake-receipt is a thing. The printed name of the fake-receipt is "receipt". Understand "receipt" as the fake-receipt.

The description of the fake-receipt is "The receipt had my name on it, Mari Gallagher, and the logo of United Carpundia Deliveries. And, just so you know, it's literally the same receipt clutched in the dead man's hand right before your very eyes, so I don't know why you're asking me about it!"

Instead of giving the fake-receipt to mari-dafydd:
	say "I handed him the receipt, and he handed me a boring old package, which I put in my satchel.

The squirrely guy booked it out of there. I was glad, because he was the last and only customer on my shift that day, and I could hear my replacement somewhere in the back ready to take over. I decided to go and run his package to  his destination; I unzipped the bag, checked out the package, and realized: it had no address.

I had his name: Dafydd Yakoob. I had his Recipient name: Ceri Daniels. But no address. 

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

'You seeing anyone right now? Got a nice boy?' asked Margie. Hmm. Not like her to make small talk.

'No,' I said. 'Just testing the waters.'

'Good. Then no one will miss you. I've got a delivery that might go south and I need someone expendable,' she says, and slams a package down on the counter. 

'I love it when you're talk all sweet, Margie,' I said.

'Get this to the A train in the next twenty minutes. And don't call me Margie,' she said.";
		now bosstalked is true;
		now mystery-package is in courier-office;
	otherwise:
		say "'Whhadda ya want, a lollilpop? Get out of here,' says Margie."

Before going south from courier-office:
	if the mystery-package is not enclosed by the player and mari-level is 0:
		say "I couldn't leave without the package; as a courier, my duty is my life!" instead;
	otherwise if the dafydd-package is not enclosed by the player and mari-level is 1:
		say "I wasn't finished helping this customer!" instead;

Instead of dropping the mystery-package:
	say "I would never abandon my post! Margie would kill me!"

Instead of dropping the dafydd-package:
	say "I would never abandon my post!"



Section 3 - City streets

City-streets is a room in statement-region. City-streets is south from the courier-office. The printed name of city-streets is "Maple Street". "Maple Street is on the wrong side of the train tracks. [if mari-level is 1]At least, there are a lot of stores that are vacant, and this morning someone had thrown up on the sidewalk. It wasn't horrible, but I definitely didn't feel safe[otherwise]Abandoned or boarded-up storefronts dot the street, and fluids of every color run in the gutters. At least things have been better here since Margie took over the area[end if].

The courier office was to the [boldnorth][if mari-level is 0], although I'm sure the boss wouldn't want to see me for a while[end if]. Platform A, I knew, was somewhere far to the [boldeast]."

The missing-tracks is scenery in city-streets. The printed name of the missing-tracks is "train platform". The description of the missing-tracks is "The train platform and tracks were too far away for me to see." Understand "train" or "platform" or "track" or "tracks" or "train A" or "platform A" as the missing-tracks.

The abandoned-storefronts are plural-named scenery in city-streets. The printed name of the abandoned-storefronts is "[if mari-level is 1]vacant[otherwise]abandoned[end if] storefronts". Understand "abandoned" or "vacant" or "store" or "fronts" or "front" or "storefronts" or "storefront" as the abandoned-storefronts. The description of abandoned-storefronts is "[if mari-level is 1]The vacant stores always creep me out. I know someone eventually might move in, but they just look weird[otherwise]The city doesn't have enough money to tear down the old buildings, and it costs nothing to let them rot. So abandoned storefronts litter this whole area[end if]."

Instead of doing anything with the missing-tracks:
	say "The train platform and tracks were too far away for me to see."
	
The mystery-fluids are plural-named scenery in city-streets. The printed name of mystery-fluids is "[if mari-level is 1]vomit[otherwise]mystery fluids[end if]". Understand "mystery" or "liquid" or "liquids" or "green" or "purple" or "fluid" or "fluids" or "gutter" or "vomit" or "throwup" or "throw up" as the mystery-fluids. The description of mystery-fluids is "[if mari-level is 1]Some kid must have eaten too much ice cream or something. I hope I didn't have to clean it up later[otherwise]Some of the fluids in the gutters are identifiable are identifiable, but the green one and the purple one really defy explanation[end if]."

Instead of drinking the mystery-fluids:
	say "Come on, lady, do you really think I was out there drinking the gutter stuff?"

Instead of physicality when the noun is the mystery-fluids:
	say "There's no way I was gonna touch that stuff."

EVery turn when the player is in city-streets and mari-dafydd is in city-streets:
	say "When I popped out of the office, I could just see him,walking away to the east.

'Dafydd!' I shouted. 'You forgot the address!'

But he couldn't hear me, and disappeared into the intersection.";
	now mari-dafydd is in city-intersection;

Section 4 - Intersection

City-intersection is a room in statement-region. City-intersection is east from city-streets. "[if mari-level is 1]The intersection was one of the most dangerous places in the city, because there were no crosswalks and cars and motorcycles often drove past at a fast clip. It was also a frequent place for ne'er-do-wells and grifters, although I didn't see any around this morning[otherwise]I was at one of the most dangerous areas of the city. We had a fire ten years ago, burned out a lot of the buildings, and left it so that no one wanted it except as a battlefield. This place used to be full of life, but now it's only filled with burnt-out shells of stores and burnt-out shells of people[end if].

I could go [boldwest] back to Maple Street, while the train station was to the [boldeast]. A convenient alleyway was to the [boldsouth]."

The burnt-buildings are scenery in city-intersection. The printed name of burnt-buildings is "burnt buildings". Understand "burnt" or "building" or "store" or "stores" or "buildings" or "burnt-out" or "burned-out" or "burned out" or "burnt out" as the burnt-buildings. The description of the burnt-buildings is "These places should have been condemned years ago. Some of them were, but the notices hung up so long you can't read them anymore, and now eve those have been ripped off and lost."

The wild-bikers are plural-named people in city-intersection. "[if mari-level is 1]The intersection was blocked by a bunch of bikers doing tricks and showing off. They were going so fast that it frightened me; I couldn't imagine walking past them[otherwise]I was dismayed to find a turf war underway between some bikers. They were roaring their motorcycles and driving wildly around the intersection, playing chicken with each other. There was no way I could get across; the last time I tried something like that, I lost a tooth[end if]." The printed name of wild-bikers is "bikers". Understand "biker" or "bikers" or "wild" or "gang" or "turf" or "war" or "gangs" or "gang of" as the wild-bikers. The description of the wild-bikers is "[if mari-level is 1]The bikers were mostly older men that were going bald, while there were a few younger guys and quite a few tough-looking women[otherwise]The bikers weren't from around here; mobile gangs like that had the pick of spots for their tussles around town, and it looks like we got the short end of the stick today[end if]."

Instead of going nowhere from city-intersection when the noun is east:
	say "[if mari-level is 1]No way! Those bikers were scary! I had to find another way around[otherwise]The gang of wild bikers swirled around me as I tried to break through. Their raucous laughter and callous catcalls were more than I could bear, and I had to fall back[end if]."

EVery turn when the player is in city-intersection and mari-dafydd is in city-intersection:
	say "There was Dafydd, but he was moving faster, now. He seemed to be afraid of something. Not me, I don't think. He dodged around the bikers; I was shocked by his bravery, but it was a feat I could not follow.";
	now mari-dafydd is in roof-tops;

Section 5 - Convenient alley

The convenient-alley is a room in statement-region. Convenient-alley is south from city-intersection. "[if mari-level is 0]The alleyway was the perfect place to avoid the gang war--and the sun. The walls around me shaded this area, giving it a secluded feel. It was pleasant, but I definitely wouldn't go back there at night!

For one of you rich upper-crust types this would have been just a dead-end, but not for me. Living in the rough streets of the city taught me many skills.

 I could use my parkour talents to get [bold type]up[roman type] the walls!

I also could have gone back. The wildly-dangerous intersection was to the [boldnorth][otherwise]The alleyway was a great place to hide from the bikers. I tend to avoid alleyways in general, but right now there was no point in worrying about violent maniacs hiding in corners when there were dozens of them roaring around on the streets outside.

It looked like a dead end at first, but then I noticed a ladder on the wall that led [bold type]up[roman type].

I could also return to the intersection back to the [boldnorth][end if]."

Convenient-alley is inside from city-intersection.

The parkour-walls are plural-named scenery in the convenient-alley. Understand "wall" or "walls" or "various" or "protuberance" or "protuberances" or "ladder" as the parkour-walls. The printed name of the parkour-walls is "[if mari-level is 1]ladder[otherwise]walls[end if]". The description of parkour-walls is "[if mari-level is 0]The distance between the walls, the various protuberances, all of it combined with my street-smarts and muscle-memory to show me exactly how to get up there[otherwise]The ladder seemed sturdy enough. I was sure it could hold me, but it sure seemed tall[end if]."

Understand "parkour [something]" as climbing.

Instead of climbing the parkour-walls:
	try going up;

Before going up from convenient-alley when mari-level is 0:
	say "Parkour!"

Before going up from convenient-alley when mari-level is 1:
	say "It was tiring, but I climbed up the ladder."

The printed name of convenient-alley is "Convenient Alleyway".

Section 6 - Rooftops

Roof-tops is a room in statement-region. Roof-tops is up from convenient-alley. The printed name of roof-tops is "Rooftops". "[if mari-level is 1]I hadn't been on the roof of an apartment building before, and it was fun but a little scary. I could see a lot from up here, including the bikers and the train platform.

The building must have still been under construction, because there was a plastic chute to the [boldeast] that sloped down to the train platform. I could also still go [bold type]down[roman type] to the alley below[otherwise]The rooftop must have been under construction, Up there, on the rooftops of the city, I felt safe. Like the urchins of old, the sky was my home. I could see everything from up there! There was nothing up here with me but a clothesline currently free from clothes.

More specifically, I could still see the dangerous biker gangs below. I could still go [bold type]down[roman type] to the alley below. To the [boldeast] where a set of wires leading down from the roof, hovering over the train platform[end if]."

The distant-gangs is plural-named distant scenery people in roof-tops. The printed name of distant-gangs is "distant [if mari-level is 1]bikers[otherwise]gangs[end if]". Understand "distant" or "gang" or "gangs" or "bikers" or "biker" or "dangerous" as the distant-gangs. The description of the distant-gangs is "[if mari-level is 1]The bikers were still at it, down below. I just didn't get the appeal. Why not just get on a highway and go crazy instead of circling an intersection? I really don't get it[otherwise]From up above, I could see all the bikers fighting, and yet, what were they fighting over? From up here, there were no borders, no dividing lines like one would see in a map. I felt like I understood a deep truth that others just don't understand. That's what it's like, being a courier in the streets[end if]."

The mari-wires are plural-named scenery supporter in roof-tops. The printed name of the mari-wires is "wires". Understand "sturdy" or "insulated" or "wire" or "wires" as the mari-wires. The description of the mari-wires is "Some kind of sturdy, insulated wire leads from this rooftop to just over the train on Platform A."

The clothesline is a scenery supporter in roof-tops. Understand "clothes" or "line" or "cloth" as the clothesline. The description of the clothesline is "Someone must use it when the weather is nicer. No trace of any clothes remains, except for that broken hanger I saw."

Instead of taking the clothesline:
	say "Someone went to a lot of trouble to set it up, seems like a shame to pull it down."

The broken-hanger is on clothesline. "[if the broken-hanger is on clothesline]There was a broken hanger left hanging here, discarded by someone.[otherwise if the broken-hanger is on the mari-wires]The hanger was now hanging from the wires[otherwise]I could see a broken hanger lying around.[end if]." The printed name of the broken-hanger is "broken hanger". Understand "broken" or "hanger" or "hook" or "handle" or "handles" as the broken-hanger. The description of the broken-hanger is "The bottom part of the hangar has snapped off, leaving only a hook and two handles."

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
		
The mari-platform is distant scenery in roof-tops. The printed name of the mari-platform is "train platform". Understand "train" or "platform" or "track" or "tracks" or "a" as the mari-platform.

Instead of examining mari-dafydd when the player is in roof-tops:
	try examining mari-platform;

The description of the mari-platform is "[if mari-level is 0]There was my destination! The A train! Now I just had to find a way down[otherwise]There was Dafydd[setspottedtrue]! He was getting on the train! I had to find a way down there[end if]!"

To say setspottedtrue:
	now dafyddspotted is true;

The mari-chute is scenery. The printed name of the mari-chute is "chute". Understand "plastic" or "chute" as the mari-chute. The description of the mari-chute is "This looked like a plastic chute that might eventually be used for trash, but for now gently sloped down to the ground."

Instead of inserting something into the mari-chute:
	say "I tried tossing [the noun] into the chute. It slide down just fine until it was out of sight. The chute seemed safe!";
	now the noun is nowhere;
	
Instead of entering the mari-chute:
	try going east;

Instead of going nowhere from roof-tops when the noun is east:
	if mari-level is 0:
		if the broken-hanger is on mari-wires:
			say "I grabbed the two handles of the broken hangar and launched myself off of the roof top!

	I whizzed through the air, laughing my head off. Bikers turned around! Babies dropped their ice cream cones! Old men stood and clapped!

	Finally, a few feet from the train, I let go of the hanger, tucked in, and did a somersault through the closing train door and and into this car!";
			try ceasing;
			if mari-level is 0:
				say "'And that's when I discovered this body, already dead,' she says, finishing her story. 'I have never seen this man in my life[deliverunknown].'";
		otherwise:
			say "I couldn't jump down, it was too far; and I couldn't slide on the wires with my bare hands!";
	otherwise if mari-level is 1:
		if dafyddspotted is false:
			say "I had to try to find Dafydd first. Who knows where he could be by now?";
		otherwise:
			now secondmari is true;
			try ceasing;
			say "[The Mari] concludes her story, saying, 'I slipped straight down the chute and landed right next to the train platform. I rushed into the train right when it started, but as soon as I got in, the lights went out. When they went out, I found him dead, like this. I didn't want people to think it was me, so I made up the story about package earlier. Sorry,' she says sheepishly.";

Instead of jumping when the player is in roof-tops:
	say "There are a lot of ways you could jump down. Instead, you can type the direction you want to go."

Understand "jump [a direction]" as going when the player is in roof-tops.

Understand "slide down/on/-- [mari-wires]" as going when the player is in roof-tops.

Understand "slide down/on/-- [broken-hanger]" as going when the player is in roof-tops.

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
	
Acquaint-quip is a squip. The printed name of acquaint-quip is "Acquaintance".  Understand "Acquaintance" as acquaint-quip. 

The preview of acquaint-quip is "[The Mari] lied about knowing [the train-corpse]."

The targetresponse of acquaint-quip is "[if currenttarget is elen]'Well, well, well' says Elen, looking over at Mari. 'It seems like we all know who your number one suspect should be, don't we?' 

When Mari sticks her tongue out at her, Elen shakes her head and says, 'Incorrigible[otherwise if currenttarget is maeve]'Is that the courier? Odd that she would lie about that. Not that I know her very well, but if you ask me, it seems very suspicious. I hope you've discussed it with her[otherwise if currenttarget is arthur]He seems almost excited. 'Yes, a courier would be a perfect cover for someone to use to stalk and attack another. I feel like this case might be wrapped up very soon indeed[otherwise if currenttarget is mari]'Oooh, that probably doesn't look good for me does it? Yikes,' says Mari. 'Okay, fine. I did talk with him. Actually, the package I'm carrying belongs...' she says, as she unzips her satchel and pulls out the package, '...to him!'

Elen gasps and slaps the package out of her hands, saying 'Don't touch that! That's evidence!'

The package falls to the ground and rips open. Inside is a book that manages to land gracefully, the cover falling open. 

The book is signed inside. It says: 'To my biggest fan Ceri. Love, Maeve Miller'.

Everyone looks confused. 'Listen,' says Mari. 'Don't worry about it. I can explain everything[end if].'"

Report uttering acquaint-quip to mari:
	say "[bracket]Mari has a new statement to give.[close bracket][paragraph break]";
	now mari-level is 1;
	now the signed-book is in second-class;
	now the company-satchel is open;
	reset-mari;
	deliver ceri-quip;
	
Ceri-quip is a squip. The printed name of ceri-quip is "Ceri". Understand "ceri" as ceri-quip.

The preview of ceri-quip is "[The train-corpse] asked [the maeve] for an autograph for someone else."

The targetresponse of ceri-quip is "[if currenttarget is maeve]Maeve says, 'So? Lots of people ask me for autographs. It's not an abnormal thing.' She seems to be dodging the question; you'll have to find a more compelling clue to get her to talk.

For now you just nod, and say, 'I see[otherwise if currenttarget is elen]'Could be one of two things,' says Elen. Either his getting it for a friend or family member, or trying to sell it online. I'd suspect the latter. Autographs can be worth quite a bit, especially if they're rare[otherwise if currenttarget is mari]'Uh, yeah,' says Mari, 'I saw the book flop open just like you. It's not my business what people want to sell, I just do my job[otherwise if currenttarget is arthur]He shakes his head. 'Sorry, I wasn't familiar with Dafydd's personal life. I'm not sure who Ceri is[end if].'"

Instead of linking ceri-quip to signed-quip:
	linkcersign;
	
Instead of linking signed-quip to ceri-quip:
	linkcersign;

To linkcersign:
	say "[The maeve] claimed that [the train-corpse] was obsessed with her and wanted her autograph, but actually requested an autograph for someone else.";
	remove signed-quip;
	remove ceri-quip;
	deliver altered-quip;
	
Altered-quip is a squip. The printed name of altered-quip is "Altered". Understand "altered" as Altered-quip. 

The preview of altered-quip is "[The maeve] lied about [the train-corpse] wanting her autograph for himself.".

The targetresponse of altered-quip is "[if currenttarget is elen]'That seems such a strange thing to lie about. It doesn't even affect anything.' She thinks about it a bit. 'Honestly, why would she lie? It's so weird[otherwise if currenttarget is mari]'Wow,' says Mari. 'I mean, he seemed into the book, so I could see why she'd think that, but she literally was the one who wrote the autograph, so is she, like, delusional, or what? I don't get it[otherwise if currenttarget is arthur]He snorts. 'Why waste my time with such trivialities, Detective? If this woman,' he says, pointing to Maeve, 'wants to believe that a young man wanted her autograph for herself, who am I to judge? It doesn't even matter[otherwise if currenttarget is maeve]Maeve reddens deeply. She says, 'Fine. Fine. You know what? He didn't want his autograph for himself. I thought that that, well, that it was a little rude. Forgive me for not telling every painful detail of my life.'

She massages her temples more, and says, 'No, you know what? I will tell painful details. My life isn't quite as glamorous as I made it out to be. I was trying to preserve some of my dignity, but you've forced my hand[end if].'".

Report uttering altered-quip to maeve:
	say "[bracket]Maeve has a new statement to give.[close bracket][paragraph break]";
	now maeve-level is 1;
	resetmaeve;

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

Elen-level is a number that varies. Elen-level is 0.

Section 1 - Elen

train-locker is a room in statement-region.

Fake-elen is a woman in train-locker. The printed name of fake-elen is "Elen". Understand "elen" or "strong" or "chin" as Fake-elen.

The description of fake-elen is "I consider myself an upstanding citizen and a keeper of the law, and I expect others to do the same. I am fairly tall, rather plain, but have a strong chin. I have no pretensions about myself, officer."

The fake-uniform is worn by Elen. The printed name of the fake-uniform is "sleek black uniform". Understand "sleek" or "black" or "uniform" or "well" or "designed" or "well-designed" or "newer" or "model" as the fake-uniform. 

The description of the fake-uniform is "My uniform was the newer model, much better than the bulky old ones. It was sleek and black, and designed not to catch the attention of others and not to catch on the many protuberances that exist in a train car."

The doppelganger of elen is fake-elen.

Section 2 - Locker room

The printed name of train-locker is "Locker Room". The description of train-locker is "This morning I was in the locker room. Our accomodations are adequate: large individual lockers, clean bathrooms, but all old. Attendants are expected to be early, but few of us were. The newer hires lack the discipline of their elders[if elen-level is 1].

I was upset because some idiot had totalled my car the night before. Of course I was able to take a train to work; I have a discount. But it was going to cost me quite a bit of money. That lay heavy on my mind while I was getting ready[end if].

I'm not interested in describing the bathrooms or other parts of the building. But I could go to the [boldeast] to get to the train platforms."

The large-lockers are plural-named scenery in train-locker. The printed name of the large-lockers is "lockers". Understand "large" or "lockers" or "individual" or "clean" as the large-lockers. The description of the large-lockers is "I didn't concern myself about the others lockers, except on days where they had strange smells emanating from them or dripping liquids. Today they were at least adequately clean."

Instead of smelling the large-lockers:
	say "There isn't any particularly horrible odor from the lockers today."

An elen-locker is a closed, locked, lockable scenery container in train-locker. The printed name of the elen-locker is "locker". The indefinite article of elen-locker is "my". Understand "my" or "locker" as the elen-locker.

The description of the elen-locker is "My locker is of no concern to you, officer. Please let me go on."

Instead of opening or unlocking keylessly the elen-locker:
	say "My locker is of no concern to you, officer. Please, let me go on.";

Instead of unlocking the elen-locker with something:
	say "My locker is of no concern to you, officer. Please, let me go on.";

Gwentalked is a truth state that varies. Gwentalked is false.

Gwen is a woman in train-locker. "Gwen, another veteran of the railroad, was finishing up as well. She looked eager to talk to me, but seemed nervous." The description of Gwen is "Gwen was a few years older than me, a frivolous woman given to excess in imagination."

Instead of talking to Gwen:
	if gwentalked is true:
		say "Gwen had run out of interesting conversation, and I had no desire for piddling chit chat.";
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
		if elen-level is 1 :
			say "'Gee, Elen, you seem upset,' said Gwen in her voice, a little-kid voice which was grating coming from a grown woman.

	'Some jerk hit my car last night on the way home from work. I had to take the train this morning, Second Class,' I said, bitterly.

	Gwen tutted and said, 'Poor Elen. I'm sorry to hear that. People just have no decency any more. Just like all the thefts going on. They say even some attendants are losing their things.'

	'A damaged car is a much bigger problem than some missing earrings,' I said curtly. Gwen looked hurt by my tone, so I softened it and said, 'But I know what you mean. No moral character these days. In any case, I must be off.' 

	Gwen waved goodbye politely."
	
Before going east from train-locker when gwentalked is false:
	say "Gwen coughed loudly and looked in my direction. I could tell she was trying to get my attention. Annoying, of course, but I had learned to humor her quickly, as she would become much worse later on if she thought I were annoying her." instead;

Instead of waving when gwen is in the location:
	say "I wasn't about to lower myself to frivolous hand waving."

Section 3 - Train Platform

Platform-A is east from train-locker. The printed name of platform-A is "Platform A". The description of Platform-A is "There's little in life better than a train platform, especially ours. A lofty arched glass ceiling allowing the gentle light of day to trickle down. The bustle of daily life: humanity in motion, from workers headed to jobs to children playing at a nearby playground. There were less people here this morning than usual, though.

A train was ready to leave, off to the [boldeast]. I could return to the locker room to the [boldwest]."

The elen-playground is distant scenery in platform-a. The printed name of the elen-playground is "playground". Understand "play" or "ground" or "playground" or "slide" or "high" or "swing" or "swings" or "children" or "child" as the elen-playground. The description of the elen-playground is "The playground was simple, with a high slide and a few swings. But the children didn't seem to care, laughing and running about. That's what kids need: simplicity, fresh air, and exercise."

The glass-ceiling is distant scenery in platform-A. The printed name of the glass-ceiling is "glass ceiling". Understand "glass" or "ceiling" or "lofty" or "arch" or "arched" or "gentle" or "light" as the glass-ceiling.

The description of the glass-ceiling is "With the glass ceiling, the architect clearly wanted to direct the viewers attention to the heavens, receiving gentle sunlight by day and allowing the stars to shine through by night."

The multi-passengers are scenery people in platform-A. The printed name of the multi-passengers is "workers". Understand "worker" or "workers" or "shopper" or "shoppers" or "pasenger" or "passengers" or "humanity" as the multi-workers. The description of the multi-workers is "I always study the passengers on our train, guessing at their lives. Many are workers, some that I see every day. Others are perhaps shoppers or something more exciting. This morning, though, there was less of all types of people."

ElenChilling is a recurring scene.
ElenChilling begins when the player is Emrys-Weaver.
ElenChilling ends when the player is in Platform-A.
When ElenChilling ends:
	say "My supervisor was looking for me as I walked onto the platform, and called me over. 

He said, '[if elen-level is 0]We're missing crew today because of that undercooked sausage at the pizza party last night. I know you were scheduled for the B-line today, but we need you on the A-Line. Can you do that?'

Typical that I was the one being given additional responsibilities, a 'reward' for being a good worker. 'Of course, sir,' I answered politely, hiding my anger. 'Right away[otherwise]You're late.' It was an accusation.

I bristled, but kept my cool. Anger would only end up with me losing my job.

'My car was in an accident yesterday,' I said. 'Some young hooligan ran into it when it was parked. I had to take an early train.'

'Is that so?' he said, seeming unimpressed. 'Well, we just had to send off the B-Line train without you. Now we're short on the A-Line. Why don't you get in there, and do your job,' he said, pointing at the train.

'Of course sir,' I said. 'Right away[end if].'

'Good,' he said, not even caring how I responded or felt. 'We have a light load, since we're sending this over early for the holiday rush later today. There's a police officer in the lavatory I already ticketed in First Class, but make sure to grab the tickets of anyone else aboard.'

'Of course,' I said dryly. As if I needed an explanation of how to do my job.

'Well, I'm off then. Cheers!' he said, and walked off."

Section 4 - Train

Fake-second is east from Platform-A. The printed name of Fake-second is "Second Class (in the past)". "The Second Class car is designed for maximum efficiency. It is not for the weak. Rows of hard, posture-correcting plastic seats. Easily cleanable floors. Secure windows. I wish all the cars were like this.

The car was almost entirely empty. Not surprising, really; the trip to Sector 18 is long and expensive, and very few people can take the difficult train-ride.

The first class car was to the [bold type]north[roman type]."

The second-floor is scenery in fake-second. The printed name of the second-floor is "floor". Understand "floor" or "rubbery" or "rubber" or "texture" or "easily" or "cleanable" or "easily-cleanable" or "textured" or "utilitarian" or "sturdy" or "plastic" as the second-floor.

The description of the second-floor is "I had washed these floors many times in the past, before I had reached my current position. Never again."

The elen-seats are plural-named scenery in fake-second. The printed name of the elen-seats is "orange bucket seats". Understand "row" or "bucket" or "orange" or "harder" or "plastic" or "seat" or "seats" or "hard" or "correcting" or "posture" or "posture-correcting" or "chair" or "chairs" or "molded" or "uncomfortable" as the elen-seats. The description of the elen-seats is "The chairs used to be a softer, more cushioned plastic. It encouraged loafers. I was quite pleased when they transitioned to the harder plastic."
	
The elen-windows are plural-named scenery in fake-second. The printed name of the elen-windows is "secure windows". Understand "secure" or "window" or "windows" or "dingy" or "small" or "numerous" or "gunk" or "yellow" as the elen-windows. The description of the elen-windows is "These windows are specially designed to be more secure, and to discourage the users from manipulating them."

Instead of going west from fake-second:
	say "I wasn't ready to jump from a moving train. Besides, the train was closed."

The Elen-dafydd is a man in fake-second. "[if elen-level is 0]A nervous young man was sitting patiently in the car[otherwise if dafydd-ticket is held by elen-dafydd]A nervous young man wasthe only passenger in this car[otherwise]Dafydd was waiting to see what I would do[end if]." Understand "nervous" or "young" or "Man" or "dafydd" as elen-dafydd. The printed name of elen-dafydd is "nervous young man". The description of elen-dafydd is "The young man seemed quite nervous, and I suppose he must have been cold, because he was wearing his gym clothing."

The elen-gym is worn by elen-dafydd. The printed name of the elen-gym is "gym clothing". Understand "gym" or "clothing" or "tank" or "shorts" as the elen-gym. The description of the elen-gym is "He was wearing shorts and a tank, just like I do when I go to the gym. Which I do regularly, three days a week."

A train-ticket is a kind of thing. Understand "ticket" as a train-ticket. 

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
		now the dafydd-ticket is held by the player;
	otherwise if maeve-ticket is held by the player and arthur-ticket is held by the player:
		say "'Okay, they should leave us alone for a bit. What's your proposal?'

'Here,' he said. 'This watch, it's an authentic Arawnz. It's got to be worthy more than your car. If you take it, we're even, right?'

I took the watch he held out and looked it over. I have some experience with high-end luxury goods, and I could tell at once this would cover my car. Twice, in fact, but I didn't tell him that.

'That's fine,' I said, and put it on.

The train began to thrum, and the doors started to close. Just then, a courier burst in, breathing heavily. Her eyes locked with Dafydd. 'What are you doing here?' he said, seeming deeply confused.

The train hit the first tunnel, and everything became dark. I heard Dafydd shout, and I also heard the voices of the First Class passengers.";
		now elen-watch is worn by fake-elen;
		now secondelen is true;
		try ceasing;
		say "'When the lights went back on, Dafydd was dead, and everyone was standing over him. I sent them off to their car, and stood guard,' says Elen.

She adds, 'You can see why I didn't mention the watch, or the car. It paints me in a bad light.'";
	otherwise:
		say "I had nothing more to say to [the elen-dafydd] at the time."

The elen-watch is a wearable thing. Understand "wristwatch" or "wrist" or "watch" or "monogram" or "monogrammed" or "expensive" or "DY" or "expensive-looking" or "gold" or "alloy" or "looking" as the elen-watch. The description of the elen-watch is "[if elen-watch is worn by the player]The wristwatch was almost certainly more valuable than my old car. I was happy with the trade[otherwise]The watch that [the elen-dafydd] was wearing looked very expensive. And quite tasteful[end if].'" The printed name of the elen-watch is "wristwatch".

Section 5 - More train

Fake-first is north from fake-second. The printed name of fake-first is "First Class (in the past)". "The First Class car was appropriately designed for the upper crust of society. Expansive windows, bright silk curtains, plush armchairs. It's the train car of your dreams. At least, that's the goal."

The elen-armchairs are plural-named scenery in fake-first. The printed name of elen-armchairs is "scattered armchairs". Understand "scattered" or "chair" or "arm" or "armchair" or "plush" or "upholstered" or "upholstery" or "armchairs" or "rivet" or "rivets" or "riveted" or "chairs" or "bolt" or "cushion" or "cushions" or "luxury" or "bolts" or "seat" or "seats" as the elen-armchairs. The description of the elen-armchairs is "Our luxury chairs are for our most special clients. It gives the lower classes something to aspire to.".

Instead of searching the elen-armchairs:
	say "I settled the cushions but found nothing."

Instead of looking under the elen-armchairs:
	say "It would be undignified for me to go looking under chairs while clients are around."

Instead of entering the elen-armchairs:
	say "Staff are not allowed in the chairs, Detective."

The elen-carpet is ambiguously plural scenery in first-class. The indefinite article of the elen-carpet is "some". The printed name of the elen-carpet is "luxurious carpet". Understand "carpet" or "luxury" or "luxurious" or "soft" as the elen-carpet. The description of the elen-carpet is "Our carpet is actually one of our biggest expenses. But it always comes up first in customer satisfaction surveys. So keeping it fresh is our biggest maintenance priority."
 
Instead of touching or rubbing the elen-carpet:
	say "I refrained from indulging in my personal appetites during the exercise of my duties."

Instead of looking under the elen-carpet:
	say "It's worth my job if I damage the carpets. No thank you, officer."

The elen-panes are plural-named scenery in fake-first. The printed name of the elen-panes is "windows". Understand "window" or "solid"or "expansive" or "pane" or "panes" or "immovable" or "wide" or "picture" or "windows" as the elen-panes. The description of the elen-panes is "I had fought for the larger windows before, when the company was redesigning the First Class cars. Due to my efforts, these windows are now two centimeters longer than before. You're welcome."

Instead of searching the first-windows:
	try examining the moving-landscape

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

The Elen-maeve is a woman in fake-first. "[A elen-maeve] and [a elen-arthur] sat far apart from each other in the train car, each lost in thought." The printed name of elen-maeve is "flashy woman". Understand "maeve" or "flashy" or "woman" or "extravagant" as the elen-maeve. The description of elen-maeve is "I pursed my lips when looking over this woman. [italic type]Nouveau-riche[roman type] was my immediate assessment. The tacky sort that goes for flashy looks and expensive accessories. She probably didn't even know that the truly rich tend to wear whatever is comfortable or looks best, regardless of the price. A two-credit t-shirt may be just as good as a thousand-credit suit."

The maeve-ticket is a train-ticket held by elen-maeve. The printed name of the maeve-ticket is "flashy woman's ticket". Understand "woman's" or "maeve's" or "her" or "flashy woman's" or "first" or "class" or "first-class" or "pristine" or "flashy" as the maeve-ticket.

The description of the maeve-ticket is "This was a first-class ticket in pristine condition."

The Elen-arthur is a man in fake-first. The printed name of the elen-arthur is "distinguished old man".  Understand "distinguished" or "old" or "man" or "arthur" as the elen-arthur. The description of the elen-arthur is "This man commanded respect with his presence. I could immediately tell he was one used to authority."

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
	say "'Ticket, please,' I told the extravagant woman. She wasn't looking at me at all; instead, she seemed to be looking for someone.

My voice startled her. 'Mmmh, what?' she said.

'Ticket, ma'am,' I said tersely. With these types you just have to be firm.

'Oh, of course,' she said, handing me the ticket she had been dangling from her hand.";
	now maeve-ticket is carried by the player;

Instead of taking arthur-ticket when arthur-ticket is held by elen-arthur:
	try talking to elen-arthur;

Instead of talking to elen-arthur:
	say "'Ticket, please, sir,' I said politely. 

He handed it to me silently. He seemed deep in thought.

'Can I get you anything, sir?' I asked. We kept a few things in a different car that we reserved for our elite guests, and this man certainly seemed like he belonged to that category. He almost seemed familiar...maybe I'd seen him in the news? But no, I had to focus on my duties.";
	now arthur-ticket is carried by the player;

Marienters is a recurring scene. Marienters begins when allmariready is true.

Marienters ends when the player is emrys-weaver.

To decide if allmariready is true:
	let temp be true;
	if elen-level is not 0, now temp is false;
	if the player is not fake-elen, now temp is false;
	if dafydd-ticket is held by elen-dafydd, now temp is false;
	if maeve-ticket is held by elen-maeve, now temp is false;
	if arthur-ticket is held by elen-arthur, now temp is false;
	if the player is in fake-first, now temp is false;
	decide on temp;
	
When marienters begins:
	say "As I re-entered the second class car, I heard the all-clear signal from above, and the train doors began to close.

Just then, a young courier burst in carrying a satchel. 'Dafydd!' she shouted. 'Wait!' [The elen-dafydd] stared at her and said, 'What are you doing? You're not supposed to be here!'

The two passengers from the other car came bursting in. 'Dafydd!' shouted the older man; 'Dafydd?' said the tacky woman.

Just then, we entered into our first tunnel. The lights went off, and everything was chaos. When the lights went on again, the young man was dead.";
	try ceasing;
	if mari-level is 0:
		say "'And so I ushered the first-class passengers back to their car, and stayed here, guarding the body,' she said. 'I knew there was a police officer aboard, so I waited for you to come out.'

	She stretches her arms, relieving her stiff posture. As she does so, a watch slides into view out from her uniform sleeve.";
		now the arawnz-watch is worn by Elen;
	
[add a quip here about mari knowing dafydd, and use it to contradict unknown]

The arawnz-watch is a wearable thing. Understand "wristwatch" or "wrist" or "watch" or "monogram" or "monogrammed" or "expensive" or "DY" or "expensive-looking" or "gold" or "alloy" or "looking" as the arawnz-watch. The description of the arawnz-watch is "This wristwatch looks very expensive. Its made of some high-purity gold alloy, judging from your metallurgical experience. It has an unfamiliar logo: 'Arawnz', and is monogrammed with the initials DY[deliverwatch]."

To say deliverwatch:
	deliver watch-quip;
	
Watch-quip is a squip. The printed name of watch-quip is "Bling". Understand "bling" as watch-quip. The preview of watch-quip is "[The Elen] is wearing an expensive, monogrammed watch."

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
	
Appropriation-quip is a squip. The printed name of appropriation-quip is "Appropriated". Understand "appropriated" as appropriation-quip. The preview of appropriation-quip is "[The elen] somehow got a hold of [the train-corpse]'s distinctive watch."

The targetresponse of appropriation-quip is "[if currenttarget is maeve]'That little...! I can't believe a train attendant would stoop so low as to steal from a charming young man like that[otherwise if currenttarget is arthur]'From what I know about Dafydd, he didn't have enough money to give such things away frivolously,' says Arthur. 'Something fishy must be going on with the attendant. You should look into it, Detective[otherwise if currenttarget is mari]'Wait, so she has his watch?' asks Mari, pointing between the attendant and the corpse. 'Huh, seems weird to me. I'd talk to her about it[otherwise if currenttarget is elen]Elen starts to say something, but closes her mouth and considers. After a few minutes, she tilts her head and says, 'Well, you see Detective, it was a gift.'

'Doesn't seem like the kind of thing someone would give as a birthday present,' you say.

She furrows her brows. When she answers, her voice is snippy. 'It's not like that. Let me give you a new statement; I'll tell you the truth, although it isn't good for the young man down there[end if].'"

Report uttering appropriation-quip to elen:
	say "[bracket]Elen has a new statement to give.[close bracket][paragraph break]";
	now elen-level is 1;
	reset-elen;

Chapter 9 - Big switch

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

Major-switch is a scene. Major-switch begins when secondtime occurs;

Every turn:
	if major-switch has happened:
		if the time since major-switch began is one minute:
			say "A whistle blows, and the train begins to slow down.

You've arrived at a station. Multiple individuals in police uniforms come in and surround the body, taking pictures and collecting evidence.

A server comes by with trays and sandwiches, and offers them to you all, saying, 'I hope y'all are enjoying yourselves!'

Elen grabs a large peanut butter sandwich. While chewing on it, she winks at you and says, 'You're doing great, hon. Keep it up!'

The crews finish and carry out the body on a stretcher. You can now access the station to the [boldwest].

Elen wipes her hands and says, 'Show time,' then puts on a serious expression.";
			end the story finally saying "Thanks for playing the beta!";

[The whole dimension should end with the asking how they found you at the last second, then someone saying it was automatically added by computer, then them recognizing who you are at the last second]

[There will be a hidden plaque in this room describing the manuever that Mefe can do to help pull the ship together. Maeve is sitting on it???????? No, she tells the story at the very end.]

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

The block vaguely going rule response (A) is "[if the player is emrys-weaver]What direction do you want to go[otherwise]What direction did you mean, Detective[end if]?"

To give is a verb.

 The can't take yourself rule response (A) is "[if clone-you is enclosed by the location of the player]Your clone[setcloneact] might not like that, and it's kind of weird[otherwise][We] [adapt the verb give] [ourselves] a big hug[end if]."

 The can't take other people rule response (A) is "[if the noun is a man or the noun is a woman]People[otherwise]Animals[end if] aren't possessions, so [we] [can't] take them."
 The can't drop yourself rule response (A) is "[if the player is emrys-weaver]Never let go of yourself[otherwise]But that's not something I did, Detective[end if]."
 The can't eat unless edible rule response (A) is "[if the player is emrys-weaver]You've learned from long experience not to eat anything that you're not sure is food[otherwise]That wasn't edible[end if].".

Instead of eating the player:
	if the player is emrys-weaver:
		say "You chew on yourself a little. It's a nervous habit.";
	otherwise:
		say "No, [we] don't remember doing that."

 The examine undescribed things rule response (A) is "[if the player is emrys-weaver]You don't see any interesting details[otherwise]I don't remember what it looked like[end if]."
 The standard looking under rule response (A) is "[We] [don't] find anything underneath [the noun]."

The block showing rule response (A) is "[We] [don't] provoke a reaction."
	
The block throwing at rule response (A) is "[if the player is emrys-weaver]You never know when you might need something; better not to throw it[otherwise]But Detective, I didn't throw that[end if]."
	
The block attacking rule response (A) is "[if the player is emrys-weaver]You'll resort to violence when you have to. But not right now[otherwise]I can assure you I didn't do that[end if]."

The kissing yourself rule response (A) is "[if the player is Emrys-weaver]You already love yourself quite a bit[otherwise]I consoled myself[end if]."
	
The block kissing rule response (A) is "This [are] better imagined than attempted."

To wait is a verb.

The standard report waiting rule response (A) is "[if clonesubmerged is false and clone-you is enclosed by the location]You wait for a bit, watching your clone.[otherwise][We] [adapt the verb wait], taking [our] time.".

The report touching yourself rule response (A) is "[if the player is Emrys-weaver]You feel like skin, meat and bones[otherwise]This isn't role-play, Detective[end if]."
The report touching other people rule response (A) is "[if the player is emrys-weaver]This isn't a game about wandering hands[otherwise]Actually, I didn't touch anyone at the time[end if]."
The report touching things rule response (A) is "[if the player is emrys-weaver]You don't gain any useful tactile information from your attempt[otherwise]I didn't feel anything special[end if]."
The can't pull people rule response (A) is "[if the player is emrys-weaver]You can't find a good way to pull efficiently. Or politely, for that matter[otherwise]I didn't pull anyone, detective[end if]."
	
The can't push people rule response (A) is "There [are] better ways to deal with people than pushing."

The can't turn people rule response (A) is "Turning people is not a necessary part of this game."
	
The innuendo about squeezing people rule response (A) is "[if the player is emrys-weaver]You tried that with others, once, to disastrous results. Never again[otherwise]Please, detective, I didn't squeeze anyone[end if]."
	
The block burning rule response (A) is "[if the player is emrys-weaver]As the crewmember of a starship, you've long eschewed fire except in necessity[otherwise]I certainly didn't burn anything at the time[end if]."
The block waking up rule response (A) is "[if the player is emrys-weaver]Isn't all of life a dream?[otherwise]To stop a flashback at any time, type STOP[end if]."

To take is a verb. To try is a verb.

The block thinking rule response (A) is "[We] [adapt the verb take] a step back and [try] to remember [our] goals."
The report smelling rule response (A) is "[if the player is emrys-weaver]You have difficulty smelling things, most days[otherwise]I didn't notice what anything smelled like, then[end if]."
The report listening rule response (A) is "[if the player is emrys-weaver]It's hard to pick out any unusual sounds that you haven't already noticed[otherwise]I don't remember what I heard. Sorry[end if]." 
The report tasting rule response (A) is "[if the player is emrys-weaver]Tasting things is a last resort. And you're not even close to needing to do that[otherwise]I don't remember the taste of anything[end if]."	
The block cutting rule response (A) is "[if the player is emrys-weaver]Cutting things might render something useful inoperational. Better to not[otherwise]I didn't cut anything at the time[end if]."
 
The parser error internal rule response (E) is "I didn't understand the object in that command.";

The parser error internal rule response (X) is "You forgot to enter a command.";

The parser error internal rule response (N) is "I didn't understand the first word or two that you typed."; 

The parser error internal rule response (B) is "I understand simple sentences best; I believe you just want to ";[fix this and the next one]

The parser error internal rule response (C) is "I understand a simple set of commands; I believe you just want to (go)";
	
The report jumping rule response (A) is "[if the player is emrys-weaver]You jump up into the air fairly athletically before landing[otherwise if the player is maeve]I jumped, and did well, I think[otherwise if the player is mari]I jumped really high[otherwise]I didn't jump, Detective[end if]."

The block tying rule response (A) is "[if the player is emrys-weaver]You will rarely, if ever, need to tie anything. There's no need to do so right now[otherwise]I don't recall tying anything, actually[end if]."

The block drinking rule response (A) is "Drinking unusual beverages [are] not one of [our] pastimes."
The block saying sorry rule response (A) is "Feeling guilty for something?"
The block swinging rule response (A) is "Swinging [aren't] the best option here."

The can't rub another person rule response (A) is "[if the player is emrys-weaver]That might get you in trouble[otherwise]This isn't role-play, Detective[end if]."

The block buying rule response (A) is "[if the player is emrys-weaver]Any financial transactions you have can be accomplished by the physical transfer of legal tender[otherwise]I didn't buy anything at the time[end if]."
The block climbing rule response (A) is "[We] [don't] see a clear path upwards."

The block sleeping rule response (A) is "[if the player is emrys-weaver]Despite the craziness of the day, you're not tired yet[otherwise]I wasn't sleepy, not any more[end if].".

The can't go that way rule response (A) is "It [don't] look like [we] [can] go that way."

Asking someone for something is chatty behavior. Telling someone about something is chatty behavior. Answering someone that something is chatty behavior. Asking someone about something is chatty behavior.

Instead of chatty behavior:
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

Carry out swimming:
	if the player is emrys-weaver:
		say "You don't swim at all, since your recorder could get wet.";
	otherwise:
		say "No, I don't remember swimming at the time."

xyzzying is an action applying to nothing. Understand "xyzzy" or "plugh" as xyzzying. 

A room can be xyzzypossible or not xyzzypossible. A room is usually not xyzzypossible.

frankytrue is a truth state that varies. Frankytrue is false.

Carry out xyzzying:
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

Chapter 7 - Murder Mystery

Test entry with "u/n/take wallet/open it/open latch/e"

Test firstmaeve with "show badge to maeve/say statement to maeve/eat breakfast/s/wear jumpsuit/n/e/take books/talk to dafydd/sign book/give copy to dafydd/talk to dafydd/n"

Test firstarthur with "show badge to arthur/say statement to arthur/open fridge/take 4b/take 5c/put 4b in microscope/look in microscope/take 4b/put 5c in microscope/look in microscope/take 5c/take red/mark 5c/mark 4b/put all slides in fridge/go east/turn on computer/go west/talk to dafydd/go south/talk to dafydd"

Test firstmari with "s/show badge to mari/say statement to mari/talk to margie/take package/s/e/s/u/take hanger/put hanger on wires/e"

Test firstelen with "show badge to elen/say statement to elen/talk to gwen/e/e/talk to man/n/talk to man/talk to woman/s"

Test inspection with "x watch/x corpse/x fist/x receipt"

Test allfirst with "test entry/test firstmaeve/test firstarthur/test firstmari/test firstelen/test inspection" 

Test linking with "T/link punch to collision/link bling to timepiece/link unaware to postal/say acquaintance to mari/link ceri to collector"

Test secondelen with "say appropriated to elen/say statement to elen/talk to gwen/e/e/talk to dafydd/n/talk to man/talk to woman/s/talk to dafydd"

Test secondmari with "say statement to mari/talk to dafydd/s/e/s/u/x platform/e"

Test secondmaeve with "n/say altered to maeve/say statement to maeve/eat breakfast/open wardrobe/wear jumpsuit/e/take box/talk to dafydd/sign copy/give copy to dafydd/talk to dafydd/n"

Test secondarthur with "say altercation to arthur/say statement to arthur/x samples/e/turn on computer/w/talk to dafydd/s/talk to dafydd"

Test allsecond with "test linking/test secondelen/test secondmari/test secondmaeve/test secondarthur"

Test allmurder with "test allfirst/test allsecond/z"

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


The exposition fairy is a talkative woman in Hangar-room. "The exposition fairy is here, eager to dump some exposition[deliverexplanation]." The description of the exposition fairy is "She is a small woman with vibrant rainbow wings, which aren't implemented because she's getting taken out as soon as testing is over. Try TALK TO fairy if you don't know how conversation works in this game, or SAY EXPLANATION if you do." Understand "wand" or "wings" or "wing" as the exposition fairy.

To say deliverexplanation:
	deliver fairy-explanation;
	
Fairy-explanation is a quip. The printed name of Fairy-explanation is "Explanation". Understand "explanation" as fairy-explanation. The preview of fairy-explanation is "Hey, can you tell me everything about the game?" The target of fairy-explanation is the exposition fairy.

The targetresponse of fairy-explanation is "'Of course! This game will eventually have a prologue where it says that you, Emrys Weaver, are the Storyweaver of the Starship Eilifligr, a relatively unimportant position on a seedship carrying colonists to a distant planet. Your ship is badly damaged and everyone is going to die. Strange rips or tears in space have opened up in different rooms on the ship. You are the only one who can see them, and the only one who can go through them.

'You are wearing a recorder that records all audio you hear, and can help with translation. It's what enables your conversation system. You can examine the recorder for more info.

'To start this demo, go [bold type]up[roman type] and then [boldnorth] through the tear in space you see. This room you're in and the ones around it are unfinished, and aren't ready for testing yet. 

'Another part of the game is complete, to the [boldeast]. It's already been tested, but if you have time to check it out that would be cool.

'Good luck!' she says, and waves her wand at you."

['To start this demo, go to the [boldeast]. The tear in space to the [boldnorth] of you in this current room, the Hangar, is very underimplemented; however, it contains one machine that will be necessary for you to complete the testing of this game. Similarly, there is a tool in the tear in space to the [boldwest] of you that will be used in one or two places in the demo.']

[The tear in space to the [boldnorth] of you in this current room, the Hangar, is very underimplemented; however, it contains one machine that will be necessary for you to complete the testing of this game. Similarly, there is a tool in the tear in space to the [boldwest] of you that will be used in one or two places in the demo.]

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

[maybe add quotes at the end of each section, making the transition more real?]

[add rules for each region about showing the police badge to someone?]

[player MUST die to save the ship!]

[precinct 13 stamp only works on special materials, and says so on its lable 'only works on official precinct 13 material]

[change jumpsuit in flashback to different clothes since she wouldn't wear it multiple days, or make it all happen today; or explain that it's her favorite and she wore it because he'd like it, or he found her because she wore it]
