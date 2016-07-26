module V1
  class PanelsEntity < Grape::Entity
    expose :id, documentation: {type: Integer, desc: "パネルid"}
    expose :created_at, documentation: {type: String, desc: "作成日時"}
    expose :updated_at, documentation: {type: String, desc: "更新日時"}
  end

  class Panels < Grape::API
    resource 'panels', swagger: { nested: false } do
    end
  end
end
