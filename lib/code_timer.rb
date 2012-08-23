class CodeTimer

  class NotTimingError < StandardError; end

  def initialize
    @sections = {}
    @timing   = nil
  end

  def begin
    initialize
  end

  def end
    stop if @timing

    total  = @sections.map {|k, v| v}.reduce(:+)
    output = ""

    output += "Total Time: #{total}s\n"

    @sections.each do |k, v|
      output += "#{k}:\t #{(v / total.to_f * 100).to_i}% / #{v}s\n"
    end

    output
  end

  def start(section)
    raise ArgumentError if section.nil? || section.empty?
    stop if @timing

    @sections[section] = Time.now.to_i
    @timing            = section
  end

  def stop
    raise NotTimingError unless @timing

    @sections[@timing] = Time.now.to_i - @sections[@timing]
  end
end
