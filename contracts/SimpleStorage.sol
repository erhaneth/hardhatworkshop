// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity  ^0.8.0;

contract SimpleStorage {
    //private means only my contract can access this variable. its not hidden on the blockchain
    string private message;
    address public owner; // solidity will generate "owner()" getter function for us

    event MessageChanged(string newMessage);
    modifier onlyOwner(){
        require(msg.sender == owner, "caller is not owner");
    }
    constructor(){
        message = "Chainlik workshop";
        
        owner = msg.sender; // msg.sender is the EOA (externnaly owned account) which called this fucntion
    }
    //check-effects-interactive pattern
    function setMessage(string memory newMessage) public onlyOwner{
        require(bytes(newMessage).length > 0, "empty strings are not allowed")
        message = newMessage;
        emit MessageChanged(newMessage);
    }
    //view is free to consume, no gas required
    function getMessage() public view returns(string memory){
        return message;
    }
}