class Usuario < ActiveRecord::Base
    attr_accessible  :nome, :email, :login, :senha , :chave1, :chave2
    validates :login, uniqueness: true
    validates :nome, :email, :login, presence: true

end   