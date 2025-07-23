# CMOS_Inverter

#  CMOS Inverter using Sky130 PDK

A basic CMOS inverter designed using **Skywater SKY130 PDK**, simulated using **Xschem + Ngspice**.

---

###   CMOS Inverter Schematic

<p align="center">
  <img src="https://github.com/user-attachments/assets/49de5e47-c97e-4a07-9370-908ce3016dfe" width="600"/>
</p>

This is the transistor-level CMOS inverter:
- **PMOS (pfet_01v8)** connected to VDD
- **NMOS (nfet_01v8)** connected to GND
- Input at node **A**
- Output at node **Vout**

The classic structure of a CMOS inverter using Sky130 standard devices.


###  Simulation Results
<p align="center">
  <img src="https://github.com/user-attachments/assets/f4d75ff4-fa2e-43e1-adcb-ebfcbdb5e310" width="600"/>
</p>

## 🛠 Tools Used
- [Xschem](https://xschem.sourceforge.io/) – for schematic capture
- [Ngspice](http://ngspice.sourceforge.net/) – for transient simulation
- [Sky130 PDK](https://github.com/google/skywater-pdk) – open-source PDK from Skywater
- (Optional) Magic – for layout (next phase)

---

##  Project Overview

This project demonstrates a **standard CMOS inverter**, the most fundamental building block in digital logic:

- PMOS connected to VDD, NMOS connected to GND
- Common input to both gates, common output from their drains
- Output **inverts** the input logic level

---

##  Simulation Details

- VDD: 1.8V
- Input: `PULSE(0 1.8 0 1n 1n 1u 2u)`
- Transient sim: `.tran 0.1u 10u`
- Observed signals: `Vin`, `Vout`

 Inversion verified  
 Clean transition edges  
 Next: Delay and power metrics

---

##  Simulation Output (Ngspice Console)

```bash
Doing analysis at TEMP = 27.000000 and TNOM = 27.000000

Initial Transient Solution

Node          Voltage
----------------------
vout          1.8
a             0
vdd           1.8
v2#branch     0
v1#branch     -2.03745e-12

No. of Data Rows: 250

* Plot:
→ v(A), v(vout)
→ x0 = 3.40816e-06, y0 = 1.80556
```
## CMOS Inverter Transfer Curve

Below is the simulated transfer characteristic (VTC) of the CMOS inverter:

![CMOS Inverter Transfer Curve](https://github.com/user-attachments/assets/87289639-03e8-4293-9d6e-f2a271428737)

