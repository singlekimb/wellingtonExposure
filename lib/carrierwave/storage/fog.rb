CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJ2NLE3TGDXOESTGQ',       # required
    :aws_secret_access_key  => '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',       # required
#:region                 => 'us-east-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'wellingtonexposure'                     # required
 # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
 # config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
