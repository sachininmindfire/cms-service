﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class HelpHierarchy
{
    public int HelpHierarchyId { get; set; }

    public int? Parent { get; set; }

    public int? Children { get; set; }

    public string Name { get; set; }

    public int SortOrder { get; set; }

    public virtual HelpPage HelpPage { get; set; }
}