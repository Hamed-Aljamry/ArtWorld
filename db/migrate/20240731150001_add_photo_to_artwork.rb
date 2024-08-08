class AddPhotoToArtwork < ActiveRecord::Migration[7.1]
  def change
    add_column :artworks, :photo, :string
  end
end
