class PagesController < ApplicationController
  def index
  end

  def parse_csv
    parsed_paths = PathsParser.new(csv: params["paths_file"]).parse
    render template: "pages/index"
  end
end
