class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.string :description
      t.string :energy_needed
      t.boolean :is_completed
      t.boolean :is_crucial

      t.timestamps
    end
  end
end
