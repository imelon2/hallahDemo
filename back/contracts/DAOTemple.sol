// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/governance/Governor.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorSettings.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";

contract DaoTemple is Governor, GovernorSettings, GovernorCountingSimple, GovernorVotes, GovernorVotesQuorumFraction {
    /**
      _token : 토큰 contract address
      daoName : dao이름
      _Period : 투표기간(초 단위) 1 * 60 = 60초
      _Threshold : proposel을 생성하기 위해 msg.sender가 소유해야할 최소 토큰 수량
      _Quorum : 의결하는 데 필요한 최소의 토큰 양 (totalSupply * _Quorum %)
     */
    constructor(IVotes _token, string memory daoName, uint _Period, uint _Threshold,uint _Quorum)
        Governor(daoName)
        GovernorSettings(1 /* 1 block */, _Period , _Threshold)
        GovernorVotes(_token)
        GovernorVotesQuorumFraction(_Quorum)
    {}

    // The following functions are overrides required by Solidity.

    function votingDelay()
        public
        view
        override(IGovernor, GovernorSettings)
        returns (uint256)
    {
        return super.votingDelay();
    }

    function votingPeriod()
        public
        view
        override(IGovernor, GovernorSettings)
        returns (uint256)
    {
        return super.votingPeriod();
    }

    function quorum(uint256 blockNumber)
        public
        view
        override(IGovernor, GovernorVotesQuorumFraction)
        returns (uint256)
    {
        return super.quorum(blockNumber);
    }

    function proposalThreshold()
        public
        view
        override(Governor, GovernorSettings)
        returns (uint256)
    {
        return super.proposalThreshold();
    }

}
