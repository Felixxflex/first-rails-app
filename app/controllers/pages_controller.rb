class PagesController < ApplicationController
    def show
        @user = User.find(params[:id])
      end
    
      def businesses
        @businesses = User.where(user_type: "business")
      end
    end
    

