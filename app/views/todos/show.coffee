@title = "Todo #{@todo.toLabel()}"

dl class: "content", ->
  dt "Title:"
  dd @todo.get("title")
  dt "Is done:"
  dd @todo.get("isDone")
