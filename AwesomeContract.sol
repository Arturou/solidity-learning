pragma solidity >=0.7.4;

contract AwesomeContract {
    string value;
    
    constructor() {
        value = "its a secret";
    }
    
    function get() public view returns (string memory) {
        return value;
    }
    
    function set(string memory _value) public {
        value = _value;
    }
}
