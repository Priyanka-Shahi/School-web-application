class SearchController < ApplicationController

    def index
    end
    
  
    def results
      @students = Student.where('name LIKE ?', "%#{params[:q]}%")
      
    end
   
  end