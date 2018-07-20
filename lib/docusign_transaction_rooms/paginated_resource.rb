module DocusignTransactionRooms
  class PaginatedResource
    include Enumerable

    COUNT = 100

    attr_reader :action, :resource, :collection
    attr_accessor :start_position, :end_position, :result_size, :next_uri, :previous_uri

    def initialize(action, resource, *args)
      @start_position = 0
      @end_position = nil
      @result_size = nil
      @next_uri = nil
      @previous_uri = nil
      @action = action
      @resource = resource
      @collection = []
      @args = args
      @options = args.last.kind_of?(Hash) ? args.last : {}
    end

    def count
      @options[:count] || COUNT
    end

    def [](index)
      @collection[index]
    end

    def each(start = 0)
      fetch_next_page if result_size.nil?

      return to_enum(:each, start) unless block_given?
      Array(@collection[start..-1]).each do |element|
        yield(element)
      end
      
      unless last?
        start = [@collection.size, start].max
        fetch_next_page
        each(start, &Proc.new)
      end

      self
    end

    def last?
      @next_uri.nil?
    end

    def ==(other)
      each_with_index.each.all? {|object, index| object == other[index] }
    end

    private

    def fetch_next_page
      retrieve(@start_position)
      @start_position += self.count
    end

    def retrieve(start_position, count = self.count)
      invoker = ResourceKit::ActionInvoker.new(action, resource, *@args)
      invoker.options[:count] ||= count
      invoker.options[:startPosition] = start_position
      
      @collection += invoker.handle_response

      meta = MetaInformation.extract_single(invoker.response.body, :read) || MetaInformation.new
      @result_size = meta.resultSetSize.to_i
      @next_uri = meta.nextUri
      @previous_uri = meta.previousUri
    end
  end
end
