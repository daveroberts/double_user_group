class CreateAuditAssignments < ActiveRecord::Migration
  def change
    create_table :audit_assignments do |t|
      t.references :audit, index: true
      t.integer :item_id
      t.string :item_type

      t.timestamps
    end
  end
end
