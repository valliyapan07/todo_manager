[1mdiff --git a/app/controllers/todos_controller.rb b/app/controllers/todos_controller.rb[m
[1mindex cf79858..de53dbb 100644[m
[1m--- a/app/controllers/todos_controller.rb[m
[1m+++ b/app/controllers/todos_controller.rb[m
[36m@@ -2,4 +2,10 @@[m [mclass TodosController < ApplicationController[m
   def index[m
     render plain: Todo.all.map { |t| t.to_displayable_string }.join("\n")[m
   end[m
[32m+[m
[32m+[m[32m  def show[m
[32m+[m[32m    id = params[:id][m
[32m+[m[32m    todo = Todo.find(id)[m
[32m+[m[32m    render plain: todo.to_displayable_string[m
[32m+[m[32m  end[m
 end[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex d6848a5..4a334a3 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -1,3 +1,4 @@[m
 Rails.application.routes.draw do[m
   get "todos", to: "todos#index"[m
[32m+[m[32m  get "todos/:id", to: "todos#show"[m
 end[m
