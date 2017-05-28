require 'active_support/all'
require 'rufus-scheduler'
require 'yaml'
require 'logger'

module Weebo
  extend ActiveSupport::Autoload

  autoload :Adapter,  './lib/adapter'
  autoload :Bot,      './lib/bot'
  autoload :ApiData, './lib/api_data'
  autoload :Logging,  './lib/logging'
  autoload :Util,     './lib/util'
end
