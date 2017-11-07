require "siddharthasampler/version"


module Siddharthasampler
  def read(minimum_chars = 1000)
    file = './lib/siddhartha.txt'
    text = []
    File.readlines(file).each do |line|
      text << line
    end

    siddhartha_paragraphs = text.join(' ').split("\r\n \r\n")
    rando = rand(0..517)

    todays_siddhartha = []
    i = 0
    until todays_siddhartha.join(' ').length > minimum_chars
      todays_siddhartha << siddhartha_paragraphs[rando + i]
      i = i + 1
    end

    todays_siddhartha.join("\n\n")
  end
end
