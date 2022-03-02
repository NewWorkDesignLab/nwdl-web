module Spina
  module Parts
    class Article < Base
      attr_json :article_ids, :integer, array: true

      def content
        Spina::Page.where(id: article_ids)
      end
    end
  end
end
