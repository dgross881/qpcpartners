class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.text :body
      t.boolean :publish, default: false

      t.timestamps null: false
    end
  end
end
