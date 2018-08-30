class CreatePostits < ActiveRecord::Migration[5.2]
  def change
    create_table :postits do |t|
      t.string :title
      t.string :body
      t.string :completed

      t.timestamps
    end
  end
end
