class PagesController < ApplicationController
  def index
  end

  def parse_csv
    @paths_parser = PathsParser.new(csv: params["paths_file"])

    if @paths_parser.csv_valid?
      @paths_parser.parse
      render template: "pages/index"
    else
      flash.alert = "No CSV file was submitted. Please submit a valid CSV and try again."
      redirect_to "/"
    end
  end
end
