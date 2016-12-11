RSpec.configure do |config|
  config.before(:suite) do
    Chewy.request_strategy = :atomic
    Chewy.strategy(:urgent)
  end
end
