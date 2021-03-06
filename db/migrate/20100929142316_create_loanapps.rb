class CreateLoanapps < ActiveRecord::Migration
  def self.up
    create_table :loanapps do |t|
      t.string :disability_insurance
      t.string :type_of_loan
      t.string :loan_amount
      t.string :applicant_name
      t.string :applicant_account_number
      t.string :applicant_home_phone
      t.string :applicant_time_to_call
      t.string :applicant_email_address
      t.string :applicant_home_address
      t.string :applicant_city
      t.string :applicant_state
      t.string :applicant_zip
      t.string :applicant_monthly_mortgage
      t.string :applicant_employer_name
      t.string :applicant_work_phone
      t.string :applicant_hire_date
      t.string :applicant_income
      t.string :applicant_income_frequency
      t.string :applicant_other_income
      t.string :applicant_other_income_frequency
      t.string :applicant_other_income_source
      t.string :applicant_debt1
      t.string :applicant_creditor1
      t.string :applicant_outstanding_balance1
      t.string :applicant_monthly_payment1
      t.string :applicant_debt2
      t.string :applicant_creditor2
      t.string :applicant_outstanding_balance2
      t.string :applicant_monthly_payment2
      t.string :applicant_debt3
      t.string :applicant_creditor3
      t.string :applicant_outstanding_balance3
      t.string :applicant_monthly_payment3
      t.string :applicant_debt4
      t.string :applicant_creditor4
      t.string :applicant_outstanding_balance4
      t.string :applicant_monthly_payment4
      t.string :applicant_debt5
      t.string :applicant_creditor5
      t.string :applicant_outstanding_balance5
      t.string :applicant_monthly_payment5
      t.string :applicant_debt6
      t.string :applicant_creditor6
      t.string :applicant_outstanding_balance6
      t.string :applicant_monthly_payment6
      t.string :joint_applicant_name
      t.string :joint_applicant_account_number
      t.string :joint_applicant_home_phone
      t.string :joint_applicant_time_to_call
      t.string :joint_applicant_email_address
      t.string :joint_applicant_home_address
      t.string :joint_applicant_city
      t.string :joint_applicant_state
      t.string :joint_applicant_zip
      t.string :joint_applicant_monthly_mortgage
      t.string :joint_applicant_employer_name
      t.string :joint_applicant_work_phone
      t.string :joint_applicant_hire_date
      t.string :joint_applicant_income
      t.string :joint_applicant_income_frequency
      t.string :joint_applicant_other_income
      t.string :joint_applicant_other_income_frequency
      t.string :joint_applicant_other_income_source
      t.string :joint_applicant_debt1
      t.string :joint_applicant_creditor1
      t.string :joint_applicant_outstanding_balance1
      t.string :joint_applicant_monthly_payment1
      t.string :joint_applicant_debt2
      t.string :joint_applicant_creditor2
      t.string :joint_applicant_outstanding_balance2
      t.string :joint_applicant_monthly_payment2
      t.string :joint_applicant_debt3
      t.string :joint_applicant_creditor3
      t.string :joint_applicant_outstanding_balance3
      t.string :joint_applicant_monthly_payment3
      t.string :joint_applicant_debt4
      t.string :joint_applicant_creditor4
      t.string :joint_applicant_outstanding_balance4
      t.string :joint_applicant_monthly_payment4
      t.string :joint_applicant_debt5
      t.string :joint_applicant_creditor5
      t.string :joint_applicant_outstanding_balance5
      t.string :joint_applicant_monthly_payment5
      t.string :joint_applicant_debt6
      t.string :joint_applicant_creditor6
      t.string :joint_applicant_outstanding_balance6
      t.string :joint_applicant_monthly_payment6

      t.timestamps
    end
  end

  def self.down
    drop_table :loanapps
  end
end
