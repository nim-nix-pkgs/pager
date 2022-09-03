# nim-pager

A simple command line pager, written in [Nim](https://nim-lang.org). 

## Usage

This project can be compiled into a binary using `nimble`. However, its primary use is as a library. In your project, use it as follows:

```
import pager

# assign some long string to longString
page(longString)
```

This will split the value of `longString` onto lines that can be stepped through with the following keys:

- `j`: down
- `k`: up
- `g`: go to top
- `G`: go to bottom
- `Ctrl-U`: go up one-half of the screen
- `Ctrl-D`: go down one-half of the screen
- `q`: quit

These keys can be customized by passing optional arguments to `page`. See the function signature of `page` for details.

## Project Goals

`pager` was written for [roman](https://git.sr.ht/~reesmichael1/roman), and currently only has the flexibility and features required for that task. However, any patches or requests for extension would be welcome!

## Contributing

Contributions are welcome! Please send patches, questions, requests, etc. to my [public inbox](mailto:~reesmichael1/public-inbox@lists.sr.ht).
