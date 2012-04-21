@title = "Editing Todo"

partial "form"

contentFor "sidebar", ->
  header class: "widget header", ->
    h2 @todo.toLabel()