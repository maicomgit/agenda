class CreateContatos < ActiveRecord::Migration
  def  change
    create_table :contatos do |c|
      c.string :nome
      c.string :email
      c.integer :usuario_id
      c.timestamps
    end  
  end
end
