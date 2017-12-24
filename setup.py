from setuptools import setup

setup(
    name='provoke-setuptools-race',
    version='1.0',
    install_requires=[
        'pyaml',
        'PyYAML',
    ],
    setup_requires=[
        'pytest-runner'
    ],
    tests_require=[
        'pytest',
        'pytest-xdist',
    ],
)
