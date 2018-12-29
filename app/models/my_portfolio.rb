class MyPortfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_mage, :thumb_image

  after_initialize :set_defaults

  def set_defaults
    self.main_mage ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end
end
