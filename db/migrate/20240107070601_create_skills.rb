class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :koka
      t.integer :attack_point
      t.string :symbol

      t.timestamps
    end
  end
end
