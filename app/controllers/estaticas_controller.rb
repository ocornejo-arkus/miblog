class EstaticasController < ApplicationController
  def contacto
    @id=params[:id].to_i
    @pagina=params[:pagina]
  end

  def nosotros
    @mensaje = "Hola desde el controller"
    @usuarios = ['Miguel', 'Luis', 'Josué', 'Noé']
  end
end
