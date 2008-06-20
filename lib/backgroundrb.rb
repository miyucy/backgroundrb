# Backgroundrb
# FIXME: check if data that we are writing to the socket should end with newline
require "pathname"
require "packet"
require "ostruct"

BACKGROUNDRB_ROOT = Pathname.new(RAILS_ROOT).realpath.to_s
require "backgroundrb/bdrb_config"
BDRB_CONFIG = BackgrounDRb::Config.read_config("#{BACKGROUNDRB_ROOT}/config/backgroundrb.yml")

require "backgroundrb/bdrb_conn_error"
require "backgroundrb/rails_worker_proxy"
require "backgroundrb/bdrb_connection"
require "backgroundrb/bdrb_cluster_connection"

MiddleMan = BackgrounDRb::ClusterConnection.new


