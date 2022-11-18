%%raw(`import "./TodoItem.module.css" ; `)
@module("react-icons/fa") external faFaTrash: string = "default"

type setEditings = HandleEditing | HandleUpdatedDone | CompletedStyle

@react.component
let TodoItem = props => {
  let [editing, setEditing] = React.useState(false)

  //  React.useEffect(() => {
  //    return () => {
  //      Js.log("Cleaning up...")
  //    }
  //  }, [])
  //
  //  let handleEditing = () => {
  //    setEditing(true)
  //  }
  //
  //  let handleUpdatedDone = (event) => {
  //    if (event.key === "Enter" ) {
  //      setEditing(false)
  //    }
  //  }
  //
  //  let completedStyle = {
  //    fontStyle: "italic",
  //    color: "#595959",
  //    opacity: 0.4,
  //    textDecoration: "line-through",
  //  }
  //
  //  const { completed, id, title } = props.todo
  //
  //  let viewMode = {};
  //  let editMode = {};
  //
  //  if (editing) {
  //    viewMode.display = 'none';
  //  } else {
  //    editMode.display = 'none';
  //  }

  return(
    <li className={styles.item}>
      <div onDoubleClick={handleEditing} style={React.viewMode}>
        <input
          type_="checkbox"
          className={styles.checkbox}
          checked={completed}
          onChange={_ => props.handleChangeProps(Id)}
        />
        <button onClick={_ => props.deleteTodoProps(Id)}>
          <FaTrash style={{color: "orangered", fontSize: "16px"}} />
        </button>
        <span style={completed ? completedStyle : null}> {title} </span>
      </div>
      <input
        type_="text"
        style={editMode}
        className={styles.textInput}
        value={title}
        onChange={e => {props.setUpdate(e.target.value, id)}}
        onKeyDown={handleUpdatedDone}
      />
    </li>,
  )
}
