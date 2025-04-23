# frozen_string_literal: true

def require_all_from(dir)
  Dir[File.join(__dir__, dir, '**', '*.rb')].each do |file|
    require_relative file.sub("#{__dir__}/", '')
  end
end

# Load observers and observables
require_all_from('observable')
require_all_from('observer')
