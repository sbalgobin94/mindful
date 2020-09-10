class AddDescriptionToTherapists < ActiveRecord::Migration[6.0]
  def change
    add_column :therapists, :description, :text
  end
end
