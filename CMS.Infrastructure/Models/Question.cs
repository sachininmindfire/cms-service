﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace CMS.Infrastructure.Configurations.Models;

public partial class Question
{
    public int ContentId { get; set; }

    public string Question1 { get; set; }

    public string Answer { get; set; }

    public int? QuestionWordCount { get; set; }

    public int? AnswerWordCount { get; set; }

    public Guid UserUserId { get; set; }

    public virtual Content Content { get; set; }

    public virtual User UserUser { get; set; }
}