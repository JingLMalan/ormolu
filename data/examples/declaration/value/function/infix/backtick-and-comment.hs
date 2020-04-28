foo =
  (proc `bindCP`
   cpSend dict us `seqCP`
   -- Delay so the process does not terminate
   -- before the response arrives.
   cpDelayed us (returnCP sdictUnit ())
  )
