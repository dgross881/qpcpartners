class ChangeSlidesNameToTitleBodyToDescription < ActiveRecord::Migration[5.0]
  def change
    rename_column :slides, :name, :title_en
    rename_column :slides, :body, :description_en
    add_column :slides, :title_cn, :string
    add_column :slides, :description_cn, :text
  end
end
