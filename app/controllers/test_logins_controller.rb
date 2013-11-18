class TestLoginsController < ApplicationController
  before_action :set_test_login, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /test_logins
  # GET /test_logins.json
  def index
    @test_logins = TestLogin.all
  end

  # GET /test_logins/1
  # GET /test_logins/1.json
  def show
  end

  # GET /test_logins/new
  def new
    @test_login = TestLogin.new
  end

  # GET /test_logins/1/edit
  def edit
  end

  # POST /test_logins
  # POST /test_logins.json
  def create
    @test_login = TestLogin.new(test_login_params)

    respond_to do |format|
      if @test_login.save
        format.html { redirect_to @test_login, notice: 'Test login was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_login }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_logins/1
  # PATCH/PUT /test_logins/1.json
  def update
    respond_to do |format|
      if @test_login.update(test_login_params)
        format.html { redirect_to @test_login, notice: 'Test login was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_logins/1
  # DELETE /test_logins/1.json
  def destroy
    @test_login.destroy
    respond_to do |format|
      format.html { redirect_to test_logins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_login
      @test_login = TestLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_login_params
      params[:test_login]
    end
end
