class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :should_notify_on_sunday

  # For omniauth and facebook login
  attr_accessible :provider, :uid

  # attr_accessible :title, :body
  has_many :brackets, :dependent => :destroy



	def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
	  user = User.where(:provider => auth.provider, :uid => auth.uid).first
	  unless user

	  	## Uncomment this if we want to add a Name for each User
	    # user = User.create(name:auth.extra.raw_info.name,
	    #                      provider:auth.provider,
	    #                      uid:auth.uid,
	    #                      email:auth.info.email,
	    #                      password:Devise.friendly_token[0,20]
	    #                      )

			user = User.create(provider:auth.provider,
	                         uid:auth.uid,
	                         email:auth.info.email,
	                         password:Devise.friendly_token[0,20]
	                         )
	  end
	  user
	end

	def self.new_with_session(params, session)
    super.tap do |user|
    	# we removed raw_info to fix cookie overflow error
    	# The following line used to read:
      # if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
      if data = session["devise.facebook_data"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
  
end
