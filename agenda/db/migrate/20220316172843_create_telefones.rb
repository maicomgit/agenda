class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |te| 
      te.string :numero
      te.boolean :principal
      te.integer :contato_id
      te.timestamps
    end
  end
end
