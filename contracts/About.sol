// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.0;

contract About {

    function alwaysTrue() public pure returns (bool) {
      return true;
    }

    function sumToN(uint256 n) public pure returns (uint256 result) {
        result = 0;
        if (n < 100 )
          while (n > 0) {
              result = result + n;
              n = n - 1;
          }
        else
          revert();
        return result;
    }

    function even(uint256 n) public pure returns (bool result){
        if(n % 2 == 0)
          result = true;
        else
          result = false;
        return result;
    }

}

// ====
// ----
// sum(uint256) : 9 -> 45