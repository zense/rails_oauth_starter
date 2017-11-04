class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :trackable, :validatable,
      :omniauthable, :omniauth_providers => [:microsoft_office365]

  def self.from_omniauth(auth)
   if user = User.find_by_email(auth.info.email)
     user
   else
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user
       user.provider = auth.provider
       user.uid = auth.uid
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
       user.name = auth.info.name
       user.status = 0
     end
   end
  end
end
