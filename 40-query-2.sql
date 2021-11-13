--query soal nomor 4  
select d.productName, sum(c.priceEach) as jumlah_pembelian 
from customers a 
join orders b on(a.customerNumber = b.customerNumber) 
join orderdetails c on(b.orderNumber = c.orderNumber) 
join products d on (d.productCode = c.productCode) 
where a.state ='CA' 
group by d.productName 
order by sum(c.priceEach) desc limit 10;

--cost sebelum optimalisasi 465.865874
--cost setelah optimalisasi 42.982326

--optimalisasi
--semua column state yang null diupdate menjadi not null
--misalkan diupdate menjadi INA
update customers set state ='INA' where state is null;
--alter colum state menjadi not NULL
alter table customers modify state varchar(50) NOT NULL;
--create index untuk colum state
create index state on customers(state);

