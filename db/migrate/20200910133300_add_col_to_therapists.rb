class AddColToTherapists < ActiveRecord::Migration[6.0]
  def change
    add_column :therapists, :image_url, :string
  end
end
