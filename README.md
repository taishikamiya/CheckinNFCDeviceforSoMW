# CheckinNFCDeviceforSoMW
Check-in NFC Device for SoMW is a device for the service "Society of Mobile Workers."
![Check-in Device for SoMW](https://user-images.githubusercontent.com/26061586/29627686-2aa56454-8833-11e7-9d87-224cba6b2822.jpg)

# Society of Mobile Workers  
Society of Mobile Workers is a project in CIID.  
<http://ciid.dk>

# What's this device
This device is the terminal device to read membership card of the service.  
The device has a NFC (RFID) board and a microcontroller (MKR1000).  
![circuit](https://user-images.githubusercontent.com/26061586/29627393-41ca506e-8832-11e7-92ba-1874d0f01670.png)

# How it works
I provide a Arduino sketch and a Processing sketch. Thus You need Arduino IDE and Processing.
Firstly, you need to upload the sketch into MKR1000. Connect MKR1000 microcontroller and open 'SoMW_Checkin.ino' with Arduino IDE, then press upload button.  
After that, open 'RFID_Action_for_Keynote.pde' on the Processing. I tested it by Arduino IDE 1.6.9 and Processing 3.3.5.

# How to use
Run the processing sketch, you can check-in and check-out using the membership card.  
As a example, this source code has a function sending 'space' to feed slides on Keynote App on Mac. Of course you can play any games by space key using RFID card.


