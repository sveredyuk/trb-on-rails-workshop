module Home
  class Cell
    class Index < ApplicationCell
      HELLO = 'Hello'
      BANG  = '!'

      def greeting_message
        "#{HELLO}, #{model}#{bang}"
      end

      def bang
        BANG * options.fetch(:bang, 0)
      end
    end
  end
end
