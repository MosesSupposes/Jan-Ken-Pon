%%raw(`import './styles/App.css';`)

@react.component
let make = () => {
  <div>
    <h1> {React.string("Jan! Ken! Pon!")} </h1>
    <Mudra hand=Mudra.LeftHand mudra=Mudra.Rock />
    <Mudra hand=Mudra.RightHand mudra=Mudra.Rock />
  </div>
}
