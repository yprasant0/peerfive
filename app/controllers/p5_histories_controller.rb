class P5HistoriesController < ApplicationController

  def create
    p5_history = P5History.new(p5_history_params)
     if p5_history.save
      respond_to do |format|
        format.html {redirect_to(p5_histories_path, :notice => 'p5_history created.') }
        format.json { render json: p5_history }
      end
     else
      respond_to do |format|
        format.html
        format.json { render json: {errors: p5_history.errors}, status: 422 }
     end
    end
  end

  def show
    p5_history = P5History.find(params[:id])
    respond_to do |format|
      if p5_history.update_attributes(p5_history_params)
        format.html { redirect_to(p5_histories_path, :notice => 'p5_history updated.') }
        format.json { head :no_content }
      else
        format.html { render :action => "show" }
        format.json { render :json => p5_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  def delete
    p5_history = P5History.find(params[:id])
    p5_history.destroy
    respond_to do |format|
      format.html { redirect_to(p5_histories_path, :notice => 'Press kit deleted.') }
      format.json { head :no_content }
    end
  end

  private

  def p5_history_params
    params[:p5_history].permit(:amount, :given_to)
  end
end
