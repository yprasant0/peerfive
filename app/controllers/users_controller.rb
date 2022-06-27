class UsersController < ApplicationController

  def index
    @users = User.all
    if @users.present?
      respond_to do |format|
        format.html { render 'users/index', locals: { :users => @users }}
        format.json { render json: @users }
      end
    end
  end
  
  def create
    user = User.new(user_params)
    if user.save
      respond_to do |format|
        format.html {redirect_to(users_path, :notice => 'User created.') }
        format.json { render json: user }
      end
    else
      respond_to do |format|
        format.html
        format.json { render json: {errors: user.errors}, status: 422 }
      end
    end
  end

  def new
    @user = User.new
  end

  def edit 
    @user = user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to(users_path, :notice => 'User updated.') }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def searches
    query = params[:search]
    @users = User.all
    @names = []
    if query.present?
      @users.each do |user|
        name = user.name[0, query.length]
         if name == query 
          @names << user
         end
      end
    end
    pp @names
    if @names.present?
      respond_to do |format|
        format.html { render 'users/search', :collection => @names } 
        format.json { render json: @names }
      end
    end
  end

  private

  def user_params
    params[:user].permit(:name, :P5, :reward, :id, :search)
  end
end
