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

    def new
        @usuario = Usuario.new
    end  

    def create 
        @usuario = Usuario.new(params[:usuario])
        if @usuario.save
            redirect_to usuarios_path
        else 
            render 'new'     
        end     
    end   

    def show
        @usuario = Usuario.find_by_id(params[:id])
    end   

    def destroy
        @usuario = Usuario.find_by_id(params[:id])
        @usuario.destroy
        redirect_to usuarios_path
    end



    
end