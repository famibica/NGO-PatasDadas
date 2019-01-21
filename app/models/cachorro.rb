class Cachorro < ActiveRecord::Base
	validates :nome, :data_de_nascimento, :porte, :sexo, :saude, :temperamento, :equipamento, :frequencia_de_passeio, :tempo_de_passeio, presence: true
end
