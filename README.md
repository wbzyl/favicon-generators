# Favicon Generator

Requires:

* *convert*
* *ruby*
* *thor* gem

## Usage

Currently these task are provided:
```
thor list
favicon
-------
thor favicon:fractal SIZE  # create plasma:fractal favicon.ico, SIZExSIZE, inside public/ directory
thor favicon:hues SIZE     # create blurred random hues favicon.ico, SIZExSIZE, inside public/ directory
thor favicon:tomato SIZE   # create plasma:tomato favicon.ico, SIZExSIZE, inside public/ directory
```

## How does the generated favicons look?

```
thor favicon:fractal 100
```

```
thor favicon:hues 100
```

```
thor favicon:tomato 100
```

## License

Dual licensed under the MIT or GPL licenses.

Copyright &copy; 2013, @wbzyl.
