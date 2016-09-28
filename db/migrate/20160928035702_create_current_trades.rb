class CreateCurrentTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :current_trades do |t|
      t.string :title_en
      t.string :title_cn
      t.string :description_en
      t.text :description_cn
      t.attachment :attachment

      t.timestamps
    end
  end
end
