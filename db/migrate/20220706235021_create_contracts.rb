class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.string :name
      t.date :start_date
      t.text :terms

      t.timestamps
    end
  end
end
