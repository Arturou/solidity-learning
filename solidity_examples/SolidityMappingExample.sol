pragma solidity >=0.7.4;

contract SolidityStructExample {
    mapping(uint => Pokemon) public pokeDex;
    uint public pokemonCount = 0; //counter cache
    
    struct Pokemon {
        uint _id;
        string _name;
        string _type;
    }
    
    function addPokemon(string memory _name, string memory _type) public {
        pokemonCount += 1;
        pokeDex[pokemonCount] = Pokemon(pokemonCount, _name, _type);
    }
}
