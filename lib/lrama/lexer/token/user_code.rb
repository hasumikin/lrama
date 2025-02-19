require "strscan"

module Lrama
  class Lexer
    class Token
      class UserCode < Token
        def references
          @references ||= _references
        end

        private

        def _references
          scanner = StringScanner.new(s_value)
          references = []

          while !scanner.eos? do
            case
            when reference = scan_reference(scanner)
              references << reference
            when scanner.scan(/\/\*/)
              scanner.scan_until(/\*\//)
            else
              scanner.getch
            end
          end

          references
        end

        def scan_reference(scanner)
          start = scanner.pos
          case
          # $ references
          # It need to wrap an identifier with brackets to use ".-" for identifiers
          when scanner.scan(/\$(<[a-zA-Z0-9_]+>)?\$/) # $$, $<long>$
            tag = scanner[1] ? Lrama::Lexer::Token::Tag.new(s_value: scanner[1]) : nil
            return Lrama::Grammar::Reference.new(type: :dollar, value: "$", ex_tag: tag, first_column: start, last_column: scanner.pos - 1)
          when scanner.scan(/\$(<[a-zA-Z0-9_]+>)?(\d+)/) # $1, $2, $<long>1
            tag = scanner[1] ? Lrama::Lexer::Token::Tag.new(s_value: scanner[1]) : nil
            return Lrama::Grammar::Reference.new(type: :dollar, value: Integer(scanner[2]), ex_tag: tag, first_column: start, last_column: scanner.pos - 1)
          when scanner.scan(/\$(<[a-zA-Z0-9_]+>)?([a-zA-Z_][a-zA-Z0-9_]*)/) # $foo, $expr, $<long>program (named reference without brackets)
            tag = scanner[1] ? Lrama::Lexer::Token::Tag.new(s_value: scanner[1]) : nil
            return Lrama::Grammar::Reference.new(type: :dollar, value: scanner[2], ex_tag: tag, first_column: start, last_column: scanner.pos - 1)
          when scanner.scan(/\$(<[a-zA-Z0-9_]+>)?\[([a-zA-Z_.][-a-zA-Z0-9_.]*)\]/) # $expr.right, $expr-right, $<long>program (named reference with brackets)
            tag = scanner[1] ? Lrama::Lexer::Token::Tag.new(s_value: scanner[1]) : nil
            return Lrama::Grammar::Reference.new(type: :dollar, value: scanner[2], ex_tag: tag, first_column: start, last_column: scanner.pos - 1)

          # @ references
          # It need to wrap an identifier with brackets to use ".-" for identifiers
          when scanner.scan(/@\$/) # @$
            return Lrama::Grammar::Reference.new(type: :at, value: "$", first_column: start, last_column: scanner.pos - 1)
          when scanner.scan(/@(\d+)/) # @1
            return Lrama::Grammar::Reference.new(type: :at, value: Integer(scanner[1]), first_column: start, last_column: scanner.pos - 1)
          when scanner.scan(/@([a-zA-Z][a-zA-Z0-9_]*)/) # @foo, @expr (named reference without brackets)
            return Lrama::Grammar::Reference.new(type: :at, value: scanner[1], first_column: start, last_column: scanner.pos - 1)
          when scanner.scan(/@\[([a-zA-Z_.][-a-zA-Z0-9_.]*)\]/) # @expr.right, @expr-right  (named reference with brackets)
            return Lrama::Grammar::Reference.new(type: :at, value: scanner[1], first_column: start, last_column: scanner.pos - 1)
          end
        end
      end
    end
  end
end
