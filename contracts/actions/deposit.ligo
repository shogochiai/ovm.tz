#include "../models/checkpoint.ligo"

function deposit (const deposit_params: deposit_params; const s: ovm_storage) : (list(operation) * ovm_storage) is
begin
  const res: (list(operation) * ovm_storage) = create_checkpoint(deposit_params, s)
end with ((nil: list(operation)), s)