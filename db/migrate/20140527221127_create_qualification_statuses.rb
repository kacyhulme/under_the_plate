class CreateQualificationStatuses < ActiveRecord::Migration
  def change
    create_table :qualification_statuses do |t|
      t.boolean :status
      t.references :establishment, index: true
      t.references :qualification, index: true

      t.timestamps
    end
  end
end
