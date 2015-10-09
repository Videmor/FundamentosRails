class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_lang

  private

  def set_lang
    if params[:lang] == 'es'
      I18n.locale = :es
    else
      I18n.locale = :en
    end
  end

end
