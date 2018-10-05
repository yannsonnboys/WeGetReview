CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["aws_access_key_id"],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV["aws_secret_access_key"],                        # required unless using use_iam_profile
    region:                ENV["region"],  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV["fog_directory"]                                     # required
end