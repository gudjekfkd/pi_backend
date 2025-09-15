class EnderecoController < ApplicationController
  def index
    
  end
end

def create
endereco = Usuario.new(usuario_params)
 
  if endereco.save
    render json: endereco, status: :created
  else
    render json: endereco.errors, status: :unprocessable_entity
  end
end
 
private
 
def usuario_params
  params.require(:endereco).permit(:numero, :rua)
end

def update
  endereco = Endereco.find(params[:id])
  if endereco.update(endereco_params)
    render json: endereco
  else
    render json: endereco.errors, status: :unprocessable_entity
  end
end
 
def destroy
  endereco = Endereco.find(params[:id])
  endereco.destroy
