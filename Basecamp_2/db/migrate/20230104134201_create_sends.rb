class CreateSends < ActiveRecord::Migration[7.0]
  def change
    create_table :sends do |t|
      t.string :title
      t.references :sder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
