﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class Message
{
    public int MessageId { get; set; }

    public string MessageText { get; set; }

    public DateTime Date { get; set; }

    public string EditedBy { get; set; }

    public TimeOnly Duration { get; set; }

    public int MessageType { get; set; }

    public string Note { get; set; }

    public bool ForceClosed { get; set; }

    public string Roles { get; set; }
}