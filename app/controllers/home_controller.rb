class HomeController < ApplicationController
  def index
    render inertia: 'Home/Index', props: { name: 'Rushabh' }
  end
end
