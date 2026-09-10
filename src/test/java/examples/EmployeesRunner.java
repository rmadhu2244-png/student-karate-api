package examples;

import com.intuit.karate.junit5.Karate;

class EmployeesRunner {

    @Karate.Test
    Karate testEmployees() {
        return Karate.run("students").relativeTo(getClass());
    }
}
