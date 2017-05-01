Rails.application.routes.draw do

  resources :prospecto_meta_largo_plazos
  resources :prospecto_meta_mediano_plazos
  resources :prospecto_meta_corto_plazos
  root 'prospectos#index'
  devise_for :usuarios
  resources :prospecto_marcas
  resources :prospecto_cliente_productos
  resources :prospecto_referidos
  resources :prospecto_planes
  resources :usuario_planes
  resources :planes
  resources :prospecto_seguimientos
  resources :seguimiento_materiales
  resources :seguimiento_respuestas
  resources :prospecto_telefonos
  resources :tipo_telefonos
  resources :prospecto_ocupaciones
  resources :prospecto_correos
  resources :tipo_correos
  resources :prospecto_usuarios
  resources :usuarios
  resources :prospectos
  resources :promedio_horas
  resources :promedio_mes
  resources :productos
  resources :marcas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
