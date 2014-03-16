class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :file_uploads do |t|
      t.string :name
      t.float :total
      t.integer :created_by

      t.timestamps
    end
    add_index :file_uploads, :created_by
  end
end
