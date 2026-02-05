create database MultiSectorMarket
use MultiSectorMarket

create table Dim_Companies(
ticker varchar(10) primary key,
company_name varchar(100),
sector varchar(50)
);

create table Fact_StockData(
record_id int auto_increment primary key,
ticker varchar(10),
date date,
close_price decimal(10,2),
volume bigint,
daily_return_pct decimal(7,4),
moving_avg_50 decimal(10,2),
volatility_index decimal(7,4),
rsi_14 decimal(5,2),
sentiment_score decimal(5,4),
foreign key(ticker) references Dim_Companies(ticker)
);

select * from fact_stockdata order by date desc limit 10

