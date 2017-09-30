class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name, null: false

      t.timestamps null: false
    end

    add_index :provinces, :name, unique: true    
  end
end
