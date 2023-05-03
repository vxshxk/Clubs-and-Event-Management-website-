class CreateEvaants < ActiveRecord::Migration[7.0]
  def change
    create_table :evaants do |t|
      t.string :clubname
      t.string :evant
      t.text :desc
      t.datetime :when

      t.timestamps
    end
  end
end
