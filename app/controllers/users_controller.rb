class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.search(params[:id]).order("updated_at DESC")
  end
end
