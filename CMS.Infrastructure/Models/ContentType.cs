﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class ContentType
{
    public int ContentTypeId { get; set; }

    public string Name { get; set; }

    public virtual ICollection<Content> Contents { get; set; } = new List<Content>();

    public virtual ICollection<Permission> Permissions { get; set; } = new List<Permission>();

    public virtual ICollection<SearchTypeLog> SearchTypeLogs { get; set; } = new List<SearchTypeLog>();
}