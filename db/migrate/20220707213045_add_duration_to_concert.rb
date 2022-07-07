class AddDurationToConcert < ActiveRecord::Migration[7.0]
  def change
    add_column :concerts, :duration, :integer
  end
end
