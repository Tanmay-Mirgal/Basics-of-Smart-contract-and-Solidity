// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage, SimpleStorage2, SimpleStorage3, SimpleStorage4} from "./FirstContract.sol";

contract StorageFactory {
    //uint356 public favnum;
    //datatype visibility name;
    SimpleStorage[] public ListofSimpleStorageContract;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        ListofSimpleStorageContract.push(newSimpleStorage);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newSimpleStorageNumber
    ) public {
        //address
        //ABI- Application Binary Interaction
        SimpleStorage mySimpleStorage = ListofSimpleStorageContract[
            _simpleStorageIndex
        ];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = ListofSimpleStorageContract[
            _simpleStorageIndex
        ];
        return mySimpleStorage.something();
    }
}
