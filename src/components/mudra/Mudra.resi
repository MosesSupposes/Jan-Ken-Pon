type mudra = Rock | Paper | Scissors
type handPosition = LeftHand | RightHand

@react.component
let make: (~hand: handPosition, ~mudra: mudra) => React.element
