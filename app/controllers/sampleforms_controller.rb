class SampleformsController < ApplicationController
	def index
		@sampleforms = Sampleform.all
	end

    def show
		@sampleform = Sampleform.find(params[:find_by_id])
	end  

	
	def search
  		@sampleform = Sampleform.search params[:search]
	end
    
    	
	def destroy
	 	@sampleform = Sampleform.find(params[:id])
		 	if @sampleform.destroy	
		 		redirect_to sampleforms_path
		 	end
	end	 

	def new
		@sampleform = Sampleform.new
	end
	
	def create
 	    @sampleform = Sampleform.new(sampleform_params)
          @sampleform.images = params[:images]	
  			if @sampleform.save
    			redirect_to sampleforms_path
  			else
    			render 'new'
  			end
	end

	def edit
		@sampleform = Sampleform.find(params[:id])
		 	
    end
	
	def update
		@sampleform = Sampleform.find(params[:id])
		    
			if @sampleform.update(sampleform_params)
				redirect_to sampleforms_path
			else
				render "edit"
			end
	end

		private
  		def sampleform_params
    		params.require(:sampleform).permit(:firstname, :lastname, :email, :password, :confirm_passwrd, :salt, :encrypted_password, :gender, :address, :country, :images)
  		end

    
  		
end