# Active Devices

* User or Device can log in the system.
* User can register itself.
* User can register a new device with a name to the system.
* Produce 6 characters long **unique id** for newly registered device (containing upper case, lower case and digit).
* Produce 12 characters long **password** for newly registered device (containing upper case, lower case and digit). Produced password gets encrypted in database level.
* Produced password and unique id gets displayed only once.
* Unique id and the password is required for log in as device.
* User can monitor the activity status of its device as 'true' when device logged-in to the system, and as 'false' when device logged-out from the system.

## Perspective of user
Here, user logs in, then adds a new device, sees the generated informations for the devise once, and then see its activity as false.
<p align="left">
  <img width="600" height="342" src="https://user-images.githubusercontent.com/93445248/183637886-94730e75-a592-4477-a854-63d634f3d3ca.jpg">
</p>



<p align="left">
  <img width="600" height="342" src="https://user-images.githubusercontent.com/93445248/183637887-e57e053b-68f9-4767-9229-47ba44a4b144.jpg">
</p>



<p align="left">
  <img width="600" height="342" src="https://user-images.githubusercontent.com/93445248/183637889-60e57b2d-fd7e-4d04-a949-650db6a74228.jpg">
</p>


## Perspective of device
Here, device logs in.
<p align="left">
  <img width="600" height="342" src="https://user-images.githubusercontent.com/93445248/183637891-8de8c9ef-8f4f-40b7-ae9f-036d677912e8.jpg">
</p>



<p align="left">
  <img width="600" height="342" src="https://user-images.githubusercontent.com/93445248/183637877-a577109e-9837-42d4-ac34-d4bdde99e8bc.jpg">
</p>


## Perspective of user after its registered device logs in
Here, device owner sees its device activity true, because the device just logged in. When device logs out 'true' becomes 'false'.
<p align="left">
  <img width="600" height="342" src="https://user-images.githubusercontent.com/93445248/183637883-76b94403-a131-4730-8ae6-c783fb374c14.jpg">
</p>

