class ContatosController < ApplicationController
    def index
        @contatos = @usuario_logado.contatos
    end    


end    