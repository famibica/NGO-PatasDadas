class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.datetime :data_de_nascimento
      t.string :email
      t.string :telefone
      t.string :foto

      t.timestamps null: false
    end
  end
end
