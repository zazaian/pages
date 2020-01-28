require 'csv'
require 'pp'

class PathsParser

  attr_reader :csv_file, :hierarchy

  def initialize(csv:)
    @csv_file = csv.instance_variable_get(:@tempfile)
  end

  def parse
    @parsed_csv = CSV.read(csv_file)
    compile_pages
  end

  private

  def compile_pages
    @parsed_csv.shift
    @pages_hash = hashify_pages
    @top_level = select_top_level
    @subpages = select_subpages
  end

  def select_subpages
  end

  def select_top_level
    @pages_hash.select do |name, path|
      path.nil? || path.match(/^\/[\w-]+\/?$/)
    end
  end

  def hashify_pages
    @parsed_csv.inject({}) do |memo, csv_line|
      page_name = csv_line[0]
      path = csv_line[1]

      memo[page_name] = path
      memo
    end
  end
end
