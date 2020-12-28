pragma solidity >=0.7.4;

contract SolidityStructExample {
    Pokemon[] public pokeDex;
    //enum pokemonTypes { Fire, Water, Electric, Ground, Rock, Grass, Normal, Psychic}
    uint public pokemonCount = 0;
    
    struct Pokemon {
        string _name;
        string _type;
    }
    
    function addPokemon(string memory _name, string memory _type) public {
        pokeDex.push(Pokemon(_name, _type));
        pokemonCount += 1;
    }
}
