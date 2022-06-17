class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.decimal :hourly_rate, precision: 5, scale: 2, null: false

      t.timestamps
    end
  end
end
