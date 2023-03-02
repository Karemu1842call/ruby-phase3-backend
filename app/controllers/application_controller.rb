class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here

  # Get

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/cart" do
    cart = Cart.all
    cart.to_json
  end

  get "/product" do
    product = Product.all
    product.to_json
  end

  get "/user" do
    user = User.all
    user.to_json
  end

  # All get methods functioning effectively

  # Post methods

  post "/cart" do
    cart = Cart.create(quantity: params[:quantity])
    cart.to_json
  end

  post "/product" do
    product = Product.create(productName: params[:productName], price: params[:price], productImage: params[:productImage])
    product.to_json
  end

  post "/user" do
    user = User.create(name: params[:name], email: params[:email], tel_no: params[:tel_no])
    user.to_json
  end

  # All post methods work

  # Delete methods
  delete "/cart/:id" do
    cart = Cart.find(params[:id])
    cart.destroy
    cart.to_json
  end

  delete "/product/:id" do
    product = Product.find(params[:id])
    product.destroy
    product.to_json
  end

  delete "/user/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  # All delete controllers work

  # Patch

  patch "/cart/:id" do
    cart = Cart.find(params[:id])
    cart.update(quantity: params[:quantity])
    cart.to_json
  end

  patch "/product/:id" do
    product = Product.find(params[:id])
    product.update(productName: params[:productName], price: params[:price], productImage: params { :productImage })
    product.to_json
  end

  patch "/user/:id" do
    user = User.find(params[:id])
    user.update(name: params[:name], email: params[:email], tel_no: params[:tel_no])
    user.to_json
  end
  
end
