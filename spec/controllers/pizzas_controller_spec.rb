require 'rails_helper'

RSpec.describe PizzasController, type: :controller do

  let(:valid_params){
    {:pizza => {:name => 'Hawaiian', :price => '1999', :diameter => '12'}}
  }


  describe "POST #create" do
    it "returns http success" do
      post :create, valid_params
      expect(response).to be_redirect
    end

    it "creates a new post" do
        fake = double(:pizza)
        
        expect(Pizza).to receive(:new).with(
          hash_including(valid_params[:pizza])
        ).and_return(fake)

        expect(fake).to receive(:save).with(no_args).and_return(true)

        # Required because we try to redirect to the new pizza's page
        expect_any_instance_of(PizzasController).to receive(:redirect_to).with(fake)
        
        post :create, valid_params
    end
  end



end
