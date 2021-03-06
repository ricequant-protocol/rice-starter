// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./Include.sol";

contract WAR is ERC20UpgradeSafe, Configurable {
	function __WAR_init(address governor_, address mine_, address fund_, address investors_, address eco_) external initializer {
        __Context_init_unchained();
		__ERC20_init_unchained("WeStarter", "WAR");
		__Governable_init_unchained(governor_);
		__WAR_init_unchained(mine_, fund_, investors_, eco_);
	}
	
	function __WAR_init_unchained(address mine_, address fund_, address investors_, address eco_) public governance {
		_mint(mine_,    7800_000 * 10 ** uint256(decimals()));
		_mint(fund_,    1000_000 * 10 ** uint256(decimals()));
		_mint(investors_,700_000 * 10 ** uint256(decimals()));
		_mint(eco_,      500_000 * 10 ** uint256(decimals()));
	}
	
}

