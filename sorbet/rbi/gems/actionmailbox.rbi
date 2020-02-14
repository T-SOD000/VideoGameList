# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actionmailbox/all/actionmailbox.rbi
#
# actionmailbox-6.0.2.1

module Mail
  def self.from_source(source); end
end
class Mail::Message
  def bcc_addresses; end
  def cc_addresses; end
  def from_address; end
  def recipients; end
  def recipients_addresses; end
  def to_addresses; end
  def x_original_to_addresses; end
end
class Mail::Address
  def ==(other_address); end
  def self.wrap(address); end
end
module ActionMailbox
  def incinerate; end
  def incinerate=(obj); end
  def incinerate_after; end
  def incinerate_after=(obj); end
  def ingress; end
  def ingress=(obj); end
  def logger; end
  def logger=(obj); end
  def queues; end
  def queues=(obj); end
  def self.incinerate; end
  def self.incinerate=(obj); end
  def self.incinerate_after; end
  def self.incinerate_after=(obj); end
  def self.ingress; end
  def self.ingress=(obj); end
  def self.logger; end
  def self.logger=(obj); end
  def self.queues; end
  def self.queues=(obj); end
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
  extend ActiveSupport::Autoload
end
class ActionMailbox::Engine < Rails::Engine
end
