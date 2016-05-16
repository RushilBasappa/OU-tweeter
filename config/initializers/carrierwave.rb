CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    #aws_access_key_id:    " AKIAI4NTIQHNKL5DVBOA" ,
    aws_access_key_id:      ENV["S3_KEY"],
    #aws_secret_access_key: "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"
    aws_secret_access_key:  ENV["S3_SECRET"]
  }
  config.fog_directory  = 'osmtweet-images'
end
