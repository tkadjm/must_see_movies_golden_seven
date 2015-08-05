class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show
    id = params["id"].to_i
    @name = Director.find(id).name
    @dob = Director.find(id).dob
    @bio = Director.find(id).bio
    @photo = Director.find(id).image_url
    @id = id
  end

  def new_form
  end

  def create_row
    d = Director.new
    d.name = params["the_name"]
    d.dob = params["the_dob"]
    d.bio = params["the_bio"]
    d.image_url = params["the_url"]
    d.save
    redirect_to("http://localhost:3000/directors")
  end


  def destroy
    id = params["id"]
    Director.find(id).destroy
    redirect_to("http://localhost:3000/directors")
  end

end