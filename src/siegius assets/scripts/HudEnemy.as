
{
   if(true)
   {
      HudEnemy = §§newclass(HudEnemy,Object);
   }
}

package
{
   import flash.geom.Point;
   
   public class HudEnemy
   {
       
      
      private var micro:Number;
      
      public var maxHp:Number;
      
      public var race:String;
      
      private var frameCounter:uint;
      
      private var armyOb:Object;
      
      private var noInc:Boolean;
      
      public var gold:uint;
      
      public var curHp:Number;
      
      private var armyAr:Array;
      
      public var game:Game;
      
      public var defenseUp:uint;
      
      public function HudEnemy(param1:Game)
      {
         var _loc2_:uint = 0;
         super();
         game = param1;
         frameCounter = 0;
         setHp(micro = GameStats.getCampaignStats(SD.race,SD.picStage).enemyHp);
         race = GameStats.getCampaignStats(SD.race,SD.picStage).enemy;
         micro = GameStats.getCampaignStats(SD.race,SD.picStage).micro;
         noInc = !GameStats.getCampaignStats(SD.race,SD.picStage).gEarn1;
         armyAr = GameStats.getCampaignStats(SD.race,SD.picStage).army;
         armyOb = new Object();
         _loc2_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < armyAr.length)
            {
               armyOb[armyAr[_loc2_]] = true;
               §§push(_loc2_);
               if(true)
               {
                  continue loop0;
               }
            }
            defenseUp = 1;
            return;
         }
      }
      
      public function runAI(param1:Object = null) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(true)
         {
            ++frameCounter;
            if(true)
            {
               §§push(frameCounter);
               if(true)
               {
                  §§push(§§pop() < micro * 2);
                  if(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(true)
                        {
                           addr51:
                           if(!(Boolean(frameCounter % micro)))
                           {
                              addr53:
                              if(!param1)
                              {
                                 addr55:
                                 param1 = new Object();
                              }
                              _loc2_ = new Array();
                              if(true)
                              {
                                 if(armyOb.miner)
                                 {
                                    if(true)
                                    {
                                       _loc3_ = findClosestMine();
                                       if(_loc3_)
                                       {
                                          §§push(noInc);
                                          if(true)
                                          {
                                             §§push(§§pop());
                                             if(true)
                                             {
                                                if(§§pop())
                                                {
                                                }
                                                addr92:
                                                if(§§pop())
                                                {
                                                   tryCreateUnit(0,_loc3_.MC.y,"miner","blank",1,{"mineBox":_loc3_});
                                                   return;
                                                }
                                                §§push(gold);
                                                if(true)
                                                {
                                                   §§push(100);
                                                   if(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         _loc2_.push({
                                                            "y":_loc3_.MC.y,
                                                            "unit":"miner",
                                                            "extra":{"mineBox":_loc3_}
                                                         });
                                                      }
                                                      addr127:
                                                      §§push(gold);
                                                      §§push(500);
                                                   }
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      _loc2_.push({
                                                         "y":_loc3_.MC.y,
                                                         "unit":"miner",
                                                         "extra":{"mineBox":_loc3_}
                                                      });
                                                   }
                                                   addr144:
                                                   if(gold <= 1000)
                                                   {
                                                      _loc2_.push({
                                                         "y":_loc3_.MC.y,
                                                         "unit":"miner",
                                                         "extra":{"mineBox":_loc3_}
                                                      });
                                                      addr158:
                                                      if(!param1.minerOnly)
                                                      {
                                                         if(true)
                                                         {
                                                            §§push(Boolean(armyOb.berserk));
                                                            if(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§pop();
                                                                        if(true)
                                                                        {
                                                                           §§push(gold);
                                                                           §§push(getPrice("berserk"));
                                                                           if(true)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(true)
                                                                              {
                                                                                 addr186:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       _loc2_.push({"unit":"berserk"});
                                                                                       if(true)
                                                                                       {
                                                                                          addr196:
                                                                                          §§push(Boolean(armyOb.berserk));
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(true)
                                                                                                      {
                                                                                                         §§push(gold);
                                                                                                         §§push(getPrice("berserk"));
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr219:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     _loc2_.push({"unit":"berserk"});
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        addr229:
                                                                                                                        §§push(Boolean(armyOb.flag));
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       §§push(gold);
                                                                                                                                       §§push(getPrice("flag"));
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() >= §§pop());
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             addr252:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   _loc2_.push({"unit":"flag"});
                                                                                                                                                   if(true)
                                                                                                                                                   {
                                                                                                                                                      addr262:
                                                                                                                                                      §§push(Boolean(armyOb.horse));
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  if(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(gold);
                                                                                                                                                                     §§push(getPrice("horse"));
                                                                                                                                                                     if(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                                                                        if(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr285:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc2_.push({"unit":"horse"});
                                                                                                                                                                                 if(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr295:
                                                                                                                                                                                    §§push(Boolean(armyOb.horse));
                                                                                                                                                                                    if(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(gold);
                                                                                                                                                                                                   §§push(getPrice("horse"));
                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr318:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc2_.push({"unit":"horse"});
                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr328:
                                                                                                                                                                                                                  §§push(Boolean(armyOb.horse));
                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(gold);
                                                                                                                                                                                                                                 §§push(getPrice("horse"));
                                                                                                                                                                                                                                 if(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                    if(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr351:
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc2_.push({"unit":"horse"});
                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr361:
                                                                                                                                                                                                                                                §§push(Boolean(armyOb.horse));
                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(gold);
                                                                                                                                                                                                                                                               §§push(getPrice("horse"));
                                                                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr384:
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc2_.push({"unit":"horse"});
                                                                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr394:
                                                                                                                                                                                                                                                                              §§push(Boolean(armyOb.boar));
                                                                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                 if(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(gold);
                                                                                                                                                                                                                                                                                             §§push(getPrice("boar"));
                                                                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr417:
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc2_.push({"unit":"boar"});
                                                                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr427:
                                                                                                                                                                                                                                                                                                            §§push(Boolean(armyOb.boar));
                                                                                                                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                        if(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(gold);
                                                                                                                                                                                                                                                                                                                           §§push(getPrice("boar"));
                                                                                                                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr450:
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc2_.push({"unit":"boar"});
                                                                                                                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr460:
                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(armyOb.mace));
                                                                                                                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(gold);
                                                                                                                                                                                                                                                                                                                                                         §§push(getPrice("mace"));
                                                                                                                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr483:
                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc2_.push({"unit":"mace"});
                                                                                                                                                                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr500:
                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(armyOb.mace));
                                                                                                                                                                                                                                                                                                                                                                        if(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    if(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(gold);
                                                                                                                                                                                                                                                                                                                                                                                       §§push(getPrice("mace"));
                                                                                                                                                                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr523:
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   _loc2_.push({"unit":"mace"});
                                                                                                                                                                                                                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr533:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(armyOb.giant));
                                                                                                                                                                                                                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(gold);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(getPrice("giant"));
                                                                                                                                                                                                                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr556:
                                                                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 _loc2_.push({"unit":"giant"});
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr566:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(Boolean(armyOb.giant));
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(gold);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(getPrice("giant"));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr589:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               _loc2_.push({"unit":"giant"});
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr599:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(armyOb.mage));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(gold);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(getPrice("mage"));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr622:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc2_.push({"unit":"mage"});
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr632:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(armyOb.mage));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr647:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(gold >= getPrice("mage"))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr653);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      _loc2_.push({"unit":"mage"});
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr653:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(armyOb.mummy));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(Boolean(armyOb.mummy))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr658:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr664);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr647);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr664);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr632);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr647);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr664:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(gold >= getPrice("mummy"))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr665:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    _loc2_.push({"unit":"mummy"});
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr670);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr670:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(Boolean(armyOb.bmage));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(Boolean(armyOb.bmage))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr675:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr681);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr665);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr658);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr622);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr647);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr665);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr681);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr599);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr665);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr681:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(gold >= getPrice("bmage"))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr682:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      _loc2_.push({"unit":"bmage"});
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr687);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr687:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(armyOb.bmage));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(Boolean(armyOb.bmage))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr692:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr698);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr682);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr675);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr589);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr665);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr675);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr682);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr698);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr566);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr682);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     addr698:
                                                                                                                                                                                                                                                                                                                                                                                                                     if(gold >= getPrice("bmage"))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr699:
                                                                                                                                                                                                                                                                                                                                                                                                                        _loc2_.push({"unit":"bmage"});
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr704);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     addr704:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(armyOb.anubis));
                                                                                                                                                                                                                                                                                                                                                                                                                     if(Boolean(armyOb.anubis))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr709:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr715);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr699);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr692);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr556);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr682);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr692);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr699);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr715);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr533);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr699);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr715:
                                                                                                                                                                                                                                                                                                                                                                                       if(gold >= getPrice("anubis"))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr716:
                                                                                                                                                                                                                                                                                                                                                                                          _loc2_.push({"unit":"anubis"});
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr721);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr721:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(armyOb.anubis));
                                                                                                                                                                                                                                                                                                                                                                                       if(Boolean(armyOb.anubis))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr726:
                                                                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr732);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr709);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr523);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr699);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr709);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr732);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr500);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr732:
                                                                                                                                                                                                                                                                                                                                                         if(gold >= getPrice("anubis"))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr733:
                                                                                                                                                                                                                                                                                                                                                            _loc2_.push({"unit":"anubis"});
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr738);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr738:
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(armyOb.big));
                                                                                                                                                                                                                                                                                                                                                         if(Boolean(armyOb.big))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr743:
                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr749);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr733);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr726);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr483);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr716);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr726);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr733);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr749);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr460);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr733);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr749:
                                                                                                                                                                                                                                                                                                                           if(gold >= getPrice("big"))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr750:
                                                                                                                                                                                                                                                                                                                              _loc2_.push({"unit":"big"});
                                                                                                                                                                                                                                                                                                                              §§goto(addr755);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr755:
                                                                                                                                                                                                                                                                                                                           §§push(Boolean(armyOb.med));
                                                                                                                                                                                                                                                                                                                           if(Boolean(armyOb.med))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr760:
                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr766);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr750);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr743);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr450);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr733);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr743);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr750);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr766);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr427);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr750);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr766:
                                                                                                                                                                                                                                                                                             if(gold >= getPrice("med"))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr767:
                                                                                                                                                                                                                                                                                                _loc2_.push({"unit":"med"});
                                                                                                                                                                                                                                                                                                §§goto(addr772);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr772:
                                                                                                                                                                                                                                                                                             §§push(Boolean(armyOb.small));
                                                                                                                                                                                                                                                                                             if(Boolean(armyOb.small))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr777:
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr783);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr767);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr760);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr417);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr750);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr760);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr767);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr783);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr394);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr767);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr783:
                                                                                                                                                                                                                                                               if(gold >= getPrice("small"))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr784:
                                                                                                                                                                                                                                                                  _loc2_.push({"unit":"small"});
                                                                                                                                                                                                                                                                  §§goto(addr789);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr789:
                                                                                                                                                                                                                                                               §§push(Boolean(armyOb.axe));
                                                                                                                                                                                                                                                               if(Boolean(armyOb.axe))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr794:
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr800);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr784);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr777);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr384);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr767);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr777);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr784);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr800);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr361);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr800:
                                                                                                                                                                                                                                 if(gold >= getPrice("axe"))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr801:
                                                                                                                                                                                                                                    _loc2_.push({"unit":"axe"},{"unit":"axe"});
                                                                                                                                                                                                                                    §§goto(addr809);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr809:
                                                                                                                                                                                                                                 §§push(Boolean(armyOb.sword));
                                                                                                                                                                                                                                 if(Boolean(armyOb.sword))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr814:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr820);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr801);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr794);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr351);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr784);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr794);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr801);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr820);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr328);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr801);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr820:
                                                                                                                                                                                                   if(gold >= getPrice("sword"))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr821:
                                                                                                                                                                                                      _loc2_.push({"unit":"sword"},{"unit":"sword"});
                                                                                                                                                                                                      §§goto(addr829);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr829:
                                                                                                                                                                                                   §§push(Boolean(armyOb.bow));
                                                                                                                                                                                                   if(Boolean(armyOb.bow))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr834:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr840);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr821);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr814);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr318);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr801);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr814);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr821);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr840);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr295);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr821);
                                                                                                                                                                     }
                                                                                                                                                                     addr840:
                                                                                                                                                                     if(gold >= getPrice("bow"))
                                                                                                                                                                     {
                                                                                                                                                                        addr841:
                                                                                                                                                                        _loc2_.push({"unit":"bow"},{"unit":"bow"});
                                                                                                                                                                        §§goto(addr849);
                                                                                                                                                                     }
                                                                                                                                                                     addr849:
                                                                                                                                                                     §§push(Boolean(armyOb.s_smoke));
                                                                                                                                                                     if(Boolean(armyOb.s_smoke))
                                                                                                                                                                     {
                                                                                                                                                                        addr854:
                                                                                                                                                                        §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr860);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr841);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr834);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr285);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr821);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr834);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr841);
                                                                                                                                                }
                                                                                                                                                §§goto(addr860);
                                                                                                                                             }
                                                                                                                                             §§goto(addr262);
                                                                                                                                          }
                                                                                                                                          §§goto(addr841);
                                                                                                                                       }
                                                                                                                                       addr860:
                                                                                                                                       if(gold >= getPrice("s_smoke"))
                                                                                                                                       {
                                                                                                                                          addr861:
                                                                                                                                          _loc2_.push({"unit":"s_smoke"},{"unit":"s_smoke"});
                                                                                                                                          §§goto(addr869);
                                                                                                                                       }
                                                                                                                                       addr869:
                                                                                                                                       §§push(Boolean(armyOb.s_smoke));
                                                                                                                                       if(Boolean(armyOb.s_smoke))
                                                                                                                                       {
                                                                                                                                          addr874:
                                                                                                                                          §§pop();
                                                                                                                                       }
                                                                                                                                       §§goto(addr880);
                                                                                                                                    }
                                                                                                                                    §§goto(addr861);
                                                                                                                                 }
                                                                                                                                 §§goto(addr854);
                                                                                                                              }
                                                                                                                              §§goto(addr252);
                                                                                                                           }
                                                                                                                           §§goto(addr841);
                                                                                                                        }
                                                                                                                        §§goto(addr854);
                                                                                                                     }
                                                                                                                     §§goto(addr861);
                                                                                                                  }
                                                                                                                  §§goto(addr880);
                                                                                                               }
                                                                                                               §§goto(addr229);
                                                                                                            }
                                                                                                            §§goto(addr861);
                                                                                                         }
                                                                                                         addr880:
                                                                                                         if(gold >= getPrice("s_smoke"))
                                                                                                         {
                                                                                                            addr881:
                                                                                                            _loc2_.push({"unit":"s_smoke"},{"unit":"s_smoke"});
                                                                                                            §§goto(addr889);
                                                                                                         }
                                                                                                         addr889:
                                                                                                         §§push(Boolean(armyOb.s_smoke));
                                                                                                         if(Boolean(armyOb.s_smoke))
                                                                                                         {
                                                                                                            addr894:
                                                                                                            §§pop();
                                                                                                         }
                                                                                                         §§goto(addr900);
                                                                                                      }
                                                                                                      §§goto(addr881);
                                                                                                   }
                                                                                                   §§goto(addr874);
                                                                                                }
                                                                                                §§goto(addr219);
                                                                                             }
                                                                                             §§goto(addr861);
                                                                                          }
                                                                                          §§goto(addr874);
                                                                                       }
                                                                                       §§goto(addr881);
                                                                                    }
                                                                                    §§goto(addr900);
                                                                                 }
                                                                                 §§goto(addr196);
                                                                              }
                                                                              §§goto(addr881);
                                                                           }
                                                                           addr900:
                                                                           if(gold >= getPrice("s_smoke"))
                                                                           {
                                                                              addr901:
                                                                              _loc2_.push({"unit":"s_smoke"},{"unit":"s_smoke"});
                                                                              §§goto(addr909);
                                                                           }
                                                                           addr909:
                                                                           if(_loc2_.length)
                                                                           {
                                                                              addr912:
                                                                              _loc4_ = UT.getRandElement(_loc2_);
                                                                              if(true)
                                                                              {
                                                                                 §§push(§§findproperty(tryCreateUnit));
                                                                                 if(true)
                                                                                 {
                                                                                    if(_loc4_.x)
                                                                                    {
                                                                                       addr925:
                                                                                       §§push(Number(_loc4_.x));
                                                                                       if(true)
                                                                                       {
                                                                                          §§goto(addr933);
                                                                                       }
                                                                                       §§goto(addr936);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                    }
                                                                                    addr933:
                                                                                    if(_loc4_.y)
                                                                                    {
                                                                                       addr936:
                                                                                       §§push(Number(_loc4_.y));
                                                                                       if(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§pop().tryCreateUnit(§§pop(),§§pop(),_loc4_.unit,!!_loc4_.upgrade ? String(_loc4_.upgrade) : "blank",!!_loc4_.upNum ? uint(_loc4_.upNum) : 1,!!_loc4_.extra ? _loc4_.extra : {});
                                                                                    §§goto(addr980);
                                                                                 }
                                                                                 §§goto(addr925);
                                                                              }
                                                                           }
                                                                           addr980:
                                                                           game.main.setFps(1,"Enemy Gold: " + gold);
                                                                           return;
                                                                        }
                                                                        §§goto(addr901);
                                                                     }
                                                                     §§goto(addr894);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr881);
                                                            }
                                                            §§goto(addr894);
                                                         }
                                                      }
                                                      §§goto(addr901);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr127);
                                             }
                                             §§pop();
                                             §§push(gold);
                                             if(true)
                                             {
                                                §§push(100);
                                                if(true)
                                                {
                                                   §§goto(addr92);
                                                   §§push(§§pop() <= §§pop());
                                                }
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr92);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr912);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr933);
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr53);
         }
         §§goto(addr55);
      }
      
      public function multiplyHpBy(param1:Number) : void
      {
         if(true)
         {
            curHp *= param1;
            maxHp *= param1;
         }
      }
      
      public function addUnit(param1:String) : void
      {
         if(true)
         {
            armyOb[param1] = true;
         }
      }
      
      public function setHp(param1:Number) : void
      {
         if(true)
         {
            curHp = maxHp = param1;
            game.hud.setHpBar(game.hud.mc_hpbar2,curHp,maxHp);
         }
      }
      
      public function getHpPerc() : Number
      {
         §§push(curHp);
         if(true)
         {
            §§push(§§pop() / maxHp);
         }
         return §§pop();
      }
      
      private function getSpellLocation(param1:String) : Point
      {
         var _loc2_:Point = null;
         _loc2_ = new Point();
         var _loc3_:* = param1;
         if(true)
         {
            switch(_loc3_)
            {
               case "s_smoke":
                  _loc2_.x = game.units1[0].x;
                  _loc2_.y = game.units1[0].y;
            }
            return _loc2_;
         }
         §§goto(addr56);
      }
      
      public function addArcher() : void
      {
         if(true)
         {
            if(defenseUp == 5)
            {
               if(true)
               {
                  return;
               }
            }
            else
            {
               ++defenseUp;
            }
            game.base1["arch" + defenseUp].visible = true;
         }
      }
      
      private function getPrice(param1:String, param2:String = "blank", param3:uint = 1) : uint
      {
         if(true)
         {
            if(!isSkill(param1))
            {
               return UnitStats.unit[race + "_" + param1].cost * UnitStats.upgrades[param2]["priceMod" + param3];
            }
         }
         return UnitStats.spell[param1].cost * UnitStats.upgrades[param2]["priceMod" + param3];
      }
      
      private function isSkill(param1:String) : Boolean
      {
         if(param1.substring(0,2) == "s_")
         {
            return true;
         }
         return false;
      }
      
      public function MouseDown() : void
      {
      }
      
      private function findClosestMine() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         _loc1_ = {"ox":-9999};
         if(true)
         {
            _loc2_ = 0;
         }
         while(_loc2_ < game.background.mines1.length)
         {
            _loc3_ = game.background.mines1[_loc2_];
            if(!_loc3_.used)
            {
               if(_loc3_.ox > _loc1_.ox)
               {
                  _loc1_ = _loc3_;
               }
            }
            §§push(_loc2_);
            if(true)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc2_ = §§pop();
         }
         if(true)
         {
            if(_loc1_.ox == -9999)
            {
               return null;
            }
         }
         return _loc1_;
      }
      
      public function MouseUp() : void
      {
      }
      
      public function heal(param1:Number) : void
      {
         §§push(§§findproperty(curHp));
         §§push(curHp);
         §§push(maxHp);
         if(true)
         {
            §§push(§§pop() * param1);
         }
         §§pop().curHp = §§pop() + §§pop();
         if(curHp > maxHp)
         {
            curHp = maxHp;
         }
         game.hud.setHpBar(game.hud.mc_hpbar2,curHp,maxHp);
      }
      
      private function tryCreateUnit(param1:Number, param2:Number, param3:String, param4:String = "blank", param5:uint = 1, param6:Object = null) : Boolean
      {
         var _loc7_:uint = 0;
         var _loc8_:Point = null;
         _loc7_ = getPrice(param3,param4,param5);
         if(gold >= _loc7_)
         {
            gold -= _loc7_;
            if(!isSkill(param3))
            {
               §§push(game);
               §§push(1);
               §§push(param1);
               §§push(param2);
               §§push(race + "_");
               §§push(param3);
               if(true)
               {
                  §§push(§§pop() + §§pop());
                  §§push(param4);
               }
               §§pop().createUnit(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param5,param6);
            }
            else
            {
               _loc8_ = getSpellLocation(param3);
               game.createSpell(1,_loc8_.x,_loc8_.y,param3,param4,param5);
            }
            return true;
         }
         return false;
      }
      
      public function removeUnit(param1:String) : void
      {
         if(true)
         {
            armyOb[param1] = false;
         }
      }
      
      public function damage(param1:Number, param2:uint = 0) : void
      {
         if(param2)
         {
            §§push(game);
            if(true)
            {
               §§pop().base1.arch1.play();
               §§push(game);
               if(true)
               {
                  §§pop().base1.arch2.play();
                  §§push(game);
                  if(true)
                  {
                     §§pop().base1.arch3.play();
                     game.base1.arch4.play();
                     §§push(game);
                  }
                  §§pop().base1.arch5.play();
                  addr44:
                  curHp -= param1;
                  if(curHp <= 0)
                  {
                     addr60:
                     game.victory();
                  }
                  §§goto(addr62);
               }
               §§goto(addr60);
            }
            addr62:
            game.hud.setHpBar(game.hud.mc_hpbar2,curHp,maxHp);
            return;
         }
         §§goto(addr44);
      }
   }
}
