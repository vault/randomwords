
require 'sinatra'

WORDS = File.new('words').read.strip.split

get '/' do
  ix = rand(WORDS.size)
  WORDS[ix]
end
