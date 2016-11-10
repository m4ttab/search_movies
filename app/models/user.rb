class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,  :omniauthable, omniauth_providers: [:facebook]

  has_many :films
  has_many :actors
  has_many :directors
  has_many :comments 

    def self.find_for_facebook_oauth(auth, signed_in_resource=nil)    
  	user = User.where(provider: auth.provider, uid: auth.uid).first    
  	if user      
  		return user    
  	else      
  		registered_user = User.where(email: auth.info.email).first      
  		if registered_user        
  			return registered_user      
  		else        
  			user = User.create(email:auth.extra.raw_info.email,                            
  				provider:auth.provider,                            
  				uid:auth.uid,                            
  				email:auth.info.email,                            
  				password:Devise.friendly_token[0,20],                          
  				)      
  		end    
  	end  
  end        
end
