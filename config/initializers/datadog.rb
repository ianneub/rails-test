# frozen_string_literal: true

require "datadog/statsd"
require "datadog/auto_instrument"
require "datadog"

Datadog.configure do |c|
  c.profiling.enabled = true
  c.runtime_metrics.enabled = true
  # c.env = Rails.env.to_s
  # c.service = ENV.fetch('DD_SERVICE', 'chiirp')
  # c.version = ENV.fetch('APP_REVISION', 'unknown')[0, 8]
end
