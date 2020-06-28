/*
Behavioural Alarm system
Author: Muzzammil Mia
Date: 28/06/2020
*/

module alarm(set,door,window,notify);
  
  input set,door,window;
  output notify;

  assign notify =  set&door | set&window;
endmodule
