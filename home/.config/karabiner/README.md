# Karabiner

**Author:** David Boyd<br>
**Date:** 2023-07-25<br>
**Updated:** 2023-09-15

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)

## Introduction

[Karabiner-Elements][official] is a FOSS remapping utility for macOS. Initially
I used it to remap a Razer mouse to only find that that the on-board memory
would have to be changed via Razer's [Synapses][r-synapses]. Regardless, I'm using Karabiner
now as my primary keybinding tool for macOS.

### Usage

So far the [karabiner.json][kb-json] is set to:

1. Switch Razer's DeathAdder V2 keyboard's `left_option` <> `left_command` to
   match a PC keyboard's layout to Apple's.
2. Configure a [10-key layout][numeric-keypad-mode] while holding the `caps_lock`.
3. Insert the following code to modify the `caps_lock + w` to `backspace`:

``` json
{
  "description": "Numeric Keypad Mode [w as backspace]",
  "manipulators": [
    {
      "conditions": [
        {
          "name": "numeric_keypad_mode",
          "type": "variable_if",
          "value": 1
        }
      ],
      "from": {
        "key_code": "w"
      },
      "to": [
        {
          "key_code": "delete_or_backspace"
        }
      ],
      "type": "basic"
    }
  ]
},
```

<!-- Reference Links -->

[kb-json]: ./karabiner.json
[numeric-keypad-mode]: https://ke-complex-modifications.pqrs.org/?q=numeric%20keypad
[official]: https://github.com/pqrs-org/Karabiner-Elements
[r-synapses]: https://www.razer.com/synapse-3
