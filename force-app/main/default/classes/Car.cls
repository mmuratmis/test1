public  class Car {
    public string carColor = '';
    public string carName = '';
 //basina public yazmadigin surece private.
    integer maxSpeedKmPerHr = 150;

    public void switchOn(){
        system.debug('Starting car now');
    }


    public void drive(){
        system.debug('driving ' + carName);

    }

    public void drivingAtMaxSpeed(){
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKmPerHr + 'km/hr';


    }
}
