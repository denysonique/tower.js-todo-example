tableFor "todos", (t) ->
  t.head ->
    t.row ->
      t.header "title", sort: true
      t.header "isDone", sort: true
  t.body ->
    for todo in @todos
      t.row class: "todo", "data-id": todo.get('id').toString(), ->
        t.cell -> todo.get("title")
        t.cell -> todo.get("isDone")
        t.cell -> 
          linkTo 'Show', urlFor(todo)
          span "|"
          linkTo 'Edit', urlFor(todo, action: "edit")
          span "|"
          linkTo 'Destroy', urlFor(todo), "data-method": "delete"
  t.foot ->
    t.row ->
      t.cell colspan: 5, ->
        linkTo 'New Todo', urlFor(App.Todo, action: "new")

