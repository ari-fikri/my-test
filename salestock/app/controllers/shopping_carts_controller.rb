class ShoppingCartsController < ApplicationController

    def index
        @carts = ShoppingCart.all
        render json: @carts
    end


    def create
        json = JSON.parse(request.raw_post)
        @cart = ShoppingCart.new(params[:shopping_carts])

        if @cart.save
            render :json => {:msg => "Data is sved", :status => 1}
        else
            render :json => {:errors => @cart.errors, :status => 0, :msg => "Something is wrong"}
        end        
    end

    def show
        @cart = ShoppingCart.find(params[:id])

        if @cart
            render :json => @cart.shopping_cart_details
        else
            render :json => {:msg => "Data not found", :status => 0}
        end
    end

    def update
    end

    def destroy
        @cart = ShoppingCart.find(params[:id])

        if @cart.destroy
            render :json => {:msg => "Data is Deleted", :status => 1}
        else
            render :json => {:errors => @cart.errors, :status => 0, :msg => "Something is wrong"}
        end

    end
end
