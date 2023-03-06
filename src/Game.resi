type player = Player1(string) | Player2(string)

type mudra = Rock | Paper | Scissors

type move = {
  player: player,
  mudra: mudra,
}

type outcome = Draw | WinnerWas(player)

let player1: player

let player2: player

let matchHistory: list<outcome>

let jonkenpon: (move, move) => outcome

let determineScore: (player, list<outcome>) => int
