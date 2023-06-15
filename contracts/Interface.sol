// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// IWatCard interface
interface IWatCard {
    function getBalance() external view returns (uint256);
}

// Student contract implementing IWatCard
contract Student is IWatCard {
    uint256 private balance;

    function getBalance() external view override returns (uint256) {
        return balance;
    }

    function setBalance(uint256 _balance) public {
        balance = _balance;
    }
}

// FoodService contract implementing IWatCard
contract FoodService is IWatCard {
    uint256 private revenue;

    function getBalance() external view override returns (uint256) {
        return revenue;
    }

    function addRevenue(uint256 _amount) public {
        revenue += _amount;
    }
}

// University contract
contract University {
    function checkBalances(IWatCard _card1, IWatCard _card2) external view returns (uint256, uint256) {
        uint256 balance1 = _card1.getBalance();
        uint256 balance2 = _card2.getBalance();
        return (balance1, balance2);
    }
}
