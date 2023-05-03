class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :clubs, null: false, foreign_key: true
      t.string :eventname
      t.text :desc
      t.datetime :when

      t.timestamps
    end
  end
end
