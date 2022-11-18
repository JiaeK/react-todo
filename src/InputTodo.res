@module("react-icons/fa") external faPlusCircle: string = "default"

type inputText = {title: string}

type setInputTexts = OnChange | HandleSubmit

@react.component
let InputTodo = props => {
  let (inputText, setInputText) = React.useState({
    title: "",
  })

  //  let onChange = e => {
  //    setInputText({
  //      ...inputText,
  //      [e.target.name]: e.target.value,
  //    })
  //  }
  //
  //  let handleSubmit = e => {
  //    e.preventDefault();
  //    if(inputText.title.trim()) {
  //      props.addTodoProps(inputText.title);
  //      setInputText({
  //        title: "",
  //      })
  //    } else {
  //      alert("Please write item"->React.string)
  //    }
  //  };

  return(
    <div className="form-container" onSubmit={handleSubmit}>
      <input
        value={inputText.title}
        type_="text"
        placeholder={"Add todo..."->React.string}
        name="title"
        onChange={onChange}
      />
      <button className="input-submit">
        <FaPlusCircle
          style={ReactDOM.Style.make(~color="darkcyan", ~fontSize="20px", ~marginTop="2px", ())}
        />
      </button>
    </div>,
  )
}
