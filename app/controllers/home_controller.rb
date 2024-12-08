class HomeController < ApplicationController
  def index
    render inertia: 'Home/Index', props: { name: 'World' }
  end
end
