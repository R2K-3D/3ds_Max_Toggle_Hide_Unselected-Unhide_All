/*
Author: R2K-3D
Version: v1.0
GitHub: https://github.com/R2K-3D
Description: Toggle script for Hide Unselected / Unhide All Faces in Editable Poly
Compatible with: 3ds Max 2022 and newer
*/

macroScript ToggleHideUnselectedUnhide
category:"Custom Tools"
tooltip:"Toggle Hide Unselected / Unhide All Faces"
(
    -- Always initialize global variable at start
    global g_hideState
    if g_hideState == undefined then g_hideState = 0
    
    g_hideState = g_hideState + 1
    print ("Toggle count: " + g_hideState as string)
    
    if mod g_hideState 2 == 0 then
    (
        print "==> Unhide All"
        $.EditablePoly.unhideAll #Face
    )
    else
    (
        print "==> Hide Unselected"
        
        -- Save current face selection
        local savedSelection = polyop.getFaceSelection $
        
        if savedSelection.numberSet > 0 then
        (
            -- Invert selection (select unselected faces)
            local allFaces = #{1..$.numfaces}
            local invertedSelection = allFaces - savedSelection
            
            -- Set inverted selection
            polyop.setFaceSelection $ invertedSelection
            
            -- Hide (now unselected faces will be hidden)
            $.EditablePoly.Hide #Face
            
            -- Restore original selection
            polyop.setFaceSelection $ savedSelection
        )
        else
        (
            print "No polygons selected"
        )
    )
)
