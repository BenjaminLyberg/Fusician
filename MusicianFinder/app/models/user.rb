class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

    acts_as_votable
    has_friendship
    has_many :comments 
    default_scope { order(:created_at => :desc) } 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



    has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "80x80#" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
    def self.search(search)
        where("location LIKE ?", "%#{search}%") 
    end
    
    
  
end
