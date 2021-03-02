class CustomersController < ApplicationController

  def index 
    customers = Customer.all
    render json: customers
  end 

  def update
    customer ||= Customer.find_by(id:params[:id])
    if(customer)
      customer.update(customer_params)
      render json: customer
    else
      render json: {error:"Customer Couldnt be found."}
    end
  end

  def create 
    customer = Customer.new(customer_params)
    if(customer.save)
      render json: customer
    else
      render json: {error:"Customer Couldnt be created."}
    end
  end 

  def destroy
    customer ||= Customer.find_by(id:params[:id])
    if(customer)
      customer.destroy
      render json: customer
    else
      render json: {error:"Customer Couldnt be found."}
    end
  end 

  private
  def customer_params
    params.require(:customer).permit(:name,:lastname,:email,:number)
  end 

end
