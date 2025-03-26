create table Customer(
	CustomerID int primary key,
	FirstName nvarchar(50),
	LastName nvarchar(50),
	MobileNumber nvarchar(20)
);

create table Product(
	ProductID int primary key,
	ProductName nvarchar(50),
	ProductPrice money
);

create table ShoppingCart(
	CartID int primary key,
	Date date
);

create table Detail(
	Discount float,
	Quantity int,
	ProductID int references Product,
	CartID int references ShoppingCart,
	primary key(ProductID, CartID)
);
