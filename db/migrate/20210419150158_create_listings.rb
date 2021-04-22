# frozen_string_literal: true

class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :company_name
      t.string :short_description
      t.string :long_description
      t.string :requirement
      t.string :top_three_target_locations
      t.string :size_guide
      t.string :budget

      t.timestamps
    end
  end
end
