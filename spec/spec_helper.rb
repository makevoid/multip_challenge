path = File.expand_path "../../", __FILE__

require "#{path}/lib/multip_challenge"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
  config.mock_with :rspec do |c|
    c.syntax = :should
  end
end
