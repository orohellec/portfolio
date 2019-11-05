class BriefcasesController < ApplicationController
  before_action :set_briefcase, only: [:show, :edit, :update, :destroy]
  layout 'briefcase'
  access all: [:show, :index, :angular],
         user: {except: [:destroy, :new, :create, :update, :edit]},
         site_admin: :all

  def angular
    @angular_briefcase_items = Briefcase.angular_briefcase_items
  end

  def show
  end

  def index
    @briefcases = Briefcase.all
  end

  def new
    @briefcase= Briefcase.new
    3.times { @briefcase.technologies.build }
  end

  def create
    @briefcase = Briefcase.new(briefcase_params)

    respond_to do |format|
      if @briefcase.save
        format.html { redirect_to briefcases_path, notice: 'briefcase was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @briefcase.update(briefcase_params)
        format.html { redirect_to briefcase_path, notice: 'briefcase was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @briefcase.destroy
    respond_to do |format|
      format.html { redirect_to briefcase_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_briefcase
    @briefcase = Briefcase.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def briefcase_params
    params.require(:briefcase).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end
end
