class CreateCachorros < ActiveRecord::Migration
  def change
    create_table :cachorros do |t|
      t.string :nome
      t.datetime :data_de_nascimento
      t.boolean :data_aproximada
      t.string :porte
      t.string :sexo
      t.string :saude
      t.string :temperamento
      t.string :foto
      t.string :equipamento
      t.integer :dupla_para_passeio_id
      t.integer :frequencia_de_passeio
      t.integer :tempo_de_passeio
      t.boolean :habilitado_para_passeio

      t.timestamps null: false
    end
  end
end
