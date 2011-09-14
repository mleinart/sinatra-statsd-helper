require 'rubygems'
require 'sinatra/base'
require 'statsd/middleware'

module Sinatra
  module Helpers
    module Statsd
      VERSION = "0.1"

      def statsd_client
        request[Statsd::Middleware::STATSD_DOT_CLIENT]
      end

      def statsd_host_client
        request[Statsd::Middleware::STATSD_DOT_HOST_DOT_CLIENT]
      end

      def statsd_service_client
        request[Statsd::Middleware::STATSD_DOT_SERVICE_DOT_CLIENT]
      end

      def host_increment(key)
        request[Statsd::Middleware::STATSD_DOT_HOST_DOT_INCREMENTS] << key
      end

      def service_increment(key)
        request[Statsd::Middleware::STATSD_DOT_SERVICE_DOT_INCREMENTS] << key
      end

      def host_timer(key)
        request[Statsd::Middleware::STATSD_DOT_HOST_DOT_TIMERS] << key
      end

      def service_timer(key)
        request[Statsd::Middleware::STATSD_DOT_SERVICE_DOT_TIMERS] << key
      end
    end
  end

  helpers Helpers::Statsd
end
