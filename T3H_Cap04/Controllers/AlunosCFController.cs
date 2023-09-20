using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using T3H_Cap04.Models;

namespace T3H_Cap04.Controllers
{
    public class AlunosCFController : Controller
    {
        // GET: AlunosCF
        public ActionResult IncluirAlunoCF()
        {
            var DB = new BancoDados("");

            var Linha = new AlunosCF() { Codigo = 1, Nome = "Joao" };
            DB.Alunos.Add(Linha);

            DB.SaveChanges();

            return View();
        }
    }
}
