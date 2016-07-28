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

    helpers do
      def not_found
        {status: 404, message: "Not found."}
      end
    end

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

      params do
        requires :total, type: Integer, desc: "総数"
        requires :names, type: Array[String]
        requires :colors, type: Array[String]
        requires :game_id, type: Integer
      end
      post do
        @users = []
        p params
        p params[:names]

        for index in 1..params[:total] do
          @user = User.new
          @user.name = params[:names][index - 1]
          @user.color = params[:colors][index - 1]
          @user.score = 0
          @user.game_id = params[:game_id]
          @user.save!
          @users.push(@user)
        end
        present @users, with: UsersEntity
      end

      params do
        requires :id, type: Integer
      end
      route_param :id do
        get do
          @user = User.find_by(id: params[:id])
          return not_found if @user.blank?

          present @user
        end
      end
    end

  
  end
end
