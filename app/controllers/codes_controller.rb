class CodesController < ApplicationController
before_action :authenticate_user!
def index
	@codes = Code.all
end

def new
	@code = Code.new
end
def create
	@code = Code.new(code_params)
	if @code.save
        # format.html { redirect_to @code, notice: 'code was successfully created.' }
        # format.json { render :show, status: :created, location: @code }
        redirect_to codes_path
      else
        format.html { render :new }
        format.json { render json: @code.errors, status: :unprocessable_entity }
      end

end

def show
  code = Code.find(params[:id])
  @videos = code.videos
end


private

def code_params
	params.require(:code).permit(:name, :image_url)
end

end