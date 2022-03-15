class Contato < ActiveRecord::Base
    attr_accessible :nome, :email, :usuario_id
    validates :nome, :email, presence: true
    validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
end   