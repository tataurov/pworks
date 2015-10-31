ActiveAdmin.register Work do
  permit_params :title, :description, :material_id, :category_id,
                :work_image_attributes => [:id, :image]

  index do
    selectable_column
    id_column
    column :title
    column :description
    actions
  end

  show do
    attributes_table_for work do
      row :title
      row :description
    end
  end

  form do |f|
    f.inputs do
      input :title
      input :description
    end

    panel 'logo' do
      inputs class: 'file-uploader-wrapper', for: [:work_image, f.object.work_image || WorkImage.new] do |image|
        image.input :image,
                   input_html: {class: 'js-file-uploader'},
                   label: 'Photo',
                   hint: "Recommended size: width and height of no more than 300px, formats: jpg, png, jpeg <br>
                                #{image.template.image_tag(image.object.new_record? ? '' : f.object.work_image.url(:small), class: 'js-image-preview image-preview')}".html_safe

        if f.object.work_image.present?
          image.input :_destroy, as: :boolean, required: false, label: 'delete'
        end
      end
    end
    actions
  end

  controller do
    def scoped_collection
      super
    end
  end
end
