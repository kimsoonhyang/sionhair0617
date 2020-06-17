class Photo < ApplicationRecord
  belongs_to :post
  
  validates :image, presence: true #사진이 반드시 있어야 업로드 할 수 있게끔
  mount_uploader :image, ImageUploader #업로더와photo모델 히모즈케
end
