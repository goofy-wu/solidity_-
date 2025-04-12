// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ForAndWhileLoops{
    function loops() external pure {
        for (uint i=0; i <=10; i++){
            if (i == 3){
                continue; 
            }
            
            if (i ==5) {
                break;
            }
        }

        uint j = 0;
        while (j < 10){
            j++;
        }
    }
        //如果 _n太大的话所消耗的汽油费会很多
        function conters(uint _n) external pure returns (uint) {
            uint s = 0;
            for (uint i=0; i <= _n; i++){
                s += i;
            }
            return s;
        } 

}
