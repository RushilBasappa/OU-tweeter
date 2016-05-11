CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'AKIAIX4ZPUFKPNZTLUCA',
    aws_secret_access_key: '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'
  }
  config.fog_directory  = 'osmtweet-images'
end
