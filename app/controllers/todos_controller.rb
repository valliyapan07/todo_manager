class TodosController < ApplicationController
  def index
    render "index"
    #render plain: Todo.all.map { |t| t.to_displayable_string }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render "todos"
    #render plain: todo.to_displayable_string
  end

  def create
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.create!(todo_text: todo_text, due_date: due_date, completed: false)
    redirect_to todos_path
  end

  def update
    id = params[:id]
    completed = params[:completed]
    todo = Todo.find(id)
    todo.completed = completed
    todo.save!
    redirect_to todos_path
  end

  def destroy
    id = params[:id]
    todo = Todo.find(id)
    todo.destroy
    redirect_to todos_path
  end
end
