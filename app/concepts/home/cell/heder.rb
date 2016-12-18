module Home
  class Cell
    class Header < ApplicationCell
      def home_link
        link_to 'Home', root_path
      end
    end
  end
end
