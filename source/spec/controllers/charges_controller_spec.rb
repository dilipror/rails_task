require "spec_helper"

describe ChargesController do

  before(:each) do
    @customer = Customer.create(first_name: 'Dean', last_name: 'Martin' , email: 'dean.martin@culini.com')
  end

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      response.code.should eq("200")
    end

    it "creates a Charge" do
      charge_attributes = {:customer_id => @customer.id, :amount => "2323", :amount_currency =>"USD"}
      post :create, charge: charge_attributes
      response.should redirect_to(charges_path)
      Charge.last.customer_id.should == charge_attributes[:customer_id]
    end

    it "displays new on create failure" do
      post :create, charge: {"customer_id"=>@customer.id, "amount"=>"asdasdasd", "amount_currency"=>"USD"}
      response.should render_template("new")
    end

  end
end
