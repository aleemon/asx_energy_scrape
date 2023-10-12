# ASX Energy Trades Scraping

This repository exists to scrape the ASX Energy trades data on a daily basis, using [Github Flat Data](https://githubnext.com/projects/flat-data/)

The core of the repo is based on the code from [Connor Rothschild](https://www.connorrothschild.com/post/flat-data-r)

Each day after the close of the market, Github Actions runs on a schedule and grabs the daily trades file, does some very light processing, and generates a new csv output file.

## ASX Product Codes

The ASX product codes are honestly wild. Eypgtian heiroglyphs are easier to guess.

The codes appear to have been standardised since the guide published in 2019. The general structure is:

- First two characters are the commodity code
- Third character is the expiry, i.e. month, quarter, half or strip (calendar or financial)
- Remaining digits are the year


### Australian Electricity Commodity Codes

| Commodity Type              | NSW | VIC | QLD |  SA |
|-----------------------------|-----|-----|-----|-----|
| Quarterly futures - Q1      | BNH | BVH | BQH | BSH |
| Quarterly futures - Q2      | BNM | BVM | BQM | BSM |
| Quarterly futures - Q3      | BNU | BVU | BQU | BSU |
| Quarterly futures - Q4      | BNZ | BVZ | BQZ | BSZ |
| Strips - calendar year      | HNZ | HVZ | HQZ | HSZ |  
| Strips - financial year     | HNM | HVM | HQM | HSM |  
| Monthly futures - January   | ENF | EVF | EQF | ESF |
| Monthly futures - February  | ENG | EVG | EQG | ESG |
| Monthly futures - March     | ENH | EVH | EQH | ESH |
| Monthly futures - April     | ENJ | EVJ | EQJ | ESJ |
| Monthly futures - May       | ENK | EVK | EQK | ESK |
| Monthly futures - June      | ENM | EVM | EQM | ESM |
| Monthly futures - July      | ENN | EVN | EQN | ESN |
| Monthly futures - August    | ENQ | EVQ | EQQ | ESQ |
| Monthly futures - September | ENU | EVU | EQU | ESU |
| Monthly futures - October   | ENV | EVV | EQV | ESV |
| Monthly futures - November  | ENX | EVX | EQX | ESX |
| Monthly futures - December  | ENZ | EVZ | EQZ | ESZ |
| Peak quarterly futures - Q1 | PNH | PVH | PQH | PSH |
| Peak quarterly futures - Q2 | PNM | PVM | PQM | PSM |
| Peak quarterly futures - Q3 | PNU | PVU | PQU | PSU |
| Peak quarterly futures - Q4 | PNZ | PVZ | PQZ | PSZ |
| Peak strips - calendar year | DNZ | DVZ | DQZ | DSZ |
| Peak strips - financial year| DNM | DVM | DQM | DSM |
| Quarterly caps - Q1         | GNH | GVH | GQH | GSH |
| Quarterly caps - Q2         | GNM | GVM | GQM | GSM |
| Quarterly caps - Q3         | GNU | GVU | GQU | GSU |
| Quarterly caps - Q4         | GNZ | GVZ | GQZ | GSZ |
| Cap strips - calendar year  | RNZ | RVZ | RQZ | RSZ |
| Cap strips - financial year | RNM | RVM | RQM | RSM |


Options have the same code as quarterly futures, but with more codes appended at the end?


### New Zealand Electricity Commodity Codes

| Commodity Type              | Otahuhu | Benmore |
|-----------------------------|---------|---------|
| Quarterly futures           | EA      | EE      | 
| Strips                      | EB      | EF      |
| Monthly futures             | ED      | EH      |
| Peak quarterly futures      | EC      | EG      |



### Australia Renewable Energy Certificates

EO


### Australian Gas Commodity Codes

GJ, GK, GX, GY


### New Zealand gas Commodity Codes

EX, EY


