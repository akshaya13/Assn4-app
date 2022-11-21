public class employee {

    //Creating properties of Employee class
    int id;
    String name, department;
    public void set_Id(int id) {
        this.id = id;
    }
    public int get_Id() {
        return id;
    }
    public void updateName(String newName){
        this.name = newName;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
    public String getDepartment() {
        return department;
    }
    public void updateDepartment(String newDept){
        this.name = newDept;
    }

    public String toString()
    {
        return id + " " +  name + " " + department ;
    }


}


//    public int getSalary() {
//        return salary;
//    }
//
//    public void setSalary(int salary) {
//        this.salary = salary;
//    }
//
//    public String getAddress() {
//        return address;
//    }
//
//    public void setAddress(String address) {
//        this.address = address;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//public employee (int id, String name, String department) {
//    this.id = id;
//    this.name = name;
//    this.department = department;
//
//}