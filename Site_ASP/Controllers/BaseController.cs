using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Site_ASP.Models;

namespace Site_ASP.Controllers
{
    public class BaseController : Controller
    {
        // GET: Base
        public ActionResult Create()
        {
            return View(new CreateViewModel
            {
                Base = new Base()
                {
                    BaseId = new Random().Next(),
                    Title = "Test",
                    Price = 18,
                    Description = "Essai d'affichage"             
                }
            });
        }
        public BaseController()
        { }
    }
}