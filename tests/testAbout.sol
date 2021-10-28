// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.0;

import "contracts/About.sol";

contract TestAbout {
 function testSumToN() public {
    About about = new About();

    uint256 expected = 45;
    uint256 result = about.sumToN(9);
    assert(result == expected);
  }

 function testEven() public {
    About about = new About();

    bool expected = true;
    bool result = about.even(20);
    assert(result == expected);
 }

}