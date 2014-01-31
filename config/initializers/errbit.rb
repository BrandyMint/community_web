if defined? Airbrake
  Airbrake.configure do |config|
    config.api_key = '2881aee7e80ab633ff042cf40abb8148'
    config.host    = 'errbit.brandymint.ru'
    config.port    = 80
    config.secure  = config.port == 443
  end
end
