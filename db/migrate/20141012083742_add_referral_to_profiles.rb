class AddReferralToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :referral, :string
  end
end
