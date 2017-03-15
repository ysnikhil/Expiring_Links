pragma solidity ^0.4.4;

contract Links{

	uint public deadline;

	function Links();
	
	//To make the contract disable after a specific period of time
	function startTimer (uint _deadline){

		deadline = block.number  + _deadline;

	}

	function timeUp() returns (bool done) {

		if(deadline <= block.number) {
			return true;
		}
	
		return false;
	}


}
