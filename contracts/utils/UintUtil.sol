/*

  Copyright 2017 Loopring Project Ltd (Loopring Foundation).

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/
pragma solidity ^0.4.11;

/// @title UintUtil
/// @author Daniel Wang - <daniel@loopring.org>
/// @dev uint utility functions

import "zeppelin-solidity/contracts/math/SafeMath.sol";

library UintUtil {
    using SafeMath  for uint;

    function scaled(uint y, uint x, uint xSmaller) constant returns (uint ySmaller) {
        require(xSmaller > 0 && y > 0 && x > 0);
        ySmaller = xSmaller.mul(y).div(x);
        require(ySmaller > 0);
    }

    function tolerantSub(uint x, uint y) constant returns (uint z) {
        if (x >= y) z = x - y; 
        else z = 0;
    }
}
