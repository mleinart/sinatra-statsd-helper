require 'rubygems'
require 'sinatra/base'
require 'statsd/middleware'

module Sinatra
  module Helpers
    module Statsd
      VERSION = "0.2"

      def statsd_client
        request.env[::Statsd::Middleware::STATSD_DOT_CLIENT]
      end

      def statsd_host_client
        request.env[::Statsd::Middleware::STATSD_DOT_HOST_DOT_CLIENT]
      end

      def statsd_service_client
        request.env[::Statsd::Middleware::STATSD_DOT_SERVICE_DOT_CLIENT]
      end

      def increment_host(key)
        request.env[::Statsd::Middleware::STATSD_DOT_HOST_DOT_INCREMENTS] << key
      end

      def increment_service(key)
        request.env[::Statsd::Middleware::STATSD_DOT_SERVICE_DOT_INCREMENTS] << key
      end

      def increment_all(key)
        increment_host(key)
        increment_service(key)
      end

      def timer_host(key)
        request.env[::Statsd::Middleware::STATSD_DOT_HOST_DOT_TIMERS] << key
      end

      def timer_service(key)
        request.env[::Statsd::Middleware::STATSD_DOT_SERVICE_DOT_TIMERS] << key
      end

      def timer_all(key)
        timer_host(key)
        timer_service(key)
      end
    end
  end

  helpers Helpers::Statsd
end
