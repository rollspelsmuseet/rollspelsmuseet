class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false

      t.text :editorial
      t.text :back_cover

      t.string :producer
      t.string :publisher

      t.string :article_no, limit: 14
      t.string :isbn, limit: 13

      t.timestamps
    end
  end
end
