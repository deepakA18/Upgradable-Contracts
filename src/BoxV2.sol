//SPDX-License-Identifier:MIT

pragma solidity ^0.8.24;


import {UpgradeableUUPS} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

contract BoxV2 is  OwnableUpgradeable{
    uint256 internal number;


    function setNumber(uint256 _number) external returns(uint256){
        _number = number;
    }

    function getNumber() external view returns(uint256){
        return number;
    }

    function version() external pure returns(uint256){
        return 2;
    }

function _authorizeUpgrade(address newImplementation) internal override{}
}