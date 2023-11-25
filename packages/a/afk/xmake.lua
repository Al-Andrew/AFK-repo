package("AFK")
    set_description("Andrew's field kit. C++ utilities library.")

    add_urls("https://github.com/Al-Andrew/AFK.git")
    add_versions("0.0.1", "07052b41e607ab468dcf5f9f00b6a2780ddb87ab")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
        os.cp("include", package:installdir())
    end)
