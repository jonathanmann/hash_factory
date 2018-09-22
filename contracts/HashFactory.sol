pragma solidity ^0.4.18;

contract HashFactory {
    event NewHash(uint id, string text);
    string[] public hashes;

    mapping (uint => address) public hashToOwner;

    function createHash(string _text) public {
        uint id = hashes.push(_text) - 1;
        hashToOwner[id] = msg.sender;
        emit NewHash(id,_text);
    }

    function getHashContent(uint id) public view returns (string) {
        return hashes[id];
    }

    function getHasher(uint id) public view returns (address) {
       return hashToOwner[id];
    }

    function getHashistSize() public view returns (uint) {
        return hashes.length;
    }
}
