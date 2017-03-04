class ChangeColumnImageToAttachmentInSlides < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :slides, :image 
  end
end
