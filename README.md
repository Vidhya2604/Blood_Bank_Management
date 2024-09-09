# Blood_Bank_Management

Introduction

Blood banks collect, store and provide collected blood to the patients who are in need of blood. 
The people who donate blood are called ‘donors’. The banks then group the blood which they 
receive according to the blood groups. They also make sure that the blood is not contaminated. 
The main mission of the blood bank is to provide the blood to the hospitals and health care 
systems which saves the patient’s life. No hospital can maintain the health care system without 
pure and adequate blood.

The major concern each blood bank has is to monitor the quality of the 
blood and monitor the people who donates the blood, that is ‘donors’. But this a tough job. The 
existing system will not satisfy the need of maintaining quality blood and keep track of donors. 
To overcome all these limitations we introduced a new system called ‘Blood Donation 
Management System’. 

The ‘Blood Bank Management System’ allows us to keep track of quality 
of blood and also keeps track of available blood when requested by the acceptor. The existing 
systems are Manual systems which are time consuming and not so effective. ‘Blood Bank 
Management system’ automates the distribution of blood. This database consists of thousands 
of records of each blood bank. 

By using this system searching the available blood becomes easy and saves 
lot of time than the manual system. It will hoard, operate, recover and analyze information 
concerned with the administrative and inventory management within a blood bank. This system 
is developed in a manner that it is manageable, time effective, cost effective, flexible and much 
man power is not required.[4] 

# INFORMATION OF ENTITIES 
In total we have eight entities and information of each entity is mentioned below:-

1. Blood_Donor: (Attributes – bd_ID, bd_name, bd_sex, bd_age, bd_Bgroup, bd_reg_date, 
bd_phNo)

        The donor is the person who donates blood, on donation a donor id (bd_ID) is generated and  
used as primary key to identify the donor information. Other than that name, age , sex , blood 
group, phone number and registration dates will be stored in database under Blood_Donor 
entity. 

2. Recipient: (Attributes – reci_ID, reci_name, reci_age, reci_Bgrp, reci_Bqnty , reci_sex, 
reci_reg_date, reci_phNo)

        The Recipient is the person who recivies blood from blood bank, when blood is given  to a 
recipient a rericipient ID (reci_ID) is generated and used as primary key for the recipient entity 
to indentify blood recipients information. Along with it name ,age, sex, blood group (needed), 
blood quantity(needed) , phone number,  and registration dates are also stored in the data base 
under recipient  entity. 

3. BB_Manager: (Attributes – m_ID, m_Name, m_phNo)
    
    The blood bank manager is the person who takes care of the avaible blood samples in the blood 
bank, he is also resposible for handaling blood requests from recipients and hospitals. Blood 
manager has a unique indentfication number (m_ID) used as primary key along with name and 
phone number of blood bank manager will be stored in data base under BB_Manager entity.

4. Recording_Staff : (Attributes – reco_ID, reco_Name, reco_phNo)
   
    The recording staff is a person who registers the blood donor and recipients and the 
Recording_Staff enitity has reco_ID which is primary key along with recoder’s name and 
recodrer’s phone number will also be stored in the data base under Recording_Staff entity. 

5. BloodSpecimen : (Attributes – specimen_number, b_group , status) 

    In data base, under BloodSpecimen entity we will store the information of blood samples which 
are available in the blood bank. In this entity specimen_number and b_group together will be 
primary key along with status attribute which will show if the blood is contaminated on not. 

6. DiseaseFinder : (Attributes - dfind_ID, dfind_name, dfind_PhNo) 
    In data base , under DiseaseFinder entity we will store the information of the doctor who checks 
the blood for any kind of contaminations. To store that information we have unique 
identification number (dfind_ID) as primary key. Along with name and phone number of the 
doctor will also be stored under same entitity. 

7. Hospital_Info : (Attributes – hosp_ID, hosp_name, hosp_needed_Bgrp, hosp_needed_Bqnty) 

    In the data base, under Hospital_Info entity we will store the information of hospitals. In this 
hosp_ID and hosp_needed_Bgrp toether makes the primary key. We will store hospital name 
and the blood quantity reqiured at the hospital. 

8. city: (Attributes- city_ID, city_name) 

   This entity will store the information of cities where donors, recipients and hospitals are 
present. A unique indentification number (City_ID) will be used as primary key to indefiy the 
information about the city. Along with ID city names will also be stored under this entity.
