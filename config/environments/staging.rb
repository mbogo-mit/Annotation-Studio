AnnotationStudio::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  config.static_cache_control = "public, max-age=3600"

  # Log error messages when you accidentally call methods on nil
  config.whiny_nils = true

  # Show full error reports and enable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true

  # Raise exceptions instead of rendering exception templates
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment
  config.action_controller.allow_forgery_protection    = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test

  # Raise exception on mass assignment protection for Active Record models
  # config.active_record.mass_assignment_sanitizer = :strict

  # Print deprecation notices to the stderr
  config.active_support.deprecation = :stderr

  config.action_mailer.default_url_options = { :host => ENV['EMAIL_DOMAIN'] }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.smtp_settings = {
    :address        => "smtp.sendgrid.net",
    :port           => "587",
    :authentication => :plain,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :domain         => ENV['SENDGRID_DOMAIN']
  }
end
