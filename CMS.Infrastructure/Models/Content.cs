﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class Content
{
    public int ContentId { get; set; }

    public string Title { get; set; }

    public string HtmlTitle { get; set; }

    public string MetaDescription { get; set; }

    public string MetaKeywords { get; set; }

    public string Url { get; set; }

    public decimal? Cost { get; set; }

    public string Sources { get; set; }

    public string ChangeFreq { get; set; }

    public bool PublicSitemap { get; set; }

    public DateTime? StatusChangeDate { get; set; }

    public DateTime? RevisitDate { get; set; }

    public DateTime? PublishedDate { get; set; }

    public DateTime? LastEditDate { get; set; }

    public int? PrimaryTag { get; set; }

    public int Priority { get; set; }

    public bool? FlagForReview { get; set; }

    public int? SecondaryTag { get; set; }

    public bool? HtmltitleOverride { get; set; }

    public DateTime? LockedDate { get; set; }

    public long? ImageId { get; set; }

    public int ContentTypeContentTypeId { get; set; }

    public int ContentStatusContentStatusId { get; set; }

    public Guid? UserAssignedToUserId { get; set; }

    public Guid? UserLockedByUserId { get; set; }

    public virtual Article Article { get; set; }

    public virtual ICollection<ContentRelatedLink> ContentRelatedLinks { get; set; } = new List<ContentRelatedLink>();

    public virtual ICollection<ContentRelatedTerm> ContentRelatedTerms { get; set; } = new List<ContentRelatedTerm>();

    public virtual ICollection<ContentRevision> ContentRevisions { get; set; } = new List<ContentRevision>();

    public virtual ContentStatus ContentStatusContentStatus { get; set; }

    public virtual ContentType ContentTypeContentType { get; set; }

    public virtual HomePage HomePage { get; set; }

    public virtual ImageMeta Image { get; set; }

    public virtual ICollection<Link> Links { get; set; } = new List<Link>();

    public virtual ICollection<Plagiarism> Plagiarisms { get; set; } = new List<Plagiarism>();

    public virtual Tag PrimaryTagNavigation { get; set; }

    public virtual Question Question { get; set; }

    public virtual Quote Quote { get; set; }

    public virtual Term Term { get; set; }

    public virtual ICollection<TermOfDay> TermOfDays { get; set; } = new List<TermOfDay>();

    public virtual Tutorial Tutorial { get; set; }

    public virtual User UserAssignedToUser { get; set; }

    public virtual User UserLockedByUser { get; set; }

    public virtual ICollection<ViewDetail> ViewDetails { get; set; } = new List<ViewDetail>();

    public virtual ICollection<Tag> TagsTags { get; set; } = new List<Tag>();
}