function firstCharacter(str) {
    // TODO: 여기에 코드를 작성합니다.
    // let arr = str.split(' ');
    // let result = '';
    // for(let i = 0; i < arr.length; i++) {
    //     result += arr[i][0]
    // }
    return str;
  }

  

let output = firstCharacter();
console.log(output); // --> "hw"

output = firstCharacter(
  'The community at Code States might be the biggest asset'
);
console.log(output); // --> "TcaCSmbtba"