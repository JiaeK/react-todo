%%raw(`import "./Header" ; "./InputTodo" ; "./TodosList" ;`)

type todos = {title: string}

//type state = {todoList: array<todo>, inputValue: string}

type setTodos = GetInitialTodos | HandleChange | DelTodo | AddTodoItem | SetUpdate

@react.component @val external localStorage: t = "localStorage"
let TodoContainer = () => {
  let (todos, setTodos) = React.useState(getInitialTodos())

  React.useEffect(() => {
    localStorage.setItem("todos", Js.Json.stringify(todos))
  }, [todos])

  //here
  //let getInitialTodos() {
  //    let savedTodos = JSON.parse(localStorage.getItem("todos"))
  //    return savedTodos || []
  //  }
  //
  //  const handleChange = id => {
  //    setTodos(prevState => prevState.map((todo) => {
  //      if (todo.id === id) {
  //        return {
  //          ...todo, completed: !todo.completed
  //        }
  //      }
  //      return todo
  //    }))
  //  }
  //
  //  const delTodo = id => {
  //    setTodos([
  //      ...todos.filter(todo => {
  //        return todo.id !== id
  //      }),
  //    ])
  //  };
  //
  //  const addTodoItem = title => {
  //    const newTodo = {
  //      ~id: Uuid.V4(),
  //      ~title: title,
  //      ~completed: false
  //    };
  //    setTodos([...todos, newTodo])
  //  };
  //
  //  let setUpdate = (updatedTitle, id) => {
  //    setTodos(
  //      todos.map(todo => {
  //        switch (todo.id === id) {
  //          todo.title = updatedTitle
  //        }
  //        return todo
  //      })
  //    )
  //  }

  return(<>
    <div className="container">
      <div className="inner">
        <Header />
        <InputTodo addTodoProps={addTodoItem} />
        <TodosList
          todos={todos}
          handleChangeProps={handleChange}
          deleteTodoProps={delTodo}
          setUpdate={setUpdate}
        />
      </div>
    </div>
  </>)
}
