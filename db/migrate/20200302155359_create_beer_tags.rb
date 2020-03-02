class CreateBeerTags < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_tags do |t|
      t.references :beer, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
