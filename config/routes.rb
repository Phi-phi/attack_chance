Rails.application.routes.draw do
  root "web_view#index"

  mount API::Root => '/api/' # Grape
  mount GrapeSwaggerRails::Engine => '/docs'
end
