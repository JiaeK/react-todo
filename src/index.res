%%raw(`import "./App.css" ; "./TodoContainer" ;`)

@module("react-dom/client") @react.component
let make = () => {
  let rootElement = document.getElementById(root)
  let root = createRoot(rootElement)

  root->render(
    <React.StrictMode>
      <TodoContainer />
    </React.StrictMode>,
  )
}
