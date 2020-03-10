class TodosController < ApplicationController
  def index
    render plain: Todo.all.map { |t| t.to_displayable_string }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_displayable_string
  end
end
