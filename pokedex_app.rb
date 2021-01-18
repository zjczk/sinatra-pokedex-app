require 'net/http'

class PokedexApp < Sinatra::Application
  enable :sessions

  get '/' do
    url = 'https://pokeapi.co/api/v2/pokemon?limit=150'
    uri = URI(url)
    req = Net::HTTP.get(uri)
    pokemons = JSON.parse(req)
    index = rand(-150..-1)

    return display_page :index unless !!pokemons
    
    @pokemon = pokemons["results"][index]
    @time = Date.today.strftime("%d %b %Y")

    display_page :index
  end

  def display_page(location, locals = {})
    options = {
      layout_options: { views: './views/layouts' },
      layout: locals.fetch(:layout) { :default },
      locals: locals
    }

    haml location.to_sym, options
  end

  def display_partial(location, locals = {})
    haml location.to_sym, layout: false, locals: locals
  end
end
