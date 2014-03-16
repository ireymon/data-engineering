class AddAttachmentOrdersToFileUploads < ActiveRecord::Migration
  def self.up
    change_table :file_uploads do |t|
      t.attachment :upload_orders
    end
  end

  def self.down
    drop_attached_file :file_uploads, :upload_orders
  end
end
