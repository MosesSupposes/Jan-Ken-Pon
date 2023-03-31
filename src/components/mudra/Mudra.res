type mudra = Rock | Paper | Scissors
type handPosition = LeftHand | RightHand

@react.component
let make = (~hand, ~mudra) => {
  let toCssClass = handPosition =>
    switch handPosition {
    | LeftHand => "left-hand"
    | RightHand => "right-hand"
    }

  <div className={`hand ${hand->toCssClass}`}>
    {switch mudra {
    | Rock => <img src="/images/pon.png" alt="picture of rock hand" />
    | Scissors => <img src="/images/jan.png" alt="picture of scissors hand" />
    | Paper => <img src="/images/ken.png" alt="picture of paper hand" />
    }}
  </div>
}
