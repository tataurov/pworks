class Material < ActiveRecord::Base
  has_one :material_image, as: :imageable, dependent: :destroy, class_name: 'MaterialImage'
  has_many :works

  accepts_nested_attributes_for :material_image, reject_if: :all_blank, allow_destroy: true
end