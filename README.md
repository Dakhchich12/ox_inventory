# 🎒 ox_inventory — Custom Restyle

A modern custom UI restyle of **ox_inventory**, designed to deliver a cleaner, more refined inventory experience while preserving the original inventory system and its core functionality.

This project builds upon the original ox_inventory with restored QB-Core compatibility, additional quality-of-life features, optional item rarity indicators, and visual improvements.

> **Project Status:** Work in Progress  
> **Core Functionality:** Working  
> **NUI Status:** Functional — Some UI bugs remain and require further testing.

---

## ✨ Overview

This version focuses on improving the visual experience without replacing the original inventory logic.

### Key Highlights

- Custom redesigned inventory interface.
- Modern visual styling and improved layout.
- Original inventory functionality preserved.
- Restored compatibility with modern QB-Core versions.
- Optional item rarity indicators.
- Extended image format support.
- Additional image hosting domains.
- Continued improvements and bug fixes.

---

## 📊 Development Status

| Component | Status |
|---|---|
| Original Inventory Logic | 🟢 Working |
| Core Inventory Features | 🟢 Working |
| QB-Core Compatibility | 🟢 Supported |
| ESX Compatibility | 🟢 Supported |
| NUI Interface | 🟡 Functional — Bugs Remaining |
| UI Stability | 🟡 Needs Further Testing |
| Visual Polish | 🚧 In Progress |

### Known Issues

The redesigned NUI is functional, but some bugs are still present.

The main inventory functionality and important features are working. Further testing, debugging, and interface polishing are required before considering the restyle complete.

---

## ⚠️ Notice

This version of `ox_inventory` has been modified to improve compatibility with the latest versions of **qb-core**.

It began as a continuation of an older fork that originally reintroduced QB-Core compatibility. Since then, this fork has evolved into a community-focused version aimed at maintaining broad compatibility while introducing small, non-intrusive quality-of-life enhancements.

**Important:**

The original `ox_inventory` was developed by the **Overextended** team and remains under its original license.

This modified version is not an official release and is not officially supported by the Overextended team.

Please do not contact the original developers for issues specific to this modified fork.

---

## 🔗 Original Project & Credits

This project is based on the original ox_inventory developed by Overextended.

- **Original Repository:** [Overextended/ox_inventory](https://github.com/overextended/ox_inventory)
- **Original Documentation:** [ox_inventory Documentation](https://coxdocs.dev/ox_inventory)
- **Original Organization:** [Overextended](https://github.com/overextended)

All original credits and licensing terms remain applicable.

---

## 🌟 Key Differences & Additional Features

### 1. Custom UI Restyle

The interface has been visually redesigned to provide a more modern inventory experience.

- Custom interface styling.
- Refined visual layout.
- Improved presentation of inventory elements.
- Original inventory functionality retained.

### 2. Rarity Indicators — Optional Visual Feature

Items can display a star icon above their label based on a `rarity` metadata key.

**Supported rarity values:**

`common`, `uncommon`, `rare`, `epic`, `legendary`, `artifact`, `red`, `pink`, `gold`, `rainbow`, `silver`, `bronze`, `copper`, `blue`, `green`, `cyan`, `magenta`, `yellow`, `orange`, `purple`, `lime`, `teal`, `indigo`, `violet`, `maroon`, `navy`, `olive`, `aqua`, `fuchsia`, `black`, `white`, `crimson`, `turquoise`, `lavender`, `rose`.

- Color-based rarity indicators.
- Special animated color-cycling effect for `rainbow`.
- Default rarity definitions in `data/items.lua` and `data/weapons.lua`.
- Runtime metadata overrides.

#### Usage Examples

**Define rarity in items.lua**

```lua
['rare_gem'] = {
    label = 'Rare Gem',
    weight = 50,
    rarity = 'rare',
}
```

**Define rarity in weapons.lua**

```lua
['WEAPON_LEGENDARY_PISTOL'] = {
    label = 'Legendary Pistol',
    weight = 1200,
    durability = 0.2,
    ammoname = 'ammo-9',
    rarity = 'legendary',
}
```

**Runtime metadata override**

```lua
exports.ox_inventory:AddItem(playerId, 'item_name', 1, {
    rarity = 'epic'
})
```

### 3. Modern QB-Core Compatibility

QB-Core compatibility has been restored and adapted for modern versions.

Supported frameworks:

- QB-Core
- ESX
- ox_core
- QBox
- ND_Core

The goal is to maintain compatibility without removing the original framework functionality.

### 4. Extended Image Format Support

Additional image formats are supported:

- `.jpg`
- `.jpeg`
- `.gif`

No additional manual configuration is required for these supported formats.

### 5. Additional Image Hosting Sources

Additional image hosting domains are supported, including:

- `img.bb`
- Discord CDN

This provides more flexibility when using externally hosted inventory images.

---

## 📚 Documentation

For installation instructions, configuration options, exports, and detailed usage:

[Read ox_inventory Documentation](https://coxdocs.dev/ox_inventory)

## 💾 Download

[Download Latest Release](https://github.com/TheOrderFivem/ox_inventory/releases/latest/download/ox_inventory.zip)

## 🧩 Supported Frameworks

| Framework | Support |
|---|---|
| [QB-Core](https://github.com/qbcore-framework/qb-core) | Supported |
| [ESX](https://github.com/esx-framework/esx_core) | Supported |
| [QBox](https://github.com/Qbox-project/qbx_core) | Supported |
| [ox_core](https://github.com/communityox/ox_core) | Supported |
| [ND_Core](https://github.com/ND-Framework/ND_Core) | Supported |

Compatibility with third-party resources is not guaranteed.

---

## ⚙️ Original ox_inventory Features

### Items

- Slot-based inventory storage.
- Customizable item metadata.
- Weapons handled as inventory items.
- Weapon attachments and ammunition systems.
- Special ammunition types.
- Item durability.
- Secure item-use handling.
- Third-party framework item registration support.

### Shops

- Restricted access based on groups and licenses.
- Support for multiple currencies.
- Configurable shop inventories.

### Stashes

- Personal and shared stashes.
- Identifier-based stash registration.
- Group-restricted access.
- Item-based containers such as bags and backpacks.
- Vehicle glovebox and trunk inventories.
- Random item generation in dumpsters and unowned vehicles.

### Security & Synchronization

- Server-side validation for inventory interactions.
- Secure handling of item, shop, and stash operations.
- Logging for important inventory events.
- Synchronized shared inventory access.

---

## 🚧 Development Roadmap

- [x] Restore core inventory functionality.
- [x] Maintain QB-Core compatibility.
- [x] Preserve original inventory features.
- [x] Introduce custom UI restyle.
- [x] Add optional rarity indicators.
- [x] Extend supported image formats.
- [ ] Fix remaining NUI bugs.
- [ ] Improve UI stability.
- [ ] Complete additional testing.
- [ ] Final interface polishing.

---

## 📜 Copyright & License

Copyright © 2024 Overextended.

Original project: [https://github.com/overextended](https://github.com/overextended)

This program is free software: you can redistribute it and/or modify it under the terms of the **GNU General Public License, version 3 or any later version**.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

See the GNU General Public License for more details:

[GNU General Public License](https://www.gnu.org/licenses/)

---

## ❤️ Acknowledgements

Special thanks to:

- **Overextended** — Original ox_inventory development.
- **Community Contributors** — Compatibility improvements and community support.
- **FiveM Community** — Feedback, testing, and continued development.

---

**Built upon the original ox_inventory. Redesigned with a focus on usability, compatibility, and a modern visual experience.**

### 🎨 Restyle by dakhchich