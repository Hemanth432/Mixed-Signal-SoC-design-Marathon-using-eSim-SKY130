# Mixed Signal SoC design Marathon using eSim & SKY130
# Implementation of Ring counter using Colpitts Oscillator and Multiplexer signal
- [Abstract](#abstract)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Reference Waveform](#reference-waveform)
- [Circuit Details](#circuit-details)
- [Truth Table](#truth-table)
- [Software Used](#software-used)
  * [eSim](#esim)
  * [NgSpice](#ngspice)
  * [Makerchip](#makerchip)
  * [Verilator](#verilator)
- [Circuit Diagram in eSim](#circuit-diagram-in-esim)
- [Verilog Code](#verilog-code)
- [Makerchip](#makerchip-1)
- [Makerchip Plots](#makerchip-plots)
- [Netlists](#netlists)
- [NgSpice Plots](#ngspice-plots)
- [GAW Plots](#gaw-plots)
- [Steps to run generate NgVeri Model](#steps-to-run-generate-ngveri-model)
- [Steps to run this project](#steps-to-run-this-project)
- [Acknowlegdements](#acknowlegdements)
- [References](#references)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>


## Abstract
An integrator is an op amp circuit, whose output is
proportional to the integral of input signal. An integrator is
basically an inverting amplifier where we replace feedback
resistor with a capacitor of suitable value. A multiplexer
(MUX) is a device allowing one or more low-speed analog or
digital input signals to be selected, combined and transmitted
at a higher speed on a single shared medium or within a single
shared device.A Colpitts oscillator looks just like the Hartley
oscillator but the inductors and capacitors are replaced with
each other in the tank circuit.Schmitt trigger devices are
typically used in signal conditioning applications to remove
noise from signals used in digital circuits, particularly
mechanical contact bounce in switches.A ring counter is a
type of counter composed of flip-flops connected into a shift
register, with the output of the last flip-flop fed to the input of
the first, making a "circular" or "ring" structure.

## Reference Circuit Diagram
![WhatsApp Image 2022-09-28 at 8 52 08 PM](https://user-images.githubusercontent.com/93421069/194697610-cb694d02-90b8-453e-bf7e-5a3a4f1d69c4.jpeg)
## Reference Waveform
![image](https://user-images.githubusercontent.com/93421069/157208248-74939048-05c9-41a7-844a-62a3ba550d86.png)
## Circuit Details
The circuit contains the integration of op amp based
integrator, 2×1 multiplexer, Colpitts oscillator, schmitt
trigger and ring counter. The connections are shown in
the Figure1. The expected waveforms are shown in
Figure 2. The implementation focuses on the input
selected through the multiplexer. It is basically focusing
on mixed signal integration.
When the mux select line is 0, it selects vdc output. When
is 1, it will select the integrated output from the
integrator. Next stage, the output is given to the oscillator
to produce the sine wave. The sine wave is given as input
to schmitt trigger to produce pulse output. The pulse
output is used to produce the ring counter output.

</br>
## Truth Table

| States | Qa | Qb | Qc | Qd|
| ------------- | ------------- | ------------- | ------------- |------------|
| 1 | 0 | 0  | 0 |0|
| 2  | 1 | 0| 0|0|
| 3  | 1 |1|0|0|
| 4 | 1 |1|1|0|
| 5 | 1|1|1|1|
|6 |0|1|1|1|
|7|0|0|1|1|
|8|0|0|0|1|
## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

## Circuit Diagram in eSim
The following is the schematic in eSim:
![image](https://user-images.githubusercontent.com/93421069/157199306-16170f62-50a6-42df-a930-14f112a9167c.jpg)
## Verilog Code
![image](https://user-images.githubusercontent.com/93421069/157201419-303a4949-bf9a-4f82-a192-06b1726ea696.jpg)
)
## Makerchip
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:
///////Verilog Code Johnson COunter //////
 
module johnson_counter( out,reset,clk);
input clk,reset;
output [3:0] out;
 
reg [3:0] q;
 
always @(posedge clk)
begin
 
if(reset)
 q=4'd0;
 else
 	begin 
 		q[3]<=q[2];
  		q[2]<=q[1];
  		q[1]<=q[0];
   		q[0]<=(~q[3]);
 	end
 end
 
assign out=q;  
endmodule
 
//////End////


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [3:0] out;//output
//The $random() can be replaced if user wants to assign values
		johnson_counter johnson_counter(.clk(clk), .reset(reset), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule



```
## Makerchip Plots
![image](https://user-images.githubusercontent.com/93421069/157203919-81198120-0aa3-465b-b91a-b82deb184e08.jpg)
## Netlists
![image](https://user-images.githubusercontent.com/93421069/157199341-a6362b3e-6954-409c-83a6-121f35dd0b9f.jpg)
## NgSpice Plots
![image](https://user-images.githubusercontent.com/93421069/157198999-fd38420c-e9da-4a0c-8682-abe88fd31df5.jpg)
![image]((https://user-images.githubusercontent.com/93421069/157199201-5630b945-6a28-4d06-8750-4d1a734e535f.jpg)

![image](https://user-images.githubusercontent.com/93421069/157199144-28832168-615a-45fd-9411-6c148462b3f4.jpg)
![image](https://user-images.githubusercontent.com/93421069/157199217-e84fa852-a6b9-4cc5-a0c7-8879969ac06a.jpg)
![image](https://user-images.githubusercontent.com/93421069/157199231-b4149019-8bd9-4182-a643-45dc2c41fdf8.jpg)
## GAW Plots
![image](https://user-images.githubusercontent.com/93421069/157199313-04d774cc-8efb-47e7-a59b-ddc357910b30.jpg)
## Steps to run generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip 
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully
## Steps to run this project
1. Open a new terminal
2. Clone this project using the following command:</br>
```git clone https://github.com/Hemanth432?tab=repositories ```</br>
3. Change directory:</br>
```cd https://github.com/Hemanth432/Mixed-Signal-simulation-Hackathon ```</br>
4. Run ngspice:</br>
```ngspice johnson_amv_hemanth.cir.out```</br>
5. To run the project in eSim:

  - Run eSim</br>
  - Load the project</br>
  - Open eeSchema</br>
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE

## References
1. Website: "https://www.reddit.com/r/AskElectronics/comments/f7ubt4/astable_multivibrator_schmitt_trigger_johnson/" 


