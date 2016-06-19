class CategoriesController < ApplicationController


    def index
        @categories = Category.all
        render json: @categories
    end


    def show
        @category = Category.find(params[:id])
        render json: @category
    end


    def create
        @category = Category.new(name: params[:name], description: params[:description])

        if @category.save
            render :json => {:msg => "Data is saved", :status => 1}
        else
            render :json => { :errors => @category.errors, :status => 0, :msg => "Something is wrong"}
        end

    end


    def update
        @category = Category.find(params[:id])

        if @category.update_attributes(:name => params[:name], :description => params[:description])
            render :json => {:msg => "Data is updated", :status => 1}
        else
            render :json => {:errors => @category.errors, :status => 0, :msg => "Something is wrong"}
        end
    end


    def destroy
        @category = Category.find(params[:id])

        if @category.destroy
            render :json => {:msg => "Data is Deleted", :status => 1}
        else
            render :json => {:errors => @category.errors, :status => 0, :msg => "Something is wrong"}
        end

    end


end
