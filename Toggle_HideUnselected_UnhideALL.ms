/*
Author: R2K-3D
Version: v1.1
GitHub: https://github.com/R2K-3D
Description: Toggle script for Hide Unselected / Unhide All Faces in Editable Poly and Edit Poly
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
    
    if selection.count == 1 then
    (
        local obj = $
        local editPolyMod = undefined
        
        -- First check for Edit Poly modifier (priority)
        if obj.modifiers.count > 0 then
        (
            for m in obj.modifiers while editPolyMod == undefined do
            (
                if classof m == Edit_Poly then
                    editPolyMod = m
            )
        )
        
        -- Check if we have Edit Poly modifier OR Editable Poly base
        local canWork = (editPolyMod != undefined) or (classof obj.baseobject == Editable_Poly)
        
        if canWork then
        (
            local currentSubLevel = subobjectLevel
            
            if currentSubLevel == 4 or currentSubLevel == 5 then
            (
                if mod g_hideState 2 == 0 then
                (
                    print "==> Unhide All"
                    
                    if editPolyMod != undefined then
                    (
                        -- Edit Poly modifier - unhide faces AND vertices
                        editPolyMod.ButtonOp #UnhideAllFace
                        editPolyMod.ButtonOp #UnhideAllVertex
                    )
                    else
                    (
                        -- Editable Poly
                        obj.EditablePoly.unhideAll #Face
                    )
                )
                else
                (
                    print "==> Hide Unselected"
                    
                    if editPolyMod != undefined then
                    (
                        -- Edit Poly modifier
                        local currentSubLevelName = if currentSubLevel == 4 then #Face else #Element
                        
                        -- Convert selection to vertices and hide unselected vertices
                        editPolyMod.ConvertSelection currentSubLevelName #Vertex
                        editPolyMod.ButtonOp #HideUnselectedVertex
                        
                        -- Hide unselected faces
                        editPolyMod.ButtonOp #HideUnselectedFace
                    )
                    else
                    (
                        -- Editable Poly - need to invert selection
                        local savedSelection = polyop.getFaceSelection obj
                        
                        if savedSelection.numberSet > 0 then
                        (
                            -- Get all faces and calculate unselected
                            local allFaces = #{1..obj.numfaces}
                            local unselectedFaces = allFaces - savedSelection
                            
                            -- Temporarily select unselected faces
                            polyop.setFaceSelection obj unselectedFaces
                            
                            -- Hide them
                            obj.EditablePoly.Hide #Face
                            
                            -- Restore original selection
                            polyop.setFaceSelection obj savedSelection
                        )
                        else
                        (
                            print "No polygons selected"
                        )
                    )
                )
            )
            else
            (
                print "Switch to Polygon (4) or Element (5) mode"
            )
        )
        else
        (
            print "Select Editable Poly or object with Edit Poly modifier"
        )
    )
    else
    (
        print "Select one object"
    )
)
