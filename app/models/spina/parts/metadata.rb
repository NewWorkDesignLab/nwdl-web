module Spina
  module Parts
    class Metadata < Base
      attr_json :author_id, :integer
      attr_json :datetime, :datetime
      attr_json :read_time, :string, default: ""

      def content
        { author: Spina::User.find(author_id), datetime: datetime, read_time: read_time }
      end
    end
  end
end
