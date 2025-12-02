text
<div align="center">

# 🎯 Toggle Hide Unselected / Unhide All  
<img src="https://img.shields.io/badge/3ds_Max-2022+-00549F?style=for-the-badge&logo=3ds-max&logoColor=white" alt="3ds Max">  
<img src="https://img.shields.io/badge/Version-v1.1-brightgreen?style=for-the-badge&logo=github&logoColor=white" alt="Version">

**One hotkey for two essential modeling actions**  
*Hide Unselected ↔ Unhide All* for **Editable Poly** and **Edit Poly**

[![GitHub stars](https://img.shields.io/github/stars/R2K-3D/3ds_Max_Toggle_Hide_Unselected-Unhide_All?style=social)](https://github.com/R2K-3D/3ds_Max_Toggle_Hide_Unselected-Unhide_All)
[![License](https://img.shields.io/github/license/R2K-3D/3ds_Max_Toggle_Hide_Unselected-Unhide_All?style=flat-square)](LICENSE)

</div>

---

## 🚀 **Why use this script?**

Instead of **2 clicks + mouse movement**:

    Select polygons → 2. Right-click → 3. Hide Unselected
    OR

    Right-click → 2. Unhide All

text

**Just 1 hotkey toggle**:

Alt+H (or any key you choose)

text

## ✨ **Features**

- ✅ **Works with Editable Poly** (base object)
- ✅ **Works with Edit Poly** (modifier)
- ✅ **Polygon (4) & Element (5)** sub-object modes
- ✅ **Lightning fast** - no lag, pure MaxScript
- ✅ **Hotkey or toolbar** - your choice
- ✅ **Selection preserved** after operations

## 📥 **Installation**

### **1. Download & Run**

Download R2K-3D_Toggle_HideUnselected_UnhideALL.ms

text
**MAXScript → Run Script** → Select file

### **2. Assign Hotkey (Recommended)**

Customize → Hotkey Editor
Search: "Toggle Hide Unselected/Unhide All Faces"
Category: R2K-3D Tools
Assign: Alt+H (or your choice)

text

### **3. Add to Toolbar (Optional)**

Customize → Customize User Interface → Toolbars
Category: R2K-3D Tools
Drag "Toggle Hide Unselected/Unhide All Faces" to toolbar

text

## 💾 **Auto-load on Startup** (Optional)

Copy `R2K-3D_Toggle_HideUnselected_UnhideALL.ms` to:

C:\Users[YourName]\AppData\Local\Autodesk\3dsMax\2022 - 64bit\ENU\usermacros\

text

## 🎮 **Usage**

    Select Editable Poly object

    Switch to Polygon (4) or Element (5) mode

    Select faces to KEEP VISIBLE

    Press hotkey:

        1st press: Hides unselected faces

        2nd press: Shows all faces

        Repeat as needed

text

## 📋 **Requirements**
- **3ds Max 2022+**
- **Editable Poly** or **Edit Poly modifier**

---

## 📝 **Commands Used**

| Mode | Hide Unselected | Unhide All |
|------|----------------|------------|
| **Editable Poly** | `invert → Hide #Face` | `unhideAll #Face` |
| **Edit Poly** | `#HideUnselectedFace` | `#UnhideAllFace` |

## 📄 **License**
[MIT License](LICENSE) - Free to use, modify, distribute

---

<div align="center">

**⭐ Star if useful!**  
**Made with ❤️ by [R2K-3D](https://github.com/R2K-3D)**

[![GitHub followers](https://img.shields.io/github/followers/R2K-3D?style=social)](https://github.com/R2K-3D)

</div>