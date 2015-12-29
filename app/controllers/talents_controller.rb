class TalentsController < ApplicationController
before_action :require_talent, only: [:index, :edit]
  def index
      @talents = Talent.all
  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.create(talent_params)
    if @talent.save
      session[:user_id] = @talent.id
    #  UserEmail.signup_notify(@talent).deliver
      redirect_to '/talents'
    else
      redirect_to '/signup'
    end
  end

    def edit
      @talent = Talent.find(session[:user_id])
    end

    def update
      @talent = Talent.find(session[:user_id])
      if @talent.update(edit_params)
        redirect_to '/talents'
      else
        redirect_to '/edit'
      end
    end



  private
  def talent_params
    params.require(:talent).permit(:image, :username, :first_name, :last_name, :email, :password, :content, :phone, :age, :gender, :height, :nationality, :demo, :resume)
  end

  def edit_params
   params.require(:talent).permit(:image, :first_name, :last_name, :content, :age, :gender, :height)
 end

end
