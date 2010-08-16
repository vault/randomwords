
require 'sinatra'

WORDS = File.new('words').read.strip.split.delete_if{|x|x.match("'")}.uniq.shuffle

get '/' do
  @count = WORDS.size
  ix = rand(@count)
  @word = WORDS[ix]
  haml :index
end
