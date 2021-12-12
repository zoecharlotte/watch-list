class RemovePhotoUrlFromList < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :photo_url, :string
  end
end
