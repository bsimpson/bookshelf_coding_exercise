class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :author
      t.belongs_to :publisher
      t.integer :rating
      t.integer :published
      t.string :image_url
      t.timestamps
    end
  end
end
