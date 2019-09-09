#include "../models/checkpoint.ligo"

function deposit_action (const deposit_params: deposit_params; const s: ovm_storage) : context is
begin
  if amount <= 0mtz then fail "Insufficient fund" else skip;

  // send money to deposit contract
  const deposit_reciever : contract(unit) = get_contract(source);
  const op: operation = transaction(unit, amount, deposit_reciever);
  const ops: ops = list op end;
  const res: context = create_checkpoint(deposit_params, s);

  // create range
  // create state_update
  // create checkpoint
  // update depositedRange global state
  // generate checkpointId
  // create checkpointStatus
  // save checkpoint to map
  // store log to storage (= event equivalent)

end with ((ops:ops), s)