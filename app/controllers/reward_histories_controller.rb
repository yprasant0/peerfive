class RewardHistoriesController < ApplicationController

  def show
    reward_history = RewardHistory.find(params[:id])
    respond_to do |format|
      if reward_history.update_attributes(reward_history_params)
        format.html { redirect_to(reward_histories_path, :notice => 'reward_history updated.') }
        format.json { head :no_content }
      else
        format.html { render :action => "show" }
        format.json { render :json => reward_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  private 

  def reward_history_params
    params[:reward_history].permit(:amount, :given_by)
  end
end
