require 'yaml'
require_relative '../../../helpers/paths_env.rb'
require 'capybara/poltergeist'
config = YAML.load(File.read("../venture/config/cucumber.yml"))
$driver = config["driver"]


Before do

   if $driver == "selenium"
   	page.driver.browser.manage.window.maximize
   end
$email = "test.#{Time.now.to_i}"+"#{Time.new.to_s[0...10]}@linio.com"
Capybara::Session.new(:poltergeist)
end

After do |scenario|
  save_screenshot("evidence/#{Time.now.strftime('%F')}/#{(Time.now.to_f * 1000).to_i}_#{$url}_#{scenario.feature.name}_#{scenario.name}_#{scenario.failed? ? 'fail' : 'pass'}.png")
  Capybara::Session.new(:poltergeist)
end

