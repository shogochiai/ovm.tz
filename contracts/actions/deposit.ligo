#include "../models/checkpoint.ligo"

function deposit (const deposit_params: deposit_params; const s: ovm_storage) : context is
begin
  const res: (ops * ovm_storage) = create_checkpoint(deposit_params, s)
end with ((nil: ops), s)