require "spec_helper"

describe Lita::Handlers::Randomdev, lita_handler: true do
  it { routes_command("randomdev").to(:randomdev) }
  it { routes_command("randomdev something").to(:randomdev) }
end
