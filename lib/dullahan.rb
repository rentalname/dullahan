require "dullahan/version"
require "dullahan/agent"
require "capybara"
require 'selenium-webdriver'
require 'imgkit'
module Dullahan
  extend self

  def setup(bin:, args: %w{--headless --disable-gpu})
    Capybara.register_driver :dullahan do |app|
      caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        "chromeOptions": {
          'binary': bin,
          'args': args
        }
      )

      Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: caps
      )
    end
  end

  def gem_root
    "#{File.dirname(__FILE__)}/../"
  end
end
