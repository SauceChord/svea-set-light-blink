# svea-set-light-blink

This script allow for easy configuration of lights that should turn on and off in sequence.

- Link lights to the programming board in the order they should turn on in. 
- Do not link anything else to the programming board.
- Do not rename slot names in the programming board. 
- Turn on the programming board.
  - This updates the values on the lights.
  - It turns off automatically when it's done.
- If you need more than 10 lights in sequence, look in the Lua output channel for a _Shift Duration_ to input into its Lua Configuration for `ShiftOffset`.
- Remember to unlink lights after they have been programmed.