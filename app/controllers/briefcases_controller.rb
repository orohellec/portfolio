class BriefcasesController < ApplicationController
  def index
    @portfolio_items = Briefcase.all
  end
end
