import yaml


def thing():
    y = 'foo: bar'
    return yaml.safe_load(y)
