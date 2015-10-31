class Work < ActiveRecord::Base
  has_one :work_image, as: :imageable, dependent: :destroy, class_name: 'WorkImage'

  accepts_nested_attributes_for :work_image, reject_if: :all_blank, allow_destroy: true
end