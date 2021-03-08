class CreateGratitudes < ActiveRecord::Migration[6.1]
  def change
    create_table :gratitudes do |t|
      t.string :date
      t.references :user, null: false, foreign_key: true
      t.string :entry1
      t.string :entry2
      t.string :entry3
      t.string :entry4
      t.string :entry5
      t.string :entry6

      t.timestamps
    end
  end
end
