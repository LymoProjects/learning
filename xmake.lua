add_rules("mode.debug", "mode.release")

set_languages("c++20")
set_runtimes("MD")

target("learning") 
    set_kind("shared")

    add_defines(
        "NDEBUG",
        "NOMINMAX",
        "TEMPLATE_EXPORTS",
        "UNICODE",
        "WIN32_LEAN_AND_MEAN",
        "_AMD64_",
        "_CRT_SECURE_NO_WARNINGS",
        "_UNICODE",
        "_USRDLL",
        "_WINDLL",
        "_WINDOWS"
    )

    add_cxflags(
        "/diagnostics:column",
        "/EHsc",
        "/FC",
        "/GL",
        "/MD",
        "/nologo",
        "/permissive-",
        "/sdl",
        "/utf-8",
        "/Zc:inline",
        "/Zi",
        "/FS"
    )

    add_shflags(
        "/DEBUG",
        "/DELAYLOAD:bedrock_server.dll",
        "/DLL",
        "/IGNORE:4199",
        "/INCREMENTAL:NO",
        "/LTCG:INCREMENTAL",
        "/MANIFESTUAC:NO",
        "/MACHINE:X64",
        "/NOLOGO",
        "/OPT:ICF",
        "/OPT:REF",
        "/SUBSYSTEM:CONSOLE"
    )

    add_files(
        "src/*.cpp"
    )

    add_links(
        "LiteLoader",
        "bedrock_server_api",
        "bedrock_server_var",
        "SymDBHelper"
    )

    add_includedirs(
        "src",
        "SDK/include"
    )

    add_linkdirs(
        "SDK/lib"
    )
target_end()