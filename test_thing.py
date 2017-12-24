import pytest

import thing


def pytest_generate_tests(metafunc):
    if metafunc.function.__name__ == "test_thing":
        metafunc.parametrize("i", range(10))

def test_thing(i, worker_id):
    print("worker: {}".format(worker_id))
    assert thing.thing() == {'foo': 'bar'}
