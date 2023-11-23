class ReverseBinariesController < ApplicationController
  def new
    @reverse_binary = ReverseBinary.new
  end

  def create
    @reverse_binary = ReverseBinary.new(reverse_binary_params)
    if @reverse_binary.save
      redirect_to reverse_binary_path(@reverse_binary)
    else
      render :new
    end
  end

  def show
    @reverse_binary = ReverseBinary.find(params[:id])
  end
  
  def reverse_binary_params
    params.require(:reverse_binary).permit(:number)
  end
end
