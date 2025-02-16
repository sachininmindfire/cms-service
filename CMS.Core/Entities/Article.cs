using static System.Runtime.InteropServices.JavaScript.JSType;

namespace CMS.Core.Entities
{
    public class Article
    {
        public int? Id { get; set; } = 0;
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string Author { get; set; } = string.Empty;
        public DateTime Date { get; set; }
        public int Views { get; set; }
        public int Likes { get; set; }
        public List<Comment> Comments { get; set; } = new List<Comment>();
    }

    public class Comment
    {
        public int Id { get; set; }
        public int ArticleId { get; set; }
        public string CommentText { get; set; } = string.Empty;
        public DateTime Date { get; set; }
        public bool IsActive { get; set; }
    }
}
