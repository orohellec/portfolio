class BriefcasesController < ApplicationController
  before_action :set_briefcase, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @briefcase_items = Briefcase.all
  end

  def new
    @briefcase_item = Briefcase.new
  end

  def create
    @briefcase_item = Briefcase.new(briefcase_params)

    respond_to do |format|
      if @briefcase_item.save
        format.html { redirect_to briefcases_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @briefcase_item.update(briefcase_params)
        format.html { redirect_to briefcases_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_briefcase
    @briefcase_item = Briefcase.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def briefcase_params
    params.require(:briefcase).permit(:title, :subtitle, :body)
  end
end
