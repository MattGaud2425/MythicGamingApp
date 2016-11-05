class AddAttachmentImageFileToGames < ActiveRecord::Migration
  def self.up
    change_table :games do |t|
      t.attachment :image_file
    end
  end

  def self.down
    remove_attachment :games, :image_file
  end
end
