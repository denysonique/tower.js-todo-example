class App.TodosController extends App.ApplicationController
  @param "title"
  @param "isDone"
###
  index: ->
    App.Todo.where(@criteria()).all (error, collection) =>
      @render "index"
    
  new: ->
    resource = new App.Todo
    @render "new"
    
  create: ->
    App.Todo.create @params.todo, (error, resource) =>
      if error
        @redirectTo "new"
      else
        @redirectTo @urlFor(resource)
    
  show:  ->
    App.Todo.find @params.id, (error, resource) =>
      if resource
        @render "show"
      else
        @redirectTo "index"
    
  edit: ->
    App.Todo.find @params.id, (error, resource) =>
      if resource
        @render "edit"
      else
        @redirectTo "index"
      
  update: ->
    App.Todo.find @params.id (error, resource) =>
      if error
        @redirectTo "edit"
      else
        resource.updateAttributes @params.todo, (error) =>
          @redirectTo @urlFor(resource)
    
  destroy: ->
    App.Todo.find @params.id, (error, resource) =>
      if error
        @redirectTo "index"
      else
        resource.destroy (error) =>
          @redirectTo "index"
    
###
