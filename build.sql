--DROP TABLE [User]

CREATE TABLE [User] (
    [UserID] int IDENTITY(1,1) PRIMARY KEY,
    [UserType] int  NOT NULL ,
    [FirstName] varchar(50)  NOT NULL ,
    [LastName] varchar(50)  NOT NULL ,
    [Gender] varchar(10)  NOT NULL ,
    [DxID] int  NOT NULL
)

--DROP TABLE [Food]

CREATE TABLE [Food] (
    [FoodID] int IDENTITY(1,1) PRIMARY KEY,
    [Name] varchar(100)  NOT NULL ,
    [Description] varchar(1000)  NOT NULL ,
    [Calories] int  NOT NULL ,
    [Macros] int  NOT NULL ,
)

--DROP TABLE [Body]

CREATE TABLE [Body] (
    [PartID] int IDENTITY(1,1) PRIMARY KEY,
    [PartName] varchar(100)  NOT NULL ,
	[Description] varchar(400)
)


--DROP TABLE [PainType]

CREATE TABLE [PainType] (
    [PainID] int IDENTITY(1,1) PRIMARY KEY,
    [PainType] varchar  NOT NULL ,
)

--DROP TABLE [Pain]

CREATE TABLE [Pain] (
    [Level(1-10)] int IDENTITY(1,1) PRIMARY KEY,
    [LevelDescription] varchar(1000)  NOT NULL ,
)

--DROP TABLE [DiaryEntry]

CREATE TABLE [DiaryEntry] (
    [EntryID] int IDENTITY(1,1) PRIMARY KEY,
    [DateTime] date NOT NULL ,
    [UserID] int NOT NULL ,
    [FoodID] int NULL ,
    [FoodAmt] int NULL ,
    [PartID] int NULL ,
    [PainLevel] int NULL ,
    [PainID] int NULL ,
    [Height] int NULL ,
    [Weight] int NULL ,
	[PerStartDate] varchar(2),
	[PerEndDate] varchar(2),
	[AcitivtyID] int
)

--DROP TABLE [SuppPrescr]

CREATE TABLE [SuppPrescr] (
    [ID] int IDENTITY(1,1) PRIMARY KEY,
    [Name] varchar(1000)  NOT NULL ,
    [Amount] int  NOT NULL ,
    [DxID] int  NOT NULL ,
    [Notes] varchar(1000)  NOT NULL ,
)

--DROP TABLE [Dx]

CREATE TABLE [Dx] (
    [DxID] int IDENTITY(1,1) PRIMARY KEY,
    [Name] varchar(1000)  NOT NULL ,
    [Description] varchar(1000)  NOT NULL ,
    [Dateof] date  NOT NULL ,
    [DrID] int  NOT NULL ,
    [Notes] varchar(1000)  NOT NULL ,
)

--DROP TABLE [Period]

CREATE TABLE [Period] (
    [PeriodID] int IDENTITY(1,1) PRIMARY KEY,
    [StartDate] date  NOT NULL ,
    [EndDate] date  NOT NULL ,
    [Notes] varchar(1000)  NOT NULL ,
)

--DROP TABLE [ActivityLevel]

CREATE TABLE [ActivityLevel] (
	[AcitivtyID] int IDENTITY(1,1) PRIMARY KEY,
	[ActivityType] varchar(100),
	[Description] varchar(1000)  NOT NULL 
)
