class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.text :summary
      t.string :img_url

      t.timestamps
    end
  end
end
