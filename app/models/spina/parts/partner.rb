module Spina
  module Parts
    class Partner < Base
      attr_json :partner_id, :integer

      def content
        Spina::Page.where(id: partner_id).live.first
      end
    end
  end
end
