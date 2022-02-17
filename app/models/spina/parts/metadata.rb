module Spina
  module Parts
    class Metadata < Base
      attr_json :author_id, :integer
      attr_json :datetime, :datetime
      attr_json :read_time, :string, default: ""

      def content
        # changed from .find to .find_by as described in spina pr#971
        { author: Spina::User.find_by(id: author_id), datetime: datetime, read_time: read_time }
      end
    end
  end
end
