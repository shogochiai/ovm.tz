#include "types/index.ligo"
#include "actions/deposit.ligo"

function main (const action: action; const s: ovm_storage) : context is
block {skip} with case action of
  | Deposit(deposit_params) -> deposit(deposit_params, s)
end

