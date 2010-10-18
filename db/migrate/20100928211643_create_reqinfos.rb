class CreateReqinfos < ActiveRecord::Migration
  def self.up
    create_table :reqinfos do |t|
      t.string :dfcu_membership
      t.string :checking_accounts
      t.string :silverstar_member
      t.string :ira_accounts
      t.string :minor_accounts
      t.string :coogan_account
      t.string :visa_account
      t.string :atm_card
      t.string :direct_deposit
      t.string :dotti
      t.string :other
      t.string :otherinfo
      t.string :name
      t.string :dfcu_accountno
      t.string :home_phone
      t.string :employer
      t.string :work_phone
      t.string :email_address
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :reqinfos
  end
end
