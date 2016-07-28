module V1
  class GamesEntity < Grape::Entity
    expose :id, documentation: {type: Integer, desc: "Game id"}
    expose :name, documentation: {type: String, desc: "タイトル"}
    expose :panels, documentation: {desc: "Panels"}
    expose :users, documentation: {desc: "Members"}
    expose :created_at, documentation: {type: String, desc: "作成日時"}
    expose :updated_at, documentation: {type: String, desc: "更新日時"}
  end

  class Games < Grape::API
    helpers do
      def not_found
        {status: 404, message: "Game not found."}
      end
    end
    resource 'games', swagger: { nested: false } do

      get do
        @games = Game.all
        present @games, with: GamesEntity
      end

      desc "create new game"
      params do
        requires :name, type: String, desc: 'Game title'
      end
      post do
        @game = Game.new
        @game.name = params[:name]
        @game.save!
      end

      params do
        requires :id, type: Integer, desc: 'Game id'
      end
      route_param :id do
        get do
          @game = Game.find_by(id: params[:id])
          return not_found if @game.blank?

          present @game, with: GamesEntity
        end
      end
    end
  end
end
