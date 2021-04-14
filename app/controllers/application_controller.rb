class ApplicationController < ActionController::Base
  require 'pry'
  include Pagy::Backend

  def after_sign_in_path_for(resource)
    if request.referer == new_admin_session_url
      admin_movies_path
    else
      movies_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
