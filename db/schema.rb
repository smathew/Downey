# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100929142316) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loanapps", :force => true do |t|
    t.string   "disability_insurance"
    t.string   "type_of_loan"
    t.string   "loan_amount"
    t.string   "applicant_name"
    t.string   "applicant_account_number"
    t.string   "applicant_home_phone"
    t.string   "applicant_time_to_call"
    t.string   "applicant_email_address"
    t.string   "applicant_home_address"
    t.string   "applicant_city"
    t.string   "applicant_state"
    t.string   "applicant_zip"
    t.string   "applicant_monthly_mortgage"
    t.string   "applicant_employer_name"
    t.string   "applicant_work_phone"
    t.string   "applicant_hire_date"
    t.string   "applicant_income"
    t.string   "applicant_income_frequency"
    t.string   "applicant_other_income"
    t.string   "applicant_other_income_frequency"
    t.string   "applicant_other_income_source"
    t.string   "applicant_debt1"
    t.string   "applicant_creditor1"
    t.string   "applicant_outstanding_balance1"
    t.string   "applicant_monthly_payment1"
    t.string   "applicant_debt2"
    t.string   "applicant_creditor2"
    t.string   "applicant_outstanding_balance2"
    t.string   "applicant_monthly_payment2"
    t.string   "applicant_debt3"
    t.string   "applicant_creditor3"
    t.string   "applicant_outstanding_balance3"
    t.string   "applicant_monthly_payment3"
    t.string   "applicant_debt4"
    t.string   "applicant_creditor4"
    t.string   "applicant_outstanding_balance4"
    t.string   "applicant_monthly_payment4"
    t.string   "applicant_debt5"
    t.string   "applicant_creditor5"
    t.string   "applicant_outstanding_balance5"
    t.string   "applicant_monthly_payment5"
    t.string   "applicant_debt6"
    t.string   "applicant_creditor6"
    t.string   "applicant_outstanding_balance6"
    t.string   "applicant_monthly_payment6"
    t.string   "joint_applicant_name"
    t.string   "joint_applicant_account_number"
    t.string   "joint_applicant_home_phone"
    t.string   "joint_applicant_time_to_call"
    t.string   "joint_applicant_email_address"
    t.string   "joint_applicant_home_address"
    t.string   "joint_applicant_city"
    t.string   "joint_applicant_state"
    t.string   "joint_applicant_zip"
    t.string   "joint_applicant_monthly_mortgage"
    t.string   "joint_applicant_employer_name"
    t.string   "joint_applicant_work_phone"
    t.string   "joint_applicant_hire_date"
    t.string   "joint_applicant_income"
    t.string   "joint_applicant_income_frequency"
    t.string   "joint_applicant_other_income"
    t.string   "joint_applicant_other_income_frequency"
    t.string   "joint_applicant_other_income_source"
    t.string   "joint_applicant_debt1"
    t.string   "joint_applicant_creditor1"
    t.string   "joint_applicant_outstanding_balance1"
    t.string   "joint_applicant_monthly_payment1"
    t.string   "joint_applicant_debt2"
    t.string   "joint_applicant_creditor2"
    t.string   "joint_applicant_outstanding_balance2"
    t.string   "joint_applicant_monthly_payment2"
    t.string   "joint_applicant_debt3"
    t.string   "joint_applicant_creditor3"
    t.string   "joint_applicant_outstanding_balance3"
    t.string   "joint_applicant_monthly_payment3"
    t.string   "joint_applicant_debt4"
    t.string   "joint_applicant_creditor4"
    t.string   "joint_applicant_outstanding_balance4"
    t.string   "joint_applicant_monthly_payment4"
    t.string   "joint_applicant_debt5"
    t.string   "joint_applicant_creditor5"
    t.string   "joint_applicant_outstanding_balance5"
    t.string   "joint_applicant_monthly_payment5"
    t.string   "joint_applicant_debt6"
    t.string   "joint_applicant_creditor6"
    t.string   "joint_applicant_outstanding_balance6"
    t.string   "joint_applicant_monthly_payment6"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reqinfos", :force => true do |t|
    t.string   "dfcu_membership"
    t.string   "checking_accounts"
    t.string   "silverstar_member"
    t.string   "ira_accounts"
    t.string   "minor_accounts"
    t.string   "coogan_account"
    t.string   "visa_account"
    t.string   "atm_card"
    t.string   "direct_deposit"
    t.string   "dotti"
    t.string   "other"
    t.string   "otherinfo"
    t.string   "name"
    t.string   "dfcu_accountno"
    t.string   "home_phone"
    t.string   "employer"
    t.string   "work_phone"
    t.string   "email_address"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
