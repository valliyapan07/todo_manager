class UsersController < ApplicationController
  def index
    render plain: User.all.map { |u| u.to_displayable_string }.join("\n")
  end

  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    user = User.create!(name: name, email: email, password: password)
    render plain: "user created with id #{user.id}"
  end

  def show
    id = params[:id]
    user = User.find(id)
    render plain: user.to_displayable_string
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by "email = ? and password = ?", email, password
    if (user)
      render plain: "true"
    else
      render plain: "false"
    end
  end
end
