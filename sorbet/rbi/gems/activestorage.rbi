# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activestorage/all/activestorage.rbi
#
# activestorage-5.2.3
module ActiveStorage
  def analyzers; end
  def analyzers=(obj); end
  def binary_content_type; end
  def binary_content_type=(obj); end
  def content_types_allowed_inline; end
  def content_types_allowed_inline=(obj); end
  def content_types_to_serve_as_binary; end
  def content_types_to_serve_as_binary=(obj); end
  def logger; end
  def logger=(obj); end
  def paths; end
  def paths=(obj); end
  def previewers; end
  def previewers=(obj); end
  def queue; end
  def queue=(obj); end
  def self.analyzers; end
  def self.analyzers=(obj); end
  def self.binary_content_type; end
  def self.binary_content_type=(obj); end
  def self.content_types_allowed_inline; end
  def self.content_types_allowed_inline=(obj); end
  def self.content_types_to_serve_as_binary; end
  def self.content_types_to_serve_as_binary=(obj); end
  def self.gem_version; end
  def self.logger; end
  def self.logger=(obj); end
  def self.paths; end
  def self.paths=(obj); end
  def self.previewers; end
  def self.previewers=(obj); end
  def self.queue; end
  def self.queue=(obj); end
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
  def self.variable_content_types; end
  def self.variable_content_types=(obj); end
  def self.verifier; end
  def self.verifier=(obj); end
  def self.version; end
  def variable_content_types; end
  def variable_content_types=(obj); end
  def verifier; end
  def verifier=(obj); end
  extend ActiveSupport::Autoload
end
module ActiveStorage::VERSION
end
class ActiveStorage::InvariableError < StandardError
end
class ActiveStorage::UnpreviewableError < StandardError
end
class ActiveStorage::UnrepresentableError < StandardError
end
module ActiveStorage::Downloading
  def download_blob_to(file); end
  def download_blob_to_tempfile; end
  def open_tempfile_for_blob; end
  def tempdir; end
end
class ActiveStorage::Previewer
  def blob; end
  def capture(*argv, to:); end
  def draw(*argv); end
  def initialize(blob); end
  def logger; end
  def open_tempfile_for_drawing; end
  def preview; end
  def self.accept?(blob); end
  include ActiveStorage::Downloading
end
class ActiveStorage::Previewer::PopplerPDFPreviewer < ActiveStorage::Previewer
  def draw_first_page_from(file, &block); end
  def preview; end
  def self.accept?(blob); end
  def self.pdftoppm_exists?; end
  def self.pdftoppm_path; end
end
class ActiveStorage::Previewer::MuPDFPreviewer < ActiveStorage::Previewer
  def draw_first_page_from(file, &block); end
  def preview; end
  def self.accept?(blob); end
  def self.mutool_exists?; end
  def self.mutool_path; end
end
class ActiveStorage::Previewer::VideoPreviewer < ActiveStorage::Previewer
  def draw_relevant_frame_from(file, &block); end
  def ffmpeg_path; end
  def preview; end
  def self.accept?(blob); end
end
class ActiveStorage::Analyzer
  def blob; end
  def initialize(blob); end
  def logger; end
  def metadata; end
  def self.accept?(blob); end
  include ActiveStorage::Downloading
end
class ActiveStorage::Analyzer::ImageAnalyzer < ActiveStorage::Analyzer
  def metadata; end
  def read_image; end
  def rotated_image?(image); end
  def self.accept?(blob); end
end
class ActiveStorage::Analyzer::VideoAnalyzer < ActiveStorage::Analyzer
  def angle; end
  def computed_height; end
  def display_aspect_ratio; end
  def display_height_scale; end
  def duration; end
  def encoded_height; end
  def encoded_width; end
  def ffprobe_path; end
  def height; end
  def metadata; end
  def probe; end
  def probe_from(file); end
  def rotated?; end
  def self.accept?(blob); end
  def streams; end
  def tags; end
  def video_stream; end
  def width; end
end
class ActiveStorage::Engine < Rails::Engine
end
class ActiveStorage::Attached::One < ActiveStorage::Attached
  def attach(attachable); end
  def attached?; end
  def attachment; end
  def build_attachment(blob:); end
  def detach; end
  def method_missing(method, *args, &block); end
  def purge; end
  def purge_later; end
  def respond_to_missing?(name, include_private = nil); end
  def transaction(*args, &block); end
  def write_attachment(attachment); end
end
class ActiveStorage::Attached::Many < ActiveStorage::Attached
  def attach(*attachables); end
  def attached?; end
  def attachments; end
  def detach; end
  def method_missing(method, *args, &block); end
  def respond_to_missing?(name, include_private = nil); end
end
module ActiveStorage::Attached::Macros
  def has_many_attached(name, dependent: nil); end
  def has_one_attached(name, dependent: nil); end
end
class ActiveStorage::Attached
  def create_blob_from(attachable); end
  def dependent; end
  def initialize(name, record, dependent:); end
  def name; end
  def record; end
end
class ActiveStorage::Analyzer::NullAnalyzer < ActiveStorage::Analyzer
  def metadata; end
  def self.accept?(blob); end
end
class ActiveStorage::LogSubscriber < ActiveSupport::LogSubscriber
end
class ActiveStorage::IntegrityError < StandardError
end
class ActiveStorage::Service
  def content_disposition_with(filename:, type: nil); end
  def delete(key); end
  def delete_prefixed(prefix); end
  def download(key); end
  def download_chunk(key, range); end
  def exist?(key); end
  def headers_for_direct_upload(key, filename:, content_type:, content_length:, checksum:); end
  def instrument(operation, payload = nil, &block); end
  def self.build(configurator:, service: nil, **service_config); end
  def self.configure(service_name, configurations); end
  def self.url_expires_in; end
  def self.url_expires_in=(val); end
  def self.url_expires_in?; end
  def service_name; end
  def update_metadata(key, **metadata); end
  def upload(key, io, checksum: nil, **options); end
  def url(key, expires_in:, disposition:, filename:, content_type:); end
  def url_expires_in; end
  def url_expires_in=(val); end
  def url_expires_in?; end
  def url_for_direct_upload(key, expires_in:, content_type:, content_length:, checksum:); end
  extend ActiveSupport::Autoload
end
class ActiveStorage::Service::Configurator
  def build(service_name); end
  def config_for(name); end
  def configurations; end
  def initialize(configurations); end
  def resolve(class_name); end
  def self.build(service_name, configurations); end
end
class ActiveStorage::Service::DiskService < ActiveStorage::Service
  def current_host; end
  def delete(key); end
  def delete_prefixed(prefix); end
  def download(key); end
  def download_chunk(key, range); end
  def ensure_integrity_of(key, checksum); end
  def exist?(key); end
  def folder_for(key); end
  def headers_for_direct_upload(key, content_type:, **arg2); end
  def initialize(root:); end
  def make_path_for(key); end
  def path_for(key); end
  def root; end
  def upload(key, io, checksum: nil, **arg3); end
  def url(key, expires_in:, filename:, disposition:, content_type:); end
  def url_for_direct_upload(key, expires_in:, content_type:, content_length:, checksum:); end
  def url_helpers; end
end