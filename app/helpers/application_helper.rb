module ApplicationHelper
  def image_path
    asset_path("icono_#{rand(1..7)}")
  end
end
