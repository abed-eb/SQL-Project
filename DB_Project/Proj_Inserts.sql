
insert into Employee values ('3001', 'hasan kazemi', 'tehran majidie 4', '2000000', '111', 'male', '09201153684');
insert into Employee values ('3004', 'zahra babayi', 'tehran piroozi 23', '2000000', '2001', 'Female', '09201153684');
insert into Employee values ('3005', 'narges mozafari', 'tehran kamranie 18', '3000000', '222', 'Female', '09202395684');
insert into Employee values ('3002', 'bagher aliZadeh', 'tehran hakimie 5', '35000000', '2003', 'male', '09202395684');
insert into Employee values ('3003', 'hosein bagheri', 'tehran dooran 12', '5000000', '333', 'male', '09635481278');
insert into Employee values ('3006', 'danial jabbari', 'tehran enghelab 12', '5000000', '2002', 'male', '09201153615');
DELETE FROM Employee;
select * from Employee;



insert into Depot values ('111', 'tehran', '3001'/*???*/);
insert into Depot values ('222', 'esfahan', '3005'/*???*/);
insert into Depot values ('333', 'shiraz', '3003'/*???*/);
DELETE FROM Depot;
select * from Depot;



insert into Goods values ('1222', 'nooshabeh', '2000', '25', '60');
insert into Goods values ('1333', 'chips', '1500', '25', '60');
insert into Goods values ('1444', 'shir', '5000', '25', '60');
insert into Goods values ('1555', 'bastani', '6000', '23', '60');
insert into Goods values ('1666', 'makaroni', '7000', '12', '60');
insert into Goods values ('1777', 'peste', '9000', '45', '60');
select * from Goods;



insert into List values ('111', '10-DEC-20');
insert into List values ('222', '10-SEP-20');
insert into List values ('333', '10-APR-20');

select * from List;

insert into List_Detail values ('111', '1222','50');
insert into List_Detail values ('111', '1222','50');
insert into List_Detail values ('222', '1333','40');
insert into List_Detail values ('333', '1444','67');

select * from List_Detail;

insert into ProviderCompany values ('1350', 'Alis', '111');
insert into ProviderCompany values ('1351', 'Chitooz', '222');
insert into ProviderCompany values ('1352', 'Zamzam', '333');
DELETE FROM ProviderCompany;
select * from ProviderCompany;



insert into Sotre values ('OKala_1', '111');
insert into Sotre values ('OKala_2', '222');
insert into Sotre values ('OKala_3', '333');
DELETE FROM Sotre;
select * from Sotre;



insert into Users values ('1001', 'ali rasooly', 'tehran, afsariye pelak2', '10-DEC-20', '2001');
insert into Users values ('1002', 'reza amiri', 'esfahan,  Azadi pelak2', '10-SEP-20', '2002');
insert into Users values ('1003', 'javad esmaili', 'shiraz,  dooran pelak3', '10-APR-20', '2003');
DELETE FROM Users;
select * from Users;


insert into Orders values ('1960', '1001', '1222', '10-DEC-20');
insert into Orders values ('1961', '1002', '1333', '10-SEP-20');
insert into Orders values ('1962', '1003', '1444', '10-APR-20');
insert into Orders values ('1963', '1001', '1555', '10-JAN-20');
insert into Orders values ('1965', '1003', '1777', '10-OCT-20');

DELETE FROM Orders;
select * from Orders;



insert into Rate values ('555', '10', '1001', '1960');
insert into Rate values ('666', '8', '1002', '1961');
insert into Rate values ('777', '3', '1003', '1962');
DELETE FROM Rate;
select * from Rate;



insert into Branch values ('2001', 'tehran', 'Azadi', '1960', '3004', '555');
insert into Branch values ('2002', 'esfahan', 'Enghelab', '1961', '3002', '666');
insert into Branch values ('2003', 'shiraz', 'Dooran', '1962', '3006', '777');
DELETE FROM Branch;
select * from Branch;


insert into Bank_acc values ('159623', '16000000', 'PasanDaz', '2001');
insert into Bank_acc values ('134852', '250000', 'GharzolHasaneh', '2002');
insert into Bank_acc values ('169452', '100000', 'PasanDaz', '2003');
DELETE FROM Bank_acc;
select * from Bank_acc;