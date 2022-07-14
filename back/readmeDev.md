# infura
- https://infura.io/dashboard
- web3 활용하여 이터리움 메인/테스트 연결 링크 제공

# back 구현 npm
- npm i express
- npm install nodemon --save-dev

- npm i body-parser
- npm i cors

# truffle
* npm install -g npm@6
=>  truffle는 npm@6버젼에서만 사용 가능(node-v 상관없음)
- npm install -g truffle
- truffle init
- truffle migrate //   컴파일 후, 디플로이 진행
- truffle 


- npm install truffle-contract-size
- + truffle-config.js 에 plugins: ["truffle-contract-size"] 추가
- 사용법 : truffle run contract-size --contracts HallaHDAO_test
- 공식github : https://github.com/IoBuilders/truffle-contract-size
=> 솔리디티 파일 총 용량 추출 플러그인

# 오픈재플린 모듈 설치
npm i @openzeppelin/contracts
