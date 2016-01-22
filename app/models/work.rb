class Work < ActiveRecord::Base
  URL_SEPARATOR = '_'
  before_validation :generate_slug

  has_one :work_image, as: :imageable, dependent: :destroy, class_name: 'WorkImage'
  belongs_to :material
  belongs_to :category

  accepts_nested_attributes_for :work_image, reject_if: :all_blank, allow_destroy: true

  delegate :big_image_url, :to => :work_image, :allow_nil => false

  def generate_slug
    self.slug = Translit.convert(self.title, :english).parameterize(sep = '_')
    self
  end

  def self.find_by_id_with_slug(id_with_slug)
    find(id_with_slug.split(URL_SEPARATOR).first)
  end

  def id_with_slug
    [id, slug].join(URL_SEPARATOR)
  end
end