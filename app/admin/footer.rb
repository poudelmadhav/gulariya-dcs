module ActiveAdmin
  module Views
    class Footer < Component

      def build (namespace)
        super :id => "footer"                                                    
        super :style => "text-align: center;"                                

        div do                                                                   
          "Designed and Developed by Madhav Paudel #{Date.today.year}"                                       
        end
      end

    end
  end
end