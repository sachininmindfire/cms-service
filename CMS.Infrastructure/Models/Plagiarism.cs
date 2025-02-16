﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class Plagiarism
{
    public int PlagiarismId { get; set; }

    public string Vendor { get; set; }

    public string VendorResponse { get; set; }

    public bool RequiresReview { get; set; }

    public DateTime PlagiarismCheckDate { get; set; }

    public Guid? RunByUserId { get; set; }

    public string LastEditedBy { get; set; }

    public decimal HighestMatch { get; set; }

    public int ResultCount { get; set; }

    public bool HasBeenReviewed { get; set; }

    public int ContentContentId { get; set; }

    public virtual Content ContentContent { get; set; }

    public virtual ICollection<PlagiarismDetail> PlagiarismDetails { get; set; } = new List<PlagiarismDetail>();

    public virtual User RunByUser { get; set; }
}