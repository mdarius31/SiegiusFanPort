package Playtomic
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public final class Link
   {
      
      private static var Clicks:Array;
      
      if(true)
      {
         Clicks = new Array();
      }
      
      public function Link()
      {
         super();
      }
      
      public static function Open(param1:String, param2:String, param3:String) : Boolean
      {
         var bfail:int;
         var total:int;
         var baseurl:String;
         var baseurlname:String;
         var name:String;
         var result:Boolean;
         var fail:int;
         var key:String;
         var btotal:int;
         var url:String;
         var bunique:int;
         var group:String;
         var unique:int = 0;
         if(true)
         {
            bunique = 0;
            if(true)
            {
               total = 0;
               if(true)
               {
                  btotal = 0;
                  if(true)
                  {
                     fail = 0;
                     if(true)
                     {
                        bfail = 0;
                        if(true)
                        {
                           §§push(§§newactivation());
                           §§push(null);
                           if(true)
                           {
                              §§push(§§pop());
                              if(true)
                              {
                                 §§pop().§§slot[10] = §§pop();
                                 if(true)
                                 {
                                    §§push(§§newactivation());
                                    §§push(false);
                                    if(true)
                                    {
                                       §§pop().§§slot[11] = §§pop();
                                       if(true)
                                       {
                                          §§push(§§newactivation());
                                          §§push(null);
                                          if(true)
                                          {
                                             §§pop().§§slot[12] = §§pop();
                                             addr296:
                                             if(true)
                                             {
                                                §§push(§§newactivation());
                                                §§push(null);
                                             }
                                             unique = 1;
                                          }
                                          addr270:
                                          §§push(§§pop().substring(0,baseurlname.indexOf("/")));
                                       }
                                       Clicks.push(key);
                                    }
                                    addr325:
                                    §§pop().§§slot[11] = §§pop();
                                 }
                                 §§goto(addr303);
                              }
                              §§pop().§§slot[13] = §§pop();
                              try
                              {
                                 addr277:
                                 navigateToURL(new URLRequest(url));
                                 if(Clicks.indexOf(key) > -1)
                                 {
                                    addr289:
                                    total = 1;
                                 }
                                 else
                                 {
                                    total = 1;
                                    §§goto(addr296);
                                 }
                                 addr303:
                                 if(Clicks.indexOf(baseurlname) <= -1)
                                 {
                                    btotal = 1;
                                 }
                                 §§goto(addr327);
                              }
                              catch(err:*)
                              {
                                 addr327:
                                 err = §§pop();
                                 §§push(§§newactivation());
                                 §§push(1);
                                 if(true)
                                 {
                                    §§pop().§§slot[8] = §§pop();
                                    §§push(§§newactivation());
                                    §§push(1);
                                 }
                                 §§pop().§§slot[9] = §§pop();
                                 result = false;
                                 Log.Link(baseurl,baseurlname.toLowerCase(),"DomainTotals",bunique,btotal,bfail);
                                 Log.Link(url,name,group,unique,total,fail);
                                 Log.ForceSend();
                                 return result;
                              }
                              §§goto(addr303);
                           }
                           §§push(§§pop());
                           if(true)
                           {
                              §§pop().§§slot[13] = §§pop();
                              if(true)
                              {
                                 §§push(§§newactivation());
                                 §§push(param1);
                                 if(true)
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    if(true)
                                    {
                                       §§push(§§newactivation());
                                       §§push(param2);
                                       if(true)
                                       {
                                          §§pop().§§slot[2] = §§pop();
                                          if(true)
                                          {
                                             §§push(§§newactivation());
                                             §§push(param3);
                                             if(true)
                                             {
                                                §§pop().§§slot[3] = §§pop();
                                                if(true)
                                                {
                                                   unique = 0;
                                                   if(true)
                                                   {
                                                      bunique = 0;
                                                      addr260:
                                                      if(true)
                                                      {
                                                         total = 0;
                                                         addr252:
                                                         if(true)
                                                         {
                                                            btotal = 0;
                                                            if(true)
                                                            {
                                                               fail = 0;
                                                               if(true)
                                                               {
                                                                  bfail = 0;
                                                                  if(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     §§push(url);
                                                                     if(true)
                                                                     {
                                                                        §§push(§§pop() + ".");
                                                                        if(true)
                                                                        {
                                                                           §§push(§§pop() + name);
                                                                           if(true)
                                                                           {
                                                                              addr232:
                                                                              §§push(§§pop());
                                                                              if(true)
                                                                              {
                                                                                 §§pop().§§slot[10] = §§pop();
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    §§push(url);
                                                                                    if(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(true)
                                                                                       {
                                                                                          §§pop().§§slot[12] = §§pop();
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             §§push(baseurl);
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(§§pop().replace("http://",""));
                                                                                                if(true)
                                                                                                {
                                                                                                   §§pop().§§slot[12] = §§pop();
                                                                                                   addr202:
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§push(baseurl);
                                                                                                      if(true)
                                                                                                      {
                                                                                                         addr263:
                                                                                                         §§push("/");
                                                                                                         if(true)
                                                                                                         {
                                                                                                            if(§§pop().indexOf(§§pop()) > -1)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               §§push(baseurl);
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop().indexOf(§§pop()) > -1)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr262:
                                                                                                      §§goto(addr263);
                                                                                                      §§push("/");
                                                                                                   }
                                                                                                   §§push(baseurl);
                                                                                                   if(true)
                                                                                                   {
                                                                                                      if(§§pop().indexOf("?") > -1)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   if(§§pop().indexOf("//") > -1)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                §§push(0);
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(§§pop().substring(§§pop(),baseurl.indexOf("/")));
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                             §§pop().§§slot[12] = §§pop();
                                                                                             §§goto(addr202);
                                                                                          }
                                                                                          §§push(§§newactivation());
                                                                                          §§push(baseurl);
                                                                                       }
                                                                                       §§push(§§pop().substring(0,baseurl.indexOf("?")));
                                                                                    }
                                                                                    §§pop().§§slot[12] = §§pop();
                                                                                 }
                                                                                 §§push(§§newactivation());
                                                                                 §§push("http://" + baseurl);
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§push(§§pop() + "/");
                                                                        }
                                                                        §§pop().§§slot[12] = §§pop();
                                                                     }
                                                                     §§pop().§§slot[13] = §§pop();
                                                                  }
                                                                  §§goto(addr232);
                                                                  §§push(§§newactivation());
                                                                  §§push(baseurl);
                                                               }
                                                               §§goto(addr202);
                                                               §§push(baseurlname);
                                                            }
                                                            §§push(§§newactivation());
                                                            §§push(baseurlname);
                                                         }
                                                         §§push(§§newactivation());
                                                         §§push(baseurlname);
                                                      }
                                                      §§goto(addr262);
                                                      §§push(baseurlname);
                                                   }
                                                   §§goto(addr270);
                                                   §§push(§§newactivation());
                                                   §§push(baseurlname);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§push(§§pop().substring(baseurlname.indexOf("//") + 2));
                                          }
                                          §§goto(addr277);
                                       }
                                       §§pop().§§slot[13] = §§pop();
                                       §§goto(addr252);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§push(§§pop().replace("www.",""));
                              }
                              §§goto(addr289);
                           }
                           §§pop().§§slot[13] = §§pop();
                           §§goto(addr260);
                        }
                        btotal = 1;
                     }
                  }
                  bunique = 1;
               }
               Clicks.push(baseurlname);
            }
            §§goto(addr325);
            §§push(§§newactivation());
            §§push(true);
         }
         §§goto(addr303);
      }
   }
}

