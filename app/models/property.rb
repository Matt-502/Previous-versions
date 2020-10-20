class Property < ApplicationRecord
  belongs_to :user
  
  validates :prefecture, presence: true
  validates :municipality, presence: true  
  validates :address, presence: true       
  validates :title, presence: true         
  validates :description, presence: true  
  validates :details, presence: true       
  validates :price, presence: true         
  validates :hobby, presence: true         
  validates :layout, presence: true        
  validates :location, presence: true
  mount_uploader :image, ImageUploader
end
