class ValidationsModelController < ApplicationController
  def index
    validation = Validations.all
    render json: Validationss
  end

  def create
    validation = Validations.new(
      first_name: params["first_name"],
      last_name: params["last_name"], 
      email: params["email"],
    )

    if Validations.save #happy path
      render json: validation
    else #sad path
      render json: {error_messages: Validations.errors.full_messages}, status: 422
    end
  end

  def show
    id = params[:id]
    validation = Validations.find_by(id: id)
    render json: validation
  end

  def update
    id = params[:id]
    validation = Validations.find_by(id: id)

    Validations.first_name = params[:first_name] || Validations.first_name
    Validations.last_name = params[:last_name] || Validations.last_name
    Validations.email = params[:email] || Validations.email

    if Validations.save #happy path
      render json: validation
    else #sad path
      render json: {error_messages: Validations.errors.full_messages}, status: 422
    end
  end

  def destroy
    id = params[:id]
    validation = Validations.find_by(id: id)
    Validations.destroy

    render json: {message: "Validations successfully destroyed!"}
  end




end
