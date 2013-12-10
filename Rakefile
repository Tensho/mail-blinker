# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.frameworks += %w(WebKit)
  app.embedded_frameworks += %w(vendor/frameworks/MailCore.framework)
  app.bridgesupport_files.concat(Dir.glob(File.expand_path('initializers/*.bridgesupport')))
  # %w(initializers).each { |dir| app.files += Dir.glob(File.join(app.project_dir, "#{dir}/**/*.rb")) }
  app.name = 'mail-blinker'
end
