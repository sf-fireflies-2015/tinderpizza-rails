require 'rails_helper'

RSpec.describe "Posts", type: :request do

  let(:valid_params){
    {:pizza => {:name => 'Hawaiian', :price => '1999', :diameter => '12'}}
  }


  describe "GET #create" do
    it "adds new pizza" do
      expect {
        post pizzas_path, valid_params
      }.to change{Pizza.count}.by(1)
    end
  end


end
