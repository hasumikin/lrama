#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.7.1
# from Racc grammar file "".
#

require 'racc/parser.rb'
module Lrama
  class NewParser < Racc::Parser

module_eval(<<'...end parser.y/module_eval...', 'parser.y', 365)

def initialize(text)
  @text = text
end

def parse
  @lexer = Lrama::NewLexer.new(@text)
  @grammar = Lrama::Grammar.new
  @precedence_number = 0
  do_parse
  @grammar.extract_references
  @grammar.prepare
  @grammar.compute_nullable
  @grammar.validate!
  @grammar
end

def next_token
  @lexer.next_token
end
...end parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    79,   131,   113,   131,     6,   129,    55,     7,    33,    34,
    60,     3,    33,    34,    73,    33,    34,    33,    34,   132,
   128,   132,    78,   112,    65,     8,    33,    34,    31,    80,
    20,    22,    23,    24,    25,    26,    27,    28,    29,     9,
    40,    33,    34,    14,    43,    12,    45,    13,    15,    16,
    17,    18,    33,    34,    19,    20,    22,    23,    24,    25,
    26,    27,    28,    29,    20,    22,    23,    24,    25,    26,
    27,    28,    29,    33,    34,    33,    34,   151,    45,    33,
    34,   151,    45,    33,    34,    33,    34,   152,   153,    33,
    34,   152,   153,   151,    48,    33,    34,   151,    49,    33,
    34,    33,    34,   152,   153,    33,    34,   152,   153,   151,
    50,    33,    34,   151,    51,    33,    34,    33,    34,   152,
   153,    33,    34,   152,   153,    65,    52,    33,    34,    65,
    70,    33,    34,    33,    34,    33,    34,    33,    34,    33,
    34,    33,    34,    33,    34,    33,    34,    33,    34,    33,
    34,    33,    34,    33,    34,    74,    76,    81,    81,    81,
    88,    92,    93,   101,   102,   104,   105,   106,   107,   108,
   109,   115,   116,   119,   120,   121,   135,   136,   137,   138,
   139,   140,   119,    76,   145,   146,   156,   160,   161,    76,
    76 ]

racc_action_check = [
    41,   118,    91,   141,     2,   117,    25,     2,    25,    25,
    26,     1,    26,    26,    32,   118,   118,   141,   141,   118,
   117,   141,    41,    91,    27,     3,    27,    27,     7,    41,
    32,    32,    32,    32,    32,    32,    32,    32,    32,     4,
    12,    32,    32,     4,    14,     4,    15,     4,     4,     4,
     4,     4,    13,    13,     4,     4,     4,     4,     4,     4,
     4,     4,     4,     4,     9,     9,     9,     9,     9,     9,
     9,     9,     9,    54,    54,     9,     9,   138,    16,   138,
   138,   139,    17,   139,   139,    55,    55,   138,   138,    59,
    59,   139,   139,   140,    18,   140,   140,   147,    20,   147,
   147,    60,    60,   140,   140,    63,    63,   147,   147,   154,
    22,   154,   154,   155,    23,   155,   155,    64,    64,   154,
   154,    65,    65,   155,   155,    28,    24,    28,    28,    29,
    30,    29,    29,    68,    68,    69,    69,    88,    88,    90,
    90,    93,    93,    95,    95,    96,    96,    98,    98,   110,
   110,   114,   114,   132,   132,    37,    38,    44,    46,    47,
    53,    57,    58,    75,    76,    82,    83,    84,    85,    86,
    87,    99,   100,   101,   102,   103,   122,   123,   124,   125,
   126,   127,   128,   130,   133,   134,   143,   157,   159,   160,
   161 ]

racc_action_pointer = [
   nil,    11,     1,    25,    37,   nil,   nil,    21,   nil,    46,
   nil,   nil,    31,    23,    37,    31,    63,    67,    79,   nil,
    83,   nil,    95,    99,   111,   -21,   -17,    -3,    98,   102,
   126,   nil,    12,   nil,   nil,   nil,   nil,   138,   122,   nil,
   nil,    -7,   nil,   nil,   142,   nil,   143,   144,   nil,   nil,
   nil,   nil,   nil,   133,    44,    56,   nil,   152,   135,    60,
    72,   nil,   nil,    76,    88,    92,   nil,   nil,   104,   106,
   nil,   nil,   nil,   nil,   nil,   132,   135,   nil,   nil,   nil,
   nil,   nil,   161,   162,   163,   164,   165,   166,   108,   nil,
   110,    -5,   nil,   112,   nil,   114,   116,   nil,   118,   166,
   168,   158,   139,   171,   nil,   nil,   nil,   nil,   nil,   nil,
   120,   nil,   nil,   nil,   122,   nil,   nil,   -12,   -14,   nil,
   nil,   nil,   160,   161,   162,   163,   164,   165,   167,   nil,
   149,   nil,   124,   180,   169,   nil,   nil,   nil,    50,    54,
    66,   -12,   nil,   182,   nil,   nil,   nil,    70,   nil,   nil,
   nil,   nil,   nil,   nil,    82,    86,   nil,   171,   nil,   172,
   155,   156,   nil,   nil ]

racc_action_default = [
    -2,  -105,    -8,  -105,  -105,    -3,    -4,  -105,   164,  -105,
    -9,   -10,  -105,  -105,  -105,  -105,  -105,  -105,  -105,   -20,
  -105,   -24,  -105,  -105,  -105,  -105,  -105,  -105,  -105,  -105,
  -105,    -7,   -90,   -68,   -69,   -70,   -72,  -105,   -87,   -89,
   -11,   -94,   -93,   -13,   -14,   -59,   -15,   -16,   -17,   -21,
   -25,   -28,   -31,   -34,   -39,  -105,   -42,   -45,   -35,   -50,
  -105,   -53,   -55,   -36,   -62,  -105,   -65,   -67,   -37,   -38,
    -5,    -1,   -71,   -91,   -73,  -105,  -105,   -12,   -95,   -96,
   -97,   -56,  -105,  -105,  -105,  -105,  -105,  -105,  -105,   -43,
   -40,   -47,   -46,  -105,   -54,   -51,   -64,   -66,   -63,  -105,
  -105,   -78,  -105,  -105,   -60,   -18,   -22,   -26,   -29,   -32,
   -41,   -44,   -48,   -49,   -52,    -6,   -92,   -74,   -75,   -83,
   -88,   -57,  -105,  -105,  -105,  -105,  -105,  -105,   -78,   -77,
   -87,   -80,  -105,  -105,  -105,   -61,   -19,   -23,  -105,  -105,
  -105,   -76,   -79,  -105,   -86,   -84,   -58,   -27,   -98,  -100,
  -101,  -102,  -103,  -104,   -30,   -33,   -81,  -105,   -99,  -105,
   -87,   -87,   -85,   -82 ]

racc_goto_table = [
    75,    61,    59,    89,   118,    35,   158,    39,    54,    97,
    96,    42,    98,   158,   158,    96,    96,    44,    46,    47,
   147,   154,   155,    57,     1,    67,    67,    67,    72,     2,
    39,   141,     4,    32,    94,    61,    95,    71,    90,    89,
     5,    97,    30,    97,    63,    68,    69,    99,    10,    11,
    41,    77,    57,    57,    83,   123,    84,   124,    85,    89,
   125,    67,    67,    67,    86,   126,    67,    67,    61,   114,
    94,   110,    87,   127,    53,    58,    91,   111,   103,   134,
    82,   122,   117,   143,   159,   133,    57,   157,    57,    94,
   100,   nil,   142,   130,    67,   nil,    67,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   144,    57,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   130,   nil,   nil,   nil,
   nil,   nil,   162,   163 ]

racc_goto_check = [
    45,    35,    34,    30,    47,    42,    53,    31,    29,    41,
    40,    31,    40,    53,    53,    40,    40,    13,    13,    13,
    17,    17,    17,    31,     1,    31,    31,    31,    42,     2,
    31,    47,     3,     4,    35,    35,    34,     5,    29,    30,
     6,    41,     7,    41,    28,    28,    28,     8,     9,    10,
    11,    12,    31,    31,    14,    15,    18,    19,    20,    30,
    21,    31,    31,    31,    22,    23,    31,    31,    35,    34,
    35,    29,    24,    25,    26,    27,    32,    33,    36,    37,
    38,    39,    46,    48,    49,    50,    31,    51,    31,    35,
    52,   nil,    45,    35,    31,   nil,    31,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    35,    31,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    35,   nil,   nil,   nil,
   nil,   nil,    45,    45 ]

racc_goto_pointer = [
   nil,    24,    29,    30,    24,     5,    38,    36,   -23,    44,
    45,    37,    10,     2,     6,   -50,   nil,  -118,     7,   -49,
     8,   -47,    13,   -43,    20,   -36,    49,    49,    17,   -17,
   -51,    -2,    19,   -14,   -24,   -25,    -3,   -42,    35,   -23,
   -53,   -55,    -4,   nil,   nil,   -38,   -19,   -97,   -48,   -72,
   -34,   -58,    17,  -141,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    37,   nil,   nil,   nil,   nil,   nil,    21,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    56,    62,   nil,   nil,   nil,   149,   nil,   nil,   nil,   nil,
    64,    66,   nil,    36,    38,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   148,   150 ]

racc_reduce_table = [
  0, 0, :racc_error,
  5, 40, :_reduce_none,
  0, 41, :_reduce_none,
  2, 41, :_reduce_none,
  0, 46, :_reduce_4,
  0, 47, :_reduce_5,
  5, 45, :_reduce_6,
  2, 45, :_reduce_none,
  0, 42, :_reduce_8,
  2, 42, :_reduce_none,
  1, 48, :_reduce_none,
  2, 48, :_reduce_none,
  3, 48, :_reduce_none,
  2, 48, :_reduce_none,
  2, 48, :_reduce_none,
  2, 48, :_reduce_15,
  2, 48, :_reduce_16,
  0, 53, :_reduce_17,
  0, 54, :_reduce_18,
  6, 48, :_reduce_19,
  1, 48, :_reduce_none,
  0, 57, :_reduce_21,
  0, 58, :_reduce_22,
  6, 49, :_reduce_23,
  1, 49, :_reduce_none,
  0, 59, :_reduce_25,
  0, 60, :_reduce_26,
  7, 49, :_reduce_none,
  0, 61, :_reduce_28,
  0, 62, :_reduce_29,
  7, 49, :_reduce_30,
  0, 63, :_reduce_31,
  0, 64, :_reduce_32,
  7, 49, :_reduce_33,
  2, 55, :_reduce_none,
  2, 55, :_reduce_35,
  2, 55, :_reduce_36,
  2, 55, :_reduce_37,
  2, 55, :_reduce_38,
  1, 65, :_reduce_39,
  2, 65, :_reduce_40,
  3, 65, :_reduce_41,
  1, 68, :_reduce_42,
  2, 68, :_reduce_43,
  3, 69, :_reduce_44,
  0, 71, :_reduce_none,
  1, 71, :_reduce_none,
  0, 72, :_reduce_none,
  1, 72, :_reduce_none,
  1, 72, :_reduce_none,
  1, 66, :_reduce_50,
  2, 66, :_reduce_51,
  3, 66, :_reduce_52,
  1, 73, :_reduce_53,
  2, 73, :_reduce_54,
  1, 74, :_reduce_none,
  0, 75, :_reduce_56,
  0, 76, :_reduce_57,
  6, 52, :_reduce_58,
  0, 77, :_reduce_59,
  0, 78, :_reduce_60,
  5, 52, :_reduce_61,
  1, 67, :_reduce_62,
  2, 67, :_reduce_63,
  2, 67, :_reduce_64,
  1, 79, :_reduce_65,
  2, 79, :_reduce_66,
  1, 80, :_reduce_none,
  1, 70, :_reduce_none,
  1, 70, :_reduce_none,
  1, 43, :_reduce_none,
  2, 43, :_reduce_none,
  1, 81, :_reduce_none,
  2, 81, :_reduce_none,
  4, 82, :_reduce_74,
  1, 85, :_reduce_75,
  3, 85, :_reduce_76,
  2, 85, :_reduce_none,
  0, 86, :_reduce_78,
  3, 86, :_reduce_79,
  0, 87, :_reduce_80,
  0, 88, :_reduce_81,
  7, 86, :_reduce_82,
  0, 89, :_reduce_83,
  0, 90, :_reduce_84,
  6, 86, :_reduce_85,
  3, 86, :_reduce_86,
  0, 84, :_reduce_none,
  3, 84, :_reduce_88,
  1, 83, :_reduce_none,
  0, 44, :_reduce_none,
  0, 91, :_reduce_91,
  3, 44, :_reduce_92,
  1, 50, :_reduce_none,
  0, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 56, :_reduce_98,
  2, 56, :_reduce_99,
  1, 92, :_reduce_none,
  1, 92, :_reduce_none,
  1, 93, :_reduce_102,
  1, 93, :_reduce_none,
  1, 93, :_reduce_none ]

racc_reduce_n = 105

racc_shift_n = 164

racc_token_table = {
  false => 0,
  :error => 1,
  "%%" => 2,
  "%{" => 3,
  :C_DECLARATION => 4,
  "%}" => 5,
  "%require" => 6,
  :STRING => 7,
  "%expect" => 8,
  :INTEGER => 9,
  "%define" => 10,
  "%param" => 11,
  "%lex-param" => 12,
  "%parse-param" => 13,
  "%initial-action" => 14,
  "{" => 15,
  "}" => 16,
  ";" => 17,
  "%union" => 18,
  "%destructor" => 19,
  "%printer" => 20,
  "%error-token" => 21,
  "%token" => 22,
  "%type" => 23,
  "%left" => 24,
  "%right" => 25,
  "%nonassoc" => 26,
  :TAG => 27,
  :string_as_id => 28,
  :IDENTIFIER => 29,
  :CHARACTER => 30,
  ":" => 31,
  "|" => 32,
  "%prec" => 33,
  "[" => 34,
  "]" => 35,
  "{...}" => 36,
  "<*>" => 37,
  "<>" => 38 }

racc_nt_base = 39

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]
Ractor.make_shareable(Racc_arg) if defined?(Ractor)

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"%%\"",
  "\"%{\"",
  "C_DECLARATION",
  "\"%}\"",
  "\"%require\"",
  "STRING",
  "\"%expect\"",
  "INTEGER",
  "\"%define\"",
  "\"%param\"",
  "\"%lex-param\"",
  "\"%parse-param\"",
  "\"%initial-action\"",
  "\"{\"",
  "\"}\"",
  "\";\"",
  "\"%union\"",
  "\"%destructor\"",
  "\"%printer\"",
  "\"%error-token\"",
  "\"%token\"",
  "\"%type\"",
  "\"%left\"",
  "\"%right\"",
  "\"%nonassoc\"",
  "TAG",
  "string_as_id",
  "IDENTIFIER",
  "CHARACTER",
  "\":\"",
  "\"|\"",
  "\"%prec\"",
  "\"[\"",
  "\"]\"",
  "\"{...}\"",
  "\"<*>\"",
  "\"<>\"",
  "$start",
  "input",
  "prologue_declarations",
  "bison_declarations",
  "grammar",
  "epilogue_opt",
  "prologue_declaration",
  "@1",
  "@2",
  "bison_declaration",
  "grammar_declaration",
  "variable",
  "value",
  "params",
  "@3",
  "@4",
  "symbol_declaration",
  "generic_symlist",
  "@5",
  "@6",
  "@7",
  "@8",
  "@9",
  "@10",
  "@11",
  "@12",
  "token_declarations",
  "symbol_declarations",
  "token_declarations_for_precedence",
  "token_declaration_list",
  "token_declaration",
  "id",
  "int_opt",
  "alias",
  "symbol_declaration_list",
  "symbol",
  "@13",
  "@14",
  "@15",
  "@16",
  "token_declaration_list_for_precedence",
  "token_declaration_for_precedence",
  "rules_or_grammar_declaration",
  "rules",
  "id_colon",
  "named_ref_opt",
  "rhs_list",
  "rhs",
  "@17",
  "@18",
  "@19",
  "@20",
  "@21",
  "generic_symlist_item",
  "tag" ]
Ractor.make_shareable(Racc_token_to_s_table) if defined?(Ractor)

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

module_eval(<<'.,.,', 'parser.y', 9)
  def _reduce_4(val, _values, result)
                                @lexer.status = :c_declaration
                            @lexer.end_symbol = '%}'
                            @grammar.prologue_first_lineno = @lexer.line

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 15)
  def _reduce_5(val, _values, result)
                                @lexer.status = :initial
                            @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 20)
  def _reduce_6(val, _values, result)
                                @grammar.prologue = val[2].s_value

    result
  end
.,.,

# reduce 7 omitted

module_eval(<<'.,.,', 'parser.y', 24)
  def _reduce_8(val, _values, result)
     result = ""
    result
  end
.,.,

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

module_eval(<<'.,.,', 'parser.y', 34)
  def _reduce_15(val, _values, result)
                             val[1].each {|token|
                           token.references = []
                           @grammar.lex_param = @grammar.build_code(:lex_param, token).token_code.s_value
                         }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 41)
  def _reduce_16(val, _values, result)
                             val[1].each {|token|
                           token.references = []
                           @grammar.parse_param = @grammar.build_code(:parse_param, token).token_code.s_value
                         }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 48)
  def _reduce_17(val, _values, result)
                             @lexer.status = :c_declaration
                         @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 53)
  def _reduce_18(val, _values, result)
                             @lexer.status = :initial
                         @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 58)
  def _reduce_19(val, _values, result)
                             @grammar.initial_action = @grammar.build_code(:initial_action, val[3])

    result
  end
.,.,

# reduce 20 omitted

module_eval(<<'.,.,', 'parser.y', 64)
  def _reduce_21(val, _values, result)
                               @lexer.status = :c_declaration
                           @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 69)
  def _reduce_22(val, _values, result)
                               @lexer.status = :initial
                           @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 74)
  def _reduce_23(val, _values, result)
                               @grammar.set_union(@grammar.build_code(:union, val[3]), val[3].line)

    result
  end
.,.,

# reduce 24 omitted

module_eval(<<'.,.,', 'parser.y', 79)
  def _reduce_25(val, _values, result)
                               @lexer.status = :c_declaration
                           @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 84)
  def _reduce_26(val, _values, result)
                               @lexer.status = :initial
                           @lexer.end_symbol = nil

    result
  end
.,.,

# reduce 27 omitted

module_eval(<<'.,.,', 'parser.y', 90)
  def _reduce_28(val, _values, result)
                               @lexer.status = :c_declaration
                           @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 95)
  def _reduce_29(val, _values, result)
                               @lexer.status = :initial
                           @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 100)
  def _reduce_30(val, _values, result)
                               @grammar.add_printer(ident_or_tags: val[6], code: @grammar.build_code(:printer, val[3]), lineno: val[3].line)

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 104)
  def _reduce_31(val, _values, result)
                               @lexer.status = :c_declaration
                           @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 109)
  def _reduce_32(val, _values, result)
                               @lexer.status = :initial
                           @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 114)
  def _reduce_33(val, _values, result)
                               @grammar.add_error_token(ident_or_tags: val[6], code: @grammar.build_code(:error_token, val[3]), lineno: val[3].line)

    result
  end
.,.,

# reduce 34 omitted

module_eval(<<'.,.,', 'parser.y', 120)
  def _reduce_35(val, _values, result)
                              val[1].each {|hash|
                            hash[:tokens].each {|id|
                              @grammar.add_type(id: id, tag: hash[:tag])
                            }
                          }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 128)
  def _reduce_36(val, _values, result)
                              val[1].each {|hash|
                            hash[:tokens].each {|id|
                              sym = @grammar.add_term(id: id)
                              @grammar.add_left(sym, @precedence_number)
                            }
                          }
                          @precedence_number += 1

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 138)
  def _reduce_37(val, _values, result)
                              val[1].each {|hash|
                            hash[:tokens].each {|id|
                              sym = @grammar.add_term(id: id)
                              @grammar.add_right(sym, @precedence_number)
                            }
                          }
                          @precedence_number += 1

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 148)
  def _reduce_38(val, _values, result)
                              val[1].each {|hash|
                            hash[:tokens].each {|id|
                              sym = @grammar.add_term(id: id)
                              @grammar.add_nonassoc(sym, @precedence_number)
                            }
                          }
                          @precedence_number += 1

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 159)
  def _reduce_39(val, _values, result)
                              val[0].each {|token_declaration|
                            @grammar.add_term(id: token_declaration[0], alias_name: token_declaration[2], token_id: token_declaration[1], tag: nil, replace: true)
                          }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 165)
  def _reduce_40(val, _values, result)
                              val[1].each {|token_declaration|
                            @grammar.add_term(id: token_declaration[0], alias_name: token_declaration[2], token_id: token_declaration[1], tag: val[0], replace: true)
                          }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 171)
  def _reduce_41(val, _values, result)
                              val[2].each {|token_declaration|
                            @grammar.add_term(id: token_declaration[0], alias_name: token_declaration[2], token_id: token_declaration[1], tag: val[1], replace: true)
                          }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 176)
  def _reduce_42(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 177)
  def _reduce_43(val, _values, result)
     result = val[0].append(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 179)
  def _reduce_44(val, _values, result)
     result = val
    result
  end
.,.,

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

module_eval(<<'.,.,', 'parser.y', 190)
  def _reduce_50(val, _values, result)
                               result = [{tag: nil, tokens: val[0]}]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 194)
  def _reduce_51(val, _values, result)
                               result = [{tag: val[0], tokens: val[1]}]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 198)
  def _reduce_52(val, _values, result)
                             result = val[0].append({tag: val[1], tokens: val[2]})

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 201)
  def _reduce_53(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 202)
  def _reduce_54(val, _values, result)
     result = val[0].append(val[1])
    result
  end
.,.,

# reduce 55 omitted

module_eval(<<'.,.,', 'parser.y', 208)
  def _reduce_56(val, _values, result)
                  @lexer.status = :c_declaration
              @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 213)
  def _reduce_57(val, _values, result)
                  @lexer.status = :initial
              @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 218)
  def _reduce_58(val, _values, result)
                  result = val[0].append(val[3])

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 222)
  def _reduce_59(val, _values, result)
                  @lexer.status = :c_declaration
              @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 227)
  def _reduce_60(val, _values, result)
                  @lexer.status = :initial
              @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 232)
  def _reduce_61(val, _values, result)
                  result = [val[2]]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 237)
  def _reduce_62(val, _values, result)
                                             result = [{tag: nil, tokens: val[0]}]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 241)
  def _reduce_63(val, _values, result)
                                             result = [{tag: val[0], tokens: val[1]}]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 245)
  def _reduce_64(val, _values, result)
                                             result = val[0].append({tag: nil, tokens: val[1]})

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 248)
  def _reduce_65(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 249)
  def _reduce_66(val, _values, result)
     result = val[0].append(val[1])
    result
  end
.,.,

# reduce 67 omitted

# reduce 68 omitted

# reduce 69 omitted

# reduce 70 omitted

# reduce 71 omitted

# reduce 72 omitted

# reduce 73 omitted

module_eval(<<'.,.,', 'parser.y', 264)
  def _reduce_74(val, _values, result)
                 lhs = val[0]
             lhs.alias = val[1]
             val[3].each {|hash|
               @grammar.add_rule(lhs: lhs, rhs: hash[:rhs], lineno: hash[:lineno])
             }

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 273)
  def _reduce_75(val, _values, result)
                    result = [{rhs: val[0], lineno: val[0].first&.line || @lexer.line}]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 277)
  def _reduce_76(val, _values, result)
                    result = val[0].append({rhs: val[2], lineno: val[2].first&.line || @lexer.line})

    result
  end
.,.,

# reduce 77 omitted

module_eval(<<'.,.,', 'parser.y', 281)
  def _reduce_78(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 284)
  def _reduce_79(val, _values, result)
               token = val[1]
           val[1].alias = val[2]
           result = val[0].append(token)

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 290)
  def _reduce_80(val, _values, result)
               @lexer.status = :c_declaration
           @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 295)
  def _reduce_81(val, _values, result)
               @lexer.status = :initial
           @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 300)
  def _reduce_82(val, _values, result)
               token = val[3]
           token.alias = val[6]
           result = val[0].append(token)

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 306)
  def _reduce_83(val, _values, result)
               @lexer.status = :c_declaration
           @lexer.end_symbol = '}'

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 311)
  def _reduce_84(val, _values, result)
               @lexer.status = :initial
           @lexer.end_symbol = nil

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 316)
  def _reduce_85(val, _values, result)
               token = val[2]
           token.alias = val[5]
           result = [token]

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 322)
  def _reduce_86(val, _values, result)
               sym = @grammar.find_symbol_by_id!(val[2])
           result = val[0].append(sym)

    result
  end
.,.,

# reduce 87 omitted

module_eval(<<'.,.,', 'parser.y', 327)
  def _reduce_88(val, _values, result)
     result = val[1].s_value
    result
  end
.,.,

# reduce 89 omitted

# reduce 90 omitted

module_eval(<<'.,.,', 'parser.y', 334)
  def _reduce_91(val, _values, result)
                        @lexer.status = :c_declaration
                    @lexer.end_symbol = '\Z'
                    @grammar.epilogue_first_lineno = @lexer.line + 1

    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 340)
  def _reduce_92(val, _values, result)
                        @lexer.status = :initial
                    @lexer.end_symbol = nil
                    @grammar.epilogue = val[2].s_value

    result
  end
.,.,

# reduce 93 omitted

# reduce 94 omitted

# reduce 95 omitted

# reduce 96 omitted

# reduce 97 omitted

module_eval(<<'.,.,', 'parser.y', 352)
  def _reduce_98(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 353)
  def _reduce_99(val, _values, result)
     result = val[0].append(val[1])
    result
  end
.,.,

# reduce 100 omitted

# reduce 101 omitted

module_eval(<<'.,.,', 'parser.y', 358)
  def _reduce_102(val, _values, result)
     result = Lrama::Lexer::Token.new(type: Lrama::Lexer::Token::Tag, s_value: val[0])
    result
  end
.,.,

# reduce 103 omitted

# reduce 104 omitted

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class NewParser
end   # module Lrama
