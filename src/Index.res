%%raw(`import './styles/Index.css';`)

@val @scope("document") @return(nullable)
external getElementById: string => option<Dom.element> = "getElementById"

switch getElementById("root") {
| Some(node) =>
  let root = ReactDOM.Client.createRoot(node)
  root->ReactDOM.Client.Root.render(
    <React.StrictMode>
      <App />
    </React.StrictMode>,
  )
| None => ()
}
