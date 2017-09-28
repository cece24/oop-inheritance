require_relative "multilinguist"

class QuoteCollector < Multilinguist

  def initialize
    super()
    @quotes = []
  end

  # add a new quote to @quotes
  def add_quote(quote)
    @quotes << quote
  end

  # select random quote to share in local languages
  def share_quote
    quote = say_in_local_language(@quotes.sample)
    puts quote
  end

end

laney = QuoteCollector.new
laney.add_quote("I turned myself into a pickle. I'm Pickle Riiiiick")
laney.add_quote("I mean, why would a Pop-Tart want to live inside a toaster, Rick? I mean, that would be like the scariest place for them to live. You know what I mean?")
laney.add_quote("That Mulan McNugget sauce Morty!")

# puts laney.inspect

laney.travel_to("India")
laney.share_quote

laney.travel_to("France")
laney.share_quote
