class StaticPagesController < ApplicationController
  def home
    @person = Person.new
  end
end
