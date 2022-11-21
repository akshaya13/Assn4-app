import java.lang.Thread;
import java.io.*;
import java.util.*;
import java.text.*;

public aspect Processor {
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date date = new Date();
    static int n = 0;

    // Before the main function...
//    {
//        try {
//            Thread.sleep(10);
//
//        } catch (
//                InterruptedException e) {
//            System.out.println("InterruptedException caught");
//        }
//        try {
//            PrintWriter out = new PrintWriter(new FileWriter("sample.csv", true));
//            out.println(
//                    "/*\n" +
//                            " * Description: This is an automatically generated .DOT file\n" +
//                            " node [shape = oval];");
//            out.close();
//        } catch (
//                IOException e) {
//        }
//    }
    pointcut getId(int arg): execution(void employee.set_Id(int)) && args(arg);
    before (int arg): getId(arg) {
        try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            System.out.println("InterruptedException caught");
        }
        try {
            PrintWriter out = new PrintWriter(new FileWriter("sample.csv", true));
            out.print(arg + ",");
            out.close();
        } catch (IOException e) {
        }
    }
    pointcut getName(String arg): execution(void employee.setName(String)) && args(arg);
    before (String arg): getName(arg) {
        try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            System.out.println("InterruptedException caught");
        }
        try {
            PrintWriter out = new PrintWriter(new FileWriter("sample.csv", true));
            out.print(arg + ",");
            out.close();
        } catch (IOException e) {
        }
    }
    pointcut getDepartment(String arg): execution(void employee.setDepartment(String)) && args(arg);
    before (String arg): getDepartment(arg) {
        try {
            Thread.sleep(10);
        } catch (InterruptedException e) {
            System.out.println("InterruptedException caught");
        }
        try {
            PrintWriter out = new PrintWriter(new FileWriter("sample.csv", true));
            out.print(arg + "," + "\n");
            out.close();
        } catch (IOException e) {
        }
    }

        pointcut updateName(String arg): execution(void employee.updateName(String)) && args(arg);
        before (String arg): updateName(arg) {
            try {
                Thread.sleep(10);
            } catch (InterruptedException e) {
                System.out.println("InterruptedException caught");
            }
            try {
                PrintWriter out = new PrintWriter(new FileWriter("sample.csv", true));
                out.print(arg + "," + "\n");
                out.close();
            } catch (IOException e) {
            }

        }

//    {
//        try {
//            Thread.sleep(10);
//        } catch (
//                InterruptedException e) {
//            System.out.println("InterruptedException caught");
//        }
//        try {
//            PrintWriter out = new PrintWriter(new FileWriter("sample.csv", true));
//            out.println("closing braces displayed before}");
//            out.close();
//        } catch (
//                IOException e) {
//        }
//    }
    }

    /* declare parents: Newspaper implements Observer;

    pointcut callnewspaper(): call(Newspaper.new(Blogger));
    before(): callnewspaper() {
        System.out.println("\nSender "+ thisJoinPoint.getSignature().getDeclaringTypeName());
    }

    pointcut callblogger():call(void Blogger.addObserver(Observer));
    before(): callblogger() {
        System.out.println("Receiver " + thisJoinPoint.getSignature().getDeclaringTypeName());
        System.out.println("Message " + thisJoinPoint.getSignature().getName());
    }
//1 done


    pointcut accesors(): call (void Blogger.setHeadline(String));
    before(): accesors() {
        System.out.println("\nSender " + thisJoinPoint.getSignature().getDeclaringTypeName());
    }

    pointcut test1(): call (void Blogger.notifyObservers());
    before(): test1() {
        System.out.println("Receiver " + thisJoinPoint.getSignature().getDeclaringTypeName());
        System.out.println("Message " + thisJoinPoint.getSignature().getName());
        System.out.println("\nSender " + thisJoinPoint.getSignature().getDeclaringTypeName());
    }

//2 done
    pointcut test2(): call (* * .update());
    before(): test2() {
        System.out.println("receiver" + thisJoinPoint);
        System.out.println("receiver" + thisJoinPoint.getSignature().getDeclaringTypeName());
        System.out.println("Message " + thisJoinPoint.getSignature().getName());
    }
    after(): test2() {
        System.out.println("receiver" + thisJoinPoint);
        System.out.println("receiver" + thisJoinPoint.getSignature().getDeclaringTypeName());
        System.out.println("Message " + thisJoinPoint.getSignature().getName());
    }

}
*/



