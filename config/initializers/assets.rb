# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

folders = %w( package/ active_admin.css ckeditor/* )

Rails.application.config.assets.precompile << Proc.new do |path|
  folders.any? do |path_part|
    path.start_with?(path_part)
  end
end
