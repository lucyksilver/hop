class CreatePubBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :pub_beers do |t|
      t.references :pub, null: false, foreign_key: true
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
