require 'openssl'
require 'securerandom'

namespace :blog_user do
  desc "Blog user management"
  task :create_initial_user, [:name] => [:environment] do |_, args|
    raise RuntimeError.new("User exists") if User.all.length > 0
    username = args.name
    password = SecureRandom.base64(9)
    key = OpenSSL::PKey::RSA.generate 4096
    u = User.new
    u.name = username
    u.password = password
    u.password_confirmation = password
    u.private_key = key.to_pem
    u.public_key = key.public_key.to_pem
    u.save!
    print "Password is " + password
  end
end
