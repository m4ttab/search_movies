class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @directors = Director.all
  end

  def show
  end

  def new
    @director = current_user.directors.build
  end

  def edit
  end

  def create
    @director = current_user.directors.build(director_params)

    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to @director, notice: 'Director was successfully updated.' }
        format.json { render :show, status: :ok, location: @director }
      else
        format.html { render :edit }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @director.destroy
    respond_to do |format|
      format.html { redirect_to directors_url, notice: 'Director was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_director
      @director = Director.find(params[:id])
    end

    def director_params
      params.require(:director).permit(:name, :description, :date_of_birth, :place_of_birth, :film_id)
    end
end
