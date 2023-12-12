class RecipesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
      redirect_to recipe_path(@recipe), notice: "レシピを投稿しました。"
  end

  def edit
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :body, :image, :comment)
  end
end
