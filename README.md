<div>

#  3ds Max Toggle Hide Unselected / Unhide All

<div align="center">
    
<img src="https://img.shields.io/badge/3ds_Max-2022+-00549F?style=for-the-badge&logo=3ds-max&logoColor=white" alt="3ds Max">  
<img src="https://img.shields.io/badge/Version-v1.1-brightgreen?style=for-the-badge&logo=github&logoColor=white" alt="Version">

</div>
    
**Toggle script that assigns 2 operations - Hide Unselected and Unhide All - to one button or hotkey, speeding up workflow.**  
Works correctly in **Editable Poly** and **Edit Poly** modes, properly handling vertices (unlike standard 3ds Max functionality).

<div align="center">
    
[![GitHub stars](https://img.shields.io/github/stars/R2K-3D/3ds_Max_Toggle_Hide_Unselected-Unhide_All?style=social)](https://github.com/R2K-3D/3ds_Max_Toggle_Hide_Unselected-Unhide_All)
[![License](https://img.shields.io/github/license/R2K-3D/3ds_Max_Toggle_Hide_Unselected-Unhide_All?style=flat-square)](LICENSE)

</div>

---
<div align="center">

![3dsmax_FXPcxb0Xmp](https://github.com/user-attachments/assets/6d49f1f9-6376-4350-92d3-2fb2e07a4bc2)

</div>
## ✨ **Features**

- ✅ **2-in-1 Toggle** - Hide Unselected ↔ Unhide All on single button
- ✅ **Editable Poly** + **Edit Poly** (modifier) support
- ✅ **Polygon (4)** & **Element (5)** sub-object modes
- ✅ **Proper vertex handling** - synchronized with faces
- ✅ **Selection preserved** after operations
- ✅ **Lightning fast** - pure MaxScript

## 📥 **Installation**

### **1. Download & Run**

Download R2K-3D_Toggle_HideUnselected_UnhideALL.ms

text
**MAXScript → Run Script** → Select file

### **2. Assign Hotkey (Recommended)**

Customize → Hotkey Editor
Search: "Toggle Hide Unselected/Unhide All Faces"
Category: R2K-3D Tools
Assign: Alt+1 (or your choice) <font color="red"><b>ATTENTION: The hotkey must be unique, otherwise there will be conflicts and unstable operation of the script.</b></font>

text

### **3. Add to Toolbar (Optional)**

Customize → Customize User Interface → Toolbars
Category: R2K-3D Tools
Drag "Toggle Hide Unselected/Unhide All Faces"

text

## 🎮 **Usage**

    Select Editable Poly object

    Switch to Polygon (4) or Element (5) mode

    Select faces to KEEP VISIBLE

    Press hotkey/button:

        1st press: Hides unselected faces/vertices

        2nd press: Shows all faces/vertices

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














