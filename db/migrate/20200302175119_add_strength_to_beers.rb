class AddStrengthToBeers < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :strength, :float
  end
end
