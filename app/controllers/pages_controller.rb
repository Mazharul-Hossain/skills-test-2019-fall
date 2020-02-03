class PagesController < ApplicationController

    def home
    
    end
        
    def uofm_driven
        respond_to do |format|
            format.html { render :uofm_driven }
        end
    end

    def uofm_cs
        respond_to do |format|
            format.html { render :uofm_cs }
        end
    end

end
