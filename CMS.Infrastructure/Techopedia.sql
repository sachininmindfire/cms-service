
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/09/2020 23:40:07
-- Generated from EDMX file: D:\data_drive\Data\Mindfire Projects\Techopedia\trunk\Source\Tech.DB\Techopedia.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Techopedia];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Content_Image]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content] DROP CONSTRAINT [FK_Content_Image];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Address_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Address] DROP CONSTRAINT [FK_t_Address_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Article_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Article] DROP CONSTRAINT [FK_t_Article_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Article_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Article] DROP CONSTRAINT [FK_t_Article_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Assoc_Image]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ImageTagAssociation] DROP CONSTRAINT [FK_t_Assoc_Image];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Assoc_ImageTag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ImageTagAssociation] DROP CONSTRAINT [FK_t_Assoc_ImageTag];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_RelatedLink_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content_RelatedLink] DROP CONSTRAINT [FK_t_Content_RelatedLink_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_RelatedLink_t_Link]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content_RelatedLink] DROP CONSTRAINT [FK_t_Content_RelatedLink_t_Link];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_RelatedTerm_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content_RelatedTerm] DROP CONSTRAINT [FK_t_Content_RelatedTerm_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_t_ContentType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content] DROP CONSTRAINT [FK_t_Content_t_ContentType];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_t_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content] DROP CONSTRAINT [FK_t_Content_t_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_t_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content] DROP CONSTRAINT [FK_t_Content_t_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content] DROP CONSTRAINT [FK_t_Content_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_t_UserLocked]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content] DROP CONSTRAINT [FK_t_Content_t_UserLocked];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_Tag_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content_Tag] DROP CONSTRAINT [FK_t_Content_Tag_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_Tag_t_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Content_Tag] DROP CONSTRAINT [FK_t_Content_Tag_t_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_t_ContentRevision_t_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ContentRevision] DROP CONSTRAINT [FK_t_ContentRevision_t_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_t_ContentRevision_t_Term]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ContentRevision] DROP CONSTRAINT [FK_t_ContentRevision_t_Term];
GO
IF OBJECT_ID(N'[dbo].[FK_t_ContentRevisionDetail_t_ContentRevision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ContentRevisionDetail] DROP CONSTRAINT [FK_t_ContentRevisionDetail_t_ContentRevision];
GO
IF OBJECT_ID(N'[dbo].[FK_t_ContentRevisionFeedback_t_ContentRevision]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ContentRevisionFeedback] DROP CONSTRAINT [FK_t_ContentRevisionFeedback_t_ContentRevision];
GO
IF OBJECT_ID(N'[dbo].[FK_t_HelpPage_t_HelpPage_EditedBy]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_HelpPage] DROP CONSTRAINT [FK_t_HelpPage_t_HelpPage_EditedBy];
GO
IF OBJECT_ID(N'[dbo].[FK_t_HelpPage_t_HelpPage_Hierarchy]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_HelpPage] DROP CONSTRAINT [FK_t_HelpPage_t_HelpPage_Hierarchy];
GO
IF OBJECT_ID(N'[dbo].[FK_t_HelpPage_t_User_CreatedBy]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_HelpPage] DROP CONSTRAINT [FK_t_HelpPage_t_User_CreatedBy];
GO
IF OBJECT_ID(N'[dbo].[FK_t_HomePage_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_HomePage] DROP CONSTRAINT [FK_t_HomePage_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Link_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Link] DROP CONSTRAINT [FK_t_Link_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Permission_t_ContentStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Permission] DROP CONSTRAINT [FK_t_Permission_t_ContentStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Permission_t_ContentType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Permission] DROP CONSTRAINT [FK_t_Permission_t_ContentType];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Permission_t_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Permission] DROP CONSTRAINT [FK_t_Permission_t_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Plagiarism_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Plagiarism] DROP CONSTRAINT [FK_t_Plagiarism_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Plagiarism_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Plagiarism] DROP CONSTRAINT [FK_t_Plagiarism_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_PlagiarismDetail_t_Plagiarism]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_PlagiarismDetail] DROP CONSTRAINT [FK_t_PlagiarismDetail_t_Plagiarism];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Profile_t_User1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Profile] DROP CONSTRAINT [FK_t_Profile_t_User1];
GO
IF OBJECT_ID(N'[dbo].[FK_t_ProfileSerial_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ProfileSerial] DROP CONSTRAINT [FK_t_ProfileSerial_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Question_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Question] DROP CONSTRAINT [FK_t_Question_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Question_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Question] DROP CONSTRAINT [FK_t_Question_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Quote_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Quote] DROP CONSTRAINT [FK_t_Quote_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Role_t_Applications]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Role] DROP CONSTRAINT [FK_t_Role_t_Applications];
GO
IF OBJECT_ID(N'[dbo].[FK_t_SearchTypeLog_t_ContentType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_SearchTypeLog] DROP CONSTRAINT [FK_t_SearchTypeLog_t_ContentType];
GO
IF OBJECT_ID(N'[dbo].[FK_t_SearchTypeLog_t_SearchLog]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_SearchTypeLog] DROP CONSTRAINT [FK_t_SearchTypeLog_t_SearchLog];
GO
IF OBJECT_ID(N'[dbo].[FK_t_StyleGuide_t_StyleErrors]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_StyleErrors] DROP CONSTRAINT [FK_t_StyleGuide_t_StyleErrors];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Tag_RelatedTag_t_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_TagRelatedTag] DROP CONSTRAINT [FK_t_Tag_RelatedTag_t_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Tag_RelatedTag_t_Tag1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_TagRelatedTag] DROP CONSTRAINT [FK_t_Tag_RelatedTag_t_Tag1];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Term_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Term] DROP CONSTRAINT [FK_t_Term_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_TermOfDay_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_TermOfDay] DROP CONSTRAINT [FK_t_TermOfDay_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Tutorial_t_Content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Tutorial] DROP CONSTRAINT [FK_t_Tutorial_t_Content];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Tutorial_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_Tutorial] DROP CONSTRAINT [FK_t_Tutorial_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_TutorialDetails_t_Tutorial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_TutorialDetails] DROP CONSTRAINT [FK_t_TutorialDetails_t_Tutorial];
GO
IF OBJECT_ID(N'[dbo].[FK_t_User_t_Applications]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_User] DROP CONSTRAINT [FK_t_User_t_Applications];
GO
IF OBJECT_ID(N'[dbo].[FK_t_User_Tag_t_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_User_Tag] DROP CONSTRAINT [FK_t_User_Tag_t_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_t_User_Tag_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_User_Tag] DROP CONSTRAINT [FK_t_User_Tag_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_UserRole_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_UsersInRole] DROP CONSTRAINT [FK_t_UserRole_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_t_UsersInRole_t_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_UsersInRole] DROP CONSTRAINT [FK_t_UsersInRole_t_User];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Content_t_ViewDetails_FK1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_ViewDetails] DROP CONSTRAINT [FK_t_Content_t_ViewDetails_FK1];
GO
IF OBJECT_ID(N'[dbo].[FK_t_Tag_t_TagSynonym_FK1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[t_TagSynonym] DROP CONSTRAINT [FK_t_Tag_t_TagSynonym_FK1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[t_AcronymTriGrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_AcronymTriGrams];
GO
IF OBJECT_ID(N'[dbo].[t_Address]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Address];
GO
IF OBJECT_ID(N'[dbo].[t_Application]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Application];
GO
IF OBJECT_ID(N'[dbo].[t_Article]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Article];
GO
IF OBJECT_ID(N'[dbo].[t_Content]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Content];
GO
IF OBJECT_ID(N'[dbo].[t_Content_RelatedLink]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Content_RelatedLink];
GO
IF OBJECT_ID(N'[dbo].[t_Content_RelatedTerm]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Content_RelatedTerm];
GO
IF OBJECT_ID(N'[dbo].[t_Content_Tag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Content_Tag];
GO
IF OBJECT_ID(N'[dbo].[t_ContentRevision]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ContentRevision];
GO
IF OBJECT_ID(N'[dbo].[t_ContentRevisionDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ContentRevisionDetail];
GO
IF OBJECT_ID(N'[dbo].[t_ContentRevisionFeedback]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ContentRevisionFeedback];
GO
IF OBJECT_ID(N'[dbo].[t_ContentStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ContentStatus];
GO
IF OBJECT_ID(N'[dbo].[t_ContentTitleTriGrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ContentTitleTriGrams];
GO
IF OBJECT_ID(N'[dbo].[t_ContentType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ContentType];
GO
IF OBJECT_ID(N'[TechopediaModelStoreContainer].[t_CountryCode]', 'U') IS NOT NULL
    DROP TABLE [TechopediaModelStoreContainer].[t_CountryCode];
GO
IF OBJECT_ID(N'[dbo].[t_GeoData]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_GeoData];
GO
IF OBJECT_ID(N'[dbo].[t_HeaderSpiderList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_HeaderSpiderList];
GO
IF OBJECT_ID(N'[dbo].[t_HelpHierarchy]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_HelpHierarchy];
GO
IF OBJECT_ID(N'[dbo].[t_HelpPage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_HelpPage];
GO
IF OBJECT_ID(N'[dbo].[t_HelpPhoto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_HelpPhoto];
GO
IF OBJECT_ID(N'[dbo].[t_HomePage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_HomePage];
GO
IF OBJECT_ID(N'[dbo].[t_Image]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Image];
GO
IF OBJECT_ID(N'[dbo].[t_ImageTagAssociation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ImageTagAssociation];
GO
IF OBJECT_ID(N'[dbo].[t_Link]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Link];
GO
IF OBJECT_ID(N'[dbo].[t_Log]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Log];
GO
IF OBJECT_ID(N'[dbo].[t_Message]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Message];
GO
IF OBJECT_ID(N'[TechopediaModelStoreContainer].[t_MetroCode]', 'U') IS NOT NULL
    DROP TABLE [TechopediaModelStoreContainer].[t_MetroCode];
GO
IF OBJECT_ID(N'[dbo].[t_Permission]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Permission];
GO
IF OBJECT_ID(N'[dbo].[t_Plagiarism]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Plagiarism];
GO
IF OBJECT_ID(N'[dbo].[t_PlagiarismDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_PlagiarismDetail];
GO
IF OBJECT_ID(N'[dbo].[t_Profile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Profile];
GO
IF OBJECT_ID(N'[dbo].[t_ProfileOptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ProfileOptions];
GO
IF OBJECT_ID(N'[dbo].[t_ProfileSerial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ProfileSerial];
GO
IF OBJECT_ID(N'[dbo].[t_Question]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Question];
GO
IF OBJECT_ID(N'[dbo].[t_Quote]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Quote];
GO
IF OBJECT_ID(N'[TechopediaModelStoreContainer].[t_RegionCode]', 'U') IS NOT NULL
    DROP TABLE [TechopediaModelStoreContainer].[t_RegionCode];
GO
IF OBJECT_ID(N'[dbo].[t_Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Role];
GO
IF OBJECT_ID(N'[dbo].[t_SearchLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_SearchLog];
GO
IF OBJECT_ID(N'[dbo].[t_SearchTypeLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_SearchTypeLog];
GO
IF OBJECT_ID(N'[dbo].[t_StyleErrors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_StyleErrors];
GO
IF OBJECT_ID(N'[dbo].[t_StyleGuide]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_StyleGuide];
GO
IF OBJECT_ID(N'[dbo].[t_Tag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Tag];
GO
IF OBJECT_ID(N'[dbo].[t_TagNameTriGrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_TagNameTriGrams];
GO
IF OBJECT_ID(N'[dbo].[t_TagRelatedTag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_TagRelatedTag];
GO
IF OBJECT_ID(N'[dbo].[t_TagSynonym]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_TagSynonym];
GO
IF OBJECT_ID(N'[dbo].[t_Term]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Term];
GO
IF OBJECT_ID(N'[dbo].[t_TermOfDay]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_TermOfDay];
GO
IF OBJECT_ID(N'[dbo].[t_TermSynonym]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_TermSynonym];
GO
IF OBJECT_ID(N'[dbo].[t_Tutorial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Tutorial];
GO
IF OBJECT_ID(N'[dbo].[t_TutorialDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_TutorialDetails];
GO
IF OBJECT_ID(N'[dbo].[t_User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_User];
GO
IF OBJECT_ID(N'[dbo].[t_User_Tag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_User_Tag];
GO
IF OBJECT_ID(N'[dbo].[t_UsersInRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_UsersInRole];
GO
IF OBJECT_ID(N'[dbo].[t_ViewDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_ViewDetails];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Applications'
CREATE TABLE [dbo].[Applications] (
    [ApplicationId] uniqueidentifier  NOT NULL,
    [Description] nvarchar(200)  NULL,
    [Name] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Articles'
CREATE TABLE [dbo].[Articles] (
    [ContentId] int  NOT NULL,
    [Body] varchar(max)  NOT NULL,
    [BodyWordCount] int  NULL,
    [Takeaway] varchar(max)  NULL,
    [Outline] varchar(max)  NULL,
    [OutlineApproved] bit  NULL,
    [User_UserId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Contents'
CREATE TABLE [dbo].[Contents] (
    [ContentId] int IDENTITY(1,1) NOT NULL,
    [Title] varchar(255)  NOT NULL,
    [HtmlTitle] varchar(255)  NOT NULL,
    [MetaDescription] varchar(255)  NOT NULL,
    [MetaKeywords] varchar(255)  NOT NULL,
    [Url] varchar(255)  NOT NULL,
    [Cost] decimal(18,0)  NULL,
    [Sources] varchar(max)  NULL,
    [ChangeFreq] nvarchar(50)  NULL,
    [PublicSitemap] bit  NOT NULL,
    [StatusChangeDate] datetime  NULL,
    [RevisitDate] datetime  NULL,
    [PublishedDate] datetime  NULL,
    [LastEditDate] datetime  NULL,
    [PrimaryTag] int  NULL,
    [Priority] int  NOT NULL,
    [FlagForReview] bit  NULL,
    [SecondaryTag] int  NULL,
    [HTMLTitleOverride] bit  NULL,
    [LockedDate] datetime  NULL,
    [ImageId] bigint  NULL,
    [ContentType_ContentTypeId] int  NOT NULL,
    [ContentStatus_ContentStatusId] int  NOT NULL,
    [UserAssignedTo_UserId] uniqueidentifier  NULL,
    [UserLockedBy_UserId] uniqueidentifier  NULL
);
GO

-- Creating table 'ContentRevisions'
CREATE TABLE [dbo].[ContentRevisions] (
    [TermRevisionId] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Duration] time  NOT NULL,
    [Note] varchar(max)  NOT NULL,
    [Rate] decimal(18,2)  NOT NULL,
    [EditedBy] nvarchar(200)  NOT NULL,
    [RevisionCost] decimal(18,2)  NOT NULL,
    [Rating] int  NULL,
    [NoteHighlight] bit  NULL,
    [AssignedTo] nvarchar(200)  NULL,
    [ContentStatusIdPrevious] int  NULL,
    [Content_ContentId] int  NOT NULL,
    [Status_ContentStatusId] int  NOT NULL
);
GO

-- Creating table 'ContentRevisionDetails'
CREATE TABLE [dbo].[ContentRevisionDetails] (
    [TermRevisionId] int  NOT NULL,
    [FieldName] varchar(50)  NOT NULL,
    [Type] varchar(20)  NOT NULL,
    [OldValue] varchar(max)  NULL,
    [NewValue] varchar(max)  NULL
);
GO

-- Creating table 'ContentStatus'
CREATE TABLE [dbo].[ContentStatus] (
    [ContentStatusId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL,
    [Order] int  NOT NULL
);
GO

-- Creating table 'ContentTypes'
CREATE TABLE [dbo].[ContentTypes] (
    [ContentTypeId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(20)  NOT NULL
);
GO

-- Creating table 'Links'
CREATE TABLE [dbo].[Links] (
    [LinkId] int IDENTITY(1,1) NOT NULL,
    [LinkUrl] varchar(4000)  NOT NULL,
    [Title] varchar(255)  NOT NULL,
    [Description] varchar(255)  NULL,
    [LinkTypeId] int  NOT NULL,
    [ContentId] int  NULL
);
GO

-- Creating table 'Permissions'
CREATE TABLE [dbo].[Permissions] (
    [RoleId] uniqueidentifier  NOT NULL,
    [ContentTypeId] int  NOT NULL,
    [Create] bit  NOT NULL,
    [View] bit  NOT NULL,
    [Edit] bit  NOT NULL,
    [Delete] bit  NOT NULL,
    [ContentStatusId] int  NOT NULL
);
GO

-- Creating table 'Plagiarisms'
CREATE TABLE [dbo].[Plagiarisms] (
    [PlagiarismId] int IDENTITY(1,1) NOT NULL,
    [Vendor] varchar(255)  NOT NULL,
    [VendorResponse] varchar(255)  NOT NULL,
    [RequiresReview] bit  NOT NULL,
    [PlagiarismCheckDate] datetime  NOT NULL,
    [RunByUserId] uniqueidentifier  NULL,
    [LastEditedBy] nvarchar(200)  NULL,
    [HighestMatch] decimal(18,2)  NOT NULL,
    [ResultCount] int  NOT NULL,
    [HasBeenReviewed] bit  NOT NULL,
    [Content_ContentId] int  NOT NULL
);
GO

-- Creating table 'Profiles'
CREATE TABLE [dbo].[Profiles] (
    [UserId] uniqueidentifier  NOT NULL,
    [FirstName] nvarchar(50)  NULL,
    [LastName] nvarchar(50)  NULL,
    [LastUpdatedDate] datetime  NOT NULL,
    [Culture] nvarchar(5)  NULL,
    [Activated] int  NULL,
    [IsEmailOff] bit  NULL,
    [ShortBio] nvarchar(max)  NULL,
    [LongBio] nvarchar(max)  NULL,
    [AuthorUrl] varchar(4000)  NULL,
    [AuthorRate] decimal(18,2)  NULL,
    [IsHelpOn] bit  NULL,
    [EmployerName] nvarchar(255)  NULL,
    [EmployerNoEmployees] int  NULL,
    [JobFunction] nvarchar(50)  NULL,
    [JobCategory] int  NULL,
    [YearOfBirth] int  NULL,
    [FacebookUsername] nvarchar(50)  NULL,
    [TwitterUsername] nvarchar(50)  NULL,
    [LinkedUsername] nvarchar(50)  NULL,
    [RemoteIp] char(39)  NULL,
    [ClosestCity] nvarchar(50)  NULL,
    [ClosestRegion] nvarchar(50)  NULL,
    [ClosestCountryCode] char(2)  NULL,
    [ClosestZipCode] nchar(15)  NULL,
    [Migrated] bit  NULL,
    [CmsAccess] bit  NULL,
    [Comments] bit  NULL,
    [Industry] nvarchar(100)  NULL,
    [RememberMe] bit  NULL,
    [SocialTwitter] varchar(4000)  NULL,
    [SocialFacebook] varchar(4000)  NULL,
    [SocialLinkedIn] varchar(4000)  NULL,
    [SocialGooglePlus] varchar(4000)  NULL,
    [ProfileImage] varbinary(max)  NULL,
    [Newsletter] bit  NULL,
    [Tod] bit  NULL,
    [ContributorUrl] varchar(2000)  NULL,
    [RatePerTerm] decimal(18,2)  NULL,
    [RatePerArticle] decimal(18,2)  NULL,
    [BestOf] bit  NULL,
    [Gender] varchar(1)  NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleId] uniqueidentifier  NOT NULL,
    [Description] nvarchar(200)  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Application_ApplicationId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Tags'
CREATE TABLE [dbo].[Tags] (
    [TagId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [Approved] bit  NOT NULL,
    [IsCategoryTag] bit  NOT NULL,
    [AddedBy] nvarchar(200)  NOT NULL,
    [FriendlyDisplay] varchar(200)  NULL,
    [IsPrimary] bit  NULL,
    [SecondaryTagId] int  NULL,
    [Description] varchar(max)  NULL
);
GO

-- Creating table 'TagSynonyms'
CREATE TABLE [dbo].[TagSynonyms] (
    [SynonymId] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [IsMisspelling] bit  NOT NULL,
    [Tag_TagId] int  NOT NULL
);
GO

-- Creating table 'Terms'
CREATE TABLE [dbo].[Terms] (
    [ContentId] int  NOT NULL,
    [Definition] varchar(max)  NOT NULL,
    [Explanation] varchar(max)  NOT NULL,
    [Acronym] varchar(max)  NULL,
    [Context] varchar(255)  NULL,
    [DefinitionWordCount] int  NULL,
    [ExplanationWordCount] int  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] uniqueidentifier  NOT NULL,
    [Username] nvarchar(200)  NULL,
    [CreationDate] datetime  NULL,
    [Email] nvarchar(200)  NOT NULL,
    [FailedPasswordAnswerAttemptCount] int  NULL,
    [FailedPasswordAnswerAttemptWindowStart] datetime  NULL,
    [FailedPasswordAttemptCount] int  NULL,
    [FailedPasswordAttemptWindowStart] datetime  NULL,
    [IsAnonymous] bit  NOT NULL,
    [IsApproved] bit  NOT NULL,
    [IsLockedOut] bit  NOT NULL,
    [IsOnline] bit  NULL,
    [LastActivityDate] datetime  NOT NULL,
    [LastLockedOutDate] datetime  NULL,
    [LastLoginDate] datetime  NULL,
    [LastModified] datetime  NULL,
    [LastPasswordChangedDate] datetime  NULL,
    [Name] nvarchar(100)  NULL,
    [Password] nvarchar(100)  NOT NULL,
    [PasswordAnswer] nvarchar(200)  NULL,
    [PasswordFormat] int  NOT NULL,
    [PasswordQuestion] nvarchar(200)  NULL,
    [PasswordSalt] nvarchar(100)  NULL,
    [Comment] nvarchar(200)  NULL,
    [ForcePasswordReset] bit  NULL,
    [PublicId] int IDENTITY(1,1) NOT NULL,
    [Application_ApplicationId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Logs'
CREATE TABLE [dbo].[Logs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Thread] varchar(255)  NOT NULL,
    [Level] varchar(50)  NOT NULL,
    [Logger] varchar(255)  NOT NULL,
    [Message] varchar(max)  NOT NULL,
    [Exception] varchar(max)  NULL,
    [UserAgent] varchar(255)  NULL,
    [IPAddr] varchar(32)  NULL,
    [URL] varchar(4096)  NULL,
    [Referrer] varchar(4096)  NULL,
    [User] varchar(4096)  NULL,
    [ServerName] varchar(256)  NULL,
    [SessionTable] varchar(max)  NULL
);
GO

-- Creating table 'TermSynonyms'
CREATE TABLE [dbo].[TermSynonyms] (
    [TermId] int  NOT NULL,
    [Name] varchar(255)  NOT NULL,
    [IsMisspelling] bit  NOT NULL,
    [SynonymId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ContentRelatedTerms'
CREATE TABLE [dbo].[ContentRelatedTerms] (
    [ContentRelatedTermId] int IDENTITY(1,1) NOT NULL,
    [ContentId] int  NOT NULL,
    [TermId] int  NOT NULL,
    [Order] int  NOT NULL
);
GO

-- Creating table 'ContentRelatedLinks'
CREATE TABLE [dbo].[ContentRelatedLinks] (
    [ContentRelatedLinkId] int IDENTITY(1,1) NOT NULL,
    [ContentId] int  NOT NULL,
    [LinkId] int  NOT NULL,
    [Order] int  NOT NULL
);
GO

-- Creating table 'TermOfDays'
CREATE TABLE [dbo].[TermOfDays] (
    [TodId] int  NOT NULL,
    [PublishedDate] datetime  NOT NULL,
    [ContentId] int  NOT NULL
);
GO

-- Creating table 'SearchLogs'
CREATE TABLE [dbo].[SearchLogs] (
    [SearchLogId] int IDENTITY(1,1) NOT NULL,
    [Query] nvarchar(255)  NULL,
    [Referer] nvarchar(255)  NULL,
    [CreatedById] uniqueidentifier  NULL,
    [AddedDate] datetime  NOT NULL
);
GO

-- Creating table 'SearchTypeLogs'
CREATE TABLE [dbo].[SearchTypeLogs] (
    [SearchLogId] int  NOT NULL,
    [ContentTypeId] int  NOT NULL,
    [NoResults] bit  NOT NULL
);
GO

-- Creating table 'CountryCodes'
CREATE TABLE [dbo].[CountryCodes] (
    [ID] int  NOT NULL,
    [CountryCode] char(2)  NOT NULL,
    [CountryName] varchar(64)  NOT NULL
);
GO

-- Creating table 'GeoDatas'
CREATE TABLE [dbo].[GeoDatas] (
    [GeoID] int  NOT NULL,
    [CountryCode] char(2)  NOT NULL,
    [RegionCode] char(2)  NULL,
    [City] varchar(255)  NULL,
    [PostalCode] varchar(6)  NULL,
    [Latitude] float  NULL,
    [Longitude] float  NULL,
    [MetroCode] int  NOT NULL,
    [AreaCode] int  NOT NULL,
    [Isp] varchar(100)  NULL,
    [Organization] varchar(100)  NULL
);
GO

-- Creating table 'MetroCodes'
CREATE TABLE [dbo].[MetroCodes] (
    [ID] int  NOT NULL,
    [RegionCode] char(2)  NOT NULL,
    [MetroCode] int  NOT NULL,
    [MetroName] nvarchar(60)  NOT NULL
);
GO

-- Creating table 'RegionCodes'
CREATE TABLE [dbo].[RegionCodes] (
    [ID] int  NOT NULL,
    [CountryCode] char(2)  NOT NULL,
    [RegionCode] char(2)  NOT NULL,
    [RegionName] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'ViewDetails'
CREATE TABLE [dbo].[ViewDetails] (
    [ViewDetailsId] int IDENTITY(1,1) NOT NULL,
    [UserId] uniqueidentifier  NOT NULL,
    [ContentId] int  NOT NULL,
    [ActivityDate] datetime  NULL,
    [RemoteIP] varchar(39)  NOT NULL,
    [RequestMethod] nvarchar(4)  NOT NULL,
    [TimeTaken] int  NOT NULL,
    [UserAgent] nvarchar(255)  NULL,
    [Referrer] nvarchar(max)  NULL,
    [Browser] nvarchar(150)  NULL,
    [BrowserName] nvarchar(100)  NULL,
    [BrowserPlatform] nvarchar(40)  NULL,
    [BrowserVersion] nvarchar(40)  NULL,
    [AffiliateId] int  NULL,
    [GeoID] int  NULL
);
GO

-- Creating table 'PlagiarismDetails'
CREATE TABLE [dbo].[PlagiarismDetails] (
    [PlagiarismMatchId] bigint IDENTITY(1,1) NOT NULL,
    [PlagiarismId] int  NOT NULL,
    [SourceUrl] varchar(2084)  NOT NULL,
    [SourceTitle] varchar(255)  NOT NULL,
    [WordsMatching] int  NOT NULL,
    [PercentageMatch] decimal(18,2)  NOT NULL,
    [IsEstimate] bit  NOT NULL,
    [TextSnippet] varchar(max)  NULL,
    [HtmlSnippet] varchar(max)  NULL
);
GO

-- Creating table 'ContentRevisionFeedbacks'
CREATE TABLE [dbo].[ContentRevisionFeedbacks] (
    [TermRevisionId] int  NOT NULL,
    [PoorGrammar] int  NULL,
    [RepeatsInformation] int  NULL,
    [TermNotDefined] int  NULL,
    [NotEnoughExamples] int  NULL,
    [RelevanceNotExplained] int  NULL,
    [UseOfTermNotExplained] int  NULL
);
GO

-- Creating table 'HelpHierarchies'
CREATE TABLE [dbo].[HelpHierarchies] (
    [HelpHierarchyId] int IDENTITY(1,1) NOT NULL,
    [Parent] int  NULL,
    [Children] int  NULL,
    [Name] varchar(255)  NULL,
    [SortOrder] int  NOT NULL
);
GO

-- Creating table 'HelpPages'
CREATE TABLE [dbo].[HelpPages] (
    [HelpContentId] int  NOT NULL,
    [Title] varchar(255)  NULL,
    [Url] varchar(255)  NULL,
    [CreatedBy] uniqueidentifier  NULL,
    [StatusChangeDate] datetime  NULL,
    [EditedBy] uniqueidentifier  NULL,
    [Content] varchar(max)  NULL,
    [NodeOnly] bit  NULL
);
GO

-- Creating table 'HelpPhotoes'
CREATE TABLE [dbo].[HelpPhotoes] (
    [HelpPhotoId] int  NOT NULL,
    [Image] varbinary(max)  NULL,
    [FileName] varchar(255)  NULL
);
GO

-- Creating table 'StyleErrors'
CREATE TABLE [dbo].[StyleErrors] (
    [StyleId] int  NOT NULL,
    [StyleErrorId] int  NOT NULL,
    [StyleErrorItem] varchar(max)  NULL,
    [LastEditDate] datetime  NULL
);
GO

-- Creating table 'StyleGuides'
CREATE TABLE [dbo].[StyleGuides] (
    [StyleId] int IDENTITY(1,1) NOT NULL,
    [StyleItem] varchar(max)  NULL,
    [StyleType] int  NULL,
    [StyleImage] varbinary(max)  NULL,
    [Description] varchar(max)  NULL,
    [LastEditDate] datetime  NULL
);
GO

-- Creating table 'ContentTitleTriGrams'
CREATE TABLE [dbo].[ContentTitleTriGrams] (
    [ContentId] int  NOT NULL,
    [NGramId] int  NOT NULL,
    [NGram] varchar(255)  NOT NULL
);
GO

-- Creating table 'TagNameTriGrams'
CREATE TABLE [dbo].[TagNameTriGrams] (
    [TagId] int  NOT NULL,
    [NGramId] int  NOT NULL,
    [NGram] varchar(100)  NOT NULL
);
GO

-- Creating table 'ProfileOptions'
CREATE TABLE [dbo].[ProfileOptions] (
    [OptionId] uniqueidentifier  NOT NULL,
    [PropertyCategory] nvarchar(max)  NULL,
    [PropertyNames] nvarchar(max)  NULL,
    [PropertyValuesBoolean] bit  NULL,
    [PropertyValuesString] nvarchar(max)  NULL,
    [IsActive] bit  NOT NULL
);
GO

-- Creating table 'ProfileSerials'
CREATE TABLE [dbo].[ProfileSerials] (
    [UserId] uniqueidentifier  NOT NULL,
    [LastUpdatedDate] datetime  NOT NULL,
    [PropertyNames] nvarchar(max)  NULL,
    [PropertyValuesBinary] varbinary(max)  NULL,
    [PropertyValuesString] nvarchar(max)  NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [AddressId] int IDENTITY(1,1) NOT NULL,
    [UserId] uniqueidentifier  NOT NULL,
    [Residence] bit  NOT NULL,
    [Company] nvarchar(50)  NULL,
    [Address1] nvarchar(255)  NULL,
    [Address2] nvarchar(255)  NULL,
    [City] nvarchar(50)  NULL,
    [Province] nvarchar(50)  NULL,
    [PostalCode] nvarchar(15)  NULL,
    [CountryCode] char(2)  NULL,
    [Phone] nvarchar(50)  NULL,
    [Fax] nvarchar(50)  NULL
);
GO

-- Creating table 'Messages'
CREATE TABLE [dbo].[Messages] (
    [MessageId] int IDENTITY(1,1) NOT NULL,
    [MessageText] varchar(200)  NOT NULL,
    [Date] datetime  NOT NULL,
    [EditedBy] nvarchar(200)  NOT NULL,
    [Duration] time  NOT NULL,
    [MessageType] int  NOT NULL,
    [Note] varchar(200)  NULL,
    [ForceClosed] bit  NOT NULL,
    [Roles] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'AcronymTriGrams'
CREATE TABLE [dbo].[AcronymTriGrams] (
    [ContentId] int  NOT NULL,
    [NGramId] int  NOT NULL,
    [NGram] varchar(255)  NOT NULL
);
GO

-- Creating table 'Tutorials'
CREATE TABLE [dbo].[Tutorials] (
    [ContentId] int  NOT NULL,
    [AuthorId] uniqueidentifier  NOT NULL,
    [PdfLink] varchar(max)  NULL
);
GO

-- Creating table 'TutorialDetails'
CREATE TABLE [dbo].[TutorialDetails] (
    [DetailsId] int IDENTITY(1,1) NOT NULL,
    [ContentId] int  NOT NULL,
    [Order] int  NOT NULL,
    [Title] varchar(max)  NOT NULL,
    [HTMLTitle] varchar(max)  NOT NULL,
    [Sources] varchar(max)  NOT NULL,
    [Body] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ImageMetas'
CREATE TABLE [dbo].[ImageMetas] (
    [ImageId] bigint IDENTITY(1,1) NOT NULL,
    [ImageType] smallint  NOT NULL,
    [FileName] varchar(255)  NOT NULL,
    [Subfolder] char(2)  NOT NULL,
    [RelativeUrl] varchar(259)  NOT NULL,
    [UploadDate] datetime  NOT NULL,
    [UploadedBy] nvarchar(200)  NOT NULL,
    [AltText] nvarchar(max)  NOT NULL,
    [Source] nvarchar(max)  NOT NULL,
    [Byline] nvarchar(max)  NOT NULL,
    [NeedsWatermark] bit  NOT NULL
);
GO

-- Creating table 'HomePages'
CREATE TABLE [dbo].[HomePages] (
    [ContentId] int  NOT NULL,
    [Priority] int  NOT NULL
);
GO

-- Creating table 'HeaderSpiderLists'
CREATE TABLE [dbo].[HeaderSpiderLists] (
    [ID] int  NOT NULL,
    [Header] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'TagRelatedTags'
CREATE TABLE [dbo].[TagRelatedTags] (
    [TagRelatedTagId] int IDENTITY(1,1) NOT NULL,
    [RelatedTag_TagId] int  NOT NULL,
    [Tag_TagId] int  NOT NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [ContentId] int  NOT NULL,
    [Question] varchar(max)  NOT NULL,
    [Answer] varchar(max)  NOT NULL,
    [QuestionWordCount] int  NULL,
    [AnswerWordCount] int  NULL,
    [User_UserId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Quotes'
CREATE TABLE [dbo].[Quotes] (
    [ContentId] int  NOT NULL,
    [Quote] varchar(max)  NOT NULL,
    [Source] varchar(max)  NOT NULL,
    [Origin] varchar(max)  NOT NULL,
    [Importance] varchar(max)  NOT NULL
);
GO

-- Creating table 't_Content_Tag'
CREATE TABLE [dbo].[t_Content_Tag] (
    [Content_ContentId] int  NOT NULL,
    [Tags_TagId] int  NOT NULL
);
GO

-- Creating table 't_User_Tag'
CREATE TABLE [dbo].[t_User_Tag] (
    [Tags_TagId] int  NOT NULL,
    [User_UserId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 't_UsersInRole'
CREATE TABLE [dbo].[t_UsersInRole] (
    [Roles_RoleId] uniqueidentifier  NOT NULL,
    [Users_UserId] uniqueidentifier  NOT NULL
);
GO

-- Creating table 't_ImageTagAssociation1'
CREATE TABLE [dbo].[t_ImageTagAssociation1] (
    [t_ImageTagAssociation1_Tag_ImageId] bigint  NOT NULL,
    [Tags_TagId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ApplicationId] in table 'Applications'
ALTER TABLE [dbo].[Applications]
ADD CONSTRAINT [PK_Applications]
    PRIMARY KEY CLUSTERED ([ApplicationId] ASC);
GO

-- Creating primary key on [ContentId] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [PK_Articles]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [ContentId] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [PK_Contents]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [TermRevisionId] in table 'ContentRevisions'
ALTER TABLE [dbo].[ContentRevisions]
ADD CONSTRAINT [PK_ContentRevisions]
    PRIMARY KEY CLUSTERED ([TermRevisionId] ASC);
GO

-- Creating primary key on [TermRevisionId], [FieldName] in table 'ContentRevisionDetails'
ALTER TABLE [dbo].[ContentRevisionDetails]
ADD CONSTRAINT [PK_ContentRevisionDetails]
    PRIMARY KEY CLUSTERED ([TermRevisionId], [FieldName] ASC);
GO

-- Creating primary key on [ContentStatusId] in table 'ContentStatus'
ALTER TABLE [dbo].[ContentStatus]
ADD CONSTRAINT [PK_ContentStatus]
    PRIMARY KEY CLUSTERED ([ContentStatusId] ASC);
GO

-- Creating primary key on [ContentTypeId] in table 'ContentTypes'
ALTER TABLE [dbo].[ContentTypes]
ADD CONSTRAINT [PK_ContentTypes]
    PRIMARY KEY CLUSTERED ([ContentTypeId] ASC);
GO

-- Creating primary key on [LinkId] in table 'Links'
ALTER TABLE [dbo].[Links]
ADD CONSTRAINT [PK_Links]
    PRIMARY KEY CLUSTERED ([LinkId] ASC);
GO

-- Creating primary key on [RoleId], [ContentTypeId], [ContentStatusId] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [PK_Permissions]
    PRIMARY KEY CLUSTERED ([RoleId], [ContentTypeId], [ContentStatusId] ASC);
GO

-- Creating primary key on [PlagiarismId] in table 'Plagiarisms'
ALTER TABLE [dbo].[Plagiarisms]
ADD CONSTRAINT [PK_Plagiarisms]
    PRIMARY KEY CLUSTERED ([PlagiarismId] ASC);
GO

-- Creating primary key on [UserId] in table 'Profiles'
ALTER TABLE [dbo].[Profiles]
ADD CONSTRAINT [PK_Profiles]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [RoleId] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [TagId] in table 'Tags'
ALTER TABLE [dbo].[Tags]
ADD CONSTRAINT [PK_Tags]
    PRIMARY KEY CLUSTERED ([TagId] ASC);
GO

-- Creating primary key on [SynonymId] in table 'TagSynonyms'
ALTER TABLE [dbo].[TagSynonyms]
ADD CONSTRAINT [PK_TagSynonyms]
    PRIMARY KEY CLUSTERED ([SynonymId] ASC);
GO

-- Creating primary key on [ContentId] in table 'Terms'
ALTER TABLE [dbo].[Terms]
ADD CONSTRAINT [PK_Terms]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [Id] in table 'Logs'
ALTER TABLE [dbo].[Logs]
ADD CONSTRAINT [PK_Logs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [SynonymId] in table 'TermSynonyms'
ALTER TABLE [dbo].[TermSynonyms]
ADD CONSTRAINT [PK_TermSynonyms]
    PRIMARY KEY CLUSTERED ([SynonymId] ASC);
GO

-- Creating primary key on [ContentRelatedTermId] in table 'ContentRelatedTerms'
ALTER TABLE [dbo].[ContentRelatedTerms]
ADD CONSTRAINT [PK_ContentRelatedTerms]
    PRIMARY KEY CLUSTERED ([ContentRelatedTermId] ASC);
GO

-- Creating primary key on [ContentRelatedLinkId] in table 'ContentRelatedLinks'
ALTER TABLE [dbo].[ContentRelatedLinks]
ADD CONSTRAINT [PK_ContentRelatedLinks]
    PRIMARY KEY CLUSTERED ([ContentRelatedLinkId] ASC);
GO

-- Creating primary key on [TodId] in table 'TermOfDays'
ALTER TABLE [dbo].[TermOfDays]
ADD CONSTRAINT [PK_TermOfDays]
    PRIMARY KEY CLUSTERED ([TodId] ASC);
GO

-- Creating primary key on [SearchLogId] in table 'SearchLogs'
ALTER TABLE [dbo].[SearchLogs]
ADD CONSTRAINT [PK_SearchLogs]
    PRIMARY KEY CLUSTERED ([SearchLogId] ASC);
GO

-- Creating primary key on [SearchLogId], [ContentTypeId] in table 'SearchTypeLogs'
ALTER TABLE [dbo].[SearchTypeLogs]
ADD CONSTRAINT [PK_SearchTypeLogs]
    PRIMARY KEY CLUSTERED ([SearchLogId], [ContentTypeId] ASC);
GO

-- Creating primary key on [ID] in table 'CountryCodes'
ALTER TABLE [dbo].[CountryCodes]
ADD CONSTRAINT [PK_CountryCodes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [GeoID] in table 'GeoDatas'
ALTER TABLE [dbo].[GeoDatas]
ADD CONSTRAINT [PK_GeoDatas]
    PRIMARY KEY CLUSTERED ([GeoID] ASC);
GO

-- Creating primary key on [ID] in table 'MetroCodes'
ALTER TABLE [dbo].[MetroCodes]
ADD CONSTRAINT [PK_MetroCodes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'RegionCodes'
ALTER TABLE [dbo].[RegionCodes]
ADD CONSTRAINT [PK_RegionCodes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ViewDetailsId] in table 'ViewDetails'
ALTER TABLE [dbo].[ViewDetails]
ADD CONSTRAINT [PK_ViewDetails]
    PRIMARY KEY CLUSTERED ([ViewDetailsId] ASC);
GO

-- Creating primary key on [PlagiarismMatchId] in table 'PlagiarismDetails'
ALTER TABLE [dbo].[PlagiarismDetails]
ADD CONSTRAINT [PK_PlagiarismDetails]
    PRIMARY KEY CLUSTERED ([PlagiarismMatchId] ASC);
GO

-- Creating primary key on [TermRevisionId] in table 'ContentRevisionFeedbacks'
ALTER TABLE [dbo].[ContentRevisionFeedbacks]
ADD CONSTRAINT [PK_ContentRevisionFeedbacks]
    PRIMARY KEY CLUSTERED ([TermRevisionId] ASC);
GO

-- Creating primary key on [HelpHierarchyId] in table 'HelpHierarchies'
ALTER TABLE [dbo].[HelpHierarchies]
ADD CONSTRAINT [PK_HelpHierarchies]
    PRIMARY KEY CLUSTERED ([HelpHierarchyId] ASC);
GO

-- Creating primary key on [HelpContentId] in table 'HelpPages'
ALTER TABLE [dbo].[HelpPages]
ADD CONSTRAINT [PK_HelpPages]
    PRIMARY KEY CLUSTERED ([HelpContentId] ASC);
GO

-- Creating primary key on [HelpPhotoId] in table 'HelpPhotoes'
ALTER TABLE [dbo].[HelpPhotoes]
ADD CONSTRAINT [PK_HelpPhotoes]
    PRIMARY KEY CLUSTERED ([HelpPhotoId] ASC);
GO

-- Creating primary key on [StyleErrorId] in table 'StyleErrors'
ALTER TABLE [dbo].[StyleErrors]
ADD CONSTRAINT [PK_StyleErrors]
    PRIMARY KEY CLUSTERED ([StyleErrorId] ASC);
GO

-- Creating primary key on [StyleId] in table 'StyleGuides'
ALTER TABLE [dbo].[StyleGuides]
ADD CONSTRAINT [PK_StyleGuides]
    PRIMARY KEY CLUSTERED ([StyleId] ASC);
GO

-- Creating primary key on [ContentId], [NGramId] in table 'ContentTitleTriGrams'
ALTER TABLE [dbo].[ContentTitleTriGrams]
ADD CONSTRAINT [PK_ContentTitleTriGrams]
    PRIMARY KEY CLUSTERED ([ContentId], [NGramId] ASC);
GO

-- Creating primary key on [TagId], [NGramId] in table 'TagNameTriGrams'
ALTER TABLE [dbo].[TagNameTriGrams]
ADD CONSTRAINT [PK_TagNameTriGrams]
    PRIMARY KEY CLUSTERED ([TagId], [NGramId] ASC);
GO

-- Creating primary key on [OptionId] in table 'ProfileOptions'
ALTER TABLE [dbo].[ProfileOptions]
ADD CONSTRAINT [PK_ProfileOptions]
    PRIMARY KEY CLUSTERED ([OptionId] ASC);
GO

-- Creating primary key on [UserId] in table 'ProfileSerials'
ALTER TABLE [dbo].[ProfileSerials]
ADD CONSTRAINT [PK_ProfileSerials]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [UserId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [MessageId] in table 'Messages'
ALTER TABLE [dbo].[Messages]
ADD CONSTRAINT [PK_Messages]
    PRIMARY KEY CLUSTERED ([MessageId] ASC);
GO

-- Creating primary key on [ContentId], [NGramId] in table 'AcronymTriGrams'
ALTER TABLE [dbo].[AcronymTriGrams]
ADD CONSTRAINT [PK_AcronymTriGrams]
    PRIMARY KEY CLUSTERED ([ContentId], [NGramId] ASC);
GO

-- Creating primary key on [ContentId] in table 'Tutorials'
ALTER TABLE [dbo].[Tutorials]
ADD CONSTRAINT [PK_Tutorials]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [DetailsId] in table 'TutorialDetails'
ALTER TABLE [dbo].[TutorialDetails]
ADD CONSTRAINT [PK_TutorialDetails]
    PRIMARY KEY CLUSTERED ([DetailsId] ASC);
GO

-- Creating primary key on [ImageId] in table 'ImageMetas'
ALTER TABLE [dbo].[ImageMetas]
ADD CONSTRAINT [PK_ImageMetas]
    PRIMARY KEY CLUSTERED ([ImageId] ASC);
GO

-- Creating primary key on [ContentId] in table 'HomePages'
ALTER TABLE [dbo].[HomePages]
ADD CONSTRAINT [PK_HomePages]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [ID] in table 'HeaderSpiderLists'
ALTER TABLE [dbo].[HeaderSpiderLists]
ADD CONSTRAINT [PK_HeaderSpiderLists]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [TagRelatedTagId] in table 'TagRelatedTags'
ALTER TABLE [dbo].[TagRelatedTags]
ADD CONSTRAINT [PK_TagRelatedTags]
    PRIMARY KEY CLUSTERED ([TagRelatedTagId] ASC);
GO

-- Creating primary key on [ContentId] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [ContentId] in table 'Quotes'
ALTER TABLE [dbo].[Quotes]
ADD CONSTRAINT [PK_Quotes]
    PRIMARY KEY CLUSTERED ([ContentId] ASC);
GO

-- Creating primary key on [Content_ContentId], [Tags_TagId] in table 't_Content_Tag'
ALTER TABLE [dbo].[t_Content_Tag]
ADD CONSTRAINT [PK_t_Content_Tag]
    PRIMARY KEY CLUSTERED ([Content_ContentId], [Tags_TagId] ASC);
GO

-- Creating primary key on [Tags_TagId], [User_UserId] in table 't_User_Tag'
ALTER TABLE [dbo].[t_User_Tag]
ADD CONSTRAINT [PK_t_User_Tag]
    PRIMARY KEY CLUSTERED ([Tags_TagId], [User_UserId] ASC);
GO

-- Creating primary key on [Roles_RoleId], [Users_UserId] in table 't_UsersInRole'
ALTER TABLE [dbo].[t_UsersInRole]
ADD CONSTRAINT [PK_t_UsersInRole]
    PRIMARY KEY CLUSTERED ([Roles_RoleId], [Users_UserId] ASC);
GO

-- Creating primary key on [t_ImageTagAssociation1_Tag_ImageId], [Tags_TagId] in table 't_ImageTagAssociation1'
ALTER TABLE [dbo].[t_ImageTagAssociation1]
ADD CONSTRAINT [PK_t_ImageTagAssociation1]
    PRIMARY KEY CLUSTERED ([t_ImageTagAssociation1_Tag_ImageId], [Tags_TagId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Application_ApplicationId] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [FK_t_Role_t_Applications]
    FOREIGN KEY ([Application_ApplicationId])
    REFERENCES [dbo].[Applications]
        ([ApplicationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Role_t_Applications'
CREATE INDEX [IX_FK_t_Role_t_Applications]
ON [dbo].[Roles]
    ([Application_ApplicationId]);
GO

-- Creating foreign key on [Application_ApplicationId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_t_User_t_Applications]
    FOREIGN KEY ([Application_ApplicationId])
    REFERENCES [dbo].[Applications]
        ([ApplicationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_User_t_Applications'
CREATE INDEX [IX_FK_t_User_t_Applications]
ON [dbo].[Users]
    ([Application_ApplicationId]);
GO

-- Creating foreign key on [ContentId] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [FK_t_Article_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [User_UserId] in table 'Articles'
ALTER TABLE [dbo].[Articles]
ADD CONSTRAINT [FK_t_Article_t_User]
    FOREIGN KEY ([User_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Article_t_User'
CREATE INDEX [IX_FK_t_Article_t_User]
ON [dbo].[Articles]
    ([User_UserId]);
GO

-- Creating foreign key on [ContentType_ContentTypeId] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_t_Content_t_ContentType]
    FOREIGN KEY ([ContentType_ContentTypeId])
    REFERENCES [dbo].[ContentTypes]
        ([ContentTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_t_ContentType'
CREATE INDEX [IX_FK_t_Content_t_ContentType]
ON [dbo].[Contents]
    ([ContentType_ContentTypeId]);
GO

-- Creating foreign key on [ContentStatus_ContentStatusId] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_t_Content_t_Status]
    FOREIGN KEY ([ContentStatus_ContentStatusId])
    REFERENCES [dbo].[ContentStatus]
        ([ContentStatusId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_t_Status'
CREATE INDEX [IX_FK_t_Content_t_Status]
ON [dbo].[Contents]
    ([ContentStatus_ContentStatusId]);
GO

-- Creating foreign key on [UserAssignedTo_UserId] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_t_Content_t_User]
    FOREIGN KEY ([UserAssignedTo_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_t_User'
CREATE INDEX [IX_FK_t_Content_t_User]
ON [dbo].[Contents]
    ([UserAssignedTo_UserId]);
GO

-- Creating foreign key on [UserLockedBy_UserId] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_t_Content_t_UserLocked]
    FOREIGN KEY ([UserLockedBy_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_t_UserLocked'
CREATE INDEX [IX_FK_t_Content_t_UserLocked]
ON [dbo].[Contents]
    ([UserLockedBy_UserId]);
GO

-- Creating foreign key on [Content_ContentId] in table 'ContentRevisions'
ALTER TABLE [dbo].[ContentRevisions]
ADD CONSTRAINT [FK_t_ContentRevision_t_Term]
    FOREIGN KEY ([Content_ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_ContentRevision_t_Term'
CREATE INDEX [IX_FK_t_ContentRevision_t_Term]
ON [dbo].[ContentRevisions]
    ([Content_ContentId]);
GO

-- Creating foreign key on [Content_ContentId] in table 'Plagiarisms'
ALTER TABLE [dbo].[Plagiarisms]
ADD CONSTRAINT [FK_t_Plagiarism_t_Content]
    FOREIGN KEY ([Content_ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Plagiarism_t_Content'
CREATE INDEX [IX_FK_t_Plagiarism_t_Content]
ON [dbo].[Plagiarisms]
    ([Content_ContentId]);
GO

-- Creating foreign key on [ContentId] in table 'Terms'
ALTER TABLE [dbo].[Terms]
ADD CONSTRAINT [FK_t_Term_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Status_ContentStatusId] in table 'ContentRevisions'
ALTER TABLE [dbo].[ContentRevisions]
ADD CONSTRAINT [FK_t_ContentRevision_t_Status]
    FOREIGN KEY ([Status_ContentStatusId])
    REFERENCES [dbo].[ContentStatus]
        ([ContentStatusId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_ContentRevision_t_Status'
CREATE INDEX [IX_FK_t_ContentRevision_t_Status]
ON [dbo].[ContentRevisions]
    ([Status_ContentStatusId]);
GO

-- Creating foreign key on [TermRevisionId] in table 'ContentRevisionDetails'
ALTER TABLE [dbo].[ContentRevisionDetails]
ADD CONSTRAINT [FK_t_ContentRevisionDetail_t_ContentRevision]
    FOREIGN KEY ([TermRevisionId])
    REFERENCES [dbo].[ContentRevisions]
        ([TermRevisionId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ContentTypeId] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [FK_t_Permission_t_ContentType]
    FOREIGN KEY ([ContentTypeId])
    REFERENCES [dbo].[ContentTypes]
        ([ContentTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Permission_t_ContentType'
CREATE INDEX [IX_FK_t_Permission_t_ContentType]
ON [dbo].[Permissions]
    ([ContentTypeId]);
GO

-- Creating foreign key on [RoleId] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [FK_t_Permission_t_Role]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Roles]
        ([RoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Profiles'
ALTER TABLE [dbo].[Profiles]
ADD CONSTRAINT [FK_t_Profile_t_User1]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tag_TagId] in table 'TagSynonyms'
ALTER TABLE [dbo].[TagSynonyms]
ADD CONSTRAINT [FK_t_Tag_t_TagSynonym_FK1]
    FOREIGN KEY ([Tag_TagId])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Tag_t_TagSynonym_FK1'
CREATE INDEX [IX_FK_t_Tag_t_TagSynonym_FK1]
ON [dbo].[TagSynonyms]
    ([Tag_TagId]);
GO

-- Creating foreign key on [Content_ContentId] in table 't_Content_Tag'
ALTER TABLE [dbo].[t_Content_Tag]
ADD CONSTRAINT [FK_t_Content_Tag_t_Content]
    FOREIGN KEY ([Content_ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tags_TagId] in table 't_Content_Tag'
ALTER TABLE [dbo].[t_Content_Tag]
ADD CONSTRAINT [FK_t_Content_Tag_t_Tag]
    FOREIGN KEY ([Tags_TagId])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_Tag_t_Tag'
CREATE INDEX [IX_FK_t_Content_Tag_t_Tag]
ON [dbo].[t_Content_Tag]
    ([Tags_TagId]);
GO

-- Creating foreign key on [Tags_TagId] in table 't_User_Tag'
ALTER TABLE [dbo].[t_User_Tag]
ADD CONSTRAINT [FK_t_User_Tag_t_Tag]
    FOREIGN KEY ([Tags_TagId])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [User_UserId] in table 't_User_Tag'
ALTER TABLE [dbo].[t_User_Tag]
ADD CONSTRAINT [FK_t_User_Tag_t_User]
    FOREIGN KEY ([User_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_User_Tag_t_User'
CREATE INDEX [IX_FK_t_User_Tag_t_User]
ON [dbo].[t_User_Tag]
    ([User_UserId]);
GO

-- Creating foreign key on [Roles_RoleId] in table 't_UsersInRole'
ALTER TABLE [dbo].[t_UsersInRole]
ADD CONSTRAINT [FK_t_UsersInRole_t_Role]
    FOREIGN KEY ([Roles_RoleId])
    REFERENCES [dbo].[Roles]
        ([RoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Users_UserId] in table 't_UsersInRole'
ALTER TABLE [dbo].[t_UsersInRole]
ADD CONSTRAINT [FK_t_UsersInRole_t_User]
    FOREIGN KEY ([Users_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_UsersInRole_t_User'
CREATE INDEX [IX_FK_t_UsersInRole_t_User]
ON [dbo].[t_UsersInRole]
    ([Users_UserId]);
GO

-- Creating foreign key on [TermId] in table 'TermSynonyms'
ALTER TABLE [dbo].[TermSynonyms]
ADD CONSTRAINT [FK_TermSynonymTerm]
    FOREIGN KEY ([TermId])
    REFERENCES [dbo].[Terms]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TermSynonymTerm'
CREATE INDEX [IX_FK_TermSynonymTerm]
ON [dbo].[TermSynonyms]
    ([TermId]);
GO

-- Creating foreign key on [ContentId] in table 'ContentRelatedTerms'
ALTER TABLE [dbo].[ContentRelatedTerms]
ADD CONSTRAINT [FK_t_Content_RelatedTerm_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_RelatedTerm_t_Content'
CREATE INDEX [IX_FK_t_Content_RelatedTerm_t_Content]
ON [dbo].[ContentRelatedTerms]
    ([ContentId]);
GO

-- Creating foreign key on [TermId] in table 'ContentRelatedTerms'
ALTER TABLE [dbo].[ContentRelatedTerms]
ADD CONSTRAINT [FK_t_Content_RelatedTerm_t_Term]
    FOREIGN KEY ([TermId])
    REFERENCES [dbo].[Terms]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_RelatedTerm_t_Term'
CREATE INDEX [IX_FK_t_Content_RelatedTerm_t_Term]
ON [dbo].[ContentRelatedTerms]
    ([TermId]);
GO

-- Creating foreign key on [ContentId] in table 'ContentRelatedLinks'
ALTER TABLE [dbo].[ContentRelatedLinks]
ADD CONSTRAINT [FK_t_Content_RelatedLink_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_RelatedLink_t_Content'
CREATE INDEX [IX_FK_t_Content_RelatedLink_t_Content]
ON [dbo].[ContentRelatedLinks]
    ([ContentId]);
GO

-- Creating foreign key on [LinkId] in table 'ContentRelatedLinks'
ALTER TABLE [dbo].[ContentRelatedLinks]
ADD CONSTRAINT [FK_t_Content_RelatedLink_t_Link]
    FOREIGN KEY ([LinkId])
    REFERENCES [dbo].[Links]
        ([LinkId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_RelatedLink_t_Link'
CREATE INDEX [IX_FK_t_Content_RelatedLink_t_Link]
ON [dbo].[ContentRelatedLinks]
    ([LinkId]);
GO

-- Creating foreign key on [ContentId] in table 'TermOfDays'
ALTER TABLE [dbo].[TermOfDays]
ADD CONSTRAINT [FK_t_TermOfDay_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_TermOfDay_t_Content'
CREATE INDEX [IX_FK_t_TermOfDay_t_Content]
ON [dbo].[TermOfDays]
    ([ContentId]);
GO

-- Creating foreign key on [ContentTypeId] in table 'SearchTypeLogs'
ALTER TABLE [dbo].[SearchTypeLogs]
ADD CONSTRAINT [FK_t_SearchTypeLog_t_ContentType]
    FOREIGN KEY ([ContentTypeId])
    REFERENCES [dbo].[ContentTypes]
        ([ContentTypeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_SearchTypeLog_t_ContentType'
CREATE INDEX [IX_FK_t_SearchTypeLog_t_ContentType]
ON [dbo].[SearchTypeLogs]
    ([ContentTypeId]);
GO

-- Creating foreign key on [SearchLogId] in table 'SearchTypeLogs'
ALTER TABLE [dbo].[SearchTypeLogs]
ADD CONSTRAINT [FK_t_SearchTypeLog_t_SearchLog]
    FOREIGN KEY ([SearchLogId])
    REFERENCES [dbo].[SearchLogs]
        ([SearchLogId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PrimaryTag] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_t_Content_t_Tag]
    FOREIGN KEY ([PrimaryTag])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_t_Tag'
CREATE INDEX [IX_FK_t_Content_t_Tag]
ON [dbo].[Contents]
    ([PrimaryTag]);
GO

-- Creating foreign key on [ContentStatusId] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [FK_t_Permission_t_ContentStatus]
    FOREIGN KEY ([ContentStatusId])
    REFERENCES [dbo].[ContentStatus]
        ([ContentStatusId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Permission_t_ContentStatus'
CREATE INDEX [IX_FK_t_Permission_t_ContentStatus]
ON [dbo].[Permissions]
    ([ContentStatusId]);
GO

-- Creating foreign key on [ContentId] in table 'ViewDetails'
ALTER TABLE [dbo].[ViewDetails]
ADD CONSTRAINT [FK_t_Content_t_ViewDetails_FK1]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Content_t_ViewDetails_FK1'
CREATE INDEX [IX_FK_t_Content_t_ViewDetails_FK1]
ON [dbo].[ViewDetails]
    ([ContentId]);
GO

-- Creating foreign key on [RunByUserId] in table 'Plagiarisms'
ALTER TABLE [dbo].[Plagiarisms]
ADD CONSTRAINT [FK_t_Plagiarism_t_User]
    FOREIGN KEY ([RunByUserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Plagiarism_t_User'
CREATE INDEX [IX_FK_t_Plagiarism_t_User]
ON [dbo].[Plagiarisms]
    ([RunByUserId]);
GO

-- Creating foreign key on [PlagiarismId] in table 'PlagiarismDetails'
ALTER TABLE [dbo].[PlagiarismDetails]
ADD CONSTRAINT [FK_t_PlagiarismDetail_t_Plagiarism]
    FOREIGN KEY ([PlagiarismId])
    REFERENCES [dbo].[Plagiarisms]
        ([PlagiarismId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_PlagiarismDetail_t_Plagiarism'
CREATE INDEX [IX_FK_t_PlagiarismDetail_t_Plagiarism]
ON [dbo].[PlagiarismDetails]
    ([PlagiarismId]);
GO

-- Creating foreign key on [TermRevisionId] in table 'ContentRevisionFeedbacks'
ALTER TABLE [dbo].[ContentRevisionFeedbacks]
ADD CONSTRAINT [FK_t_ContentRevisionFeedback_t_ContentRevision]
    FOREIGN KEY ([TermRevisionId])
    REFERENCES [dbo].[ContentRevisions]
        ([TermRevisionId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [HelpContentId] in table 'HelpPages'
ALTER TABLE [dbo].[HelpPages]
ADD CONSTRAINT [FK_t_HelpPage_t_HelpPage_Hierarchy]
    FOREIGN KEY ([HelpContentId])
    REFERENCES [dbo].[HelpHierarchies]
        ([HelpHierarchyId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [EditedBy] in table 'HelpPages'
ALTER TABLE [dbo].[HelpPages]
ADD CONSTRAINT [FK_t_HelpPage_t_HelpPage_EditedBy]
    FOREIGN KEY ([EditedBy])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_HelpPage_t_HelpPage_EditedBy'
CREATE INDEX [IX_FK_t_HelpPage_t_HelpPage_EditedBy]
ON [dbo].[HelpPages]
    ([EditedBy]);
GO

-- Creating foreign key on [CreatedBy] in table 'HelpPages'
ALTER TABLE [dbo].[HelpPages]
ADD CONSTRAINT [FK_t_HelpPage_t_User_CreatedBy]
    FOREIGN KEY ([CreatedBy])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_HelpPage_t_User_CreatedBy'
CREATE INDEX [IX_FK_t_HelpPage_t_User_CreatedBy]
ON [dbo].[HelpPages]
    ([CreatedBy]);
GO

-- Creating foreign key on [StyleId] in table 'StyleErrors'
ALTER TABLE [dbo].[StyleErrors]
ADD CONSTRAINT [FK_t_StyleGuide_t_StyleErrors]
    FOREIGN KEY ([StyleId])
    REFERENCES [dbo].[StyleGuides]
        ([StyleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_StyleGuide_t_StyleErrors'
CREATE INDEX [IX_FK_t_StyleGuide_t_StyleErrors]
ON [dbo].[StyleErrors]
    ([StyleId]);
GO

-- Creating foreign key on [UserId] in table 'ProfileSerials'
ALTER TABLE [dbo].[ProfileSerials]
ADD CONSTRAINT [FK_t_ProfileSerial_t_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_t_Address_t_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ContentId] in table 'Tutorials'
ALTER TABLE [dbo].[Tutorials]
ADD CONSTRAINT [FK_t_Tutorial_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AuthorId] in table 'Tutorials'
ALTER TABLE [dbo].[Tutorials]
ADD CONSTRAINT [FK_t_Tutorial_t_User]
    FOREIGN KEY ([AuthorId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Tutorial_t_User'
CREATE INDEX [IX_FK_t_Tutorial_t_User]
ON [dbo].[Tutorials]
    ([AuthorId]);
GO

-- Creating foreign key on [ContentId] in table 'TutorialDetails'
ALTER TABLE [dbo].[TutorialDetails]
ADD CONSTRAINT [FK_t_TutorialDetails_t_Tutorial]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Tutorials]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_TutorialDetails_t_Tutorial'
CREATE INDEX [IX_FK_t_TutorialDetails_t_Tutorial]
ON [dbo].[TutorialDetails]
    ([ContentId]);
GO

-- Creating foreign key on [ContentId] in table 'Links'
ALTER TABLE [dbo].[Links]
ADD CONSTRAINT [FK_t_Link_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Link_t_Content'
CREATE INDEX [IX_FK_t_Link_t_Content]
ON [dbo].[Links]
    ([ContentId]);
GO

-- Creating foreign key on [ImageId] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_Content_Image]
    FOREIGN KEY ([ImageId])
    REFERENCES [dbo].[ImageMetas]
        ([ImageId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Content_Image'
CREATE INDEX [IX_FK_Content_Image]
ON [dbo].[Contents]
    ([ImageId]);
GO

-- Creating foreign key on [t_ImageTagAssociation1_Tag_ImageId] in table 't_ImageTagAssociation1'
ALTER TABLE [dbo].[t_ImageTagAssociation1]
ADD CONSTRAINT [FK_t_ImageTagAssociation1_ImageMeta]
    FOREIGN KEY ([t_ImageTagAssociation1_Tag_ImageId])
    REFERENCES [dbo].[ImageMetas]
        ([ImageId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tags_TagId] in table 't_ImageTagAssociation1'
ALTER TABLE [dbo].[t_ImageTagAssociation1]
ADD CONSTRAINT [FK_t_ImageTagAssociation1_Tag]
    FOREIGN KEY ([Tags_TagId])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_ImageTagAssociation1_Tag'
CREATE INDEX [IX_FK_t_ImageTagAssociation1_Tag]
ON [dbo].[t_ImageTagAssociation1]
    ([Tags_TagId]);
GO

-- Creating foreign key on [ContentId] in table 'HomePages'
ALTER TABLE [dbo].[HomePages]
ADD CONSTRAINT [FK_t_HomePage_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [RelatedTag_TagId] in table 'TagRelatedTags'
ALTER TABLE [dbo].[TagRelatedTags]
ADD CONSTRAINT [FK_t_Tag_RelatedTag_t_Tag]
    FOREIGN KEY ([RelatedTag_TagId])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Tag_RelatedTag_t_Tag'
CREATE INDEX [IX_FK_t_Tag_RelatedTag_t_Tag]
ON [dbo].[TagRelatedTags]
    ([RelatedTag_TagId]);
GO

-- Creating foreign key on [Tag_TagId] in table 'TagRelatedTags'
ALTER TABLE [dbo].[TagRelatedTags]
ADD CONSTRAINT [FK_t_Tag_RelatedTag_t_Tag1]
    FOREIGN KEY ([Tag_TagId])
    REFERENCES [dbo].[Tags]
        ([TagId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Tag_RelatedTag_t_Tag1'
CREATE INDEX [IX_FK_t_Tag_RelatedTag_t_Tag1]
ON [dbo].[TagRelatedTags]
    ([Tag_TagId]);
GO

-- Creating foreign key on [ContentId] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_t_Question_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [User_UserId] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_t_Question_t_User]
    FOREIGN KEY ([User_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_t_Question_t_User'
CREATE INDEX [IX_FK_t_Question_t_User]
ON [dbo].[Questions]
    ([User_UserId]);
GO

-- Creating foreign key on [ContentId] in table 'Quotes'
ALTER TABLE [dbo].[Quotes]
ADD CONSTRAINT [FK_t_Quote_t_Content]
    FOREIGN KEY ([ContentId])
    REFERENCES [dbo].[Contents]
        ([ContentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------