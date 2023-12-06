use starknet::ContractAddress;

#[derive(Model, Drop, Serde)]
struct Player {
    #[key]
    player: ContractAddress,
    x: u16,
    y: u16,
    luck: u16,
    attack: u8,
    coins: u64,
}

struct PlayerClaims {
    #[key]
    player: ContractAddress,
    coins_hiding: u128,
}

struct Goblin {
    #[key]
    id: u32,
    coins_hiding: u128,
}
