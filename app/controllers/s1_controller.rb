class S1Controller < ApplicationController

def index
     @s1 = S1.where(:id)
  end


def search 
		@s1 = Sampleform.find_by_sql("select *from sampleforms where id like '%#{params[:_search]}%';")
	end
end

 	
