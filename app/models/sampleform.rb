class Sampleform < ActiveRecord::Base
	
  attr_accessor :confirm_password
  validates_confirmation_of :confirm_password 
	validates_presence_of :firstname, :lastname, :email, :password
	validates_format_of :firstname, :with => /\A[a-zA-Z]+\z/,  :message => "Please use only regular letters as  firstname"
	validates :firstname, length: { maximum: 10 }
	validates_format_of :lastname, :with => /\A[A-Z]+\z/,  :message => "Please use only uppercase letters as  lastname"
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { with: VALID_EMAIL_REGEX },
            uniqueness:  { case_sensitive: false }
    validates_exclusion_of :password, in: ->(sampleform) { [sampleform.firstname] },
                         message: 'should not be the same as your first name'
  validates :password, length: { minimum: 10 },:confirmation => true, 
    :unless => Proc.new { |a| a.password.blank? }
   #validates :confirm_password, 
            # => :presence=>true, :if => '!password.nil?'
       validates_inclusion_of :confirm_password, in: ->(sampleform) { [sampleform.password] },
                         message: 'should  be the same as your password'

end