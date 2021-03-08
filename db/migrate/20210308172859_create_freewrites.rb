class CreateFreewrites < ActiveRecord::Migration[6.1]
  def change
    create_table :freewrites do |t|
      t.string :date
      t.string :time
      t.text :entry
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
