class Course < ApplicationRecord
    #mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :sections
 # belongs_to :images

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}

  # def free?
  #   cost.zero?
  # end
  
  # def premium?
  #   ! free?
  # end
end