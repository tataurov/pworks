class Work < ActiveRecord::Base
  has_one :work_image, as: :imageable, dependent: :destroy, class_name: 'WorkImage'
  belongs_to :material
  belongs_to :category

  accepts_nested_attributes_for :work_image, reject_if: :all_blank, allow_destroy: true

  delegate :big_image_url, :to => :work_image, :allow_nil => false
end