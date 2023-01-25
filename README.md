# asx_energy_scrape
Scrape the ASX Energy trades, using the Github flat data


Following the process listed here: https://www.connorrothschild.com/post/flat-data-r

Crontab timing seems a pain: https://crontab.cronhub.io

GitHub docs on Flat Data: https://githubnext.com/projects/flat-data/



The bit that is really important, like critical to getting this whole to work, is to enable Github Actions to read/write to the repo. If you don't enable that it literally can't fucking do anything.

Buuuuuut that seems not to be mentioned anywhere except buried in SO. Anywhere, we got here eventually.
