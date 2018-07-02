project "Falcor"
    kind "StaticLib"
        
    files "Framework/Source/API/**"
    
    filter "system:windows"
        removefiles "Framework/Source/API/Vulkan/**"
        
    filter "system:linux"
        removefiles "Framework/Source/API/D3D12/**"
    
    zpm.export [[
        includedirs "Framework/Source/"
        cppdialect "C++11"
        
        zpm.uses {
                "Zefiros-Software/GLM"
            }
    ]]