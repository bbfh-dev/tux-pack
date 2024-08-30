SPEECH = {
    "random": [
        "I love you, Learnix!",
        "I hate you, Learnix!",
        "IM DEAD ☠",
        "LMFAO",
        "AHSBJHASVBDJHAS",
        "Eew...",
        "Hell nah ☠",
        "OH NAH",
        "Nope",
        "Yes",
        "Disagree",
        "Agree!",
        "Agree to disagree.",
        "Holy f*ck.",
        "OMG!",
        "MODS, escort him out of the building!",
        "MODS, cut his nutsack off!",
        "Look at this guy in chat",
        "I want a new friend...",
        "I'm your best friend!",
        ":D",
        ":(",
        "Oops!",
        "Whoops!",
        "Uh oh!",
        "he-he",
        "OH HELL NAH, flawg messed up",
        "Caseoh body type",
        "lol",
        "WHAT KIND OF FACEBOOK ASS",
        "Dayum",
        "This sh*t is bloat",
        "crunchy ass laugh",
        "bro uses flatpak ☠",
        "that guy looks like he uses snap ☠",
    ],
    "random:arch": [
        "I use arch btw.",
        "Did I mention that I use arch btw?",
        "I don't remember if I mentioned it, but here's my neofetch!",
        "I use arch btw :3",
        "Did you know, I use arch btw?",
        "Arch!",
    ],
    "random:gentoo": [
        "Compiling response...",
        "Compiling a reason to give a f*ck...",
        "She portage on my @world until my core dumped",
    ],
    "gather_wood": [
        "We should build a house here!",
        "Linux users unite!",
        "Wait for us to get some wood for a house.",
        "This place is nice, let's build a house here!",
        "Get the wood, tuxes!",
        "You chop that tree, I'll take care of this one",
    ],
    "give_wood": [
        "Here, build us a house!",
        "take this",
        "Now get us a house!",
        "Now build",
        "Can you build us a nice house, please?",
        "Move your muscles, make us a mansion",
        "Now we need a mansion!",
        "A small house will work",
        "I need a nice room as well",
    ],
    "hurt_happy": [
        "Ouch!",
        "Yikes!",
        "Ack!",
        "Oof, that hurts!",
        "Let me be!",
        "Leave me alone",
    ],
    "hurt_moody": [
        "Try me, b*tch!",
        "Oh you, f*cker",
        "YOU DO THAT ONE MORE TIME...",
        "YOU SON OF A TUX!",
        "Come on princess, try me!",
        "B*tch!",
        "One more hit and I'll install Windows on your machine.",
        "You’re skating on thin ice, buddy!",
    ],
    "hurt_mad": [
        "It's f*cking over for you",
        "You better run...",
        "come here, little f*cker",
        "You’re about to get a taste of my flippers!",
        "You picked the wrong penguin to mess with!",
        "Chill out? I think not!",
        "Come here, little sh*t",
    ],
    "hurt_chill": [
        "Alright, chill",
        "I get it.",
        "Pipe down, lil bro",
        "Oh hell nah... ☠",
        "AIGHT, Chill!",
        "Time out, time out!",
        "Go take a breather!",
        "Leave me alone!",
        "#@%!",
        "🤓",
    ],
    "catch_up": [
        "Wait for me!",
        "HO-O-LD!",
        "I don't want to get lost!",
        "PLEASE wait for me!",
        "Let me catch up!",
        "Stay there, I'm a bit slow!",
        "A-A-A-A-A-H",
        "WA-A-A-A-IT",
        "Hol' UP!",
    ],
    "cought_up": [
        "Alright, sorry...",
        "Thanks for waiting",
        "Okay, I'm here!",
        "You can continue now",
        "Oof, close one!",
        "Close call!",
        "Thank you!",
        "* is out of breath *",
        "☺",
    ],
    "contest": [
        "what are you looking at?",
        "...",
        "first who moves is gay",
        "yes?",
        "what's up?",
    ],
    "shit_talk": [
        "should we kill this guy?",
        "this guys is so rude to us... 😒",
        "we should push him off the edge of a mountain some time",
        "look at this ugly ass forehead ☠",
    ],
    "wisper": [
        "yeah he did say that",
        "I'm not a part of this",
        "It was his idea, not mine",
        "I'm not a part of this, just letting you know!",
        "you heard what he said.",
    ],
    "in_forest": [
        "This forest is nice.",
        "I love the breeze here.",
        "I wish Fooga would build a house in here...",
        "This forest is amazing",
        "Holy tux, this place is BO-O-ORING!",
        "Aww, I just saw a bee!",
        "I want to stay in this forest!",
        "This forest is terrible",
    ],
    "in_desert": [
        "This place is so hot! 🥵",
        "I HATE THIS PLACE",
        "Penguins ARE NOT made for deserts... 🥵",
        "Holy sh*t this place is hot 🥵",
        "PENGUINS AREN'T MADE FOR THIS",
        "AAAAAUGH",
    ],
    "in_cold": [
        "What an awesome place!",
        "This place is lovely!",
        "What a cool place...",
        "Home sweet home!",
        "Reminds me of my childhood...",
        "I want a f*cking igloo...",
        "Love this.",
    ],
    "in_water": [
        "Penguins like swimming! 😄",
        "The water is cold! 😢",
        "I wonder if there's fish around. 😄",
        "Catch us some fish! 😄",
        "Woo-hoo! 😄",
    ],
}

if __name__ == "__main__":
    lines = ["data modify storage minecraft:tux speech set value {}\n"]
    for key, speeches in SPEECH.items():
        if ":" in key:
            p1, p2 = key.split(":")
            lines.append(
                "data modify storage minecraft:tux speech."
                + p2
                + "."
                + p1
                + " set value ["
                + ", ".join([f'"{i}"' for i in speeches])
                + "]\n"
            )
            continue
        lines.append(
            "data modify storage minecraft:tux speech."
            + key
            + " set value ["
            + ", ".join([f'"{i}"' for i in speeches])
            + "]\n"
        )
    with open("./dist/load_speech.mcfunction", "w") as fp:
        fp.writelines(lines)
