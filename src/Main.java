public class Main {

    //main() method start
    public static void main(String args[]) {

        //Creating object of employee class
        employee emp1 = new employee();
        employee emp2 = new employee();

        //Creating objects/records of the table employee
        emp1.set_Id(101);
        emp1.setName("Emma Watson");
        emp1.setDepartment("Accounts");
        emp2.set_Id(102);
        emp2.setName("Emma marlo");
        emp2.setDepartment("Editing");
        emp1.updateName("Ashley Steve");

        //Reading Employee details
        System.out.println(emp1);
        System.out.println(emp2);

    }
}


