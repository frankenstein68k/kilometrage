﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FinalAssignment
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class KilometrageEntities : DbContext
    {
        public KilometrageEntities()
            : base("name=KilometrageEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<CAR> CARs { get; set; }
        public DbSet<FILL_UP> FILL_UP { get; set; }
        public DbSet<MILEAGE_USER> MILEAGE_USER { get; set; }
    }
}
