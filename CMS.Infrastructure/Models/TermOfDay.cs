﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class TermOfDay
{
    public int TodId { get; set; }

    public DateTime PublishedDate { get; set; }

    public int ContentId { get; set; }

    public virtual Content Content { get; set; }
}