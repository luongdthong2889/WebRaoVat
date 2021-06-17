﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RaoVat.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Web;

    public partial class RAOVAT
    {
        public RAOVAT()
        {
            HINHANH1 = "~/Content/img/upload-i.jpg";
        }
        public int MATIN { get; set; }
        public int MATRANGTHAI { get; set; }
        public int MALOAI { get; set; }
        public int MATINHTRANG { get; set; }
        public int MALOAITIN { get; set; }
        public int MAHINHTHUC { get; set; }
        public int MANGUOIDUNG { get; set; }
        [Display(Name = "Tiêu Đề")]
        public string TIEUDE { get; set; }
        [Display(Name = "Hình Ảnh")]
        public string HINHANH1 { get; set; }
        [Display(Name = "Nội Dung")]
        public string NOIDUNG { get; set; }
        [Display(Name = "Ngày Giờ Đăng")]
        public Nullable<System.DateTime> NGAYGIODANG { get; set; }
        [DisplayFormat(DataFormatString = "{0:0,0 vnđ}")]
        [Display(Name = "Giá")]
        public Nullable<int> GIA { get; set; }
        [Display(Name = "Địa Chỉ")]
        public string DIACHI { get; set; }
        [Display(Name = "Ngày Hết Hạn")]
        public Nullable<System.DateTime> NGAYHETHAN { get; set; }
        public Nullable<int> MATHANHPHO { get; set; }

        public virtual CATEGORY CATEGORY { get; set; }
        public virtual HINHTHUC HINHTHUC { get; set; }
        [Display(Name = "Loại Tin")]
        public virtual LOAITIN LOAITIN { get; set; }
        [Display(Name = "Tỉnh, Thành Phố")]
        public virtual TINHTHANHPHO TINHTHANHPHO { get; set; }
        [Display(Name = "Tình Trạng")]
        public virtual TINHTRANG TINHTRANG { get; set; }
        [Display(Name = "Trạng Thái")]
        public virtual TRANGTHAI TRANGTHAI { get; set; }
        [Display(Name = "Người Dùng")]
        public virtual USER USER { get; set; }

        [NotMapped]
        public HttpPostedFileBase UploadImage { get; set; }
    }
}
