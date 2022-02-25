pragma solidity >=0.7.4;

contract AwesomeContract {
    string public value = "its a secret";
    
    function set(string memory _value) public {
        value = _value;
    }
}
