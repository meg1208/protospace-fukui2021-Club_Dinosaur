class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @Prototype = Prototype.new
  end
end
