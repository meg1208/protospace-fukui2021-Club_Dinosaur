class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
    redirect_to action: 'index'
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept)
  end
end
