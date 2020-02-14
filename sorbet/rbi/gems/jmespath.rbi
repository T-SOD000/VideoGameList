# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/jmespath/all/jmespath.rbi
#
# jmespath-1.4.0

module JMESPath
  def self.load_json(path); end
  def self.search(expression, data, runtime_options = nil); end
end
class JMESPath::CachingParser
  def cache_expression(expression); end
  def initialize(options = nil); end
  def parse(expression); end
end
module JMESPath::Errors
end
class JMESPath::Errors::Error < StandardError
end
class JMESPath::Errors::RuntimeError < JMESPath::Errors::Error
end
class JMESPath::Errors::SyntaxError < JMESPath::Errors::Error
end
class JMESPath::Errors::InvalidTypeError < JMESPath::Errors::Error
end
class JMESPath::Errors::InvalidValueError < JMESPath::Errors::Error
end
class JMESPath::Errors::InvalidArityError < JMESPath::Errors::Error
end
class JMESPath::Errors::UnknownFunctionError < JMESPath::Errors::Error
end
class JMESPath::Lexer
  def inside(chars, delim, type); end
  def match_or(chars, current, expected, type, or_type); end
  def parse_json(token, quoted = nil); end
  def self.requires_wrapping?; end
  def tokenize(expression); end
end
class JMESPath::Lexer::CharacterStream
  def current; end
  def initialize(chars); end
  def next; end
  def position; end
end
module JMESPath::Nodes
end
class JMESPath::Nodes::Subexpression < JMESPath::Nodes::Node
  def flatten; end
  def initialize(left, right); end
  def left; end
  def optimize; end
  def right; end
  def visit(value); end
end
class JMESPath::Nodes::Chain
  def initialize(children); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::And < JMESPath::Nodes::Node
  def initialize(left, right); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::Comparator < JMESPath::Nodes::Node
  def check(left_value, right_value); end
  def initialize(left, right); end
  def left; end
  def optimize; end
  def right; end
  def self.create(relation, left, right); end
  def visit(value); end
end
module JMESPath::Nodes::Comparators
end
class JMESPath::Nodes::Comparators::Eq < JMESPath::Nodes::Comparator
  def check(left_value, right_value); end
end
class JMESPath::Nodes::Comparators::Neq < JMESPath::Nodes::Comparator
  def check(left_value, right_value); end
end
class JMESPath::Nodes::Comparators::Gt < JMESPath::Nodes::Comparator
  def check(left_value, right_value); end
end
class JMESPath::Nodes::Comparators::Gte < JMESPath::Nodes::Comparator
  def check(left_value, right_value); end
end
class JMESPath::Nodes::Comparators::Lt < JMESPath::Nodes::Comparator
  def check(left_value, right_value); end
end
class JMESPath::Nodes::Comparators::Lte < JMESPath::Nodes::Comparator
  def check(left_value, right_value); end
end
class JMESPath::Nodes::Condition < JMESPath::Nodes::Node
  def initialize(test, child); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::ComparatorCondition < JMESPath::Nodes::Node
  def initialize(left, right, child); end
  def visit(value); end
end
class JMESPath::Nodes::EqCondition < JMESPath::Nodes::ComparatorCondition
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::LiteralRightEqCondition < JMESPath::Nodes::EqCondition
  def initialize(left, right, child); end
  def visit(value); end
end
class JMESPath::Nodes::NeqCondition < JMESPath::Nodes::ComparatorCondition
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::LiteralRightNeqCondition < JMESPath::Nodes::NeqCondition
  def initialize(left, right, child); end
  def visit(value); end
end
class JMESPath::Nodes::GtCondition < JMESPath::Nodes::ComparatorCondition
  def visit(value); end
end
class JMESPath::Nodes::GteCondition < JMESPath::Nodes::ComparatorCondition
  def visit(value); end
end
class JMESPath::Nodes::LtCondition < JMESPath::Nodes::ComparatorCondition
  def visit(value); end
end
class JMESPath::Nodes::LteCondition < JMESPath::Nodes::ComparatorCondition
  def visit(value); end
end
class JMESPath::Nodes::Current < JMESPath::Nodes::Node
  def visit(value); end
end
class JMESPath::Nodes::Expression < JMESPath::Nodes::Node
  def eval(value); end
  def expression; end
  def initialize(expression); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::Field < JMESPath::Nodes::Node
  def chain(other); end
  def chains_with?(other); end
  def initialize(key); end
  def keys; end
  def visit(value); end
end
class JMESPath::Nodes::ChainedField < JMESPath::Nodes::Field
  def chain(other); end
  def initialize(keys); end
  def keys; end
  def visit(obj); end
end
class JMESPath::Nodes::Flatten < JMESPath::Nodes::Node
  def initialize(child); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::Function < JMESPath::Nodes::Node
  def call(args); end
  def initialize(children, options = nil); end
  def maybe_raise(error_type, message); end
  def optimize; end
  def self.create(name, children, options = nil); end
  def visit(value); end
end
class JMESPath::Nodes::Function::FunctionName
  def initialize(name); end
  def name; end
end
module JMESPath::Nodes::TypeChecker
  def get_type(value); end
end
class JMESPath::Nodes::AbsFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::AvgFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::CeilFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::ContainsFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::FloorFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::LengthFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::Map < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::MaxFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::MinFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::TypeFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::KeysFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::ValuesFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::JoinFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::ToStringFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::ToNumberFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::SumFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::NotNullFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::SortFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::SortByFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
module JMESPath::Nodes::CompareBy
  def compare_by(mode, *args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::MaxByFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::CompareBy
end
class JMESPath::Nodes::MinByFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::CompareBy
end
class JMESPath::Nodes::EndsWithFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::StartsWithFunction < JMESPath::Nodes::Function
  def call(args); end
  include JMESPath::Nodes::TypeChecker
end
class JMESPath::Nodes::MergeFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::ReverseFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::ToArrayFunction < JMESPath::Nodes::Function
  def call(args); end
end
class JMESPath::Nodes::Literal < JMESPath::Nodes::Node
  def initialize(value); end
  def value; end
  def visit(value); end
end
class JMESPath::Nodes::MultiSelectHash < JMESPath::Nodes::Node
  def initialize(kv_pairs); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::MultiSelectHash::KeyValuePair
  def initialize(key, value); end
  def key; end
  def optimize; end
  def value; end
end
class JMESPath::Nodes::MultiSelectList < JMESPath::Nodes::Node
  def initialize(children); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::Not < JMESPath::Nodes::Node
  def initialize(expression); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::Or < JMESPath::Nodes::Node
  def initialize(left, right); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::Projection < JMESPath::Nodes::Node
  def extract_targets(left_value); end
  def initialize(target, projection); end
  def optimize; end
  def visit(value); end
end
module JMESPath::Nodes::FastProjector
  def visit(value); end
end
class JMESPath::Nodes::ArrayProjection < JMESPath::Nodes::Projection
  def extract_targets(target); end
  def fast_instance; end
end
class JMESPath::Nodes::FastArrayProjection < JMESPath::Nodes::ArrayProjection
  include JMESPath::Nodes::FastProjector
end
class JMESPath::Nodes::ObjectProjection < JMESPath::Nodes::Projection
  def extract_targets(target); end
  def fast_instance; end
end
class JMESPath::Nodes::FastObjectProjection < JMESPath::Nodes::ObjectProjection
  include JMESPath::Nodes::FastProjector
end
class JMESPath::Nodes::Slice < JMESPath::Nodes::Node
  def adjust_endpoint(length, endpoint, step); end
  def adjust_slice(length, start, stop, step); end
  def initialize(start, stop, step); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Nodes::SimpleSlice < JMESPath::Nodes::Slice
  def initialize(start, stop); end
  def visit(value); end
end
class JMESPath::Nodes::Node
  def chains_with?(other); end
  def hash_like?(value); end
  def optimize; end
  def visit(value); end
end
class JMESPath::Parser
  def expr(stream, rbp = nil); end
  def initialize(options = nil); end
  def led_and(stream, left); end
  def led_comparator(stream, left); end
  def led_dot(stream, left); end
  def led_filter(stream, left); end
  def led_flatten(stream, left); end
  def led_lbracket(stream, left); end
  def led_lparen(stream, left); end
  def led_or(stream, left); end
  def led_pipe(stream, left); end
  def method_missing(method_name, *args); end
  def nud_current(stream); end
  def nud_expref(stream); end
  def nud_filter(stream); end
  def nud_flatten(stream); end
  def nud_identifier(stream); end
  def nud_lbrace(stream); end
  def nud_lbracket(stream); end
  def nud_literal(stream); end
  def nud_lparen(stream); end
  def nud_not(stream); end
  def nud_quoted_identifier(stream); end
  def nud_star(stream); end
  def nud_unknown(stream); end
  def parse(expression); end
  def parse_array_index_expression(stream); end
  def parse_dot(stream, binding_power); end
  def parse_key_value_pair(stream); end
  def parse_multi_select_list(stream); end
  def parse_projection(stream, binding_power); end
  def parse_wildcard_array(stream, left = nil); end
  def parse_wildcard_object(stream, left = nil); end
end
class JMESPath::Runtime
  def default_parser(options); end
  def initialize(options = nil); end
  def parser; end
  def search(expression, data); end
end
class Anonymous_Struct_81 < Struct
  def binding_power; end
  def binding_power=(_); end
  def position; end
  def position=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def type; end
  def type=(_); end
  def value; end
  def value=(_); end
end
class JMESPath::Token < Anonymous_Struct_81
  def initialize(type, value, position); end
end
class JMESPath::TokenStream
  def _next; end
  def expression; end
  def initialize(expression, tokens); end
  def inspect; end
  def lookahead(count); end
  def next(options = nil); end
  def position; end
  def token; end
  def validate_match(token, match); end
end
module JMESPath::Util
  def self.falsey?(value); end
end
