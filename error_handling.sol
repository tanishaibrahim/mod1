//1.SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract mod1{
    uint public x=5;
    uint  public y=8;
    function REQ()public view returns(uint){
        uint z=x * y;
        require(z%3==0,"It should be a multiple of 3");
        return z;
    }
    function REV(uint _b)public pure returns(uint){
        if(_b*_b%5!=0){
            revert("Number is not a multiple of 5");
        }
        return _b;
        
    }
    function ASSER()public view returns(uint){
        assert(x*y%3==0 && x*y%5==0);
        return x*y;
    }
    
}
