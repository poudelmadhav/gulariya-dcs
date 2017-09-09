module ActiveAdmin
  module Views
    class Footer < Component

      def build (namespace)
        super :id => "footer"                                                    
        super :style => "text-align: left;"                                

        div do                                      
          para "Designed and Developed by #{link_to('Madhav Paudel', 'http://poudelmadhav.com.np')} &copy; #{Date.today.year.to_s}. All Rights Reserved.".html_safe                                    
        end
      end

    end
  end
end