class MembersController < ApplicationController

  before_action :login_required, except: [:new, :create, :success]
  before_action :login_required, :admin_required, except: [:new, :create, :success, :list]
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :statistics, only: [:index, :list, :mailing]

  # GET /members
  # GET /members.json
  def index
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  def mailing
  end

  def list
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to "/members/success", notice: @member.name+'的報名資料已經成功送出！' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def success
    @members = Member.all
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name, :title, :personal_id, :office_phone, :mobile_phone, :address, :email, :school, :person_type, :room_type, :room_partiner, :room_date, :food, :transportation, :car_id, :group)
    end

    def statistics

      @members = Member.all

      @food1 = Member.where("food=1")
      @food2 = Member.where("food=2")

      @msg = "目前總報名人數為" + @members.count.to_s + "人。<br />\n"
      @msg += "葷食" + @food1.count.to_s + "人，素食" + @food2.count.to_s + "人。<br /><br/>\n"


      @roomtype22 = Member.where("room_type=2 and room_date=2")
      @msg += "單人房(10/14)一天："+@roomtype22.count.to_s+"個房間<br />"
      @roomtype21 = Member.where("room_type=2 and room_date=1")
      @msg += "單人房(10/13、10/14)兩天："+@roomtype21.count.to_s+"個房間<br />"
      @roomtype32 = Member.where("(room_type=3 or room_type=4) and room_date=2")
      @msg += "雙人房(10/14)一天："+(@roomtype32.count/2).to_s+"個房間<br />"
      @roomtype31 = Member.where("(room_type=3 or room_type=4) and room_date=1")
      @msg += "雙人房(10/13、10/14)兩天："+(@roomtype31.count/2).to_s+"個房間<br /><br />"

      @trans2 = Member.where("transportation=2")
      @msg += "需備停車位："+@trans2.count.to_s+"個<br />"
      @trans3 = Member.where("transportation=3")
      @msg += "台鐵接送："+@trans3.count.to_s+"位<br />"
      @trans4 = Member.where("transportation=4")
      @msg += "臺中高鐵接送："+@trans4.count.to_s+"位<br />"
      @trans5 = Member.where("transportation=5")
      @msg += "嘉義高鐵接送："+@trans5.count.to_s+"位<br /><br />"

      @groupa = Member.where(group: [1,2])
      @msg += "分組討論A組優先："+@groupa.count.to_s+"個<br />"
      @groupb = Member.where(group: [3,4])
      @msg += "分組討論B組優先："+@groupb.count.to_s+"個<br />"
      @groupc = Member.where(group: [5,6])
      @msg += "分組討論C組優先："+@groupc.count.to_s+"個<br />"


    end

end
