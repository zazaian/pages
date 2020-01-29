require 'test_helper'

class CsvMock; attr_accessor :tempfile; end

class PathsParserTest < ActiveSupport::TestCase
  test "csv file parses to correct hierarchy" do
    csv_mock = CsvMock.new
    csv_mock.tempfile = "./test/support/eq_page_outline_v3.csv"

    assert PathsParser.new(csv: csv_mock).parse ==
      {"Home" => {},
       "About" =>
        {"Board of Directors" => "/about/board-of-directors",
         "History" => "/about/history",
         "Corporate Social Responsibility" =>
          "/about/corporate-social-responsibility"},
       "Technology" => {},
       "Services" => {},
       "Products" =>
        {"Product A" => "/products/product-a",
         "Product C" => "/products/product-b",
         "Product B" => "/products/product-c"},
       "Contact" => {}}
  end
end
