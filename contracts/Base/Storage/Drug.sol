pragma solidity ^0.5.0;


/// @author Khalid F.Sh
/// @title Drug Chain Contract
contract Drug {

    /// Variable for tracking Product Kepping Unit (PKU)
    uint pku;

    /// Variable for tracking Stock Louding Uint (SLU)
    uint slu;

    /// Public mapping from PKU to a Drug Item
    mapping (uint => DrugItem) dItems;

    /// Public mapping from SLU to a array of PKU
    mapping (uint => uint[]) stockLouds;

    // Enumaration for defining variety of Drug State
    enum DrugState {
        Manufactured,             
        Packed,
        ForSale,
        Sold,
        Shipped,
        ShippmentEnvUpdated,
        Received,
        StockEnvUpdated,
        Purchased
    }

    // Structure for Envirument update unit
    struct EnvUpdateOpj {
        uint timeStamp;
        uint humidity;
        uint temprture;
        address updaterAddress;
    }

    /// Structure for keeping Drug Design fields structured
    struct DrugItem {
        uint udpc;
        uint pku;
        uint slu;
        DrugState state;
        address payable currentOwnerId;
        address manufacturerId;
        address deistributorId;
        address retailerId;
        uint price;
        uint packingTimeStamp;
        mapping(uint => EnvUpdateOpj) envHistory;
        uint envUpdateCounter;
    }

}