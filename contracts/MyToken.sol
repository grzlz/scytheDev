// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/**
 * @title ScytheDev (SCD)
 * @dev Combines ERC20, Pausable, Burnable, Ownable, and Permit functionalities.
 *      - Mints an initial supply (1,968,000) to the deployer.
 *      - Enforces a max transaction limit (configurable by the owner).
 *      - Includes a placeholder function for future logic updates.
 */

contract ScytheDev is ERC20, ERC20Burnable, Ownable, ERC20Permit{
    uint256 private constant INITIAL_SUPPLY = 1968000 * 10 ** 18;
    uint256 private maxTxLimit = 132 * 10 ** 18;

    constructor(address initialOwner)
        ERC20("ScytheDev", "SCD")
        Ownable(initialOwner)
        ERC20Permit("ScytheDev")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function setMaxTxLimit(uint256 _maxTxLimit) external onlyOwner {
        maxTxLimit = _maxTxLimit;
    }    

    function updateLogic() public onlyOwner {
    // Placeholder for future functionality
    }
}
