// All players individually
let player1: [String : Any] = [ "name": "Joe Smith", "height": 42.0, "experience": true, "guardians": "Jim and Jan Smith"]
let player2: [String : Any] = [ "name": "Jill Tanner", "height": 46.0, "experience": true, "guardians": "Clara Tanner"]
let player3: [String : Any] = [ "name": "Bill Bon", "height": 43.0, "experience": true, "guardians": "Sara and Jenny Bon"]
let player4: [String : Any] = [ "name": "Eva Gordon", "height": 45.0, "experience": false, "guardians": "Wendy and Mike Gordon"]
let player5: [String : Any] = [ "name": "Matt Gill", "height": 40.0, "experience": false, "guardians": "Charles and Sylvia Gill"]
let player6: [String : Any] = [ "name": "Kimmy Stein", "height": 41.0, "experience": false, "guardians": "Bill and Hillary Stein"]
let player7: [String : Any] = [ "name": "Sammy Adams", "height": 45.0, "experience": false, "guardians": "Jeff Adams"]
let player8: [String : Any] = [ "name": "Karl Saygan", "height": 42.0, "experience": true, "guardians": "Heather Bledsoe"]
let player9: [String : Any] = [ "name": "Suzane Greenberg", "height": 44.0, "experience": true, "guardians": "Henrietta Dumas"]
let player10: [String : Any] = [ "name": "Sal Dali", "height": 41.0, "experience": false, "guardians": "Gala Dali"]
let player11: [String : Any] = [ "name": "Joe Kavalier", "height": 39.0, "experience": false, "guardians": "Sam and Elaine Kavalier"]
let player12: [String : Any] = [ "name": "Ben Finkelstein", "height": 44.0, "experience": false, "guardians": "Aaron and Jill Finkelstein"]
let player13: [String : Any] = [ "name": "Diego Soto", "height": 41.0, "experience": true, "guardians": "Robin and Sarika Soto"]
let player14: [String : Any] = [ "name": "Chloe Alaska", "height": 47.0, "experience": false, "guardians": "David and Jamie Alaska"]
let player15: [String : Any] = [ "name": "Arnold Willis", "height": 43.0, "experience": false, "guardians": "Claire Willis"]
let player16: [String : Any] = [ "name": "Phillip Helm", "height": 44.0, "experience": true, "guardians": "Thomas Helm and Eva Jones"]
let player17: [String : Any] = [ "name": "Les Clay", "height": 42.0, "experience": true, "guardians": "Wynonna Brown"]
let player18: [String : Any] = [ "name": "Herschel Krustofski", "height": 45.0, "experience": true, "guardians": "Hyman and Rachel Krustofski"]

// All players
let players: [[String:Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Experience
var experienced = [[String:Any]]()
var inexperienced = [[String:Any]]()

// Teams
var teamDragons = [[String:Any]]()
var teamRaptors = [[String:Any]]()
var teamSharks = [[String:Any]]()

for eachPlayer in players {
    if(eachPlayer["experience"] as? Bool == true){
        experienced.append(eachPlayer)
    } else {
        inexperienced.append(eachPlayer)
    }
}

// sort players
for player in experienced {
    if (teamDragons.count < teamSharks.count) || (teamDragons.count < teamRaptors.count) {
        teamDragons.append(player)
    } else if (teamSharks.count < teamDragons.count) || (teamSharks.count < teamRaptors.count) {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

for player in inexperienced {
    if (teamDragons.count < teamSharks.count) || (teamDragons.count < teamRaptors.count) {
        teamDragons.append(player)
    } else if (teamSharks.count < teamDragons.count) || (teamSharks.count < teamRaptors.count) {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}
// letters

for letters in teamDragons {
    print("Hello, \(letters["guardians"] as! String). Your child, \(letters["name"] as! String), has been chosen to participate for the Dragons Soccer League! The first day of practice is March 17, 1pm. See you there!")
}

for letters in teamSharks {
    print("Hello, \(letters["guardians"] as! String). Your child, \(letters["name"] as! String), has been chosen to participate for the Sharks Soccer League! The first day of practice is March 17, 3pm. See you there!")
}

for letters in teamRaptors {
    print("Hello, \(letters["guardians"] as! String). Your child, \(letters["name"] as! String), has been chosen to participate for the Raptors Soccer League! The first day of practice is March 18, 1pm. See you there!")
}








