//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class FILL_UP
    {
        public Nullable<int> CAR_ID { get; set; }
        public int FILL_UP_ID { get; set; }
        public Nullable<int> LITRES_IN { get; set; }
        public string GAS_STATION_BRAND { get; set; }
    
        public virtual CAR CAR { get; set; }
    }
}