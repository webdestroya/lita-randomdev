require "lita"

module Lita
  module Handlers
    class Randomdev < Handler

      def self.default_config(config)
        config.developers = []
      end

      route %r{^randomdev\s*(.*)$}i, :randomdev, command: true, help: {"randomdev [task]" => "Responds with a random dev to perform a task" }

      def randomdev(response)
        if Lita.config.handlers.randomdev.developers.size < 1
          Lita.logger.warn "No developers were specified"
          response.reply "No developers specified"
        else
          task = response.matches[0][0]

          developer = Lita.config.handlers.randomdev.developers.sample

          response.reply "#{developer} #{task}".strip
        end
      end
    end

    Lita.register_handler(Randomdev)
  end
end

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "..", "..", "locales", "*.yml"), __FILE__
)]
