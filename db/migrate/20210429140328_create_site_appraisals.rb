class CreateSiteAppraisals < ActiveRecord::Migration[6.1]
  def change
    create_table :site_appraisals do |t|
      t.string :address
      t.integer :lease_length
      t.string :fixed_or_rising
      t.string :rent
      t.integer :rent_free
      t.integer :rateable_value
      t.integer :service_charge
      t.integer :insurance
      t.integer :utilities
      t.integer :members_of_staff
      t.integer :estimated_total_wages
      t.integer :cost_of_sales_as_percentage_of_turnover
      t.string :projections
      t.integer :fit_out
      t.integer :designs
      t.integer :planning_application
      t.integer :legal_fees
      t.integer :building_survey
      t.integer :surveyor
      t.integer :stamp_duty

      t.timestamps
    end
  end
end
