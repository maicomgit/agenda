class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :login
      t.string :senha
      t.string :chave1 
      t.string :chave2
      t.timestamps
    end  
  end
end
