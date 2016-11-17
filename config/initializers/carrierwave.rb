CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['AWS_ACCESS_KEY'],
    :aws_secret_access_key => ENV['AWS_SECRET_KEY'],
    :region                => 'eu-west-1'
  }
  config.storage = :fog
  config.fog_directory = ENV['AWS_BUCKET_NAME']
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end