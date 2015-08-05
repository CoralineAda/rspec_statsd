module RspecStatsD

  class StatsDFormatter

    require 'graphite-api'

    RSpec::Core::Formatters.register self, :dump_summary

    attr_reader :output

    def initialize(output)
      @output = output
    end

    def dump_summary(notification)
      report_duration(notification.duration)
      self.output << "\n\nSent test run stats to graphite server."
    end

    def close(notification)
      self.output << "\n"
    end

    private

    def graphite_client
      GraphiteAPI.new(graphite: "http://192.168.42.10:2003")
    end

    def report_duration(duration)
      graphite_client.metrics(
        {"stats.timers.test.rspec.duration" => duration * 10000},
        Time.now
      )
    end

  end

end