class TalentsController < ApplicationController
  $loggedInTalent
  def index
    @talents = Talent.all
  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.create(talent_params)
    if @talent.save
      redirect_to '/talents'
    else
      redirect_to '/signup'
    end
  end

  private
  def talent_params
    params.require(:talent).permit(:image, :first_name, :last_name, :email, :password, :content, :phone, :age, :gender, :height, :nationality, :demo, :resume)
  end
end
