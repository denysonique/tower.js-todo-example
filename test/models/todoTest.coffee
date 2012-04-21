todo = null

describe "App.Todo", ->
  describe "fields", ->
    beforeEach (done) ->
      todo = new App.Todo
        title: "A title"
        isDone: "A isDone"
        
      done()  

    test "title", ->
      assert.ok todo.get("title")

    test "isDone", ->
      assert.ok todo.get("isDone")

  describe "relations", ->
  
