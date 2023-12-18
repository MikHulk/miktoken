A pure ERC20 token.

### Test

```shell
$ forge test -vvv --gas-report
[⠊] Compiling...
[⠒] Installing Solc version 0.8.22
[⠆] Successfully installed Solc 0.8.22
[⠰] Compiling 1 files with 0.8.22
[⠔] Solc 0.8.22 finished in 958.20ms
Compiler run successful!

Running 3 tests for test/MikToken.t.sol:SimpleStorageTest
[PASS] test_token_info() (gas: 15146)
[PASS] test_transfer() (gas: 47094)
[PASS] test_transfer_from() (gas: 99246)
Test result: ok. 3 passed; 0 failed; 0 skipped; finished in 1.18ms
| src/MikToken.sol:MikToken contract |                 |       |        |       |         |
|------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                    | Deployment Size |       |        |       |         |
| 457139                             | 2856            |       |        |       |         |
| Function Name                      | min             | avg   | median | max   | # calls |
| allowance                          | 814             | 814   | 814    | 814   | 1       |
| approve                            | 24739           | 24739 | 24739  | 24739 | 1       |
| balanceOf                          | 562             | 847   | 562    | 2562  | 7       |
| decimals                           | 177             | 177   | 177    | 177   | 1       |
| name                               | 3178            | 3178  | 3178   | 3178  | 1       |
| symbol                             | 3221            | 3221  | 3221   | 3221  | 1       |
| totalSupply                        | 326             | 1326  | 1326   | 2326  | 4       |
| transfer                           | 27988           | 28988 | 28988  | 29988 | 2       |
| transferFrom                       | 2959            | 11904 | 11904  | 20850 | 2       |



 
Ran 1 test suites: 3 tests passed, 0 failed, 0 skipped (3 total tests)

$ forge coverage
[⠊] Compiling...
[⠊] Installing Solc version 0.8.22
[⠒] Successfully installed Solc 0.8.22
[⠒] Compiling 27 files with 0.8.22
[⠆] Solc 0.8.22 finished in 2.90s
Compiler run successful!
Analysing contracts...
Running tests...
| File  | % Lines       | % Statements  | % Branches    | % Funcs       |
|-------|---------------|---------------|---------------|---------------|
| Total | 100.00% (0/0) | 100.00% (0/0) | 100.00% (0/0) | 100.00% (0/0) |
```
