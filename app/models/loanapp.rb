# == Schema Information
# Schema version: 20100929142316
#
# Table name: loanapps
#
#  id                                     :integer         not null, primary key
#  disability_insurance                   :string(255)
#  type_of_loan                           :string(255)
#  loan_amount                            :string(255)
#  applicant_name                         :string(255)
#  applicant_account_number               :string(255)
#  applicant_home_phone                   :string(255)
#  applicant_time_to_call                 :string(255)
#  applicant_email_address                :string(255)
#  applicant_home_address                 :string(255)
#  applicant_city                         :string(255)
#  applicant_state                        :string(255)
#  applicant_zip                          :string(255)
#  applicant_monthly_mortgage             :string(255)
#  applicant_employer_name                :string(255)
#  applicant_work_phone                   :string(255)
#  applicant_hire_date                    :string(255)
#  applicant_income                       :string(255)
#  applicant_income_frequency             :string(255)
#  applicant_other_income                 :string(255)
#  applicant_other_income_frequency       :string(255)
#  applicant_other_income_source          :string(255)
#  applicant_debt1                        :string(255)
#  applicant_creditor1                    :string(255)
#  applicant_outstanding_balance1         :string(255)
#  applicant_monthly_payment1             :string(255)
#  applicant_debt2                        :string(255)
#  applicant_creditor2                    :string(255)
#  applicant_outstanding_balance2         :string(255)
#  applicant_monthly_payment2             :string(255)
#  applicant_debt3                        :string(255)
#  applicant_creditor3                    :string(255)
#  applicant_outstanding_balance3         :string(255)
#  applicant_monthly_payment3             :string(255)
#  applicant_debt4                        :string(255)
#  applicant_creditor4                    :string(255)
#  applicant_outstanding_balance4         :string(255)
#  applicant_monthly_payment4             :string(255)
#  applicant_debt5                        :string(255)
#  applicant_creditor5                    :string(255)
#  applicant_outstanding_balance5         :string(255)
#  applicant_monthly_payment5             :string(255)
#  applicant_debt6                        :string(255)
#  applicant_creditor6                    :string(255)
#  applicant_outstanding_balance6         :string(255)
#  applicant_monthly_payment6             :string(255)
#  joint_applicant_name                   :string(255)
#  joint_applicant_account_number         :string(255)
#  joint_applicant_home_phone             :string(255)
#  joint_applicant_time_to_call           :string(255)
#  joint_applicant_email_address          :string(255)
#  joint_applicant_home_address           :string(255)
#  joint_applicant_city                   :string(255)
#  joint_applicant_state                  :string(255)
#  joint_applicant_zip                    :string(255)
#  joint_applicant_monthly_mortgage       :string(255)
#  joint_applicant_employer_name          :string(255)
#  joint_applicant_work_phone             :string(255)
#  joint_applicant_hire_date              :string(255)
#  joint_applicant_income                 :string(255)
#  joint_applicant_income_frequency       :string(255)
#  joint_applicant_other_income           :string(255)
#  joint_applicant_other_income_frequency :string(255)
#  joint_applicant_other_income_source    :string(255)
#  joint_applicant_debt1                  :string(255)
#  joint_applicant_creditor1              :string(255)
#  joint_applicant_outstanding_balance1   :string(255)
#  joint_applicant_monthly_payment1       :string(255)
#  joint_applicant_debt2                  :string(255)
#  joint_applicant_creditor2              :string(255)
#  joint_applicant_outstanding_balance2   :string(255)
#  joint_applicant_monthly_payment2       :string(255)
#  joint_applicant_debt3                  :string(255)
#  joint_applicant_creditor3              :string(255)
#  joint_applicant_outstanding_balance3   :string(255)
#  joint_applicant_monthly_payment3       :string(255)
#  joint_applicant_debt4                  :string(255)
#  joint_applicant_creditor4              :string(255)
#  joint_applicant_outstanding_balance4   :string(255)
#  joint_applicant_monthly_payment4       :string(255)
#  joint_applicant_debt5                  :string(255)
#  joint_applicant_creditor5              :string(255)
#  joint_applicant_outstanding_balance5   :string(255)
#  joint_applicant_monthly_payment5       :string(255)
#  joint_applicant_debt6                  :string(255)
#  joint_applicant_creditor6              :string(255)
#  joint_applicant_outstanding_balance6   :string(255)
#  joint_applicant_monthly_payment6       :string(255)
#  created_at                             :datetime
#  updated_at                             :datetime
#

class Loanapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :type_of_loan, :loan_amount, :applicant_name,  :applicant_account_number, :applicant_home_phone, :applicant_email_address, :applicant_home_address, :applicant_city, :applicant_state, :applicant_zip, :applicant_employer_name, :applicant_hire_date, :applicant_income, :applicant_income_frequency

	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :applicant_email_address, :with => EmailRegex, :if => "!applicant_email_address.blank?"
	validates_format_of :joint_applicant_email_address, :with => EmailRegex, :if => "!joint_applicant_email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :applicant_home_phone, :with => Phoneformat, :if => "!applicant_home_phone.blank?"
	validates_format_of :applicant_work_phone, :with => Phoneformat, :if => "!applicant_work_phone.blank?"
	validates_format_of :joint_applicant_home_phone, :with => Phoneformat, :if => "!joint_applicant_home_phone.blank?"
	validates_format_of :joint_applicant_work_phone, :with => Phoneformat, :if => "!joint_applicant_work_phone.blank?"
		
	#validating to see if zip has got only integer values
	zipformat = /\A[0-9]{5}+\z/i
	validates_format_of :applicant_zip, :with => zipformat, :if => "!applicant_zip.blank?"
	validates_format_of :joint_applicant_zip, :with => zipformat, :if => "!joint_applicant_zip.blank?"
	
	#validating to see if date(s) entered are valid
	dateFormat = /\A[0-9]{2}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :applicant_hire_date, :with => dateFormat, :if => "!applicant_hire_date.blank?"
	validates_format_of :joint_applicant_hire_date, :with => dateFormat, :if => "!joint_applicant_hire_date.blank?"
	
	#other validations
	validates_presence_of  :joint_applicant_home_phone, :joint_applicant_email_address, :joint_applicant_home_address, :joint_applicant_city, :joint_applicant_state, :joint_applicant_zip, :if => "!joint_applicant_name.blank?"	
end
