// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// Creating contract
contract SimpleStorage {
    // variable type
    // string anything - you can add more, like this by specifying type

    uint256 favouriteNumber;

    // Objects in sol
    struct People {
        //creating object
        uint256 favouriteNumber;
        string name;
    }

    // Arrays in sol
    People[] public people;

    // Mapping like puting any value and getting its data, like fetching products through id using map
    mapping(string => uint256) public personToNumer;

    //Function added as public - so anyone can we - virtual is to accept overiding
    function store(uint256 favNumber) public virtual {
        favouriteNumber = favNumber;
        //To read this data in below
        retrieve();
    }

    // View keyword and pure helps to view that function in which it is called and returns use in top know it will return something
    function retrieve() public view returns (uint256) {
        // Favourite number is returned here
        return favouriteNumber;
    }

    // Adding function in memory
    function addPerson(string memory _name, uint256 _favNum) public {
        People memory newBc = People({name: _name, favouriteNumber: _favNum});
        people.push(newBc);
        personToNumer[_name] = _favNum;
    }
}
