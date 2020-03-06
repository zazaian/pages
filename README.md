# Pages (Demo app)

This is the Pages demo, a really-simple Rails app with some tests, a parser, and some front-end work.
Here are some features I've included, as well as some extras:

* Page renders alerts based on whether a CSV file is submitted with form
* Page renders alerts if no file at all is submitted
* Added basic styling with SCSS
* Integration tests for the Pages controller
* Most parsing and business logic is handled by the PathsParser in /app/parsers
* Test suite includes 7 tests with 14 assertions, all passing
* Replaced Webpack with lighter-weight Sprockets for asset management
* Added jQuery and jQuery-UI for accordion support
* Used default ERB template rendering (normally I would use HAML or Slim)
* Used default Rails test suite (normally would use Rspec or minitest)

Here is a screenshot of the rendered output of the CSV:\
![Pages app happy path screenshot](https://github.com/zazaian/pages/blob/master/app/assets/images/screenshot.png)

Mike Zazaian\
mike@functionhaus.com\
https://functionhaus.com
