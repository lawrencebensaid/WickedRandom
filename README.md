# WickedRandom

Adds various random string constructions.

- Random character string (letters and numbers)
- Random human names
- Random names

## Troubleshooting

### XCTesting

If you are attempting to use the WickedRandom Swift Package in your XC Unit tests, you might see this error:

```
Undefined symbols for architecture arm64:
...
ld: symbol(s) not found for architecture arm64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

It is quite misleading, and can be solved by adding WickedRandom to `Link Binary With Libraries` in your **Tests target**.
<img width="753" alt="Screenshot 2022-03-24 at 5 27 42 PM" src="https://user-images.githubusercontent.com/43364935/160013309-204df26e-f62a-4dff-91d4-f4546cc254c4.png">
