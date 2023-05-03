class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:user, :moderator, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end
   devise :omniauthable, :omniauth_providers => [:google_oauth2]
   has_many :tasks

  #def self.from_omniauth(access_token)
  #  data = access_token.info
  #  user = User.where(:email => data["email"]).first
  #
  #  unless user
  #    user = User.create(
  #          name: data["name"],
  #          email: data["email"],
  #          encrypted_password: Devise.friendly_token[0,20]
  #    )
  #  end
  #  user
  #end 

  def google_oauth2
    @user = Users::User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      auth = request.env["omniauth.auth"]
      # ...
    end
  end
end

