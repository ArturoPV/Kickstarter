module ApplicationHelper
  def asset_path_with_fingerprint(asset)
    ActionController::Base.helpers.asset_path(asset)
  end

  def initiative_asset_path
    image_name = "icono_#{rand(1..7)}.jpg"
    asset_path_with_fingerprint(image_name)
  end
end
