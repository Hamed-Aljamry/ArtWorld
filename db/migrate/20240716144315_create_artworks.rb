class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :category
      t.text :description
      t.string :title
      t.string :artist
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
