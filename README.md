# Vending-Machine-Controller-System-Using-Verilog

This project implements a Vending Machine Controller using Verilog, designed using a Mealy Finite State Machine (FSM) technique. The vending machine dispenses a water bottle for Rs. 15, accepting Rs. 5 and Rs. 10 coins, and returns the appropriate change if needed.

**Overview**

The vending machine controller is an automated device that provides products like water bottles when the correct payment is inserted. It ensures change is returned if the inserted amount exceeds the product price.

**Features**

Accepts Rs. 5 and Rs. 10 coins.

Dispenses a water bottle priced at Rs. 15.

Returns change if excess money is inserted.

State transitions based on Mealy FSM.

**State Diagram**

The state diagram consists of three states:

S0: Initial state with no money.

S1: Rs. 5 inserted.

S2: Rs. 10 inserted.
![image](https://github.com/user-attachments/assets/42f0abf3-60ba-439d-8d55-d82bb971387d)

**Simulation**

Scenario 1: Rs. 5 + Rs. 5 + Rs. 5 → Product dispensed.
<img width="986" height="160" alt="image" src="https://github.com/user-attachments/assets/671292be-a397-4600-af6b-762946245529" />



Scenario 2: Rs. 10 + Rs. 5 → Product dispensed.
<img width="861" height="159" alt="image" src="https://github.com/user-attachments/assets/e8b4b566-1d69-4c7e-b977-11015abe4208" />



Scenario 3: Rs. 10 + Rs. 10 → Product dispensed with Rs. 5 change.
<img width="838" height="156" alt="image" src="https://github.com/user-attachments/assets/a330af1b-a5f8-483a-ab1b-a65a6959cd6d" />



Scenario 4: Rs. 5 + No further input → Refund Rs. 5.
<img width="812" height="166" alt="image" src="https://github.com/user-attachments/assets/78d95783-75d0-4fb9-9282-0b2534b857fa" />

**Results**

The FSM correctly transitions through states based on coin inputs.

Accurate product dispensing and change return functionality.

**State Machine**



<img width="610" height="396" alt="image" src="https://github.com/user-attachments/assets/ab1b64a6-e6b0-4fac-9892-542ae2432a52" />

**Conclusion**

The vending machine controller efficiently manages product dispensing and change returns using a simple FSM design. It is a useful reference for implementing real-world vending machine controllers.


