class Story < ActiveRecord::Base
  include AssetDefault

  belongs_to :journey

  DEFAULT_PATH = "/:class/:id/:attachment/:style/:filename"

  has_attached_file :photo,
    path: get_asset_path(DEFAULT_PATH),
    url: get_asset_url(DEFAULT_PATH),
    styles: { medium: "480x320>" },
    convert_options: { medium: "-quality 100 -strip" }

  validates_attachment_presence :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates_attachment_size :photo, less_than: 10.megabytes
end
