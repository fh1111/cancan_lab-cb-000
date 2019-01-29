class CreateViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :viewers do |t|

      t.references :note, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
