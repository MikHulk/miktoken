// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "../src/MikToken.sol";


contract SimpleStorageTest is Test {
    address user1 = makeAddr("user1");
    address user2 = makeAddr("user2");
    MikToken mikToken;

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function setUp() public {
        mikToken = new MikToken(50000);
    }

    function test_token_info() public {
        assertEq(mikToken.name(), "MikToken");
        assertEq(mikToken.symbol(), "MIK");
        assertEq(mikToken.decimals(), 18);
    }

    function test_transfer() public {
        assertEq(mikToken.totalSupply(), 50000);
        vm.expectEmit();
        emit Transfer(address(this), user1, 500);
        mikToken.transfer(user1, 500);
        assertEq(mikToken.totalSupply(), 50000);
        assertEq(mikToken.balanceOf(user1), 500);
    }

    function test_transfer_from() public {
        assertEq(mikToken.totalSupply(), 50000);
        assertEq(mikToken.balanceOf(user1), 0);

        vm.expectEmit();
        emit Transfer(address(this), user1, 500);
        mikToken.transfer(user1, 500);
        assertEq(mikToken.balanceOf(user1), 500);

        vm.expectEmit();
        emit Approval(user1, user2, 200);
        vm.prank(user1);
        mikToken.approve(user2, 200);
        
        assertEq(mikToken.allowance(user1, user2), 200);

        emit Transfer(address(this), user2, 200);
        vm.prank(user2);
        mikToken.transferFrom(user1, user2, 200);
        assertEq(mikToken.balanceOf(user1), 300);
        assertEq(mikToken.balanceOf(user2), 200);
        
        vm.expectRevert();
        mikToken.transferFrom(user1, user2, 1);

        assertEq(mikToken.balanceOf(user1), 300);
        assertEq(mikToken.balanceOf(user2), 200);
        assertEq(mikToken.totalSupply(), 50000);
    }
}
