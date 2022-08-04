# caver-js
- npm install caver-js


# react-app-rewired (caver-js 애러이슈)
- 해결방법 : https://forum.klaytn.foundation/t/react-caver-js-import/4660/2
1) npm install react-app-rewired --save-dev
2) npm i https-browserify
3) npm i os-browserify
4) npm i url
5) npm i buffer
6) npm i process

7) package.json
  "scripts": {
    "start": "react-app-rewired start",
    "build": "react-app-rewired build",
    "test": "react-app-rewired test --env=jsdom",
    "eject": "react-app-rewired eject"
    },


# router
- npm i react-router
- npm i react-router-dom

# axios
- npm i axios