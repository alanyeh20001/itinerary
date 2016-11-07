module AssetDefault
  extend ActiveSupport::Concern

  module ClassMethods
    def get_asset_path(path)
      if Rails.env.production?
        path
      else
        ":rails_root/public#{path}"
      end
    end

    def get_asset_url(path)
      if Rails.env.production?
        ":asset_host"
      else
        path
      end
    end
  end
end
