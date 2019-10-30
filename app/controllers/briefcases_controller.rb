class BriefcasesController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @portfolios = Briefcase.all
  end

  def new
    @portfolio = Briefcase.new
  end

  def create
    @portfolio = Briefcase.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_portfolio
    @portfolio = Briefcase.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
