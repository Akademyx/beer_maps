class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.references :brand, index: true, foreign_key: true
      t.string :type
      t.text :description
      t.float :abv
      t.float :ibu
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
