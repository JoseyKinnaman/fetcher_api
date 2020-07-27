class NamesController < ApplicationController

  def index
    if category = params[:category]
      @names = Name.search(category)
    else
      @names = Name.all
    end
    json_response(@names)
  end

  def show
    @name = Name.find(params[:id])
    json_response(@name)
  end

  def create
    @name = Name.create!(name_params)
    json_response(@name, :created)
  end

  def update
    @name = Name.find(params[:id])
    if @name.update!(name_params)
      rende status: 200, json: {
        message: "This name has been updated successfully."
      }
      end
  end

  def destroy
    @name = Name.find(params[:id])
    if @name.destroy
      render status: 200, json: {
        message: "This name entry has been deleted."
      }
    end
  end

  def random
    @name_one = Name.first.id
    @last_name = Name.last.id
    @random_name = rand(@name_one...@last_name)
    @name = Name.find(@random_name)
    json_response(@name)
  end

  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  

  def name_params
    params.permit(:name, :category, :comment)
  end
end