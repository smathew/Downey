# == Schema Information
# Schema version: 20100928211643
#
# Table name: reqinfos
#
#  id                :integer         not null, primary key
#  dfcu_membership   :string(255)
#  checking_accounts :string(255)
#  silverstar_member :string(255)
#  ira_accounts      :string(255)
#  minor_accounts    :string(255)
#  coogan_account    :string(255)
#  visa_account      :string(255)
#  atm_card          :string(255)
#  direct_deposit    :string(255)
#  dotti             :string(255)
#  other             :string(255)
#  otherinfo         :string(255)
#  name              :string(255)
#  dfcu_accountno    :string(255)
#  home_phone        :string(255)
#  employer          :string(255)
#  work_phone        :string(255)
#  email_address     :string(255)
#  address           :string(255)
#  city              :string(255)
#  state             :string(255)
#  zip               :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Reqinfo < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :name, :address, :city, :state, :zip, :home_phone, :email_address
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :home_phone, :with => Phoneformat, :if => "!home_phone.blank?"
	validates_format_of :work_phone, :with => Phoneformat, :if => "!work_phone.blank?"
		
	#validating to see if zip has got only integer values
	zipformat = /\A[0-9]{5}+\z/i
	validates_format_of :zip, :with => zipformat, :if => "!zip.blank?"
	
	#other validations
	validates_presence_of :otherinfo, :if => :request_otherinfo?
	def request_otherinfo?
		other == "yes"
	end
end
