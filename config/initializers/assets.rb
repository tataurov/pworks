# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

folders = %w( package/ rails_admin/ active_admin.css ckeditor/* )

Rails.application.config.assets.precompile << Proc.new do |path|
  folders.any? do |path_part|
    path.start_with?(path_part)
  end
end

Rails.application.config.assets.digest = false

Rails.application.config.assets.compress = true
Rails.application.config.assets.js_compressor = NoCompression.new

Rails.application.config.assets.paths << Rails.root.join("lib","assets","bower_components","bootstrap-sass-official", "assets", "stylesheets")
Rails.application.config.assets.paths << Rails.root.join("lib","assets","bower_components","bootstrap-sass-official", "assets", "fonts")
