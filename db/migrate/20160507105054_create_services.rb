class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title_en
      t.text :description_en
      t.string :title_cn
      t.string :description_cn

      t.timestamps null: false
    end
  end
end
