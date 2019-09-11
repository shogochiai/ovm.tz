type token_type is address

type deposit_params is record
  token_type: token_type;
  amount: nat;
end

type action is
| Deposit of deposit_params

