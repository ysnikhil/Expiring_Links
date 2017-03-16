pragma solidity ^0.4.4;

contract ExpiringLinks{

	struct user{

		address userAddress;
		uint256 amount;
	}



	struct Link {

		address providerAddress;
		string  link;
		bool linkStatus;
		uint linkAccessCount;

	}



	mapping(string => Link) public Links;
	uint public linkAccessed;


	function ExpiringLinks();



	function newLink(address _providerAddress, uint _link, string _songname)  {

		Link L = Links[_songname];
		L.providerAddress = _providerAddress;
	}



    
    function buySongLink(string _songname, uint256 _amount) returns (string link) {

    	Link L = Links[_songname];
    	user memory u;
    	u.userAddress = msg.sender;
    	u.amount = _amount;

    	if(L.linkAccessCount <= 2){

    		L.link="Coldplay/clocks.mp3";

    	}

    	else {

    		throw;
    	}

    	L.linkAccessCount = linkAccessed++;






    }

}
