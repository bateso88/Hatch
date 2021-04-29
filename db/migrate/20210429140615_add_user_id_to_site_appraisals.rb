class AddUserIdToSiteAppraisals < ActiveRecord::Migration[6.1]
  def change
    add_column :site_appraisals, :user_id, :integer
    add_index :site_appraisals, :user_id
  end
end
