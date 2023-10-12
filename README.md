# ASX Energy Trades Scraping

This repository exists to scrape the ASX Energy trades data on a daily basis, using [Github Flat Data](https://githubnext.com/projects/flat-data/)

The core of the repo is based on the code from [Connor Rothschild](https://www.connorrothschild.com/post/flat-data-r)

Each day after the close of the market, Github Actions runs on a schedule and grabs the daily trades file, does some very light processing, and generates a new csv output file.

