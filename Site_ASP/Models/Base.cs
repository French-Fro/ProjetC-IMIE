using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Site_ASP.Models
{
    public class Base
    {
        public int BaseId { get; set; }

        [StringLength(100)]
        public string Title { get; set; }
        public int Price { get; set; }

        [StringLength(1000)]
        [DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [StringLength(2083)]
        [DisplayName("Full-size Image")]
        public string ImageURL { get; set; }

        [StringLength(2083)]
        [DisplayName("Thumbnail")]
        public string ThumbnailURL { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime PostedDate { get; set; }

        [StringLength(12)]
        public string Phone { get; set; }

        public Category? Category { get; set; }  
    }
    public enum Category
    {
        Cars,
        [Display(Name = "Real Estate")]
        RealEstate,
        [Display(Name = "Free Stuff")]
        FreeStuff
    }
}
