-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [User] (
    [UserID] int  NOT NULL ,
    [UserType] int  NOT NULL ,
    [FirstName] string  NOT NULL ,
    [LastName] string  NOT NULL ,
    [Gender] string  NOT NULL ,
    [DxID] int  NOT NULL ,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED (
        [UserID] ASC
    )
)

CREATE TABLE [Food] (
    [FoodID] int  NOT NULL ,
    [Name] string  NOT NULL ,
    [Description] string  NOT NULL ,
    [Calories] int  NOT NULL ,
    [Macros] int  NOT NULL ,
    CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED (
        [FoodID] ASC
    )
)

CREATE TABLE [Body] (
    [PartID] int  NOT NULL ,
    [PartName] string  NOT NULL ,
    CONSTRAINT [PK_Body] PRIMARY KEY CLUSTERED (
        [PartID] ASC
    )
)

CREATE TABLE [PainType] (
    [PainID] int  NOT NULL ,
    [PainType] string  NOT NULL ,
    CONSTRAINT [PK_PainType] PRIMARY KEY CLUSTERED (
        [PainID] ASC
    )
)

CREATE TABLE [Pain] (
    [Level(1-10)] int  NOT NULL ,
    [LevelDescription] string  NOT NULL ,
    CONSTRAINT [PK_Pain] PRIMARY KEY CLUSTERED (
        [Level(1-10)] ASC
    )
)

CREATE TABLE [DiaryEntry] (
    [EntryID] int  NOT NULL ,
    [DateTime] date  NOT NULL ,
    [UserID] int  NOT NULL ,
    [FoodID] int  NOT NULL ,
    [FoodAmt] int  NOT NULL ,
    [PartID] int  NOT NULL ,
    [PainLevel] int  NOT NULL ,
    [PainID] int  NOT NULL ,
    [Height] int  NOT NULL ,
    [Weight] int  NOT NULL ,
    CONSTRAINT [PK_DiaryEntry] PRIMARY KEY CLUSTERED (
        [EntryID] ASC
    )
)

CREATE TABLE [SuppPrescr] (
    [ID] int  NOT NULL ,
    [Name] string  NOT NULL ,
    [Amount] int  NOT NULL ,
    [DxID] int  NOT NULL ,
    [Notes] string  NOT NULL ,
    CONSTRAINT [PK_SuppPrescr] PRIMARY KEY CLUSTERED (
        [ID] ASC
    )
)

CREATE TABLE [Dx] (
    [DxID] int  NOT NULL ,
    [Name] string  NOT NULL ,
    [Description] string  NOT NULL ,
    [Dateof] date  NOT NULL ,
    [DrID] int  NOT NULL ,
    [Notes] string  NOT NULL ,
    CONSTRAINT [PK_Dx] PRIMARY KEY CLUSTERED (
        [DxID] ASC
    )
)

CREATE TABLE [Period] (
    [PreiodID] int  NOT NULL ,
    [StartDate] date  NOT NULL ,
    [EndDate] date  NOT NULL ,
    [Notes] string  NOT NULL ,
    CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED (
        [PreiodID] ASC
    )
)

ALTER TABLE [User] WITH CHECK ADD CONSTRAINT [FK_User_UserID] FOREIGN KEY([UserID])
REFERENCES [DiaryEntry] ([UserID])

ALTER TABLE [User] CHECK CONSTRAINT [FK_User_UserID]

ALTER TABLE [Food] WITH CHECK ADD CONSTRAINT [FK_Food_FoodID] FOREIGN KEY([FoodID])
REFERENCES [DiaryEntry] ([FoodID])

ALTER TABLE [Food] CHECK CONSTRAINT [FK_Food_FoodID]

ALTER TABLE [Body] WITH CHECK ADD CONSTRAINT [FK_Body_PartID] FOREIGN KEY([PartID])
REFERENCES [DiaryEntry] ([PartID])

ALTER TABLE [Body] CHECK CONSTRAINT [FK_Body_PartID]

ALTER TABLE [PainType] WITH CHECK ADD CONSTRAINT [FK_PainType_PainID] FOREIGN KEY([PainID])
REFERENCES [DiaryEntry] ([PainID])

ALTER TABLE [PainType] CHECK CONSTRAINT [FK_PainType_PainID]

ALTER TABLE [Pain] WITH CHECK ADD CONSTRAINT [FK_Pain_Level(1-10)] FOREIGN KEY([Level(1-10)])
REFERENCES [DiaryEntry] ([PainLevel])

ALTER TABLE [Pain] CHECK CONSTRAINT [FK_Pain_Level(1-10)]

ALTER TABLE [SuppPrescr] WITH CHECK ADD CONSTRAINT [FK_SuppPrescr_DxID] FOREIGN KEY([DxID])
REFERENCES [Dx] ([DxID])

ALTER TABLE [SuppPrescr] CHECK CONSTRAINT [FK_SuppPrescr_DxID]

ALTER TABLE [Dx] WITH CHECK ADD CONSTRAINT [FK_Dx_DxID] FOREIGN KEY([DxID])
REFERENCES [User] ([DxID])

ALTER TABLE [Dx] CHECK CONSTRAINT [FK_Dx_DxID]

COMMIT TRANSACTION QUICKDBD