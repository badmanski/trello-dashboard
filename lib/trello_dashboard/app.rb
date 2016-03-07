module TrelloDashboard
  class App < Sinatra::Base
    get '/' do
      @lists = {}
      Sinatra::Application.secrets['lists'].map do |category, ids|
        @lists[category] = ids.map { |id| Trello::List.find(id) }
      end

      haml :index
    end
  end
end
