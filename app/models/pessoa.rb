class Pessoa < ActiveRecord::Base
	validates :nome, :data_de_nascimento, :email, :telefone, presence: true
	validates :email, uniqueness: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates :foto, allow_blank: true, format: {
		with: %r{\.(jpg|png)\Z}i,
		message: 'A imagem deve estar no formato .jpg ou .png.'
	}
end
