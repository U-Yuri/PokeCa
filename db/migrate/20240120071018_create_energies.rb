class CreateEnergies < ActiveRecord::Migration[7.0]
  def change
    create_table :energies do |t|
      t.string :name
      t.text :koka

      t.timestamps
    end
  end
end
