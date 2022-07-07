class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.date :date
      t.integer :audience
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
