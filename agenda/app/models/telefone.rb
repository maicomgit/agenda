class Telefone < ActiveRecord::Base
    attr_accessible :numero, :principal, :contato_id
    validates :numero, presence: true
    validates :numero, uniqueness: true
    belongs_to :contato
    validates :numero, format: /\(?[0-9]{2}\)?-[0-9]{5}-[0-9]{4}/

    before_save :check

    def check 
        teste = self.principal?
        teste1= self.id?
        binding.pry
        if teste == true && teste1 == true               
             self.contato.telefones.where("id <> #{self.id}").update_all(principal: 'false')  
        end 
        if teste == true && teste1 == false  
             self.contato.telefones.update_all(principal: 'false')     
        end   
    end    
end    

