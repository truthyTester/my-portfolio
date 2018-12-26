class MyPortfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_mage, :thumb_image
end
