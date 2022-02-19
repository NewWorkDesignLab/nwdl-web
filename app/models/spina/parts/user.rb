module Spina
  module Parts
    class User < Base
      attr_json :user_id, :integer

      def content
        # changed from .find to .find_by as described in spina pr#971
        Spina::Page.find_by(id: user_id)

      end
    end
  end
end
