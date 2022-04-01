module Spina
  module Parts
    class User < Base
      attr_json :user_id, :integer

      def content
        Spina::Page.where(id: user_id).live.first
      end
    end
  end
end
