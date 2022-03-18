class Contato < ActiveRecord::Base
    attr_accessible :nome, :email, :usuario_id
    validates :nome, :email, presence: true
    validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
    belongs_to :usuario 
    has_many :telefones


    scope :join_telefone_principal, select("contatos.nome, contatos.id, contatos.email , telefones.numero").joins("left join telefones on telefones.contato_id = contatos.id and telefones.principal = true")
end   