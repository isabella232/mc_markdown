module MCMarkdown
  module Parser

    class Formatter

      def format tag
        if self.respond_to? tag.type
          self.public_send(tag.type, tag.attributes)
        else
          tag.orig
        end
      end

    end

  end
end