%%raw(`import "./TodoItem" ; `)

@react.component
let TodosList = props => {
  return(
    <ul>
      {props.todos.map(todo =>
        <TodoItem
          key={todo.id}
          todo={todo}
          handleChangeProps={props.handleChangeProps}
          deleteTodoProps={props.deleteTodoProps}
          setUpdate={props.setUpdate}
        />
      )}
    </ul>,
  )
}
