Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = 'Maven'
  config.robot.mention_name = 'maven'

  config.redis[:url] = ENV['REDISTOGO_URL']
  config.http.port = ENV['PORT']

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack
  config.robot.admins = ['U040NEHU5']
  config.adapters.slack.token = ENV['SLACK_API_TOKEN']

  config.handlers.forecast.api_key = ENV['FORECAST_API_TOKEN']

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
