//1.SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract handle{
   
    function exponent(uint a, uint b)public pure returns(uint){
        uint z=a ^ b;
        require(z*z>500,"Z should be more than 500");
        return z*z;
    }
    function multiple_check(uint x)public pure returns(uint){
        if(x%7==0){
            revert("7 is very very odd");
        }
        return x;
        
    }
    function check()public pure returns(uint){
        assert(!true);
        return 1;
    }
    
}
