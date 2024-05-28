// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;


contract MyToken {

    string public Tokenname= "MehakToken";
    string public Abbrevation = "Mhkt";
    uint public totalsupply;

     mapping(address => uint) public balance;

    // mint function
    function mint(address _address,uint _value) public{
        totalsupply= totalsupply+_value;
        balance[_address] += _value;
    }
    // burn function
    function burn(address _address, uint _value) public{
        if(balance[_address]>=_value){
         totalsupply= totalsupply-_value;
        balance[_address] -= _value;
        }
    }

}
