require "cinch"
require_relative "./plugins/response/response"
require_relative "./plugins/haiku/haiku"

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = "SushiBot"
    c.server = "sushichat.no-ip.org"
    c.channels = ["#losalamos"]
    c.plugins.plugins = [Response, Haiku]
  end
end

bot.start
