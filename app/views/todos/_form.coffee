formFor @todo, (f) ->
  f.fieldset (fields) ->
    fields.field "title", as: "string"
    fields.field "isDone", as: "string"
  f.fieldset (fields) ->
    fields.submit "Submit"
