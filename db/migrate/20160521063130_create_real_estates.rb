class CreateRealEstates < ActiveRecord::Migration
  def change
    create_table :real_estates do |t|
      t.string :description_en
      t.string :description_cn
      t.string :area_en
      t.string :area_cn
      t.string :type_en
      t.string :type_cn
      t.string :size_en
      t.string :size_cn
      t.integer :beds
      t.integer :baths
      t.boolean :recent_project, default: :false 
      t.attachment :attachment

      t.timestamps null: false
    end
  end
end
