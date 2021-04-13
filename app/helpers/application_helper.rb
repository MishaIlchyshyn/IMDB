module ApplicationHelper
  include Pagy::Frontend

  def active_if?(controller, action)
    if controller_name == controller && action_name == action
      'active'
    end
  end
end
