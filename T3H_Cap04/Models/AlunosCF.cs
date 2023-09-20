using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;

namespace T3H_Cap04.Models
{
    public class BancoDados : DbContext
    {
        public BancoDados(string conexao) : base(conexao)
        {
            //
        }

        public DbSet<AlunosCF> Alunos { get; set; }
        public DbSet<TiposAlunos> Tipos { get; set; }
    }

    [Table("MeusAlunos")]
    public class AlunosCF
    {
        [Column(name:"CodAlu")]
        public int Codigo { get; set; }

        [Column(name: "NomeAlu")]
        public string Nome { get; set; }

        public TiposAlunos Tipo { get; set; }
    }

    public class TiposAlunos
    {
        public TiposAlunos()
        {
            this.Alunos = new List<AlunosCF>();
        }

        public int Codigo { get; set; }
        public string Nome { get; set; }

        public List<AlunosCF> Alunos { get; set; }
    }
}







