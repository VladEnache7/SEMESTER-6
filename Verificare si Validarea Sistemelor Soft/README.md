
# ✅ Software Systems Verification and Validation

This course bridges the gap between writing code and engineering reliable software. It covers the full spectrum of quality assurance, from practical testing techniques (Black-box, White-box) to formal mathematical proofs of correctness (Hoare Logic) and modern Agile testing methodologies.

### 📅 Weekly Syllabus

The curriculum progresses from manual inspection to automated testing, and finally to formal theoretical verification.

| Week | 👨‍🏫 Lecture Content | 🧪 Laboratory / Practical Focus |
|:---:|:---|:---|
| **1** | **Introduction:** Verification vs. Validation. Program Inspection techniques. | **Lab 1:** Introduction to Tools & Inspection |
| **2** | **Testing I:** The concept of testing. Unit Testing. **Black-box** testing criteria (Equivalence Partitioning, Boundary Value Analysis). | **Lab 2:** Black-box Testing Implementation |
| **3** | **Testing II:** Unit Testing continued. **White-box** testing criteria (Statement, Branch, Path coverage). | **Lab 3:** White-box Testing & Code Coverage |
| **4** | **Testing Levels:** Unit, Integration, System, Regression, and Acceptance testing. | **Lab 4:** Integration Testing strategies |
| **5** | **Web Testing:** Specific strategies and tools for testing Web Applications. | **Lab 5:** Selenium / Cypress for Web Testing |
| **6** | **Agile Testing:** Scripted testing vs. Exploratory testing. Agile QA workflows. | **Lab 6:** Exploratory Testing & Bug Reporting |
| **7** | **Symbolic Execution:** Analyzing programs by tracking symbolic rather than actual values. | **Lab 7:** Symbolic Execution Tools |
| **8** | **Model Checking:** Automated verification of finite-state systems. | **Lab 8:** Model Checking introduction |
| **9** | **Program Correctness:** Floyd’s method, Hoare’s Axiomatics, Dijkstra’s Weakest Precondition. | **Lab 9:** Formal Proofs exercises |
| **10** | **Quality:** Software Quality attributes and metrics. | **Lab 10:** Measuring Code Quality |
| **11** | **Soft Skills:** Technical testing skills, giving feedback, collaboration in QA. | **Lab 11:** Peer Reviews & Feedback |
| **12** | **Review:** Final exam preparation and comprehensive review. | **Lab 12:** Final Project Assessment |

---

### 💻 Laboratory & Practical Goals

The laboratories are designed to turn theoretical concepts into practical QA skills using industry-standard tools.

#### 🧪 Phase 1: Practical Testing
*   **Black-Box:** Designing test cases based purely on requirements (Specification-based). Techniques include Equivalence Partitioning and Boundary Value Analysis.
*   **White-Box:** Designing test cases based on internal code structure (Structural testing). Aims for 100% Statement or Branch coverage using tools like **JaCoCo** or **JUnit**.
*   **Web Automation:** Using tools like **Selenium WebDriver** to automate browser interactions.

#### 🧪 Phase 2: Formal Verification
*   **Correctness Proofs:** Learning how to mathematically prove that a loop terminates or that a function returns the correct value using **Hoare Triples** $\{P\} C \{Q\}$.
*   **Static Analysis:** Using tools to find bugs without running the code.

---

### 🧠 Competencies Acquired

**Technical Skills:**
*   **Test Case Design:** Creating robust test suites that find edge cases.
*   **Coverage Analysis:** Understanding if your tests actually test the code.
*   **Formal Logic:** Ability to prove algorithm correctness using pre-conditions and post-conditions.
*   **Automation:** Writing scripts that test software automatically (CI/CD integration).

**Soft Skills:**
*   **Inspection:** How to conduct a formal code review.
*   **Reporting:** How to write a clear, reproducible bug report.

---

### 🛠️ Resources & Tools

*   **Unit Testing:** JUnit (Java), NUnit (C#), PyTest (Python).
*   **Coverage:** JaCoCo, IntelliJ Coverage.
*   **Web Automation:** Selenium, Serenity BDD.
*   **Management:** JIRA (for bug tracking), GitHub Actions (for CI).
