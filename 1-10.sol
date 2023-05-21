// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BreakSolidity1_10 {

    // 더하기, 빼기, 곱하기, 나누기 그리고 제곱을 반환받는 계산기를 만드세요
    uint a;
    uint b;
    function plus() public view returns(uint) {
        return a + b;
    }
    function substract() public view returns(uint) {
        return a - b;
    }
    function mulitply() public view returns(uint) {
        return a * b;
    }
    function quotient() public view returns(uint) {
        return a / b;
    }
    function remainder() public view returns(uint) {
        return a % b;
    }
    function square() public view returns(uint) {
        return a ** b;
    }
    

    // 2개의 Input값을 가지고 1개의 output값을 가지는 4개의 함수를 만드시오. 각각의 함수는 더하기, 빼기, 곱하기, 나누기(몫)를 실행합니다.
    function plus(uint _a, uint _b) public pure returns(uint) {
        return _a + _b;
    }
    function substract(uint _a, uint _b) public pure returns(uint) {
        return _a - _b;
    }
    function mulitply(uint _a, uint _b) public pure returns(uint) {
        return _a * _b;
    }
    function quotient(uint _a, uint _b) public pure returns(uint) {
        return _a / _b;
    }
    function remainder(uint _a, uint _b) public pure returns(uint) {
        return _a % _b;
    }
    function square(uint _a, uint _b) public pure returns(uint) {
        return _a ** _b;
    }

    // 1개의 Input값을 가지고 1개의 output값을 가지는 2개의 함수를 만드시오. 각각의 함수는 제곱, 세제곱을 반환합니다.
    function square(uint _a) public pure returns(uint) {
        return _a ** 2;
    }
    function cubic(uint _a) public pure returns(uint) {
        return _a ** 3;
    }


    // 이름(string), 번호(uint), 듣는 수업 목록(string[])을 담은 student라는 구조체를 만들고 그 구조체들을 관리할 수 있는 array, students를 선언하세요.
    struct student {
        string name;
        uint number;
        string[] classes;
    }

    student[] students;


    /*
    1~3을 입력하면 입력한 수의 제곱을 반환받습니다.
    4~6을 입력하면 입력한 수의 2배를 반환받습니다.
    7~9를 입력하면 입력한 수를 3으로 나눈 나머지를 반환받습니다.
    */
    function exam5(uint _a) public pure returns(uint) {
        if(_a <= 3) {
            return _a ** 2;
        } else if(_a <= 6) {
            return _a * 2;
        } else if(_a <= 9) {
            return _a % 3;
        } else {
            revert("enter a value less than 10");
        }
    }


    // 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 9까지 자동으로 채우는 함수를 구현하세요.(for 문)
    uint[] numbers;
    function exam6() public returns(uint[] memory) {
        for(uint i = 0; i <= 9; i++) {
            numbers.push(i);
        }
        return numbers;
    }


    // 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 9까지 자동으로 채우는 함수를 구현하세요.(for 문)
    function exam7() public returns(uint[] memory, uint) {
        uint sum;
        for(uint i = 0; i <= 9; i++) {
            numbers.push(i);
            sum = sum + numbers[i];
        }
        return (numbers, sum);
    }


    /*
        1~10을 입력하면 “A” 반환받습니다.
        11~20을 입력하면 “B” 반환받습니다.
        21~30을 입력하면 “C” 반환받습니다.
    */
    function exam8(uint _a) public pure returns(string memory) {
        if(_a <= 10) {
            return "A";
        } else if(_a <= 20) {
            return "B";
        } else if(_a <= 30) {
            return "C";
        } else {
            revert("enter a value less than 30");
        }
    }


    // 문자형을 입력하면 bytes 형으로 변환하여 반환하는 함수를 구현하세요.
    function exam9(string memory _a) public pure returns(bytes memory) {
        return bytes(_a);
    }


    // 숫자만 들어가는 array numbers를 선언하고 숫자를 넣고(push), 빼고(pop), 특정 n번째 요소의 값을 볼 수 있는(get)함수를 구현하세요.
    function exam10Push(uint _a) public {
        numbers.push(_a);
    }
    function exam10Pop() public {
        numbers.pop();
    }
    function exam10Get(uint _n) public view returns(uint) {
        return numbers[_n];
    }

}

contract BreakSolidity11_20 {

    // 11. uint 형이 들어가는 array를 선언하고, 짝수만 들어갈 수 있게 걸러주는 함수를 구현하세요.
    uint[] evenNumber;
    function pushEvenNum(uint _a) public {
        if(_a % 2 == 0) {
            evenNumber.push(_a);
        }
    }

    // 12. 숫자 3개를 더해주는 함수, 곱해주는 함수 그리고 순서에 따라서 a*b+c를 반환해주는 함수 3개를 각각 구현하세요.
    function plus(uint _a, uint _b, uint _c) public pure returns(uint) {
        return _a + _b + _c;
    }
    function mulitply(uint _a, uint _b, uint _c) public pure returns(uint) {
        return _a * _b * _c;
    }
    function getNum(uint _a, uint _b, uint _c) public pure returns(uint) {
        return _a * _b + _c;
    }

    // 13. 3의 배수라면 “A”를, 나머지가 1이 있다면 “B”를, 나머지가 2가 있다면 “C”를 반환하는 함수를 구현하세요.
    function getNum(uint _a) public pure returns(string memory) {
        if(_a % 3 == 0) {
            return "A";
        } else if(_a % 3 == 1) {
            return "B";
        } else {
            return "C";
        }
    }

    // 14. 학번, 이름, 듣는 수험 목록을 포함한 학생 구조체를 선언하고 학생들을 관리할 수 있는 array를 구현하세요.
    // array에 학생을 넣는 함수도 구현하는데 학생들의 학번은 1번부터 순서대로 2,3,4,5 자동 순차적으로 증가하는 기능도 같이 구현하세요.
    struct Student {
        uint number;
        string name;
        string[] classes;
    }
    Student[] students;

    function pushStudent(uint _number, string memory _name, string[] memory _classes) public {
        students.push()
    }

    // 15. 배열 A를 선언하고 해당 배열에 0부터 n까지 자동으로 넣는 함수를 구현하세요. 


    // 16. 배열 A를 선언하고 해당 배열에 0부터 n까지 자동으로 넣는 함수를 구현하세요. 또 array안의 모든 숫자의 합을 더하는 함수를 구현하세요.


    // 17. string을 input으로 받는 함수를 구현하세요. 이 함수는 true 혹은 false를 반환하는데 Bob이라는 이름이 들어왔을 때에만 true를 반환합니다.


    // 18. 이름을 검색하면 생일이 나올 수 있는 자료구조를 구현하세요.
    // (매핑) 해당 자료구조에 정보를 넣는 함수, 정보를 볼 수 있는 함수도 구현하세요.


    // 19. 숫자를 넣으면 2배를 반환해주는 함수를 구현하세요. 단 숫자는 1000이상 넘으면 함수를 실행시키지 못하게 합니다.


    // 20. 숫자만 들어가는 배열을 선언하고 숫자를 넣는 함수를 구현하세요.
    // 15개의 숫자가 들어가면 3의 배수 위치에 있는 숫자들을 초기화 시키는(3번째, 6번째, 9번째 등등) 함수를 구현하세요.
    // (for 문 응용 → 약간 까다로움)



}