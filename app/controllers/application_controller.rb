require Rails.root.join('lib', 'roles')

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from Blockade::AccessDenied do |exception|
    redirect_to root_url, :alert => t('blockade.access_denied')
  end

  def roles
    Roles.new
  end
end
