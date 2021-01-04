pragma solidity >=0.4.22 <0.9.0;

contract Ballot {
    address owner;

    struct Voter{
        bool canVote;
        bool alreadyVoted;
        address voterAddress;
    }

    uint public voterCount;

    mapping(uint => Voter) public voters;

    constructor() public {
        owner = msg.sender;
        addVoter(msg.sender);
    }

    function addVoter(address _voter) public {
        voterCount++;
        voters[voterCount] = Voter(true,false,_voter);
    }
    function getVoters() public view returns(uint voterCount) {
        return voterCount;
    }
}
