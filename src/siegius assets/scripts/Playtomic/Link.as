package Playtomic
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public final class Link
   {
      
      private static var Clicks:Array;
      
      {
         if(true)
         {
            Clicks = new Array();
         }
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
                                             if(true)
                                             {
                                                addr70:
                                                §§push(§§newactivation());
                                                §§push(null);
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
                                                                                          §§push(url);
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(§§pop() + ".");
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(§§pop() + name);
                                                                                                if(true)
                                                                                                {
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
                                                                                                                     §§push(String(§§pop().replace("http://","")));
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        §§pop().§§slot[12] = §§pop();
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           §§push(baseurl);
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              §§push("/");
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 if(§§pop().indexOf(§§pop()) > -1)
                                                                                                                                 {
                                                                                                                                    addr185:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    §§push(baseurl);
                                                                                                                                    §§push(0);
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       addr201:
                                                                                                                                       §§pop().§§slot[12] = String(§§pop().substring(§§pop(),baseurl.indexOf("/")));
                                                                                                                                       addr202:
                                                                                                                                       §§push(baseurl);
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop().indexOf("?") > -1)
                                                                                                                                          {
                                                                                                                                             addr220:
                                                                                                                                             baseurl = baseurl.substring(0,baseurl.indexOf("?"));
                                                                                                                                             addr228:
                                                                                                                                             baseurl = "http://" + baseurl + "/";
                                                                                                                                             addr233:
                                                                                                                                             baseurlname = baseurl;
                                                                                                                                             §§push(baseurlname);
                                                                                                                                             addr221:
                                                                                                                                             addr210:
                                                                                                                                             addr213:
                                                                                                                                             addr232:
                                                                                                                                             addr226:
                                                                                                                                             addr229:
                                                                                                                                          }
                                                                                                                                          §§goto(addr221);
                                                                                                                                       }
                                                                                                                                       if(§§pop().indexOf("//") > -1)
                                                                                                                                       {
                                                                                                                                          addr251:
                                                                                                                                          baseurlname = baseurlname.substring(baseurlname.indexOf("//") + 2);
                                                                                                                                          addr259:
                                                                                                                                          baseurlname = baseurlname.replace("www.","");
                                                                                                                                          addr263:
                                                                                                                                          addr262:
                                                                                                                                          addr260:
                                                                                                                                          if(baseurlname.indexOf("/") > -1)
                                                                                                                                          {
                                                                                                                                             addr266:
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             §§push(baseurlname);
                                                                                                                                             §§push(0);
                                                                                                                                          }
                                                                                                                                          try
                                                                                                                                          {
                                                                                                                                             addr277:
                                                                                                                                             navigateToURL(new URLRequest(url));
                                                                                                                                             if(Clicks.indexOf(key) > -1)
                                                                                                                                             {
                                                                                                                                                addr289:
                                                                                                                                                total = 1;
                                                                                                                                                addr303:
                                                                                                                                                if(Clicks.indexOf(baseurlname) > -1)
                                                                                                                                                {
                                                                                                                                                   addr309:
                                                                                                                                                   btotal = 1;
                                                                                                                                                   addr325:
                                                                                                                                                   result = true;
                                                                                                                                                   addr323:
                                                                                                                                                   addr312:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   btotal = 1;
                                                                                                                                                   addr316:
                                                                                                                                                   bunique = 1;
                                                                                                                                                   Clicks.push(baseurlname);
                                                                                                                                                   §§goto(addr323);
                                                                                                                                                }
                                                                                                                                                §§goto(addr323);
                                                                                                                                                addr292:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                total = 1;
                                                                                                                                                addr296:
                                                                                                                                                unique = 1;
                                                                                                                                                Clicks.push(key);
                                                                                                                                                §§goto(addr303);
                                                                                                                                             }
                                                                                                                                             §§goto(addr303);
                                                                                                                                          }
                                                                                                                                          catch(err:*)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             §§push(1);
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[8] = §§pop();
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                §§push(1);
                                                                                                                                             }
                                                                                                                                             §§pop().§§slot[9] = §§pop();
                                                                                                                                             result = false;
                                                                                                                                          }
                                                                                                                                          Log.Link(baseurl,baseurlname.toLowerCase(),"DomainTotals",bunique,btotal,bfail);
                                                                                                                                          Log.Link(url,name,group,unique,total,fail);
                                                                                                                                          Log.ForceSend();
                                                                                                                                          return result;
                                                                                                                                          addr252:
                                                                                                                                          addr240:
                                                                                                                                          addr243:
                                                                                                                                          addr255:
                                                                                                                                       }
                                                                                                                                       §§goto(addr252);
                                                                                                                                    }
                                                                                                                                    §§pop().§§slot[13] = String(§§pop().substring(§§pop(),baseurlname.indexOf("/")));
                                                                                                                                    §§goto(addr277);
                                                                                                                                 }
                                                                                                                                 §§goto(addr202);
                                                                                                                              }
                                                                                                                              §§goto(addr263);
                                                                                                                           }
                                                                                                                           §§goto(addr262);
                                                                                                                        }
                                                                                                                        §§goto(addr202);
                                                                                                                     }
                                                                                                                     §§goto(addr185);
                                                                                                                  }
                                                                                                                  §§goto(addr201);
                                                                                                               }
                                                                                                               §§goto(addr210);
                                                                                                            }
                                                                                                            §§goto(addr213);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr220);
                                                                                                   }
                                                                                                   §§goto(addr232);
                                                                                                }
                                                                                                §§goto(addr226);
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                          }
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                       §§goto(addr229);
                                                                                    }
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     §§goto(addr277);
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr296);
                                          }
                                          §§goto(addr266);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr325);
                                 }
                                 §§goto(addr289);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr309);
                     }
                     §§goto(addr312);
                  }
               }
               §§goto(addr316);
            }
         }
         §§goto(addr309);
      }
   }
}
