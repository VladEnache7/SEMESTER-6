from pynguin import TestCase
def test_smoke():
    assert TestCase().__class__.__name__ == "TestCase"