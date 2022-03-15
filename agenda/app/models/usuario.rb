class Usuario < ActiveRecord::Base
    attr_accessible  :nome, :email, :login, :senha , :chave1, :chave2, :nova_senha, :confirma_senha
    validates :login, uniqueness: true
    validates :nome, :email, :login, presence: true
    attr_accessor :nova_senha, :confirma_senha
    validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
    validate :valida_senha
    before_save :criptografa_senha

    def valida_senha
        return if self.nova_senha == self.confirma_senha
        self.errors.add(:nova_senha,'senhas nao coenciden')
    end 

    def criptografa_senha
        return if self.nova_senha.blank?
        self.chave1 = rand(1..9999)
        self.chave2 = rand(1..9999)
        self.senha = "#{self.chave1}#{self.nova_senha}#{self.chave2}"        
            
    end    
end   