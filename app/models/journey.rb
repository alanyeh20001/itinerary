class Journey < ActiveRecord::Base
  has_many :stories, dependent: :destroy
end
