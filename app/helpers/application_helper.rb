module ApplicationHelper
  def image_path
    ActionController::Base.helpers.asset_path("icono_#{rand(1..7)}.jpg")
  end
end
