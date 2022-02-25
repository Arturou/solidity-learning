pragma solidity >=0.7.4;

contract SolidityEnumExample {
    enum State { Waiting, Ready, Active }
    State public state;
    
    constructor() {
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}
