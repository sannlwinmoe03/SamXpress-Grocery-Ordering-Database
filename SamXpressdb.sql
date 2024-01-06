

Task 5


Create table Categories
(
	CategoryID varchar(10) not null,
	CategoryName varchar(30),
	Primary key(CategoryID)	
);

Select * from Categories

Create table Products
(
	ProductID varchar(10) not null,
	ProductName varchar(30),
	CategoryID varchar(10),
	Primary key(ProductID),
	Foreign key (CategoryID) references Categories(CategoryID)	
);

Select * from Products


Create table Shop_Types
(
	ShopTypeID varchar(10) not null,
	ShopType varchar(30),
	Primary key(ShopTypeID)	
);

Select * from Shop_Types




Create table Shops
(
	ShopID varchar(10) not null,
	ShopName varchar(30),
	ShopTypeID varchar(10),
	PhoneNumber varchar(20),
	ShopAddress varchar(255),
	Primary key(ShopID),
	Foreign key(ShopTypeID) references Shop_Types (ShopTypeID)	
);

Select * from Shops


Create table Shop_Product
(
	ShopProductID varchar(10) not null,
	ShopID varchar(10),
	ProductID varchar(10),
	Primary key(ShopProductID),
	Foreign key(ShopID) references Shops(ShopID),
	Foreign key(ProductID) references Products (ProductID)	
		
);

Select * from Shop_Product


Create table Payment_Methods
(
	PaymentMethodID varchar(10) not null,
	PaymentMethodName varchar(30),
	Primary key(PaymentMethodID)	
);

Select * from Payment_Methods


Create table Payment
(
	OrderID varchar(10) not null,
	PaymentMethodID varchar(10),
	Payment_Date date,
	Promotion integer,
	Primary key(OrderID),
	Foreign key(PaymentMethodID) references Payment_Methods (PaymentMethodID),
		
);

Select * from Payment

Drop table Payment


Create table Customers
(
	CustomerID varchar(10) not null,
	CustomerName varchar(30),
	Email varchar(20),
	Gender varchar(15),
	PhoneNumber varchar(20),
	CustomerAddress varchar(255),
	Primary key(CustomerID),
		
);


Select * from Customers


Create table Delivery_Staff
(
	DeliveryStaffID varchar(10) not null,
	DeliveryStaffName varchar(30),
	Primary key(DeliveryStaffID)	
);

Select * from Delivery_Staff


Create table Shipping_Methods
(
	ShippingMethodID varchar(10) not null,
	ShippingMethodName varchar(30),
	Primary key(ShippingMethodID)	
);

Select * from Shipping_Methods


Create table Deliveries
(
DeliveryID varchar(10) not null,
ShippingMethodID varchar(10),
DeliveryStaffID varchar(10),
DeliveryDate date,
Primary key(DeliveryID),
Foreign key(ShippingMethodID) references Shipping_Methods (ShippingMethodID),
Foreign key(DeliveryStaffID) references Delivery_Staff (DeliveryStaffID)	

);

Select * from Deliveries

Drop table Deliveries


Create table Orders
(
OrderID varchar(10) not null,
CustomerID varchar(10),
DeliveryID varchar(10),
Primary key(OrderID),
Foreign key(CustomerID) references Customers (CustomerID),
Foreign key(DeliveryID) references Deliveries (DeliveryID)
 On delete cascade
 On update cascade

);

 Select * from Orders

 Drop table Orders


 Create table Order_Details
(
	OrderDetail_ID varchar(10) not null,
	ShopProductID varchar(10),
	OrderID varchar(10),
	Amount integer,
	Quantity integer,	
	OrderDate date,
	Primary key(OrderDetail_ID),
	Foreign key(ShopProductID) references Shop_Product(ShopProductID)
	On delete no action,
	Foreign key(OrderID) references Orders(OrderID)
	On update cascade
	On delete cascade
);

Select * from Order_Details


Drop table Order_Details







Create table Rating
(
RatingID varchar(10) not null,
ShopProductID varchar(10),
CustomerID varchar(10),
OrderID varchar(10),
Score integer,
Remark varchar(100),
DateRecorded date
Primary key(RatingID),
Foreign key(ShopProductID) references Shop_Product (ShopProductID),
Foreign key(CustomerID) references Customers (CustomerID),
Foreign key(OrderID) references Orders (OrderID)		

);

Select * from Rating

Task 6



Insert into Categories  values ('Ca0001','Tea');
Insert into Categories  values ('Ca0002','Milk' );
Insert into Categories  values ('Ca0003','Oil' );
Insert into Categories  values ('Ca0004','Drink' );
Insert into Categories  values ('Ca0005','Rice' );
Insert into Categories  values ('Ca0006','Snack' );


Select * from Categories


Insert into Products  values ('Pr0001','Yee Mon pickled tea leaves','Ca0001' );
Insert into Products  values ('Pr0002','Organic Soybean Oil','Ca0003'  );
Insert into Products  values ('Pr0003','Shark energy drink','Ca0004'  );
Insert into Products  values ('Pr0004','Swel sunflower seeds','Ca0006'  );
Insert into Products  values ('Pr0005','Milk Tea powder','Ca0001'  );
Insert into Products  values ('Pr0006','Shwe Bo Paw San rice','Ca0005'  );


Select * from Products




Insert into Shop_Types  values ('St0001','Retail' );
Insert into Shop_Types  values ('St0002','Wholesale' );
Insert into Shop_Types  values ('St0003','Hybrid' );

Select * from Shop_Types




Insert into Shops  values ('Sh0001','LoTaYa','St0001','+954758374','NaungDone St, Sancahung Tsp,Yangon' );
Insert into Shops  values ('Sh0002','MyanTea','St0002','+953847597','Main Rd, Kalaw Tsp, Shan State'  );
Insert into Shops  values ('Sh0003','Linn','St0001','+956847532','34th St, Latha Tsp, Yangon'  );
Insert into Shops  values ('Sh0004','Loi Hein','St0002','+954758438','WarTan Rd, Alone Tsp, Yangon'  );
Insert into Shops  values ('Sh0005','Platinum','St0001','+952847563','Dangon Tsp, Yangon'  );
Insert into Shops  values ('Sh0006','Swel','St0002','+958736453','HaKha District, Chin State'  );


Select * from Shops


Insert into Customers  values ('Cu0001','Alexender','alex99@yahoo.com','Male','+9594658693','YikeThar St,YanKin Tsp,Yangon' );
Insert into Customers  values ('Cu0002','Andrew Myo','myoan@hotmail.com','Male','+9595869475','NweAye St,Tharkayta Tsp, Yangon'  );
Insert into Customers  values ('Cu0003','Nan Khin','nankhin111@gmail.com','Female','+9599747583','ShwePyi Rd, Taunggyi City, Shan'  );
Insert into Customers  values ('Cu0004','Pyone Cho','pyone34@gmail.com','Male','+9593008574','ShweThar Village, ShweBo Tsp, Sagaing'  );
Insert into Customers  values ('Cu0005','Khin Mya Mya','khinlay8@gmail.com','Female','+9596840385','34th Rd, ChanMyaTharSi Tsp, Mandalay'  );
Insert into Customers  values ('Cu0006','Daniel Saw','dsaw67@yahoo.com','Male','+9597694759','Main Rd, Hlaing Tsp,Yangon'  );

Select * from Customers

Delete from Customers


Insert into Delivery_Staff  values ('Ds0001','Zaw Khun' );
Insert into Delivery_Staff  values ('Ds0002','Nan Khin' );
Insert into Delivery_Staff  values ('Ds0003','Aung Nay Myo' );
Insert into Delivery_Staff  values ('Ds0004','Zaw Myo Aung' );
Insert into Delivery_Staff  values ('Ds0005','James Aung' );
Insert into Delivery_Staff  values ('Ds0006','Wai Yan Lin' );

Select * from Delivery_Staff


Delete from Delivery_Staff




Insert into Shipping_Methods  values ('Sm0001','Brought from warehouse' );
Insert into Shipping_Methods  values ('Sm0002','DHL' );
Insert into Shipping_Methods  values ('Sm0003','Shop Express' );
Insert into Shipping_Methods  values ('Sm0004','Royal Express' );
Insert into Shipping_Methods  values ('Sm0005','FedEx' );


Select * from Shipping_Methods




Insert into Deliveries  values ('De0001','Sm0002','Ds0004','2021-02-22' );
Insert into Deliveries  values ('De0002','Sm0001','Ds0003','2021-02-22' );
Insert into Deliveries  values ('De0003','Sm0004','Ds0002','2021-02-23' );
Insert into Deliveries  values ('De0004','Sm0005','Ds0006','2021-02-23' );
Insert into Deliveries  values ('De0005','Sm0003','Ds0001','2021-02-24' );
Insert into Deliveries  values ('De0006','Sm0004','Ds0005','2021-02-25' );

Select * from Deliveries

Delete from Deliveries





Insert into Orders  values ('Or0001','Cu0001','De0001' );
Insert into Orders  values ('Or0002','Cu0002','De0002' );
Insert into Orders  values ('Or0003','Cu0003','De0003' );
Insert into Orders  values ('Or0004','Cu0001','De0003' );
Insert into Orders  values ('Or0005','Cu0004','De0004' );
Insert into Orders  values ('Or0006','Cu0002','De0004' );

Select * from Orders

Delete from Orders


Insert into Shop_Product values ('Sp0001','Sh0002','Pr0001' );
Insert into Shop_Product values ('Sp0002','Sh0004','Pr0003'  );
Insert into Shop_Product values ('Sp0003','Sh0005','Pr0005'  );
Insert into Shop_Product values ('Sp0004','Sh0006','Pr0004'  );
Insert into Shop_Product values ('Sp0005','Sh0005','Pr0003'  );
Insert into Shop_Product values ('Sp0006','Sh0001', 'Pr0006' );

Select * from Shop_Product

Delete from Shop_Product




Insert into Order_Details  values ('Od0001','Sp0003','Or0001','3000','5','2021-02-18' );
Insert into Order_Details  values ('Od0002','Sp0005','Or0002','800','10','2021-02-18' );
Insert into Order_Details  values ('Od0003','Sp0006','Or0003','4000','20','2021-02-19' );
Insert into Order_Details  values ('Od0004','Sp0001','Or0004','3000','5','2021-02-18' );
Insert into Order_Details  values ('Od0005','Sp0004','Or0005','500','12','2021-02-18' );
Insert into Order_Details  values ('Od0006','Sp0002','Or0006','700','100','2021-02-18' );

Select * from Order_Details

Delete from Order_Details






Insert into Payment_Methods  values ('Pm0001','Cash On Delivery');
Insert into Payment_Methods  values ('Pm0002','KBZ Pay' );
Insert into Payment_Methods  values ('Pm0003','Wave Pay' );
Insert into Payment_Methods  values ('Pm0004','Bank Transfer' );
Insert into Payment_Methods  values ('Pm0005','Credit/Debit Card' );
Insert into Payment_Methods  values ('Pm0006','Pay Pal' );

Select * from Payment_Methods


Insert into Payment  values ('Or0001','Pm0002','2021-02-21','100' );
Insert into Payment  values ('Or0002','Pm0001','2021-02-22','50' );
Insert into Payment  values ('Or0003','Pm0002','2021-02-18','50' );
Insert into Payment  values ('Or0004','Pm0004','2021-02-18','100' );
Insert into Payment  values ('Or0005','Pm0003','2021-02-19','50' );
Insert into Payment  values ('Or0006','Pm0005','2021-02-19','100' );

Select * from Payment

Delete from Payment



Insert into Rating  values ('Ra0001','Sp0003','Cu0002','Or0001','8','good taste','2021-02-28' );
Insert into Rating  values ('Ra0002','Sp0006','Cu0002','Or0002','7','null','2021-02-28' );
Insert into Rating  values ('Ra0003','Sp0001','Cu0003','Or0003','8','good price','2021-03-03' );
Insert into Rating  values ('Ra0004','Sp0003','Cu0001','Or0004','5','not bad','2021-02-28' );
Insert into Rating  values ('Ra0005','Sp0002','Cu0004','Or0005','6','need something','2021-03-21' );
Insert into Rating  values ('Ra0006','Sp0005','Cu0005','Or0006','4','I do not like','2021-03-01' );

Select * from Rating


Delete from Rating


Task 4

Select * from Payment 




Alter table Payment
Add TotalAmount integer

Select * from Payment 

Select * from Order_Details

Update Payment
Set 

Update Payment
Set TotalAmount =(od.Amount * od.Quantity)- p.Promotion
From Order_Details od, Payment p, Orders o
where od.OrderID=o.OrderID And o.OrderID=p.OrderID;

Select * from Payment


Task 7

Select s.ShopName, s.ShopAddress, st.ShopType, p.ProductName, c.CategoryName
from Shops s, Products p , Shop_Product sp , Categories c, Shop_Types st
Where s.ShopID=sp.ShopID And sp.ProductID=p.ProductID And p.CategoryID=c.CategoryID
and s.ShopTypeID=st.ShopTypeID



Select o.OrderID, p.ProductName, od.OrderDate, c.CustomerName
from Products p, Order_Details od, Orders o, Customers c, Shop_Product sp
Where c.CustomerID=o.CustomerID And o.OrderID=od.OrderID And 
od.ShopProductID=sp.ShopProductID And sp.ProductID=p.ProductID


Select cu.CustomerName, p.TotalAmount, p.Payment_Date, p.Promotion, pm.PaymentMethodName
from Customers cu, Orders o, Payment p, Payment_Methods pm
where cu.CustomerID=o.CustomerID And p.OrderID=o.OrderID And p.PaymentMethodID=pm.PaymentMethodID


Select cu.CustomerName, d.DeliveryDate, ds.DeliveryStaffName, sm.ShippingMethodName
from Customers cu , Orders o ,  Deliveries d ,  Delivery_Staff ds , Shipping_Methods sm
where cu.CustomerID=o.CustomerID and o.DeliveryID=d.DeliveryID and d.DeliveryStaffID=ds.DeliveryStaffID and
 d.ShippingMethodID= sm.ShippingMethodID


Select SUM(p.TotalAmount) As Total_Amount_of_order
from Payment p

Select SUM(r.Score) As Score_of_Product
from Rating r

Select r.Remark , p.ProductName, s.ShopName
from Rating r ,Shop_Product sp , Products p, Shops s
where r.ShopProductID=sp.ShopProductID and sp.ProductID=p.ProductID and sp.ShopID=s.ShopID

Select COUNT(c.CustomerID) As Number_of_customers
From Customers c

Select AVG(p.TotalAmount) As Average_amount_per_customers
From Payment p

Select p.TotalAmount, od.Quantity, MAX(c.CustomerName) As Most_Ordered_Customer
from Payment p, Orders o, Customers c, Order_Details od
where p.OrderID=o.OrderID And o.OrderID=od.OrderID
And o.CustomerID=c.CustomerID
Group By p.TotalAmount, od.Quantity
Order By p.TotalAmount Desc


















