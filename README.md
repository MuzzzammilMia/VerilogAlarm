# VerilogAlarm
First project in verilog, behavioural specification.
The objective of the project intented on helping me to learn the basics of verilog. 
In particular  how to write behavioural code, learn programming practices and writing testbenches.

AIM: Objective to be able to have an alarm to detect for burglers.

Plan
Signals being used : set, door, window, notify.

Cases
1)Door being triggered.
2)Window being triggered.
3)Both Window and Door being triggered.

The purpose of the set signal is so the user can  enable and disable the system.
When any of the cases have been triggered. The notify signal should be high(1). 
This can be achieved with the combination logic of:
notify = set & door | set & window

Set| Door| Window| Notify|
 0 |  0  |   0   |   0   |
 0 |  0  |   1   |   0   |
 0 |  1  |   0   |   0   |
 0 |  1  |   1   |   0   |
 1 |  0  |   0   |   0   |
 1 |  0  |   1   |   1   |   <- Expect to see this output in the waveform window. 
 1 |  1  |   0   |   1   |   <- Expect to see this output in the waveform window. 
 1 |  1  |   1   |   1   |   <- Expect to see this output in the waveform window. 
