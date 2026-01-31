# Apply patch BEFORE importing Pynguin
from pynguin.testcase.execution import Compare
Compare.IN = Compare.CONTAINS  # Essential fix

# Now import Pynguin's main
from pynguin.cli import main

if __name__ == "__main__":
    main()