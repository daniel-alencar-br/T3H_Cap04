//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace T3H_Cap04.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class AlunosMF
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AlunosMF()
        {
            this.Notas = new HashSet<Notas>();
        }
    
        public int Cod { get; set; }
        public string Nome { get; set; }
        public string Endereco { get; set; }
        public string Idade { get; set; }
        public string CEP { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Notas> Notas { get; set; }
    }
}
