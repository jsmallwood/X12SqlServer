﻿CREATE TABLE [dbo].[Segment]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[BatchId] INT NOT NULL,
	[Ordinal] DECIMAL(10,3) NOT NULL,
	[EnvelopeId] INT NULL,
	[IsFooter] BIT NULL,
	[Tag] VARCHAR(3) NOT NULL,
	[E1] VARCHAR(264) NOT NULL,
	[E2] VARCHAR(193) NULL,
	[E3] VARCHAR(256) NULL,
	[E4] VARCHAR(264) NULL,
	[E5] VARCHAR(80) NULL,
	[E6] VARCHAR(256) NULL,
	[E7] VARCHAR(80) NULL,
	[E8] VARCHAR(256) NULL,
	[E9] VARCHAR(80) NULL,
	[E10] VARCHAR(80) NULL,
	[E11] VARCHAR(80) NULL,
	[E12] VARCHAR(264) NULL,
	[E13] VARCHAR(113) NULL,
	[E14] VARCHAR(18) NULL,
	[E15] VARCHAR(35) NULL,
	[E16] VARCHAR(35) NULL,
	[E17] VARCHAR(18) NULL,
	[E18] VARCHAR(18) NULL,
	[E19] VARCHAR(18) NULL,
	[E20] VARCHAR(50) NULL,
	[E21] VARCHAR(50) NULL,
	[E22] VARCHAR(50) NULL,
	[E23] VARCHAR(50) NULL,
	[E24] VARCHAR(18) NULL,
	CONSTRAINT [PK_Segment_Id] PRIMARY KEY CLUSTERED (Id), 
    CONSTRAINT [FK_Segment_Batch] FOREIGN KEY (BatchId) REFERENCES dbo.Batch(Id),
	CONSTRAINT [FK_Segment_Envelope] FOREIGN KEY (EnvelopeId) REFERENCES dbo.Envelope(Id)
)

GO
CREATE INDEX [IX_Segment_BatchId] ON [dbo].[Segment] (BatchId, Tag, E1) INCLUDE (Ordinal, EnvelopeId, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17, E18, E19, E20, E21, E22, E23, E24);

GO
CREATE INDEX [IX_Segment_BatchEnvelope] ON [dbo].[Segment] (BatchId, EnvelopeId) INCLUDE (Ordinal);

