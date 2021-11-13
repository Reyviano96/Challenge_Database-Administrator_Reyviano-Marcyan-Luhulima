--query soal nomor 3  --cost 0.000000
select a.state, sum(c.priceEach) as jumlah_pembelian 
from customers a 
join orders b on(a.customerNumber = b.customerNumber) 
join orderdetails c on(b.orderNumber = c.orderNumber) 
group by a.state 
order by sum(c.priceEach) desc 
limit 10;