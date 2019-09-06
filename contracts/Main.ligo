#include "Types.ligo"
#include "Deposit.ligo"

function main (const act : action ; const s : int) : (list(operation) * int) is
  block { skip } with ((nil : list(operation)),
    case act of
    | Deposit(n) -> deposit(s, n)
    end)

