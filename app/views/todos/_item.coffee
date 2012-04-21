li class: "todo", ->
  header class: "header", ->
    h3 @todo.toLabel()
  dl class: "content", ->
    dt "Title:"
    dd @todo.get("title")
    dt "Is done:"
    dd @todo.get("isDone")
  footer class: "footer", ->
    menu ->
      menuItem "Edit", urlFor(@todo, action: "edit")
