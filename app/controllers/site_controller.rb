class SiteController < ApplicationController
  # layout 'site'
  
  def entering
    render layout: false
  end
  
  def main
    @carousel = ["slide2","slide3","slide4","slide5","slide6","slide7","slide8"]
  end
  
  def page
    
    # Templete Handler Function
    
  end
  
  def introduce_1 # Temp templete sample no.1 >> introduce-type
    
  end
  
  def dream_1 # Temp templete sample no.1 >> introduce-type / second use
  end
  
  def org_2 # Temp templete sample no.2 >> org-type
  end
  
  def map_3 # Temp templete sample no.3 >> map-type
  end
  
  def network_4 # Temp templete sample no.4 >> card-type
  end
end
