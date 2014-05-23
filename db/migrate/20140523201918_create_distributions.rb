class CreateDistributions < ActiveRecord::Migration
  def change
    create_table :distributions do |t|
      t.references :establishment, index: true
      t.references :distributor, index: true

      t.timestamps
    end
  end
end
