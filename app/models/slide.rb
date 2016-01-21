class Slide < ActiveRecord::Base
  has_one :slide_image, as: :imageable, dependent: :destroy, class_name: 'SlideImage'
  scope :active, -> { where(:active => true) }

  accepts_nested_attributes_for :slide_image, reject_if: :all_blank, allow_destroy: true
end