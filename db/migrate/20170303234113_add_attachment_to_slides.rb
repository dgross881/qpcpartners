class AddAttachmentToSlides < ActiveRecord::Migration[5.0]
  def change
    add_attachment :slides, :attachment
  end
end
