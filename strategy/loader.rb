# frozen_string_literal: true

def require_all_from(dir)
  Dir[File.join(__dir__, dir, '**', '*.rb')].each do |file|
    require_relative file.sub("#{__dir__}/", '')
  end
end

require_all_from('discount_strategies')
require_relative 'item'
require_relative 'cart'
