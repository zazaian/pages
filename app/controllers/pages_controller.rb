class PagesController < ApplicationController
  def index
  end

  def parse_csv
    @paths_parser = PathsParser.new(csv: params["paths_file"])
    @paths_parser.parse

    render template: "pages/index"
  end
end
