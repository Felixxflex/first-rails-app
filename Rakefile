# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

assets_task = Rake::Task.task_defined?('assets:precompile:primary') ? 'assets:precompile:primary' : 'assets:precompile'
Rake::Task[assets_task].enhance do
    require "tinymce/rails/asset_installer"
 
    assets = Pathname.new(File.expand_path(File.dirname(__FILE__) + "/../../vendor/assets/javascripts/tinymce"))
 
    config   = Rails.application.config
    target   = File.join(Rails.public_path, config.assets.prefix)
    manifest = config.assets.manifest
 
    TinyMCE::Rails::AssetInstaller.new(assets, target, manifest).install
  end
 