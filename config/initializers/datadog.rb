# frozen_string_literal: true

require 'datadog/statsd'
Datadog.configure do |c|
  c.runtime_metrics.enabled = true
  c.tracing.instrument :rails
  c.diagnostics.debug = true
  c.env = 'dev'
  c.runtime_metrics.statsd = Datadog::Statsd.new
end
