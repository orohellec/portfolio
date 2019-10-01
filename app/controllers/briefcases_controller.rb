class BriefcasesController < ApplicationController
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
        format.html { redirect_to briefcases_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @briefcase = Briefcase.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def briefcase_params
    params.require(:briefcase).permit(:title, :subtitle, :body)
  end
end
