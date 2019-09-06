type deposit_params is record
  token_type: address;
  amount: nat;
end

type action is
| Deposit of deposit_params
