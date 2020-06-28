module tb_alarm;
wire t_notify;
reg t_door, t_window, t_set;
/*set,door,window,notify*/
alarm my_gate( .set(t_set), .door(t_door),
               .window(t_window), .notify(t_notify));

initial
begin
$monitor(t_set, t_door, t_window, t_notify);
/*0*/
t_set = 1'b0; t_door = 1'b0; t_window = 1'b0;
/*1*/
#5
t_set = 1'b0; t_door = 1'b0; t_window = 1'b1;
/*2*/
#5
t_set = 1'b0; t_door = 1'b1; t_window = 1'b0;
/*3*/
#5
t_set = 1'b0; t_door = 1'b1; t_window = 1'b1;
/*4*/
#5
t_set = 1'b1; t_door = 1'b0; t_window = 1'b0;
/*5*/
#5
t_set = 1'b1; t_door = 1'b0; t_window = 1'b1;
/*6*/
#5
t_set = 1'b1; t_door = 1'b1; t_window = 1'b0;
/*7*/
#5
t_set = 1'b1; t_door = 1'b1; t_window = 1'b1;

end
endmodule