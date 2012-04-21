class App.Todo extends Tower.Model
  @field "title", type: "String"
  @field "isDone", type: "Boolean"

  @timestamps()
