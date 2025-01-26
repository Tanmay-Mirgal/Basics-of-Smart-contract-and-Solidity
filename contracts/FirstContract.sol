// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //solidity versions

contract SimpleStorage {
  //Basic Types :boolean,uint,int,address,bytes
//  bool hasFavouriteNumber =true;
 uint256 public FavouriteNumber;
//  int256 fav = -88;
//  string favouriteString = "Hello";
//  address myaddress = 0xD759C5ae07bd0c72098Ad5b3510Bae26941ef50D;
//  bytes32 favByte ="cat";

uint256[] ListOfFavouriteNumber;  // Array of list of favourite numbers
//Struct keyword 
struct Person{
  string name;
  uint256 FavouriteNumber;
} 
// Person public myfriend = Person("pat",7);
// Person public Tanmay = Person({name:"Tanmay",FavouriteNumber:7});
// Person public Adtiya = Person({name:"Adtiya",FavouriteNumber:8});
// Person public Mandar = Person({name:"Mandar",FavouriteNumber:9});
Person[] public listOfPeople;
mapping(string => uint256) public nameToNumber;


//Simple Solidity functions 
function store(uint256 _FavouriteNumber) public virtual  {
    FavouriteNumber = _FavouriteNumber;
}

//view ,pure  
function something() public view returns(uint256){
  return  FavouriteNumber;
}

function addPeople (string memory _name, uint256 _FavouriteNumber)public{
  listOfPeople.push( Person(_name,_FavouriteNumber) );
  nameToNumber[_name] = _FavouriteNumber;
}

}

//0xd9145CCE52D386f254917e481eB44e9943F39138

contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}