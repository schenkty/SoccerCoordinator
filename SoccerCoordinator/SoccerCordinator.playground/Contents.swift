// array of players that need to be on a team
let Roster: [[String : String]] = [
["name": "Joe Smith", "height": "42", "hasExperience": "Yes", "guardians": "Jim and Jan Smith"],
["name": "Jill Tanner", "height": "36", "hasExperience": "Yes", "guardians": "Clara Tanner"],
["name": "Bill Bon", "height": "43", "hasExperience": "Yes", "guardians": "Sara and Jenny Bon"],
["name": "Eva Gordon", "height": "45", "hasExperience": "No", "guardians": "Wendy and Mike Gordon"],
["name": "Matt Gill", "height": "40", "hasExperience": "No", "guardians": "Charles and Sylvia Gill"],
["name": "Kimmy Stein", "height": "41", "hasExperience": "No", "guardians": "Bill and Hillary Stein"],
["name": "Sammy Adams", "height": "45", "hasExperience": "No", "guardians": "Jeff Adams"],
["name": "Karl Saygan", "height": "42", "hasExperience": "Yes", "guardians": "Heather Bledsoe"],
["name": "Suzanne Greenberg", "height": "44", "hasExperience": "Yes", "guardians": "Henrietta Dumas"],
["name": "Sal Dali", "height": "41", "hasExperience": "No", "guardians": "Gala Dali"],
["name": "Joe Kavalier", "height": "39", "hasExperience": "No", "guardians": "Sam and Elain Kavalier"],
["name": "Ben Finkelstein", "height": "44", "hasExperience": "No", "guardians": "Aaron and Jill Finkelstein"],
["name": "Diego Soto", "height": "41", "hasExperience": "Yes", "guardians": "Robin and Sarika Soto"],
["name": "Chloe Alaska", "height": "47", "hasExperience": "No", "guardians": "David and Jamie Alaska"],
["name": "Arnold Willis", "height": "43", "hasExperience": "No", "guardians": "Claire Willis"],
["name": "Phillip Helm", "height": "44", "hasExperience": "Yes", "guardians": "Thomas Helm and Eva Jones"],
["name": "Les Clay", "height": "42", "hasExperience": "Yes", "guardians": "Wyonna Brown"],
["name": "Herschel Krustofski", "height": "45", "hasExperience": "Yes", "guardians": "Hyman and Rachel Krustofski"]]

// setting up the teams
var sharks: [[String : String]] = []
var dragons: [[String : String]] = []
var raptors: [[String : String]] = []
var teams = [sharks, dragons, raptors]

// setting up a temp lists of who is experienced and who is not
var xp = [[String : String]]()
var noXp = [[String : String]]()
var times: Int = 0

var sharksXp: Int = 0
var sharksNoXp: Int = 0

var dragonsXp: Int = 0
var dragonsNoXp: Int = 0

var raptorsXp: Int = 0
var raptorsNoXp: Int = 0

var sorted: Bool = false

// sorting the players into 2 groups. Xp and noXp
for player in Roster {
    if player["hasExperience"] == "Yes" {
        xp.append(player)
    } else {
        noXp.append(player)
    }
    //fun little add on
    times += 1
    if times == Roster.count {
        print("All players are sorted")
        times = 0
    }
}

var teamNumbers = Roster.count / teams.count
var teamXpNumbers = xp.count / teams.count
var teamNoXpNumbers = noXp.count / teams.count

// sorting the players with Xp into teams.
for player in xp {
    if sharksXp < teamXpNumbers {
        sharks.append(player)
        sharksXp += 1
    } else if dragonsXp < teamXpNumbers {
        dragons.append(player)
        dragonsXp += 1
    } else if raptorsXp < teamXpNumbers {
        raptors.append(player)
        raptorsXp += 1
    } else {
        print("All XP players sorted")
    }
}
// sorting the players with noXp into teams.
for player in noXp {
    if sharksNoXp < teamNoXpNumbers {
        sharks.append(player)
        sharksNoXp += 1
    } else if dragonsNoXp < teamNoXpNumbers {
        dragons.append(player)
        dragonsNoXp += 1
    } else if raptorsNoXp < teamNoXpNumbers {
        raptors.append(player)
        raptorsNoXp += 1
    } else {
        print("All Non Xp players sorted")
    }
}

// Checking to make sure the teams are even
if sharks.count == teamNumbers && dragons.count == teamNumbers && raptors.count == teamNumbers {
    print("Teams are sorted evenly")
    sorted = true
} else {
    print("Teams are not even")
    sorted = false
}

// Need to make sure we do not spam the guardians
var sharkLetters: Int = 0
var dragonLetters: Int = 0
var raptorLetters: Int = 0

// Sending out the Letters
while sorted == true && raptorLetters < teamNumbers && dragonLetters < teamNumbers && sharkLetters < teamNumbers{
    for player in sharks{
        print("Dear \(player["guardians"]), I would like to let you know the great news about \(player["name"]).  \(player["name"]) will be playing on the Sharks this year! Go Sharks")
        sharkLetters += 1
    }
    
    for player in dragons {
        print("Dear \(player["guardians"]), I would like to let you know the great news about \(player["name"]).  \(player["name"]) will be playing on the Dragons this year! Go Dragons")
        dragonLetters += 1
    }
    
    for player in raptors {
        print("Dear \(player["guardians"]), I would like to let you know the great news about \(player["name"]).  \(player["name"]) will be playing on the Raptors this year! Go Raptors")
        raptorLetters += 1
    }
}