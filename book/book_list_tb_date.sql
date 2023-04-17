update book_list_tb
set registe_date = DATE_ADD(
   DATE_ADD(
      DATE_ADD(
         CURDATE(),
            INTERVAL -cast(RAND()*(4-1)+1 as unsigned)
            DAY),
      INTERVAL -cast(RAND()*(4-1)+1 as unsigned)
        MONTH),
   INTERVAL -cast(RAND()*(4-1)+1 as unsigned)
   YEAR);
        
        
      
        select * from book_list_tb;
        
        