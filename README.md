# multi_market_momentum

## Project Overview
This project is an end-to-end financial data analytics pipeline that collects real-time stock market data across multiple sectors and transforms it into structured, analysis-ready datasets using Python, Yahoo Finance, and MySQL.

The system acts as a Multi-Sector Market and Momentum Intelligence Engine designed to identify market opportunities across Technology, Finance, Healthcare, and Energy sectors by combining price data with technical indicators to generate automated trade signals.

---

## Technical Stack
- Language: Python 3.x  
- Database: MySQL (Relational Star Schema)  
- Visualization: Power BI Desktop  
- Libraries: yfinance, pandas, mysql-connector-python  

---

## System Architecture
The project follows a standard ETL (Extract, Transform, Load) architecture.

### Extraction
Python scripts fetch real-time market data for more than 50 tickers using the Yahoo Finance API.

### Transformation
Technical indicators are calculated using pandas, including:
- RSI (14-day)
- 50-day Moving Average
- Volatility metrics

### Loading
The transformed data is stored in a MySQL Star Schema. Static company metadata is separated from daily fact-based market records.

---

## Database Schema
The database is optimized for analytical workloads using two primary tables.

Dim_Companies  
Ticker, Company Name, Sector  

Fact_StockData  
Date, Price, Volume, RSI, Moving Average, Volatility, Sentiment Score  

---

## Key Insights and Dashboards
The Power BI dashboard acts as a Market Command Center.

- Momentum Tracking using RSI gauges to highlight overheated sectors  
- Trade Signal Engine generating BUY, SELL, or HOLD signals using mean reversion logic  
- Risk–Reward Matrix visualizing daily returns against volatility to detect high-risk anomalies  
