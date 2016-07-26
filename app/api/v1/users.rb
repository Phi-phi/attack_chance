module V1
  class UsersEntity < Grape::Entity
    expose :id, documentation: {type: Integer, desc: "ユーザーid"}
    expose :name, documentation: {type: String, desc: "名前"}
    expose :score, documentation: {type: Integer, desc: "点数"}
    expose :color, documentation: {type: String, desc: "チーム色"}
    expose :created_at, documentation: {type: String, desc: "作成日時"}
    expose :updated_at, documentation: {type: String, desc: "更新日時"}
  end

  class Users < Grape::API
    resource 'users', desc: 'ユーザー', swagger: { nested: false } do
      
      desc 'ユーザーリストの取得', {
          entity: UsersEntity,
          response: {isArray: true, entity: UsersEntity}
      #headers: [...],
      #errors: [...]
      }

      get do
        @users = User.all
        present @users, with: UsersEntity
      end
    end

  
  end
end
