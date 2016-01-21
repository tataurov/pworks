RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # ActiveRecord::Base.descendants.each do |imodel|
  #   config.model "#{imodel.name}" do
  #     list do
  #       exclude_fields :created_at, :updated_at
  #     end
  #   end
  # end
  config.model WorkImage do
    configure :image, :jcrop

    # Below is optional
    edit do
      field :image do
        jcrop_options aspectRatio: 500.0/320.0
      end
    end
  end

  config.model SlideImage do
    configure :image, :jcrop

    # Below is optional
    edit do
      field :image do
        jcrop_options aspectRatio: 540.0/300.0
      end
    end
  end
end
