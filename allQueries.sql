create database project

create table customer (
nationalID 	bigint not null,
 primary key (nationalID)
);

insert into customer values(1000000001)
insert into customer values(1000000002)
insert into customer values(1000000003)
insert into customer values(1000000004)
insert into customer values(1000000005)
insert into customer values(1000000006)
insert into customer values(1000000007)
insert into customer values(1000000008)
insert into customer values(1000000009)
insert into customer values(1000000010)
insert into customer values(1000000011)
insert into customer values(1000000012)
insert into customer values(1000000013)
insert into customer values(1000000014)
insert into customer values(1000000015)
insert into customer values(1000000016)
insert into customer values(1000000017)
insert into customer values(1000000018)
insert into customer values(1000000019)
insert into customer values(1000000020)
insert into customer values(1000000021)
insert into customer values(1000000022)
insert into customer values(1000000023)
insert into customer values(1000000024)
insert into customer values(1000000025)
insert into customer values(1000000026)
insert into customer values(1000000027)
insert into customer values(1000000028)
insert into customer values(1000000029)
insert into customer values(1000000030)
insert into customer values(1000000031)
insert into customer values(1000000032)
insert into customer values(1000000033)
insert into customer values(1000000034)
insert into customer values(1000000035)
insert into customer values(1000000036)
insert into customer values(1000000037)
select* from customer

create table commercialCustomer (
	nationalID 	bigint not null,
	firstName	varchar(20),
	lastName	varchar(20),
	gender		varchar(15),
	age			int,
	isCommercial bit,
	isOrdinary	 bit,
	primary key (nationalID),
	foreign key(nationalID) references customer(nationalID)
	on delete cascade
	on update cascade,
	check		(age > 0)
);


insert into commercialCustomer values(1000000001,'kian','kashefi','male',39,1,0)
insert into commercialCustomer values(1000000002,'zahra','safari','female',20,1,0)
insert into commercialCustomer values(1000000003,'fatemezahra','rezaei','female',21,1,0)
insert into commercialCustomer values(1000000004,'nazaninzahra','jamalzade','female',19,1,0)
insert into commercialCustomer values(1000000005,'farhad','esi','male',45,1,0)
insert into commercialCustomer values(1000000006,'amirhossein','moradi','male',56,1,0)
insert into commercialCustomer values(1000000007,'parimehr','radfar','male',15,1,0)
insert into commercialCustomer values(1000000008,'koroush','khamesh','male',26,1,0)
insert into commercialCustomer values(1000000009,'kave','mirzaei','male',25,1,0)
insert into commercialCustomer values(1000000010,'artemis','kianian','female',11,1,0)
insert into commercialCustomer values(1000000011,'laleh','arshadi','female',36,1,0)
insert into commercialCustomer values(1000000012,'morteza','amini','male',43,1,0)
insert into commercialCustomer values(1000000013,'lohrasb','suzuki','male',52,1,0)
insert into commercialCustomer values(1000000014,'majid','farokhi','male',63,1,0)
insert into commercialCustomer values(1000000015,'joey','king','female',22,1,0)
insert into commercialCustomer values(1000000016,'amirali','yaghobi','male',18,1,0)
insert into commercialCustomer values(1000000017,'mahdi','gheidi','male',21,1,0)
insert into commercialCustomer values(1000000018,'ziba','barani','female',23,1,0)
insert into commercialCustomer values(1000000019,'davood','khezri','male',87,1,0)
insert into commercialCustomer values(1000000020,'mehdi','kharrazi','male',47,1,0)
select* from commercialCustomer

create table ordinaryCustomer (
	nationalID 	bigint not null,
	firstName	varchar(20),
	lastName	varchar(20),
	gender		varchar(15),
	age			int,
	isCommercial bit,
	isOrdinary	 bit,
	primary key (nationalID),
	foreign key(nationalID) references customer(nationalID)
	on delete cascade
	on update cascade,
	check		(age > 0)
);

select* from ordinaryCustomer
insert into ordinaryCustomer values(1000000021,'ali','yashmi','male',22,0,1)
insert into ordinaryCustomer values(1000000022,'naghi','mamoli','male',49,0,1)
insert into ordinaryCustomer values(1000000023,'taghi','mamoli','male',51,0,1)
insert into ordinaryCustomer values(1000000024,'reza','tarokh','male',38,0,1)
insert into ordinaryCustomer values(1000000025,'neda','yasi','transGender',29,0,1)
insert into ordinaryCustomer values(1000000026,'amir','tataloo','male',30,0,1)
insert into ordinaryCustomer values(1000000027,'merlin','monro','female',22,0,1)
insert into ordinaryCustomer values(1000000028,'melorin','memari','female',27,0,1)
insert into ordinaryCustomer values(1000000029,'faeze','zohri','female',29,0,1)
insert into ordinaryCustomer values(1000000030,'fateme','vahedi','female',36,0,1)
insert into ordinaryCustomer values(1000000031,'roya','rostami','female',83,0,1)
insert into ordinaryCustomer values(1000000032,'zahra','rahmani','female',12,0,1)
insert into ordinaryCustomer values(1000000033,'ahmad','ahmadi','male',31,0,1)
insert into ordinaryCustomer values(1000000034,'kazem','koohi','male',40,0,1)
insert into ordinaryCustomer values(1000000035,'karen','lotfian','male',23,0,1)
insert into ordinaryCustomer values(1000000036,'pari','rayej','female',31,0,1)
insert into ordinaryCustomer values(1000000037,'nastaran','kavosh','female',22,0,1)

select* from ordinaryCustomer

create table commercialCustomerAddress (
	CID		bigint not null,
	address	varchar(100) not null,
	primary key(CID, address),
	foreign key(CID) references commercialCustomer(nationalID)
		on delete cascade
		on update cascade
);
insert into commercialCustomerAddress values(1000000001,'slkga;kfhj')
insert into commercialCustomerAddress values(1000000002,'.fjbnall')
insert into commercialCustomerAddress values(1000000003,'awkwjrg')
insert into commercialCustomerAddress values(1000000004,'dkhakhlll')
insert into commercialCustomerAddress values(1000000005,'wroigaoj')
insert into commercialCustomerAddress values(1000000006,'dorrihjajh')
insert into commercialCustomerAddress values(1000000007,'prspfbs;fl')
insert into commercialCustomerAddress values(1000000008,'[qeigpsdj')
insert into commercialCustomerAddress values(1000000009,'w[oyq[hn')
insert into commercialCustomerAddress values(1000000010,'pewuypom')
insert into commercialCustomerAddress values(1000000011,'algxvcbnxn')
insert into commercialCustomerAddress values(1000000012,'qeojtpqeo')
insert into commercialCustomerAddress values(1000000013,'qepegsfj[n')
insert into commercialCustomerAddress values(1000000014,'qpeiiqeyb')
insert into commercialCustomerAddress values(1000000015,'qoeiggjn')
insert into commercialCustomerAddress values(1000000016,'xaxxl')
insert into commercialCustomerAddress values(1000000017,'algnxn')
insert into commercialCustomerAddress values(1000000018,'qeojdftpqeo')
insert into commercialCustomerAddress values(1000000019,'qepeg[n')
insert into commercialCustomerAddress values(1000000020,'qpeiib')

select* from commercialCustomerAddress

create table ordinaryCustomerAddress (
	CID		bigint not null,
	address	varchar(100) not null,
	primary key(CID, address),
	foreign key(CID) references ordinaryCustomer(nationalID)
		on delete cascade
		on update cascade
);
insert into ordinaryCustomerAddress values(1000000021,'akgjag')
insert into ordinaryCustomerAddress values(1000000021,'lqowiuqoei')
insert into ordinaryCustomerAddress values(1000000022,'qoielknx')
insert into ordinaryCustomerAddress values(1000000023,'xncnvkj')
insert into ordinaryCustomerAddress values(1000000024,'xncbnwp')
insert into ordinaryCustomerAddress values(1000000025,'qoertogjk')
insert into ordinaryCustomerAddress values(1000000026,'xmaqpeoi')
insert into ordinaryCustomerAddress values(1000000027,'mxleij')
insert into ordinaryCustomerAddress values(1000000028,'qoeutpdj')
insert into ordinaryCustomerAddress values(1000000029,'aaoqjl')
insert into ordinaryCustomerAddress values(1000000030,'lqeigi')
insert into ordinaryCustomerAddress values(1000000031,'zqepqiue')
insert into ordinaryCustomerAddress values(1000000032,'adkqwegjsi')
insert into ordinaryCustomerAddress values(1000000033,'oqeiasfgon')
insert into ordinaryCustomerAddress values(1000000034,'qeitolvzlk')
insert into ordinaryCustomerAddress values(1000000035,'adkgjsi')
insert into ordinaryCustomerAddress values(1000000036,'oqeigon')
insert into ordinaryCustomerAddress values(1000000037,'qeilvzlk')

select * from ordinaryCustomerAddress

create table commercialCustomerAccount (
	CID				bigint not null,
	accountNo		varchar(20) not null,
	credit			numeric(30,2),
	primary key(CID, accountNo),
	foreign key(CID) references commercialCustomer(nationalID)
		on delete cascade
		on update cascade
);
insert into commercialCustomerAccount values(1000000001, 87613713984679386, 28385738.00)
insert into commercialCustomerAccount values(1000000002, 99246872983948747, 235719358.)
insert into commercialCustomerAccount values(1000000003, 1938571937298524, 24989829.95)
insert into commercialCustomerAccount values(1000000004, 1038579867296729, 946258195829458.50)
insert into commercialCustomerAccount values(1000000005, 3948209509200, 230518106024986.00)
insert into commercialCustomerAccount values(1000000006, 19386794682946, 29395719358.00)
insert into commercialCustomerAccount values(1000000007, 9567945890143, 3945749948.00)
insert into commercialCustomerAccount values(1000000008, 2948672948524524, 938567989.05)
insert into commercialCustomerAccount values(1000000009, 496847598501134, 45925183.00)
insert into commercialCustomerAccount values(1000000010, 139581795829567, 6998452985.00)
insert into commercialCustomerAccount values(1000000011, 5837458713857, 359739458.00)
insert into commercialCustomerAccount values(1000000012, 2935793581938, 293472.00)
insert into commercialCustomerAccount values(1000000013, 4597928739574, 2379428123.20)
insert into commercialCustomerAccount values(1000000014, 24857981032342, 2358729581.00)
insert into commercialCustomerAccount values(1000000015, 349587013987, 24685766345.00)
insert into commercialCustomerAccount values(1000000016, 1938759135879, 2392857987.00)
insert into commercialCustomerAccount values(1000000017, 138723958913235, 23598279358.00)
insert into commercialCustomerAccount values(1000000018, 1294793823985, 91938759287.00)
insert into commercialCustomerAccount values(1000000019, 245928938572938, 234273.10)
insert into commercialCustomerAccount values(1000000020, 293587298523987, 23471935813859928579.00)
select* from commercialCustomerAccount

create table ordinaryCustomerAccount (
	CID				bigint not null,
	accountNo		varchar(20) not null,
	credit			numeric(30,2),
	primary key(CID, accountNo),
	foreign key(CID) references ordinaryCustomer(nationalID)
		on delete cascade
		on update cascade
);
insert into ordinaryCustomerAccount values(1000000021, 13846984756187, 1876135.28)
insert into ordinaryCustomerAccount values(1000000022, 385762049682757, 839183.57)
insert into ordinaryCustomerAccount values(1000000023, 6024968204602940, 47952987.00)
insert into ordinaryCustomerAccount values(1000000024, 698258035985098, 4579581759.00)
insert into ordinaryCustomerAccount values(1000000025, 10357139589873513, 43498572.00)
insert into ordinaryCustomerAccount values(1000000026, 3103513013098313, 13958959.00)
insert into ordinaryCustomerAccount values(1000000027, 12948175913013515, 318571.00)
insert into ordinaryCustomerAccount values(1000000028, 103481305051510, 31918719894.00)
insert into ordinaryCustomerAccount values(1000000029, 13041350193293294, 1135130958.50)
insert into ordinaryCustomerAccount values(1000000030, 575698429852498, 83460498.95)
insert into ordinaryCustomerAccount values(1000000031, 44529358298723, 39487251.50)
insert into ordinaryCustomerAccount values(1000000032, 69869348794891, 5834759879.00)
insert into ordinaryCustomerAccount values(1000000033, 1305813059809, 492489487.00)
insert into ordinaryCustomerAccount values(1000000034, 158698981204920, 249686895.02)
insert into ordinaryCustomerAccount values(1000000035, 989568400981395, 498672941.00)
insert into ordinaryCustomerAccount values(1000000036, 103513958279845, 28529485.00)
insert into ordinaryCustomerAccount values(1000000037, 33984579384501234, 29384.00)
select * from ordinaryCustomerAccount

create table businessPlan (
	CID					bigint not null,
	discountPercent		numeric(5,2),
	primary key(CID, discountPercent),
	foreign key(CID) references commercialCustomer(nationalID)
		on delete cascade
		on update cascade
);
select * from businessPlan
insert into businessPlan values(1000000001, 42.05)
insert into businessPlan values(1000000002, 30.00)
insert into businessPlan values(1000000003, 22.00)
insert into businessPlan values(1000000004, 36.26)
insert into businessPlan values(1000000005, 47.50)
insert into businessPlan values(1000000006, 45.60)
insert into businessPlan values(1000000007, 15.00)
insert into businessPlan values(1000000008, 27.00)
insert into businessPlan values(1000000009, 18.00)
insert into businessPlan values(1000000010, 88.00)
insert into businessPlan values(1000000011, 53.00)
insert into businessPlan values(1000000012, 13.00)
insert into businessPlan values(1000000013, 19.00)
insert into businessPlan values(1000000014, 34.00)
insert into businessPlan values(1000000015, 14.00)
insert into businessPlan values(1000000016, 29.00)
insert into businessPlan values(1000000017, 90.00)
insert into businessPlan values(1000000018, 73.00)
insert into businessPlan values(1000000019, 46.00)
insert into businessPlan values(1000000020, 20.00)
insert into businessPlan values(1000000021, 13.00)
insert into businessPlan values(1000000020, 16.00)

select * from businessPlan

create table inchargeEmployee(
  nationalID	bigint not null,
  firstName		VARCHAR(20),
  lastName		VARCHAR(20),
  gender		VARCHAR(15),
  age			int,
  EPassword		VARCHAR(20) ,
  salary		numeric(20,2),
  check			(age > 0),
  primary key 	(nationalID)
);


insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000001, 'amir', 'lashkari', 'male', 20, 'qwertyui', 2550.23);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000002, 'naser', 'amini', 'male', 23, 'wertyuio', 23456.22);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000003, 'akbar', 'azimi', 'male', 24, 'ertyuiop', 1234.5);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000004,'mina' , 'salehani', 'female', 25, 'rtyuiopa', 3456.87);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000005, 'ilia', 'shiravand', 'male', 26, 'asdfghjk', 3456.87);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000006, 'ali', 'nikkhah', 'male', 27, 'sdfghjkl', 1975.34);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000007, 'sadegh', 'ahmadi', 'male', 28, 'dfghjklz', 2687.97);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000008, 'javad', 'nemati', 'male', 22, 'fghjklzx', 2376.98);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000009, 'mohadese', 'fayazi', 'female', 23, 'ghjklzxc', 1287.34);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000010, 'fatemeh', 'mosavi', 'female', 24, 'hjklzxcv',2367.87 );
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000011, 'mehran', 'ahmadi', 'male', 25, 'jklzxcvb', 9809.34);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000012, 'asgharali', 'akbari', 'male', 26, 'klzxcvbn', 3456.77);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000013, 'artam', 'tehrani', 'male', 22, 'lzxcvbnm', 2478.76);
insert into inchargeEmployee (nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000014, 'sepanta', 'ahmadi', 'male', 26, 'mnbvcxza', 2367.98);

select * from inchargeEmployee
create table regularEmployee(
  nationalID	bigint not null,
  firstName		VARCHAR(20),
  lastName		VARCHAR(20),
  gender		VARCHAR(15),
  age			int,
  EPassword		VARCHAR(20) ,
  salary		numeric(20,2),
  check			(age > 0),
  primary key 	(nationalID)
);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000015, 'amir', 'lashkari', 'male', 20, 'qwertyui', 2550.23);
insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000016, 'naser', 'amini', 'male', 23, 'wertyuio', 23456.22);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000017, 'akbar', 'azimi', 'male', 24, 'ertyuiop', 1234.5);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000018,'mina' , 'salehani', 'female', 25, 'rtyuiopa', 3456.87);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000019, 'ilia', 'shiravand', 'male', 26, 'asdfghjk', 3456.87);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000020, 'ali', 'nikkhah', 'male', 27, 'sdfghjkl', 1975.34);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000021, 'sadegh', 'ahmadi', 'male', 28, 'dfghjklz', 2687.97);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary) 
values(2000000022, 'javad', 'nemati', 'male', 22, 'fghjklzx', 2376.98);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000023, 'mohadese', 'fayazi', 'female', 23, 'ghjklzxc', 1287.34);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000024, 'fatemeh', 'mosavi', 'female', 24, 'hjklzxcv',2367.87 );

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000025, 'mehran', 'ahmadi', 'male', 25, 'jklzxcvb', 9809.34);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000026, 'asgharali', 'akbari', 'male', 26, 'klzxcvbn', 3456.77);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)
values(2000000027, 'artam', 'tehrani', 'male', 22, 'lzxcvbnm', 2478.76);

insert into regularEmployee(nationalID, firstName, lastName, gender, age, EPassword, salary)

values(2000000028, 'sepanta', 'ahmadi', 'male', 26, 'mnbvcxza', 2367.98);

select * from regularEmployee


create table inchargeEmployeeAddress(
    EID 		bigint not null,
    EAddress 	VARCHAR(100),
    primary key(EID, EAddress),
    foreign key(EID) references inchargeEmployee(nationalID)
		on delete cascade
		on update cascade
);

insert into inchargeEmployeeAddress(EID, EAddress) values(2000000001,'jhbgvfcd');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000002,'lkjhgfdg');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000003,'kjuhygtr');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000004,'jhygtfrd');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000005,'hgfdsdfg');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000006,'jhgfdsdf');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000007,'jdnfvonw');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000008,'kjfvnfjv');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000009,'evnsvojs');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000010,'wirbvie');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000011,'sefkvjn');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000012,'dfvkjne');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000013,'xfjvfnf');
insert into inchargeEmployeeAddress(EID, EAddress) values(2000000014,'dfvjnfv');

select* from inchargeEmployeeAddress

create table regularEmployeeAddress(
    EID 		bigint not null,
    EAddress 	VARCHAR(100),
    primary key(EID, EAddress),
    foreign key(EID) references regularEmployee(nationalID)
		on delete cascade
		on update cascade
);

insert into regularEmployeeAddress(EID, EAddress) values(2000000015,'dfvhj b');
insert into regularEmployeeAddress(EID, EAddress) values(2000000016,'dfvhjbd');
insert into regularEmployeeAddress(EID, EAddress) values(2000000017,'fvjnfvk');
insert into regularEmployeeAddress(EID, EAddress) values(2000000018,'sfvhvjb');
insert into regularEmployeeAddress(EID, EAddress) values(2000000019,'dfvjnff');
insert into regularEmployeeAddress(EID, EAddress) values(2000000020,'fvjfvjn');
insert into regularEmployeeAddress(EID, EAddress) values(2000000021,'dfjvndf');
insert into regularEmployeeAddress(EID, EAddress) values(2000000022,'dfvjb d');
insert into regularEmployeeAddress(EID, EAddress) values(2000000023,'dfvnfvv');
insert into regularEmployeeAddress(EID, EAddress) values(2000000024,'dfvnjfv');
insert into regularEmployeeAddress(EID, EAddress) values(2000000025,'fvhbfvh');
insert into regularEmployeeAddress(EID, EAddress) values(2000000026,'fvhbrvj');
insert into regularEmployeeAddress(EID, EAddress) values(2000000027,'fvnjfvn');
insert into regularEmployeeAddress(EID, EAddress) values(2000000028,'fvbjfvn');

select * from regularEmployeeAddress

create table hall (
	hallNo				int not null unique,
	EID					bigint not null,
	numberOfSafeboxes	int,
	numberOfCameras		int,
	wallMaterial		varchar(20),
	primary key(hallNo),
	foreign key(EID) references inchargeEmployee(nationalID)
		on delete cascade
		on update cascade
);
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(1, 2000000001, 2, 2, 'metal');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(2, 2000000002, 2, 3, 'wood');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(3, 2000000003, 2, 4, 'glass');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(4, 2000000004, 2, 2, 'metal');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(5, 2000000005, 2, 3, 'wood');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(6, 2000000006, 3, 4, 'glass');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(7, 2000000007, 3, 2, 'metal');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(8, 2000000008, 3, 3, 'wood');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(9, 2000000009, 3, 4, 'glass');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(10, 2000000010, 3, 2, 'metal');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(11, 2000000011, 4, 3, 'wood');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(12, 2000000012, 4, 4, 'glass');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(13, 2000000013, 4, 2, 'metal');
insert into hall(hallNo, EID, numberOfSafeboxes, numberOfCameras, wallMaterial) values(14, 2000000014, 4, 3, 'wood');


create table safebox (
  SID             int not null,
  CID             bigint,
  hallNo          int not null,
  securityLevel   int,
  trustValue      numeric(30,2),
  priceClass      int,
  primary key(SID),
  foreign key(CID) references customer(nationalID)
    on delete cascade
    on update cascade,
  foreign key(hallNo) references hall(hallNo)
    on delete cascade
    on update cascade
);

insert into safebox values(1, , 1, 2, 10000000.00, 2);
insert into safebox values(2, , 2, 2, 10000000.00, 2);
insert into safebox values(3, 1000000003, 3, 1, 1000000.00, 1);
insert into safebox values(4, 1000000004, 4, 3, 100000000.00, 3);
insert into safebox values(5, 1000000005, 5, 3, 100000000.00, 3);
insert into safebox values(6, 1000000006, 6, 2, 10000000.00, 2);
insert into safebox values(7, 1000000007, 7, 1, 1000000.00, 1);
insert into safebox values(8, 1000000008, 8, 3, 100000000.00, 3);
insert into safebox values(9, 1000000009, 9, 1, 1000000.00, 1);
insert into safebox values(10, 1000000010, 10, 3, 100000000.00, 3);
insert into safebox values(11, 1000000011, 11, 2, 10000000.00, 2);
insert into safebox values(12, 1000000012, 12, 1, 1000000.00, 1);
insert into safebox values(13, 1000000013, 13, 2, 10000000.00, 2); 
insert into safebox values(14, 1000000014, 14, 3, 100000000.00, 3);
insert into safebox values(15, 1000000015, 1, 2, 10000000.00, 2);
insert into safebox values(16, 1000000016, 2, 2, 10000000.00, 2);
insert into safebox values(17, 1000000017, 3, 2, 10000000.00, 2);
insert into safebox values(18, 1000000018, 4, 3, 100000000.00, 3);
insert into safebox values(19, 1000000019, 5, 3, 100000000.00, 3);
insert into safebox values(20, 1000000020, 6, 2, 10000000.00, 2);
insert into safebox values(21, 1000000021, 7, 1, 1000000.00, 1);
insert into safebox values(22, 1000000022, 8, 2, 10000000.00, 2);
insert into safebox values(23, 1000000023, 9, 1, 1000000.00, 1);
insert into safebox values(24, 1000000024, 10, 3, 100000000.00, 3);
insert into safebox values(25, 1000000025, 11, 3, 100000000.00, 3);
insert into safebox values(26, 1000000026, 12, 2, 10000000.00, 2);
insert into safebox values(27, 1000000027, 13, 2, 10000000.00, 2);
insert into safebox values(28, 1000000028, 14, 2, 10000000.00, 2);
insert into safebox values(29, 1000000029, 6, 1, 1000000.00, 1);
insert into safebox values(30, 1000000030, 7, 1, 10000000.00, 2);
insert into safebox values(31, 1000000031, 8, 3, 100000000.00, 3);
insert into safebox values(32, 1000000032, 9, 3, 100000000.00, 3);
insert into safebox values(33, 1000000033, 10, 2, 10000000.00, 2);
insert into safebox values(34, 1000000034, 11, 3, 100000000.00, 3);
insert into safebox values(35, 1000000035, 12, 1, 1000000.00, 1);
insert into safebox values(36, 1000000036, 13, 2, 10000000.00, 2);
insert into safebox values(37, 1000000037, 14, 1, 1000000.00, 1);
insert into safebox values(38, 1000000001, 11 , 1, 1000000.00, 1);
insert into safebox values(39, 1000000002, 12, 3, 100000000.00, 3);
insert into safebox values(40, 1000000003, 13, 2, 10000000.00, 2);
insert into safebox values(41, 1000000004, 14, 1, 1000000.00, 1);
insert into safebox values(42, 1000000005, 1, 1, 1000000.00,1);
insert into safebox values(43, 1000000006, 1, 2, 10000000.00,2);
insert into safebox values(44, 1000000007, 2, 3, 100000000.00,3);
insert into safebox values(45, 1000000008, 3, 2, 10000000.00,2);
insert into safebox values(46, 1000000009, 4, 1, 1000000.00,1);


create table damage (
	SID				int not null,
	amountOfDamage 	bigint not null,
	description		varchar(100),
	primary key(SID, amountOfDamage),
	foreign key(SID) references safebox(SID)
		on delete cascade
		on update cascade
);

insert into damage(SID, amountOfDamage, description) values(2, 200, 'atash soozi shod');
insert into damage(SID, amountOfDamage, description) values(17, 100, 'seil omad khis shod');
insert into damage(SID, amountOfDamage, description) values(11, 300, 'mooriane omad khordesh');
insert into damage(SID, amountOfDamage, description) values(6, 270, 'atash soozi shod');
insert into damage(SID, amountOfDamage, description) values(5, 500, 'seil ziad');
insert into damage(SID, amountOfDamage, description) values(4, 900, 'zelzele');
insert into damage(SID, amountOfDamage, description) values(10, 900, 'zelzele');

create table settlement (
	SID			int not  null,
	CID			bigint not null,
	leftover	bigint,
	primary key(SID, CID),
	foreign key(SID) references safebox(SID)
		on delete cascade
		on update cascade,
	foreign key(CID) references customer(nationalID) 
);



insert into settlement values (4, 1000000004, 16);
insert into settlement values (5, 1000000005, 20);
insert into settlement values (6, 1000000006, 24);
insert into settlement values (7, 1000000007, 28);
insert into settlement values (8, 1000000008, 32);
insert into settlement values (9, 1000000009, 36);
insert into settlement values (10,1000000010, 40);
insert into settlement values (11,1000000011, 44);
insert into settlement values (12,1000000012, 48);
insert into settlement values (13,1000000013, 52);
--insert into settlement values (14,1000000014, 56);
--insert into settlement values (15,1000000015, 60);
--insert into settlement values (16, 16, 64);
--insert into settlement values (17, 17, 68);
--insert into settlement values (18, 18, 72);

select * from settlement
create table oneMonthTimePlan (
	duration	int not null,
	SID 		int not null,
	discount	numeric(5,2),
	primary key(duration,SID),
	foreign key(SID) references safebox(SID)
		on delete cascade
		on update cascade
);



-- 4 ta 9 tasvie shode pas run nashe


insert into oneMonthTimePlan values( 1, 1, 2);
insert into oneMonthTimePlan values( 1, 2, 4);
insert into oneMonthTimePlan values( 1, 3, 6);
--insert into oneMonthTimePlan values( 1, 4, 8);
--insert into oneMonthTimePlan values( 1, 5, 10);
--insert into oneMonthTimePlan values( 1, 6, 12);
--insert into oneMonthTimePlan values( 1, 7, 14);
--insert into oneMonthTimePlan values( 1, 8, 16);
--insert into oneMonthTimePlan values( 1, 9, 18);
select * from oneMonthTimePlan
create table threeMonthTimePlan (
	duration	int not null,
	SID 		int not null,
	discount	numeric(5,2),
	primary key(duration,SID),
	foreign key(SID) references safebox(SID)
		on delete cascade
		on update cascade
);



--10 ta 13 tasvie pas run nashavad
--insert into threeMonthTimePlan values( 3, 10, 20)
--insert into threeMonthTimePlan values( 3, 11, 22)
--insert into threeMonthTimePlan values( 3, 12, 24)
--insert into threeMonthTimePlan values( 3, 13, 26)
insert into threeMonthTimePlan values( 3, 14, 28)
insert into threeMonthTimePlan values( 3, 15, 30)
insert into threeMonthTimePlan values( 3, 16, 32)
insert into threeMonthTimePlan values( 3, 17, 34)
insert into threeMonthTimePlan values( 3, 18, 36)
insert into threeMonthTimePlan values( 3, 19, 38)

select * from threeMonthTimePlan




create table oneYearTimePlan (
	duration	int not null,
	SID 		int not null,
	discount	numeric(5,2),
	primary key(duration,SID),
	foreign key(SID) references safebox(SID)
		on delete cascade
		on update cascade
);
insert into oneMonthTimePlan values(1,42,10.00)
insert into oneMonthTimePlan values(1,43,10.00)
insert into threeMonthTimePlan values(3,44,20.00)
insert into threeMonthTimePlan values(3,45,20.00)
insert into oneYearTimePlan values(12,46,30.00)


insert into oneYearTimePlan values(12, 20, 40)
insert into oneYearTimePlan values(12, 21, 42)
insert into oneYearTimePlan values(12, 22, 44)
insert into oneYearTimePlan values(12, 23, 46)
insert into oneYearTimePlan values(12, 24, 48)
insert into oneYearTimePlan values(12, 25, 50)
insert into oneYearTimePlan values(12, 26, 52)
insert into oneYearTimePlan values(12, 27, 54)
insert into oneYearTimePlan values(12, 28, 56)
insert into oneYearTimePlan values(12, 29, 58)
insert into oneYearTimePlan values(12, 30, 60)
insert into oneYearTimePlan values(12, 31, 62)
insert into oneYearTimePlan values(12, 32, 64)
insert into oneYearTimePlan values(12, 33, 66)
insert into oneYearTimePlan values(12, 34, 68)
insert into oneYearTimePlan values(12, 35, 70)
insert into oneYearTimePlan values(12, 36, 72)
insert into oneYearTimePlan values(12, 37, 74)
insert into oneYearTimePlan values(12, 38, 76)
insert into oneYearTimePlan values(12, 39, 78)
insert into oneYearTimePlan values(12, 40, 80)
insert into oneYearTimePlan values(12, 41, 82)


select * from oneYearTimePlan

create table insurance (
	SID		int  not null,
	CID		bigint not null,
	price	int,
	primary key(SID, CID),
	foreign key(SID) references safebox(SID),
	foreign key(CID) references customer(nationalID)

);

insert into insurance values(16, 1000000016, 10000)
insert into insurance values(17, 1000000017, 10000)
insert into insurance values(18, 1000000018, 10000)
insert into insurance values(19, 1000000019, 10000)
insert into insurance values(20, 1000000020, 10000)
insert into insurance values(21, 1000000021, 10000)
insert into insurance values(22, 1000000022, 10000)
insert into insurance values(23, 1000000023, 10000)
insert into insurance values(24, 1000000024, 10000)

select * from insurance

create table guide (
	SID		int  not null,
	CID		bigint not null,
	price	int,
	primary key(SID, CID),
	foreign key(SID) references safebox(SID),
	foreign key(CID) references customer(nationalID)

);

insert into guide values(1, 1000000001, 2)
insert into guide values(2, 1000000002, 4)
insert into guide values(3, 1000000003, 6)
--insert into guide values(10, 1000000010, 20)
--insert into guide values(11, 1000000011, 22)
--insert into guide values(12, 1000000012, 24)
--insert into guide values(13, 1000000013, 26)
insert into guide values(14, 1000000014, 28)
insert into guide values(15, 1000000015, 30)
insert into guide values(16, 1000000016, 32)
insert into guide values(17, 1000000017, 34)
insert into guide values(18, 1000000018, 36)
insert into guide values(19, 1000000019, 38)
insert into guide values(20, 1000000020, 40)
insert into guide values(21, 1000000021, 42)
insert into guide values(22, 1000000022, 44)
insert into guide values(23, 1000000023, 46)
insert into guide values(24, 1000000024, 48)
insert into guide values(25, 1000000025, 50)
insert into guide values(26, 1000000026, 52)
insert into guide values(27, 1000000027, 54)
insert into guide values(28, 1000000028, 56)

select * from guide

create table contract (
	SID				int not null,
	CID				bigint not null,
	rentDuration	int,
	rent			numeric(10,2),
	endDate			Date,
	primary key(SID, CID),
	foreign key(SID) references safebox(SID),
	foreign key(CID) references customer(nationalID)
);
select rent from contract
where contract.SID in (select safebox.SID 
from safebox join contract
on safebox.SID = contract.SID
where safebox.securityLevel = 2)
and rentDuration = 3;
insert into contract values(42, 1000000005,1,90000000.00,'2005-05-05')
insert into contract values(43, 1000000006,1,9000000.00,'2006-06-06')
insert into contract values(44, 1000000007,3,2400000.00,'2007-07-07')
insert into contract values(45, 1000000008,3,24000000.00,'2008-08-08')
insert into contract values(46, 1000000009,12,84000000.00,'2009-09-09')


insert into contract values(1, 1000000001, 1, 1000000.43, '2001-01-01')
insert into contract values(2, 1000000002, 1, 1000000.43, '2002-02-02')
insert into contract values(3, 1000000003, 1, 1000000.43, '2003-03-03')
insert into contract values(4, 1000000004, 1, 1000000.43, '2004-04-04')
insert into contract values(5, 1000000005, 1, 1000000.43, '2005-05-05')
insert into contract values(6, 1000000006, 1, 1000000.43, '2006-06-06')
insert into contract values(7, 1000000007, 1, 1000000.43, '2007-07-07')
insert into contract values(8, 1000000008, 1, 1000000.43, '2008-08-08')
insert into contract values(9, 1000000009, 1, 1000000.43, '2009-09-09')
insert into contract values(10,1000000010, 3, 1000000.43, '2010-10-10')
insert into contract values(11, 1000000011, 3, 1000000.43, '2001-01-01')
insert into contract values(12, 1000000012, 3, 1000000.43, '2002-02-02')
insert into contract values(13, 1000000013, 3, 1000000.43, '2003-03-03')
insert into contract values(14, 1000000014, 3, 1000000.43, '2004-04-04')
insert into contract values(15, 1000000015, 3, 1000000.43, '2005-05-05')
insert into contract values(16, 1000000016, 3, 1000000.43, '2006-06-06')
insert into contract values(17, 1000000017, 3, 1000000.43, '2007-07-07')
insert into contract values(18, 1000000018, 3, 1000000.43, '2008-08-08')
insert into contract values(19, 1000000019, 3, 1000000.43, '2009-09-09')
insert into contract values(20, 1000000020, 12, 1000000.43, '2011-11-11')
insert into contract values(21, 1000000021, 12, 1000000.43, '2001-01-01')
insert into contract values(22, 1000000022, 12, 1000000.43, '2002-02-02')
insert into contract values(23, 1000000023, 12, 1000000.43, '2003-03-03')
insert into contract values(24, 1000000024, 12, 1000000.43, '2004-04-04')
insert into contract values(25, 1000000025, 12, 1000000.43, '2005-05-05')
insert into contract values(26, 1000000026, 12, 1000000.43, '2006-06-06')
insert into contract values(27, 1000000027, 12, 1000000.43, '2007-07-07')
insert into contract values(28, 1000000028, 12, 1000000.43, '2008-08-08')
insert into contract values(29, 1000000029, 12, 1000000.43, '2009-09-09')
insert into contract values(30, 1000000030, 12, 1000000.43, '2013-01-05')
insert into contract values(31, 1000000031, 12, 1000000.43, '2001-01-01')
insert into contract values(32, 1000000032, 12, 1000000.43, '2002-02-02')
insert into contract values(33, 1000000033, 12, 1000000.43, '2003-03-03')
insert into contract values(34, 1000000034, 21, 1000000.43, '2004-04-04')
insert into contract values(35, 1000000035, 12, 1000000.43, '2005-05-05')
insert into contract values(36, 1000000036, 12, 1000000.43, '2006-06-06')
insert into contract values(37, 1000000037, 12, 1000000.43, '2007-07-07')
insert into contract values(38, 1000000001, 12, 1000000.43, '2008-08-08')
insert into contract values(39, 1000000002, 12, 1000000.43, '2009-09-09')
insert into contract values(40, 1000000003, 12, 1000000.43, '2012-12-12')
insert into contract values(41, 1000000004, 12, 1000000.43, '2001-01-01')

select * from contract




create table settlementReport (
	settlementTime		date,
	SID					int not null,
	CID					bigint not null,
 	EID					bigint,
	settlementCost		numeric(30,2),
	situation			varchar(15),
	primary key (settlementTime, SID, CID),
	foreign key(SID) references safebox(SID),
	foreign key(CID) references customer(nationalID),
 	foreign key(EID) references inchargeEmployee(nationalID)
);


insert into settlementReport values('2004-03-03', 4, 1000000004,2000000004, 1000000.43, 'dfhnfhndfgfnf' )
insert into settlementReport values('2005-04-04', 5, 1000000005,2000000005, 1000000.43, 'bmcvfgfnf' )
insert into settlementReport values('2006-05-05', 6, 1000000006,2000000006, 1000000.43, 'dftykffnf' )
insert into settlementReport values('2007-06-06', 7, 1000000007,2000000007, 1000000.43, 'dfhnfhadndfgfnf' )
insert into settlementReport values('2008-07-07', 8, 1000000008,2000000008, 1000000.43, 'dfhnfhndfgftknf' )
insert into settlementReport values('2009-08-08', 9, 1000000009,2000000009, 1000000.43, 'qwekhdgfnf' )
insert into settlementReport values('2010-09-09',10, 1000000010,2000000010, 1000001.44, 'done')
insert into settlementReport values('2000-09-09',11, 1000000011,2000000011, 1000003.44, 'done')
insert into settlementReport values('2002-01-01',12, 1000000012,2000000012, 1000002.44, 'done')
insert into settlementReport values('2003-02-02',13, 1000000013,2000000013, 1000004.44, 'done')

select* from settlementReport


create table contractReport (
	contractTime		date,
	SID					int not null,
	CID					bigint not null,
 	EID					bigint,
	contractCost		numeric(30,2),
	situation			varchar(15),
	rentDuration		int,
	rent				numeric(10,2),
	endDate				Date,
	primary key (contractTime, SID, CID),
	foreign key(SID) references safebox(SID),
	foreign key(CID) references customer(nationalID),
 	foreign key(EID) references inchargeEmployee(nationalID)
);

-- insert into contractReport values('2001-01-01',1,1000000001,2000000001,2000000.00,'not finished',1,1000000.43,'2001-04-01')
-- insert into contractReport values('2002-02-02',2,1000000002,2000000002,2000000.00,'not finished',1,1000000.43,'2002-05-02')
insert into contractReport values('2003-03-03',3,1000000003,2000000003,2000000.00,'not finished',1,1000000.43,'2003-04-03')
insert into contractReport values('2004-04-04',4,1000000004,2000000004,2000000.00,'settled',1,1000000.43,'2004-07-04')
insert into contractReport values('2005-05-05',5,1000000005,2000000005,2000000.00,'settled',1,1000000.43,'2005-08-05')
insert into contractReport values('2006-06-06',6,1000000006,2000000006,2000000.00,'settled',1,1000000.43,'2006-09-06')
insert into contractReport values('2007-07-07',7,1000000007,2000000007,2000000.00,'settled',1,1000000.43,'2007-10-07')
insert into contractReport values('2008-08-08',8,1000000008,2000000008,2000000.00,'settled',1,1000000.43,'2008-11-08')
insert into contractReport values('2009-09-09',9,1000000009,2000000009,2000000.00,'settled',1,1000000.43,'2009-12-09')

select * from contractReport

create table dischargeReport (
	dischargeTime		date,
	SID					int not null,
	CID					bigint not null,
 	EID					bigint,
	dischargeCost		numeric(30,2),
	situation			varchar(15),
	primary key (dischargeTime, SID, CID),
	foreign key(SID) references safebox(SID),
	foreign key(CID) references customer(nationalID),
 	foreign key(EID) references inchargeEmployee(nationalID)
);
insert into dischargeReport values('2005-04-04',14,1000000014,2000000014,3000000.00,'discharged')
insert into dischargeReport values('2006-05-05',15,1000000015,2000000001,3000000.00,'discharged')
insert into dischargeReport values('2007-06-06',16,1000000016,2000000002,3000000.00,'discharged')
insert into dischargeReport values('2008-07-07',17,1000000017,2000000003,3000000.00,'discharged')
insert into dischargeReport values('2009-08-08',18,1000000018,2000000004,3000000.00,'discharged')
insert into dischargeReport values('2010-09-09',19,1000000019,2000000005,3000000.00,'discharged')




-- 1
select customer.nationalID, safebox.securityLevel from
customer join safebox on customer.nationalID = safebox.CID
where safebox.CID is not null;

-- 2
select rent from contract
where contract.SID in (select safebox.SID 
from safebox join contract
on safebox.SID = contract.SID
where safebox.securityLevel = 3)
and rentDuration = 1;


-- 3
select avg(age) from commercialCustomer
where PID = 'plan_id'
and nationalID in (select commercialCustomer.nationalID from commercialCustomer join safebox
on commercialCustomer.nationalID = safebox.CID
and hallNo = 'room_id');



-- 4
select salary from inchargeEmployee
where nationalID in (select hall.EID from inchargeEmployee join hall 
on hall.EID = inchargeEmployee.nationalID join safebox on safebox.hallNo = hall.hallNo
where safebox.securityLevel > 'from_level'
and safebox.securityLevel < 'to_levell');

-- 5
select * from safebox
where safebox.SID not in (select SID from contract)
and securityLevel =  'level'
and trustValue <= 'max_price'


-- 6
select max(c1/rent) from (select credit as c1 from commercialCustomerAccount where commercialCustomerAccount.CID='usr_id'
union
select credit as c1 from ordinaryCustomerAccount where ordinaryCustomerAccount.CID='usr_id') as findCredit, contract join safebox
on contract.SID=safebox.SID
where safebox.securityLevel = 'sec_level'
and c1 >= safebox.trustValue;


-- 7
select * from safebox
where CID in not null 
and SID in (select safebox.SID from safebox join contractReport
			 	on safebox.SID = contractReport.SID
			 	where endDate < now() - interval '1 month');
				
-- 8
create table goingToBank (
	CID			bigint not null,
	referDate	Date not null,
	hallNo 		not null,
	safeboxNo	not null,
	primary key (CID, referDate),
	foreign key(CID) references customer(nationalID),
	foreign key(hallNo) references hall(hallNo),
	foreign key(safeboxNo) references safebox(SID)
);


select * from goingToBank 
where CID = 'usr_id';




-- second_part

-- 1

select customer.nationalID, safebox.securityLevel from
customer join safebox on customer.nationalID = safebox.CID
where safebox.CID is not null;

-- 2

select rent from contract
where contract.SID in (select safebox.SID 
from safebox join contract
on safebox.SID = contract.SID
where safebox.securityLevel = 'level')
and rentDuration = 'month';


-- 3
select avg(age) from commercialCustomer
where PID = 'plan_id'
and nationalID in (select commercialCustomer.nationalID from commercialCustomer join safebox
on commercialCustomer.nationalID = safebox.CID
and hallNo = 'room_id');


-- 4

select salary from inchargeEmployee
where nationalID in (select hall.EID from inchargeEmployee join hall 
on hall.EID = inchargeEmployee.nationalID join safebox on safebox.hallNo = hall.hallNo
where safebox.securityLevel > 'from_level'
and safebox.securityLevel < 'to_levell');

-- 5
select * from safebox
where safebox.CID is null
and securityLevel = 'level'
and trustValue <= 'max_price';


-- 6

select cast(max(c1/rent) as int) from (select credit as c1 from commercialCustomerAccount 
where commercialCustomerAccount.CID = 'usr_id'
union
select credit as c1 from ordinaryCustomerAccount where ordinaryCustomerAccount.CID = 'usr_id') 
as findCredit, contract join safebox
on contract.SID=safebox.SID
where safebox.securityLevel = 'sec_level'
and c1 >= safebox.trustValue;	


-- 7

select * from safebox
where CID is not null 
and SID in (select safebox.SID from safebox join contractReport
			 	on safebox.SID = contractReport.SID
			 	where endDate < now() - interval '1 month');

				
-- 8

select * from goingToBank 
where CID = 'usr_id';


-- third_part

-- 1

create view damageCustomer(nationalID, firstname, lastname, SID) as
select commercialCustomer.nationalID, commercialCustomer.firstname, commercialCustomer.lastname, safebox.SID from 
safebox join commercialCustomer on safebox.CID=commercialCustomer.nationalID join damage on safebox.SID=damage.SID
union
select ordinaryCustomer.nationalID, ordinaryCustomer.firstname, ordinaryCustomer.lastname, safebox.SID from 
safebox join ordinaryCustomer on safebox.CID=ordinaryCustomer.nationalID join damage on safebox.SID=damage.SID;

select * from damageCustomer;


-- 2

create index level on safebox(securityLevel);

create index rentDur on contract(rentDuration);


-- 3

CREATE FUNCTION prevent()
  RETURNS trigger AS

$$ BEGIN    
			if (select count(*) from safebox where CID = NEW.CID) > 5 then
			RAISE EXCEPTION 'can not be inserted';
        	END IF;
        RETURN NEW;
END;
	
$$ LANGUAGE plpgsql;

CREATE TRIGGER preventInsert
  BEFORE UPDATE or INSERT 
  ON safebox
  FOR EACH ROW
  EXECUTE PROCEDURE prevent();