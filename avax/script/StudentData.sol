// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/StudentData.sol";

contract DeployStudentData is Script {
    function run() external {
        // Start broadcasting transactions
        vm.startBroadcast();

        // Deploy the StudentData contract with initial values
        StudentData studentData = new StudentData("Avalanche", 2025);

        // Stop broadcasting transactions
        vm.stopBroadcast();

        // Log the deployed contract address
        console.log("StudentData deployed at:", address(studentData));
    }
}
