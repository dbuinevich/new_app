require_relative './controller_macros'

RSpec.configure do |config|
    config.include Devise::TestHelpers, :type => :controller
    config.include Devise::Test::ControllerHelpers, :type => :controller
    config.extend ControllerMacros, :type => :controller
end
