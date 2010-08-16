
require 'sinatra'

WORDS = File.new('words').read

get '/' do
  ix = rand(WORDS.size)
  WORDS[ix]
end
