#include "types/index.ligo"
#include "deposit.ligo"

function main (const action: action; const s: ovm_storage) : (list(operation) * ovm_storage) is
block {skip} with case action of
  | Deposit(deposit_params) -> deposit(deposit_params, s)
end

