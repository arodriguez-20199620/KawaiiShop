-- Angel Kaled Rodriguez Soc
-- 2019620
-- IN5BM
-- Fecha de creacion 17/07/2023

 

Drop database if exists JavaEEVentas_IN5BM_2019620;

 

Create database JavaEEVentas_IN5BM_2019620;

 

Use JavaEEVentas_IN5BM_2019620;

 

Create table Cliente(
    codigoCliente int not null auto_increment,
    DPICliente varchar(15) not null,
    nombresCliente varchar(200) not null,
    direccionCliente varchar(150) not null,
    estado varchar(1) not null,
    primary key PK_codigoCliente(codigoCliente)
);

 

Create table Empleado(
    codigoEmpleado int auto_increment not null,
    DPIEmpleado varchar(15) not null,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(10) not null,
    estado varchar(1) not null,
    usuario varchar(15) not null,
    primary key PK_codigoEmpleado(codigoEmpleado)
);

 

Create table Producto(
    codigoProducto int auto_increment not null,
    nombreProducto varchar(100) not null,
    precio double not null,
    stock int not null,
    estado varchar(1) not null,
    primary key PK_codigoProducto(codigoProducto)
);

create table Compra(
	codigoCompra int auto_increment not null,
	codigoProducto int not null,
    codigoCliente int not null,
    cantidadProductos int not null,
    fechaCompra datetime not null,
    totalPagar double not null,
    primary key PK_codigoCompra(codigoCompra),
    constraint FK_Compra_Cliente foreign key (codigoCliente)
        references Cliente(codigoCliente),
	constraint FK_Compra_Producto foreign key (codigoProducto)
        references Producto(codigoProducto)
); 

Create table Venta(
    codigoVenta int auto_increment not null,
    numeroSerie varchar(55) not null,
    fechaVenta date not null,
    monto double not null,
    estdo varchar(1) not null,
    codigoCliente int not null,
    codigoEmpleado int not null,
    primary key PK_codigoVenta(codigoVenta),
    constraint FK_Venta_Cliente foreign key (codigoCliente)
        references Cliente(codigoCliente),
     constraint FK_Venta_Empleado foreign key (codigoEmpleado)
        references Empleado(codigoEmpleado)   
);

Create table DetalleVenta(
    codigoDetalleVenta int auto_increment not null,
    cantidad int not null,
    precioVenta double not null,
    codigoProducto int not null,
    codigoVenta int not null,
    primary key PK_codigoDetalleVenta(codigoDetalleVenta),
    constraint FK_DetalleVenta_Producto foreign key (codigoProducto)
        references Producto(codigoProducto),
    constraint FK_DetalleVenta_Venta foreign key (codigoVenta)
        references Venta(codigoVenta)
);

 

insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado) values ('1579420230101', 'Pedro Armas', 'Mixco, Guatemala', '1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado) values ('1579123450108', 'Luis Olmedo', 'Guatemala, Guatemala', '1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado) values ('1579987450102', 'Jorge Tala', 'Sacatepequez, Guatemala', '1');
insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado) values ('1579257410107', 'Mario Rodriguez', 'Villa Nueva, Guatemala', '1');

 

select * from Cliente;

 

insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario) values ('123', 'Angel Rodriguez', '54879632','1', 'arodriguez');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario) values ('1579457820107', 'Rony Godinez', '43210509','1', 'rgod15');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario) values ('1579558740106', 'Palermo Suarez', '24587963','1', 'psuarez25');
insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario) values ('1579663520108', 'Luisa Aragon', '36251478','1', 'laragon40');

 

select * from Empleado;

 

insert into Producto (nombreProducto, precio, stock, estado) values('Teclado Durabrand', 105.00,25,'1');
insert into Producto (nombreProducto, precio, stock, estado) values('Mouse inhalambrico Microfost', 74.50,15,'1');
insert into Producto (nombreProducto, precio, stock, estado) values('Laptop Dell Latitude 3480', 9850.00,5,'1');
insert into Producto (nombreProducto, precio, stock, estado) values('Monitor Haier 32"', 1225.80,60,'1');


insert into Compra (codigoProducto, codigoCliente, cantidadProductos, fechaCompra, totalPagar) Values (1,2,3,now(),500);

 select
	C.codigoCompra,
    P.nombreProducto,  
	P.precio,
    C.fechaCompra
	from Compra C 
	left join Producto  P on P.codigoProducto = C.codigoProducto
		where C.codigoCliente = 2 order by C.fechaCompra;

 

-- delete from Producto where codigoProducto = 1;
select * from Producto;
select * from Empleado;
select * from Cliente;

 

select * from Empleado where usuario = 'arodriguez' and DPIEmpleado = '123';

