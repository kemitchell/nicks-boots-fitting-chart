#!/usr/bin/env ruby
# frozen_string_literal: true

require './calculate'
require './display'

def fractions(string)
  string
    .sub(' 1/2', '½')
    .sub(' 1/4', '¼')
    .sub(' 3/4', '¾')
    .sub(' 1/8', '⅛')
    .sub(' 3/8', '⅜')
    .sub(' 5/8', '⅝')
    .sub(' 7/8', '⅞')
end

print '|Width|Measure|', $sizes.map { |size| fractions(size) }.join('|'), '|', "\n"

print ('|-' * (2 + $sizes.count)), '|', "\n"

$widths.each do |width|
  %i[ball instep heel].each do |measure|
    print '|', width, '|', measure.capitalize, '|'
    $sizes.each do |size|
      print fractions(display($data[size][width][measure]))
      print '|'
    end
    print "\n"
  end
end
