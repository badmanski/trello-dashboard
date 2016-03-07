configure do
  set :secrets, YAML.load(File.read('./secrets.yml'))
end

Trello.configure do |config|
  config.developer_public_key = settings.secrets['trello']['developer_key']
  config.member_token = settings.secrets['trello']['member_token']
end
