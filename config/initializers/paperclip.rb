options = {
  storage: :s3,
  bucket: 'xcursion',
  s3_credentials: {
    access_key_id: ENV['AWS_ACCESS_KEY'],
    secret_access_key: ENV['AWS_SECRET_KEY']
  },
  s3_host_name: 's3-us-west-2.amazonaws.com'
}

options.each do |key, value|
  Paperclip::Attachment.default_options[key] = value
end
