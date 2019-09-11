#include "../models/checkpoint.ligo"

function deposit_action (const deposit_params: deposit_params; const s: ovm_storage) : context is
begin
  if deposit_params.amount <= 0n then fail "Insufficient fund" else skip;
  const storage_branch : storage_branch = get_force(deposit_params.token_type, s.branches);

  // send money to deposit contract
  const deposit_reciever : contract(unit) = get_contract(source);
  const op: operation = transaction(unit, amount, deposit_reciever);
  const ops: ops = list op end;


  // create range
  const range: range = record
    start_ = storage_branch.total_deposited;
    end_ = storage_branch.total_deposited + deposit_params.amount;
  end;

  // create state_update

  // create checkpoint
  const res: context = create_checkpoint(deposit_params, s);

  // update depositedRange global state
  // generate checkpointId
  // create checkpointStatus
  // save checkpoint to map
  // store log to storage (= event equivalent)

  // s.branches[deposit_params.token_type] := storage_branch;
  //https://gitlab.com/ligolang/ligo/blob/dev/src/contracts/coase.ligo#L84-87
end with ((ops:ops), s)
