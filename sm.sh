#!/bin/bash

echo -e '\e[92mCrypton Prime is a unique cryptocurrency community. \nCommunity chat, early gems, calendar of events, Ambassador programs, nodes, testnets, personal assistant. \nJoin (RU): \e[95min-prime.crypton.xyz\e[92m.\nOur links (RU, EN, ES): \e[95mlink3.to/crypton\e[92m.\e[0m\n'

curl -L https://foundry.paradigm.xyz | bash && source $HOME/.bashrc && foundryup

echo -e '\e[92m' && read -p 'Request test Ether here: taiko.xyz/docs/alpha-1-testnet/request-from-faucet, then enter your private key: ' KEY && echo -e '\e[0m'

forge init hello_foundry && cd hello_foundry

forge create --legacy --rpc-url https://l2rpc.a1.taiko.xyz --private-key $KEY src/Counter.sol:Counter

KEY=
