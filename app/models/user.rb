class User < ApplicationRecord

  serialize :oauth_raw_data

    # def self.create_from_omniauth(omniauth_data)
    #    first_name, last_name = omniauth_data["info"]["name"].split
    #
    #  #   User.create(
     #     uid: omniauth_data["uid"],
     #     provider: omniauth_data["provider"],
     #     # email: omniauth_data["info"]["email"],
     #     # first_name: first_name,
     #     # last_name: last_name,
     #     oauth_token: omniauth_data["credentials"]["token"],
     #     oauth_secret: omniauth_data["credentials"]["secret"],
     #     oauth_raw_data: omniauth_data,
     #     password: SecureRandom.hex(32)
     #   )
     # end
     #
     # def self.find_by_omniauth(omniauth_data)
     #   User.find_by(provider: omniauth_data["provider"], uid: omniauth_data["uid"])
     # end
end
