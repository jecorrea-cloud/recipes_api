class RecipesController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def create
        recipe = @user.recipes.create(recipe_params)
        render json: recipe, status: :created
    end

    def destroy
        recipe = @user.recipes.find(params[:id])
        recipe.destroy
        render json: recipe
    end

    def update
        recipe = @user.recipes.find(params[:id])
        recipe.update(recipe_params)
        render json: recipe
    end

    private

    def recipe_params 
        params.permit(:cooktime, :servings, :name, :steps, :ingredients, :picture, :favorited)
    end
end
