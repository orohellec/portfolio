module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "My portfolio website"
    @seo_keywords = "Olivier Rohellec portfolio site"
  end

end