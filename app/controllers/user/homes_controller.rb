class User::HomesController < ApplicationController
  def top
    @areas=Area.all
    @tags=Tag.all
  end

  def about
  end
end
