## Pry Config

Pry.config.editor = 'vim'
Pry.config.prompt = [proc{"> "}, proc{"| "}]

if defined?(ActiveRecord::Base)

  # Get random object
  class ActiveRecord::Base
    def self.rr
      self.order("rand()").limit(1).first
    end
  end

end

# Useful collections

def parray
  (1..10).to_a
end

def phash
  {:ruby => 'on rails', :kernel => 'panic'}
end

## Benchmarking
# Inspired by <http://stackoverflow.com/questions/123494/whats-your-favourite-irb-trick/123834#123834>.

def time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.measure{ repetitions.times(&block) }
end
