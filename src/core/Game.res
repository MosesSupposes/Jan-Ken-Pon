type player = Player1(string) | Player2(string)

type move = {
  player: player,
  mudra: Mudra.mudra,
}

type outcome = Draw | WinnerWas(player)

let player1 = Player1("aten6")

let player2 = Player2("Wakamomo")

let matchHistory: list<outcome> = list{}

let determineWinner = (move1, move2) => {
  let {player: player1, mudra: player1Choice} = move1
  let {player: player2, mudra: player2Choice} = move2

  switch (player1Choice, player2Choice) {
  | (Rock, Rock)
  | (Paper, Paper)
  | (Scissors, Scissors) =>
    Draw
  | (Rock, Paper) => WinnerWas(player1)
  | (Paper, Rock) => WinnerWas(player2)
  | _ => Draw // TODO: handle the rest of the cases
  }
}
let jonkenpon = determineWinner

let determineScore = (player, matchHistory) => 0
