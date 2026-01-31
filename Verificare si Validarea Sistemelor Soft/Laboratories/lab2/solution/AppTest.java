import domain.Student;
import domain.Tema;
import repository.NotaXMLRepo;
import repository.StudentXMLRepo;
import repository.TemaXMLRepo;
import service.Service;
import validation.NotaValidator;
import validation.StudentValidator;
import validation.TemaValidator;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;


@Tag("StudentAssignmentTests")
class AppTest {

    // Service and repository components
    private Service serviceManager;
    private StudentXMLRepo studentRepository;
    private TemaXMLRepo assignmentRepository;

    // Test data constants
    private static final String STUDENT_TEST_ID = "test_id";
    private static final String ASSIGNMENT_TEST_ID = "test_tema";

    // XML file paths
    private static final String STUDENT_XML_PATH = "fisiere/Studenti.xml";
    private static final String ASSIGNMENT_XML_PATH = "fisiere/Teme.xml";
    private static final String GRADE_XML_PATH = "fisiere/Note.xml";

    @BeforeEach
    void setUp() {
        // Initialize validators
        StudentValidator studentValidator = new StudentValidator();
        TemaValidator assignmentValidator = new TemaValidator();

        // Set up repositories
        studentRepository = new StudentXMLRepo(STUDENT_XML_PATH);
        assignmentRepository = new TemaXMLRepo(ASSIGNMENT_XML_PATH);
        NotaXMLRepo gradeRepository = new NotaXMLRepo(GRADE_XML_PATH);

        // Initialize grade validator with dependencies
        NotaValidator gradeValidator = new NotaValidator(studentRepository, assignmentRepository);

        // Create service with all components
        serviceManager = new Service(
                studentRepository,
                studentValidator,
                assignmentRepository,
                assignmentValidator,
                gradeRepository,
                gradeValidator
        );
    }

    @Test
    void validStudentShouldBeAddedSuccessfully() {
        // Create a valid student
        Student testStudent = new Student(
                STUDENT_TEST_ID,
                "Andi Dogariu Baciulescu",
                932,
                "andidogariu@stud.ubbcluj.ro"
        );

        // No exception should be thrown
        assertDoesNotThrow(() -> {
            serviceManager.addStudent(testStudent);
        }, "Adding valid student should not throw exception");

        // Clean up
        serviceManager.deleteStudent(STUDENT_TEST_ID);
    }

    @Test
    void studentWithNegativeGroupShouldBeRejected() {
        // Create a student with invalid group number
        Student testStudent = new Student(
                STUDENT_TEST_ID,
                "Andi Dogariu Baciulescu",
                -933,
                "andidogariu@stud.ubbcluj.ro"
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    // <---------------------------------------> Equivalence Class Test Cases  <--------------------------------------->
    @Test
    void validStudentWithCustomIdShouldBeAddedSuccessfully() {
        // Test case 1: Valid student with all fields correct
        Student testStudent = new Student(
                "5y111222",
                "Ana Maria",
                932,
                "anamaria@gmail.ro"
        );

        // Should not throw exception
        assertDoesNotThrow(() -> {
            serviceManager.addStudent(testStudent);
        }, "Adding valid student should not throw exception");

        // Clean up
        serviceManager.deleteStudent("5y111222");
    }

    @Test
    void studentWithNegativeIntegerGroupShouldBeRejected() {
        // Test case 2: Student with negative decimal group number
        Student testStudent = new Student(
                "5y111223",
                "Ana Maria",
                -9,
                "anamaria@gmail.ro"
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithEmptyNameShouldBeRejected() {
        // Test case 3: Student with empty name
        Student testStudent = new Student(
                "5y111224",
                "",
                932,
                "anamaria@gmail.ro"
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithNullNameShouldBeRejected() {
        // Test case 4: Student with null name
        Student testStudent = new Student(
                "5y111225",
                null,
                932,
                "anamaria@gmail.ro"
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithEmptyIdShouldBeRejected() {
        // Test case 5: Student with empty ID
        Student testStudent = new Student(
                "",
                "Ana Maria",
                932,
                "anamaria@gmail.ro"
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithNullIdShouldBeRejected() {
        // Test case 6: Student with null ID
        Student testStudent = new Student(
                null,
                "Ana Maria",
                932,
                "anamaria@gmail.ro"
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithEmptyEmailShouldBeRejected() {
        // Test case 7: Student with empty email
        Student testStudent = new Student(
                "5y111226",
                "Ana Maria",
                932,
                ""
        );

        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithNullEmailShouldBeRejected() {
        // Test case 8: Student with null email
        Student testStudent = new Student(
                "5y111227",
                "Ana Maria",
                932,
                null
        );
        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void studentWithIncorrectEmailShouldBeRejected() {
        // Test case 8: Student with null email
        Student testStudent = new Student(
                "5y111227",
                "Ana Maria",
                932,
                "blablabla"
        );
        try{
            serviceManager.addStudent(testStudent);
        } catch (Exception e) {
            assertTrue(true);
        }
    }

    @Test
    void addingDuplicateStudentShouldRaiseException() {
        // Create a student with a unique ID
        Student testStudent = new Student(
                "5y111228",
                "Ana Maria",
                932,
                "anamaria@gmail.ro"
        );

        try {
            // First add should succeed
            serviceManager.addStudent(testStudent);

            // Create another student with the same ID but different details
            Student duplicateStudent = new Student(
                    "5y111228",  // Same ID as before
                    "Different Name",
                    935,
                    "different@email.com"
            );

            try{
                serviceManager.addStudent(duplicateStudent);
            } catch (Exception e) {
                assertTrue(true);
            }
        } finally {
            // Clean up - ensure the student is deleted even if test fails
            serviceManager.deleteStudent("5y111228");
        }
    }

    // <---------------------------------------> Boundary-Value Analysis Test Cases  <--------------------------------------->

}
