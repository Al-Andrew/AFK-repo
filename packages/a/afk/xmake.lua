package("AFK")
    set_description("Andrew's field kit. C++ utilities library.")

    add_urls("https://github.com/Al-Andrew/AFK.git")
    add_versions("0.0.1", "4496896190d7b6aed3b394081f6f1d594bb8c4de")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
