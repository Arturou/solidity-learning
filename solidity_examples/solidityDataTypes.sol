pragma solidity >=0.7.4;

contract SolidityDataTypes {
    string public constant contractName = "Example of a constant variable";
    string public stringValue = "Hi there!";
    bool public boolValue = true;
    //Integers can be signed and unsigned
    int public intValue = -1; // defaults to int256
    uint public uintValue = 1; //No negative values!
    uint8 public uint8Value = 8; //Specify the number of bytes
}
