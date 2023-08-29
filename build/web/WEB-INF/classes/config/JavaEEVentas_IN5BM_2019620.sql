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
	fotoPerfil longblob,
    nombresCliente varchar(200) not null,
    direccionCliente varchar(150) not null,
    estado varchar(1) not null,
	usuario varchar(15) not null,
	correo varchar(50),
    primary key PK_codigoCliente(codigoCliente)
);

 

Create table Empleado(
    codigoEmpleado int auto_increment not null,
    DPIEmpleado varchar(15) not null,
	fotoPerfil longblob,
    nombresEmpleado varchar(200) not null,
    telefonoEmpleado varchar(10) not null,
    estado varchar(20) not null,
    usuario varchar(15) not null,
    correo varchar(50),
    rol varchar(20) not null,
    primary key PK_codigoEmpleado(codigoEmpleado)
);

 

Create table Producto(
    codigoProducto int auto_increment not null,
    fotoProducto longblob,
    nombreProducto varchar(100) not null,
    descripcion varchar(250) not null,
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
        references Cliente(codigoCliente)  on delete cascade,
	constraint FK_Compra_Producto foreign key (codigoProducto)
        references Producto(codigoProducto)  on delete cascade
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
        references Cliente(codigoCliente)  on delete cascade,
     constraint FK_Venta_Empleado foreign key (codigoEmpleado)
        references Empleado(codigoEmpleado) on delete cascade
);

Create table DetalleVenta(
    codigoDetalleVenta int auto_increment not null,
    cantidad int not null,
    precioVenta double not null,
    codigoProducto int not null,
    codigoVenta int not null,
    primary key PK_codigoDetalleVenta(codigoDetalleVenta),
    constraint FK_DetalleVenta_Producto foreign key (codigoProducto)
        references Producto(codigoProducto)  on delete cascade,
    constraint FK_DetalleVenta_Venta foreign key (codigoVenta)
        references Venta(codigoVenta)  on delete cascade
);

 

-- insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado, usuario, correo) values ('1579420230101', 'Pedro Armas', 'Mixco, Guatemala', '1', 'parmas', 'parmas@kinal.edu.gt');
-- insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado, usuario, correo) values ('1579123450108', 'Luis Olmedo', 'Guatemala, Guatemala', '1', 'lolmedo', 'lolmedo@kinal.edu.gt');
-- insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado, usuario, correo) values ('1579987450102', 'Jorge Tala', 'Sacatepequez, Guatemala', '1', 'jtala', 'jtala@kinal.edu.gt');
-- insert into Cliente (DPICliente, nombresCliente, direccionCliente, estado, usuario, correo) values ('1579257410107', 'Mario Rodriguez', 'Villa Nueva, Guatemala', '1', 'mrodriguez', 'mrodriguez@kinal.edu.gt');

select * from Cliente;

 
-- insert into Empleado(DPIEmpleado, fotoPerfil, nombresEmpleado, telefonoEmpleado, estado, usuario, correo, rol) values('1','','2','3','4','5','6','7');
-- insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario, correo, rol) values ('123', 'Angel Rodriguez', '54879632','1', 'arodriguez', 'arodriguez-2019620@kinal.org.gt', 'admin');
-- insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario, correo, rol) values ('1579457820107', 'Anderson Sanchez', '43210509','1', 'asanchez', 'asanchez-2019130@kinal.org.gt', 'miembro');
-- insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario, correo, rol) values ('1579558740106', 'Diego Siney', '24587963','1', 'dsiney', 'dsiney-2021664@kinal.org.gt', 'miembro');
-- insert into Empleado (DPIEmpleado, nombresEmpleado, telefonoEmpleado, estado, usuario, correo, rol) values ('1579663520108', 'Luisa Aragon', '36251478','1', 'laragon40', 'laragon40-2023056@kinal.org.gt', 'miembro');


select * from Empleado;

 

-- insert into Producto (nombreProducto, precio, stock, estado) values('Teclado Durabrand', 105.00,25,'1');
-- insert into Producto (nombreProducto, precio, stock, estado) values('Mouse inhalambrico Microfost', 74.50,15,'1');
-- insert into Producto (nombreProducto, precio, stock, estado) values('Laptop Dell Latitude 3480', 9850.00,5,'1');
-- insert into Producto (nombreProducto, precio, stock, estado) values('Monitor Haier 32"', 1225.80,60,'1');


-- insert into Compra (codigoProducto, codigoCliente, cantidadProductos, fechaCompra, totalPagar) Values (1,2,3,now(),500);

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

update Empleado
	set correo = 'arodriguez@kinal.org.gt'
	where codigoEmpleado = 6;
