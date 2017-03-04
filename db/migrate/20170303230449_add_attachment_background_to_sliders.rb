class AddAttachmentBackgroundToSliders < ActiveRecord::Migration[5.0]
  def change
    add_attachment :slides, :attachment_background 
  end
end
