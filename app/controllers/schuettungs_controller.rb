class SchuettungsController < ApplicationController

	def create
		@brew = Brew.find(params[:brew_id])
	 	@schuettung = @brew.schuettungs.create(params[:schuettung].permit(:brew_id, :malt_id, :amount, :note))
		redirect_to brew_path(@brew)	
	end

	def destroy
		@brew = Brew.find(params[:brew_id])
		@schuettung = @brew.schuettungs.find(params[:id])
		@schuettung.destroy
		redirect_to brew_path(@brew)
	end

end
