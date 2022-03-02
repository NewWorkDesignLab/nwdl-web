module Spina
  module Parts
    class Lable < Base
      attr_json :lable_ids, :integer, array: true

      def content
        # changed from .find to .find_by as described in spina pr#971
        # ids = [tag_id_1, tag_id_2, tag_id_3]
        Spina::Page.where(id: lable_ids)
      end
    end
  end
end
