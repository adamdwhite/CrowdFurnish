class UserRewardsController < ApplicationController
  before_action :set_user_reward, only: [:show, :edit, :update, :destroy]

  # GET /user_rewards
  # GET /user_rewards.json
  def index
    @user_rewards = UserReward.all
  end

  # GET /user_rewards/1
  # GET /user_rewards/1.json
  def show
  end

  # GET /user_rewards/new
  def new
    @user_reward = UserReward.new
  end

  # GET /user_rewards/1/edit
  def edit
  end

  # POST /user_rewards
  # POST /user_rewards.json
  def create
    @user_reward = UserReward.new(user_reward_params)

    respond_to do |format|
      if @user_reward.save
        format.html { redirect_to @user_reward, notice: 'User reward was successfully created.' }
        format.json { render :show, status: :created, location: @user_reward }
      else
        format.html { render :new }
        format.json { render json: @user_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_rewards/1
  # PATCH/PUT /user_rewards/1.json
  def update
    respond_to do |format|
      if @user_reward.update(user_reward_params)
        format.html { redirect_to @user_reward, notice: 'User reward was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_reward }
      else
        format.html { render :edit }
        format.json { render json: @user_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_rewards/1
  # DELETE /user_rewards/1.json
  def destroy
    @user_reward.destroy
    respond_to do |format|
      format.html { redirect_to user_rewards_url, notice: 'User reward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reward
      @user_reward = UserReward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_reward_params
      params.require(:user_reward).permit(:user_id, :reward_id)
    end
end
