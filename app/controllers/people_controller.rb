class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:notice] = t(:person_saved_successfuly)
      redirect_to people_path
    else
      render 'static_pages/home'
    end  
  end

  private

  def person_params
    params.require(:person).permit(:login, :password)
  end 
end
