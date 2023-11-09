select count(*) from test_1 where t < 100 and t > 50;

create index idx_t on test_1(t);

select count(*) from lego;

select count(*) from lego where szam > 50 and szam < 60 and szin like 'piros';

create index idx_szin on lego(szin);

create index idx_lego_szin_50_60_piros on lego(szin)
where szam > 50 and szam < 60 and szin like 'piros';

drop index idx_lego_szin_50_60_piros;
drop index idx_szin;

SET search_path TO veggie;

create index idx_order_date on orders(order_date);
create index idx_customer_name on customers(name);
create index idx_product_price on products(price);
create index idx_product_name on products(name);
