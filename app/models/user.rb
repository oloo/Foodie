class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :provider, :uid
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
  # attr_accessible :title, :body

  # def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  #   user = User.where(:provider => auth.provider, :uid => auth.uid).first
  #   unless user
  #     user = User.create(name:auth.extra.raw_info.name,
  #                         provider: auth.provider,
  #                         uid: auth.uid,
  #                         email: auth.info.email,
  #                         password: Devise.friendly_token[0, 20]
  #                         )
  #   end
  #   user
  # end

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    data = auth.extra.raw_info
    user = User.find_by_email(data["email"])
    unless user
      user = User.create(email: data["email"],
                          password: Devise.friendly_token[0, 20]
                          )
    end
    user
  end
end
