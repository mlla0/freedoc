# bdd & rails (thp week 4, day 4)

## 1/3 - freedoc

## made in pair programming by Maud Lévy :fried_shrimp: & Antoine Vercoutère :poultry_leg:

### How to use

1. Git clone the repository to your computer
2. In your terminal, run the `bundle install` command
3. Run the `rails db:migrate` command
3. Then, run the `rails db:seed` command
4. You can now open your rails console by typing `rails console`
5. To display the **doctors table**, type `tp Doctor.all` in the rails console. To display the **patients table**, type `tp Patient.all` in the rails console. To display the **appointments table**, type `tp Appointment.all` in the rails console. To display the **specialties table**, type `tp Specialty.all` in the rails console. To display the **cities table**, type `tp City.all` in the rails console. To display the **join_table_doctors_specialties table**, type `tp JoinTableDoctorsSpecialty.all` in the rails console.


### Composition and information

This app is composed of five tables : `doctors`, `patients`, `appointments`, `specialties`, `cities`, and `join_table_doctors_specialties`

They are composed by the the following columns :

**TABLE : doctors**
* id,
* first_name,
* last_name,
* zip_code,
* city_id,

**TABLE : patients** 
* id,
* first_name,
* last_name,
* city_id

**TABLE : appointments** 
* id,
* doctor_id,
* patient_id,
* date,
* city_id

**TABLE : specialties** 
* id,
* name

**TABLE : cities** 
* id,
* name

**TABLE : join_table_doctors_specialties** 
* id,
* doctor_id,
* specialty_id

### All exercises

* [1/3 freedoc](https://github.com/mlla0/freedoc "#")
* [2/3 dog_airbnb](https://github.com/mlla0/dog_airbnb "#")
* [3/3 gossip_project](https://github.com/avnd26/gossip_project "#")

:kiss: