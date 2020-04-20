require "health_logging/version"

module HealthLogging
  class Error < StandardError; end

  class Formatter < Logger::Formatter
    def call(severity, time, progname, msg)
        %Q | {time: "#{datetime}\n", severity: "#{severity}\n", message: "#{msg} from #{progname}"}\n |
    end
  end
end
