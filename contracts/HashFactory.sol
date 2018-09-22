pragma solidity ^0.4.18;

contract HashFactory {
    event NewHash(uint id, string hash);
    string[] public hashes;
    mapping (uint => address) public hashToAuthor;

    function createHash(string _hash) public {
        uint id = hashes.push(_hash) - 1;
        hashToAuthor[id] = msg.sender;
        emit NewHash(id,_hash);
    }

    function getHash(uint _hashId) public view returns (string) {
        return hashes[_hashId];
    }

    function getHashAuthor(uint _hashId) public view returns (address) {
       return hashToAuthor[_hashId];
    }

    function getHashListSize() public view returns (uint) {
        return hashes.length;
    }
}
