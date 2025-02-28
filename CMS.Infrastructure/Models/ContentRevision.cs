﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class ContentRevision
{
    public int TermRevisionId { get; set; }

    public DateTime Date { get; set; }

    public TimeOnly Duration { get; set; }

    public string Note { get; set; }

    public decimal Rate { get; set; }

    public string EditedBy { get; set; }

    public decimal RevisionCost { get; set; }

    public int? Rating { get; set; }

    public bool? NoteHighlight { get; set; }

    public string AssignedTo { get; set; }

    public int? ContentStatusIdPrevious { get; set; }

    public int ContentContentId { get; set; }

    public int StatusContentStatusId { get; set; }

    public virtual Content ContentContent { get; set; }

    public virtual ICollection<ContentRevisionDetail> ContentRevisionDetails { get; set; } = new List<ContentRevisionDetail>();

    public virtual ContentRevisionFeedback ContentRevisionFeedback { get; set; }

    public virtual ContentStatus StatusContentStatus { get; set; }
}