class ProductsController < ApplicationController
    def index
        @products = Product.all
        render json: @products
    end

    def show
        @product = Product.find(params[:id])
        render json: @product
    end

    def update
        @product = Product.find(params[:id])

        if @product.update_attributes(:name => params[:name], :price => params[:price], :color => params[:color], :description => params[:description])
            render :json => {:msg => "Data is updated", :status => 1}
        else
            render :json => {:errors => @product.errors, :status => 0, :msg => "Something is wrong"}
        end

    end

    def destroy
        @product = Product.find(params[:id])

        if @product.destroy
            render :json => {:msg => "Data is Deleted", :status => 1}
        else
            render :json => {:errors => @product.errors, :status => 0, :msg => "Something is wrong"}
        end

    end

end
