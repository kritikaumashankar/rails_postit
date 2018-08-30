class CreatePostIts < ActiveRecord::Migration[5.2]
  def change
    create_table :post_its do |t|
      t.string :title
      t.text :body
      t.string :completed

      t.timestamps
    end
  end
end
