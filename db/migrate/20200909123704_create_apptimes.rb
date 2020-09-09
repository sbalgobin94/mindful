class CreateApptimes < ActiveRecord::Migration[6.0]
  def change
    create_table :apptimes do |t|
      t.string :time

      t.timestamps
    end
  end
end
