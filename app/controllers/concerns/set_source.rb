module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def configure_permitted_parameters
    session[:source] = params[:q] if params[:q]
  end

  def set_source
   session[:source] = params[:q] if params[:q]
 end
end
