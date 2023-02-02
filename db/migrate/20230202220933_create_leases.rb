class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.string :rent
      t.string :apartment_key
      t.belongs_to :apartment, null: false, foreign_key: true
      t.string :tenant_key
      t.belongs_to :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
