﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class ProfileSerial
{
    public Guid UserId { get; set; }

    public DateTime LastUpdatedDate { get; set; }

    public string PropertyNames { get; set; }

    public byte[] PropertyValuesBinary { get; set; }

    public string PropertyValuesString { get; set; }

    public virtual User User { get; set; }
}