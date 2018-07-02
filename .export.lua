project "Falcor"
    kind "StaticLib"
        
    files {"Framework/Source/API/**",
           "Framework/Source/Utils/Platform/OS.cpp",
           "Framework/Source/Utils/Profiler.cpp" }
    
    filter "system:windows"
        removefiles "Framework/Source/API/Vulkan/**"
        
    filter "system:linux"
        removefiles "Framework/Source/API/D3D12/**"
    
    filter ""
    
    zpm.export [[
        includedirs "Framework/Source"
        cppdialect "C++11"
        
        zpm.uses {
                "Zefiros-Software/GLM"
            }
        
        filter "system:windows"
            defines "FALCOR_D3D12"
        
        filter "system:linux"
            defines "FALCOR_VK"
        
        filter ""
    ]]