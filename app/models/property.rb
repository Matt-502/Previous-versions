class Property < ApplicationRecord
  belongs_to :user
 
  
  validates :prefecture, presence: true
  validates :location, presence: true
  validates :hobby, presence: true
  validates :structure, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :details, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader
  validates :prefecture_code, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to_active_hash :prefecture
  
end
