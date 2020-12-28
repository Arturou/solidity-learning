pragma solidity >=0.7.4;

contract SolidityStructExample {
    mapping(uint => Pokemon) public pokeDex;
    uint public pokemonCount = 0; //counter cache
    uint openingTime = 1609139834;
    
    //Creating a modifier
    //Will not allow anyone to use a function before a certain time
    //Using block.timestamp to get current time.
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }
    
    struct Pokemon {
        uint _id;
        string _name;
        string _type;
    }
    
    
    //Publicly available function which can only be used after a certain timestamp
    function addPokemon(string memory _name, string memory _type) public onlyWhileOpen {
        incrementCount();
        pokeDex[pokemonCount] = Pokemon(pokemonCount, _name, _type);
    }
    
    //function only accessible to the smart contract internally
    function incrementCount() internal {
        pokemonCount += 1;
    }
}
