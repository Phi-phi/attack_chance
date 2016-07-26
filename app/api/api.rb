module API
  class Root < Grape::API
    mount V1::Root

    add_swagger_documentation
  end
end
