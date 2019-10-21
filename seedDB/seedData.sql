
USE `project3`;
INSERT INTO `startingTasks` (`taskCredit`, `task`)
VALUE
(3, 'Then you can use power to advance through the game!'),
(3, 'Each time you complete a task you gain power.'),
(3, 'Start by creating a task of your own!');

USE `project3`;
INSERT INTO `defaultShip` (`attack`, `defense`, `speed`, `maxHP`, `name`, `picture`)
VALUE
(5, 5, 10, 10, 'Outpost Cruiser', './images/cruiser-sm.svg'),
(5, 5, 5, 15, 'Alien Pod', './images/pod.svg'),
(5, 10, 5, 10, 'Android Sphere', './images/sphere.svg'),
(10, 5, 5, 10, 'Cyborg Craft', './images/craft.svg');

USE `project3`;
INSERT INTO `prompts` (`prompt`, `description`, `option1`, `option2`, `event1`, `event2`, `param1`, `param2`, `image`)
VALUES
	(
		"You've recieved a distress signal from a nearby asteroid.", 
		"1 -- Initial prompt",
		"Respond", 
		"Ignore",
		"loadPrompt",
		"loadPrompt",
		"2", 
		"2",
		"./images/placeholder.jpg"
	),
    (
		"It's an ambush, You're attacked by space pirates!",
        "2 -- Respond to distress signal",
        "Engage",
        "Flee",
		"loadPrompt",
		"loadPrompt",
        "4",
        "5",
        "./images/placeholder.jpg"
	),
    (
		"Nope",
		"3 -- ignore that shit",
        "fly away",
        "faster",
		"loadPrompt",
		"loadPrompt",
        "99",
        "99",
        "./images/placeholder.jpg"
	),
    (
		"Engage",
        "4 -- engage",
        "Attack",
        "Raise shields",
        "attack",
        "defend",
        "x",
        "x",
        "./images/placeholder.jpg"
	),
    (
		"Take evasive action",
        "5 -- flee enemy ship",
        "Use Thrust",
        "Conserve Power",
        "flee",
        "flee",
        "x",
        "0",
        "./images/placeholder.jpg"
	),
    (
		"DIRECT HIT!, Enemy vessel is returning fire.",
        "6 -- hit, return fire",
        "Raise Shield",
        "Conserve Power",
        "defend",
        "defend",
        "x",
        "0",
        "./images/placeholder.jpg"
	),
	(
		"DIRECT HIT!, Enemy vessel is heavily damaged and fleeing",
        "7 -- hit, enemy flees",
        "Pursue",
        "Ignore",
        "loadPrompt",
        "loadPrompt",
        "17",
        "25",
        "./images/placeholder.jpg"
	),
    (
		"DIRECT HIT! Enemy vessel destroyed",
        "8 -- hit, enemy destroyed",
        "Salvage",
        "Ignore",
        "loadPrompt",
        "loadPrompt",
        "20",
        "25",
        "./images/placeholder.jpg"
    ),
    (
		"MISS! Enemy vessel is returning fire!",
        "9 -- miss, return fire",
		"Raise Shield",
        "Conserve Power",
        "defend",
        "defend",
        "x",
        "0",
        "./images/placeholder.jpg"
	),
        (
		"Enemy fires, and misses",
        "10 --enemy missed",
		"Return Fire",
        "Flee",
        "attack",
        "loadPrompt",
        "x",
        "5",
        "./images/placeholder.jpg"
	),
	(
		"Enemy hits, you've taken light damage",
        "11 -- hit, severe damage",
		"Return Fire",
        "Flee",
        "attack",
        "loadPrompt",
        "x",
        "5",
        "./images/placeholder.jpg"
	),
	(
		"Enemy hits, you've taken severe damage",
        "12 -- hit, severe damage",
		"Return fire",
        "Flee",
        "attack",
        "loadPrompt",
        "x",
        "5",
        "./images/placeholder.jpg"
	),
	(
		"Enemy hits, your ship is destroyed",
        "13 -- hits, destroyed",
		"Restart",
        "Exit",
        "restart",
        "exit",
        "x",
        "x",
        "./images/placeholder.jpg"
	),
    (
		"You've ran out of credits. Ship is disabled",
        "14 -- credits === 0",
        "Restart",
        "Exit",
        "restart",
        "exit",
        "x",
        "x",
        "./images/placeholder.jpg"
	),
    (
		"Evasion failed, enemy ship in pursuit",
        "15 -- enemy pursuit",
		"Raise Shield",
        "Conserve Power",
        "defend",
        "defend",
        "x",
        "0",
        "./images/placeholder.jpg"
	),
    (
		"Evasion successful. Repair ship?",
        "16 -- evaded enemy ship",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
    (
		"Pursue enemy ship",
        "17 -- pursue enemy ship",
        "Use Thrust",
        "Conserve Power",
        "pursue",
        "pursue",
        "x",
        "0",
        "./images/placeholder.jpg"
	),
    (
		"Enemy ship has escaped. Repair ship?",
        "18 -- enemy ship escapes",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
	(
		"Enemy ship in range",
        "19 -- successful pursuit",
        "Attack",
        "Let them go",
        "attack",
        "loadPrompt",
        "x",
        "25",
        "./images/placeholder.jpg"
	),
    (
		"Salvage",
        "20 -- get upgrades from destroyed ship",
        "upgrade weapon",
        "upgrade thrust",
        "upgrade",
        "upgrade",
        "weapon",
        "thrust",
        "./images/placeholder.jpg"
	),
    (
		"Weapon upgraded. Repair ship?",
        "21 -- weapon upgrade",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
    (
		"Thrust upgraded. Repair ship?",
        "22 -- thrust upgrade",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
	(
		"Shield upgraded. Repair ship?",
        "23 -- shield upgrade",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
	(
		"Armor upgraded. Repair ship?",
        "24 -- armor upgrade",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
    (
		"Repair ship?",
        "25 -- repair ship?",
        "Yes",
        "No",
        "repair",
        "loadPrompt",
        "x",
        "2",
        "./images/placeholder.jpg"
	),
    (
		"Ship repaired. Continue mission?",
        "26 -- repaired",
        "Yes",
        "Exit", 
        "loadPrompt",
        "exit",
        "2",
        "x",
        "./images/placeholder.jpg"
	),
    (
		"Repairs not needed. Continue mission?",
        "26 -- alreadyrepaired",
        "Yes",
        "Exit", 
        "loadPrompt",
        "exit",
        "2",
        "x",
        "./images/placeholder.jpg"
	);