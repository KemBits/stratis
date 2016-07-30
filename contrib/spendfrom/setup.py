from distutils.core import setup
setup(name='STRAspendfrom',
      version='1.0',
      description='Command-line utility for stratis "coin control"',
      author='Gavin Andresen',
      author_email='gavin@stratisfoundation.org',
      requires=['jsonrpc'],
      scripts=['spendfrom.py'],
      )
