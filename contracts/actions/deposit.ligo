#include "../models/checkpoint.ligo"

function deposit_action (const deposit_params: deposit_params; const s: ovm_storage) : context is
begin
  skip
  // send money to deposit contract
  // const deposit_reciever : contract(unit) = get_contract("TZ1...");
  // if amount > 0 then
  //   const op: operation = transaction(unit, amount, deposit_reciever);

  //   const res: context = create_checkpoint(deposit_params, s);
  //   // create range
  //   // create state_update
  //   // create checkpoint
  //   // update depositedRange global state
  //   // generate checkpointId
  //   // create checkpointStatus
  //   // save checkpoint to map

  //   // events
  // else 
  //   fail("Insufficient amount")
end with ((nil:ops), s)