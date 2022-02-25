pragma solidity >=0.7.4;

contract SolidityStructExample {
    mapping(uint => Pokemon) public pokeDex;
    uint public pokemonCount = 0; //counter cache
    
    address owner;
    
    //Creating a modifier
    modifier onlyOwner() {
        //retrieve address interacting with the contract
        require(msg.sender == owner);
        _;
    }
    
    struct Pokemon {
        uint _id;
        string _name;
        string _type;
    }
    
    constructor() {
        //Assigns ownership to the account that deploys the smart contract.
        owner = msg.sender;
    }
    
    //Publicly available function which only the owner of the smart contract can interact with it
    function addPokemon(string memory _name, string memory _type) public onlyOwner{
        incrementCount();
        pokeDex[pokemonCount] = Pokemon(pokemonCount, _name, _type);
    }
    
    //function only accessible to the smart contract internally
    function incrementCount() internal {
        pokemonCount += 1;
    }
}


