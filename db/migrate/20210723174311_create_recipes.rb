class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :cooktime
      t.string :servings
      t.string :steps
      t.string :ingredients
      t.string :name
      t.string :picture
      t.boolean :favorited

      t.timestamps
    end
  end
end
