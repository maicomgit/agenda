class UsuariosController < ApplicationController
    def index 
        @usuarios = Usuario.all
    end   

    def  edit
        @usuario = Usuario.find_by_id(params[:id])

    end   

    def update
        @usuario = Usuario.find_by_id(params[:id])
        if  @usuario.update_attributes(params[:usuario])
            redirect_to usuarios_path
        else     
            render 'edit'
        end    
    end   





    
end