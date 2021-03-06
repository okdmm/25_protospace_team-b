CarrierWave.configure do |config|
  case Rails.env
  when 'production'
   config.fog_credentials = {
     provider: 'AWS',
     aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
     region: 'ap-northeast-1'
   }

   config.fog_directory  = '25-apple-pie'
   config.asset_host = 'https://s3.ap-northeast-1.amazonaws.com/25-apple-pie'
  end
end
