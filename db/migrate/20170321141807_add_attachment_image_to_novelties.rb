class AddAttachmentImageToNovelties < ActiveRecord::Migration
  def self.up
    change_table :novelties do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :novelties, :image
  end
end
