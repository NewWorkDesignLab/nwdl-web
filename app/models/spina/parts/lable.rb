module Spina
  module Parts
    class Lable < Base
      attr_json :lable_id, :integer

      def content
        Spina::Page.where(id: lable_id).live.first
      end
    end
  end
end
