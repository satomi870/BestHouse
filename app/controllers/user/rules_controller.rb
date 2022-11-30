class User::RulesController < ApplicationController
  def new
    @rule = Rule.new
  end

  def index
    @rule = Rules.all
  end
end
