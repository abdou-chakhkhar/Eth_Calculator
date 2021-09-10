pragma solidity >=0.5.0;

contract Calculator {
    uint256 result;

    event NumberAdded(uint256 n);
    event NumberSubstracted(uint256 n);
    event NumberMultiplied(uint256 n);
    event NumberDivided(uint256 n);

    constructor(uint256 num) public {
        result = num;
    }

    function getResult() public view returns (uint256) {
        return result;
    }

    function addToNumber(uint256 num) public returns (uint256) {
        result += num;
        emit NumberAdded(num);
        return result;
    }

    function substractFromNumber(uint256 num) public returns (uint256) {
        result -= num;
        emit NumberSubstracted(num);
        return result;
    }

    function multiplyWithNumber(uint256 num) public returns (uint256) {
        result *= num;
        emit NumberMultiplied(num);
        return result;
    }

    function divideNumberBy(uint256 num) public returns (uint256) {
        result /= num;
        emit NumberDivided(num);
        return result;
    }
}
