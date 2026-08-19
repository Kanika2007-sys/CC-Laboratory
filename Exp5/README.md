# Ex.No 05 – Simulate a Cloud Scenario Using CloudSim

## Aim
Simulate a cloud scenario using CloudSim and run a scheduling algorithm that is
not present in CloudSim.

## Procedure
1. Download and install Eclipse IDE for Java Developers
   (https://www.eclipse.org/downloads/).
2. Download `cloudsim-3.0.3` from
   https://github.com/Cloudslab/cloudsim/releases/tag/cloudsim-3.0.3
3. Download `commons-math3-3.6.1` from
   https://commons.apache.org/proper/commons-math/download_math.cgi
4. Extract both archives locally.
5. In Eclipse: **File → New → Project → Java Project**, name it `Cloudsim`,
   uncheck "Use default location", and browse to the extracted `cloudsim-3.0.3`
   folder.
6. In **Libraries** tab, add the external JAR `commons-math3-3.x.jar`, then
   click **Finish**.
7. In Project Explorer, expand `examples → org.cloudbus.cloudsim.examples` and
   open `CloudSimExample1.java`.
8. Run it with **Run → Run** (or `Ctrl+F11`).

## Result (console output)
```
Starting CloudSimExample1...
Initialising...
Starting CloudSim version 3.0
Datacenter_0 is starting...
Broker is starting...
Entities started.
0.0: Broker: Cloud Resource List received with 1 resource(s)
0.0: Broker: Trying to Create VM #0 in Datacenter_0
0.1: Broker: VM #0 has been created in Datacenter #2, Host #0
0.1: Broker: Sending cloudlet 0 to VM #0
400.1: Broker: All Cloudlets executed. Finishing...
400.1: Broker: Destroying VM #0
Broker is shutting down...
Simulation: No more future events
CloudInformationService: Notify all CloudSim entities for shutting down.
Datacenter_0 is shutting down...
Broker is shutting down...
Simulation completed.
Simulation completed.

========== OUTPUT ==========
Cloudlet ID  STATUS   Data center ID  VM ID  Time  Start Time  Finish Time
0            SUCCESS  2               0      400   0.1         400.1
CloudSimExample1 finished!
```

*(No custom scheduling-algorithm source was included in the manual beyond the
built-in `CloudSimExample1.java`; this is Eclipse project setup + the default
example run.)*

## Result Summary
CloudSim was set up and simulated successfully using the Eclipse environment.
