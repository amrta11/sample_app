require 'spec_helper'

describe "Layout Links" do
  it "should have a home page at '/'" do
    get '/'
    respond.should render_template('pages/home')
  end
  
  it "should have a contact page at '/contact '" do
    get '/contact'
    respond.should render_template('pages/contact')
  end 
  
  it "should have a about page at '/about'" do
    get '/about'
    respond.should render_template('pages/about')
  end
  
  it "should have a help page at '/help'" do
    get '/help'
    respond.should render_template('pages/help')
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should render_template('users/new')
  end
end