﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class Profile
{
    public Guid UserId { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public DateTime LastUpdatedDate { get; set; }

    public string Culture { get; set; }

    public int? Activated { get; set; }

    public bool? IsEmailOff { get; set; }

    public string ShortBio { get; set; }

    public string LongBio { get; set; }

    public string AuthorUrl { get; set; }

    public decimal? AuthorRate { get; set; }

    public bool? IsHelpOn { get; set; }

    public string EmployerName { get; set; }

    public int? EmployerNoEmployees { get; set; }

    public string JobFunction { get; set; }

    public int? JobCategory { get; set; }

    public int? YearOfBirth { get; set; }

    public string FacebookUsername { get; set; }

    public string TwitterUsername { get; set; }

    public string LinkedUsername { get; set; }

    public string RemoteIp { get; set; }

    public string ClosestCity { get; set; }

    public string ClosestRegion { get; set; }

    public string ClosestCountryCode { get; set; }

    public string ClosestZipCode { get; set; }

    public bool? Migrated { get; set; }

    public bool? CmsAccess { get; set; }

    public bool? Comments { get; set; }

    public string Industry { get; set; }

    public bool? RememberMe { get; set; }

    public string SocialTwitter { get; set; }

    public string SocialFacebook { get; set; }

    public string SocialLinkedIn { get; set; }

    public string SocialGooglePlus { get; set; }

    public byte[] ProfileImage { get; set; }

    public bool? Newsletter { get; set; }

    public bool? Tod { get; set; }

    public string ContributorUrl { get; set; }

    public decimal? RatePerTerm { get; set; }

    public decimal? RatePerArticle { get; set; }

    public bool? BestOf { get; set; }

    public string Gender { get; set; }

    public virtual User User { get; set; }
}