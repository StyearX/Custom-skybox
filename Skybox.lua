local Lighting = game:GetService("Lighting")

local Skybox = {}
Skybox.Folder = "Roblox/Skyboxes"
Skybox.Selected = nil
Skybox.Locked = false
Skybox.Connection = nil
Skybox.Applying = false
Skybox.CustomInputs = { Lf = "", Rt = "", Up = "", Dn = "", Ft = "", Bk = "" }

Skybox.Skyboxes = {
    ["[sfw] Waguri"] = {
        Folder = "sfwWaguri",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Waguri/waguri_ft.png", File = "sfwWaguri_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Waguri/waguri_bk.png", File = "sfwWaguri_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Waguri/waguri_rt.png", File = "sfwWaguri_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Waguri/waguri_lf.png", File = "sfwWaguri_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Waguri/waguri_up.png", File = "sfwWaguri_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Waguri/waguri_dn.png", File = "sfwWaguri_Dn.png" },
        },
    },
    ["[sfw] Reynai"] = {
        Folder = "sfwReynai",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/back.png", File = "sfwReynai_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/front.png", File = "sfwReynai_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/left.png", File = "sfwReynai_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/right.png", File = "sfwReynai_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/top.png", File = "sfwReynai_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/down.png", File = "sfwReynai_Dn.png" },
        },
    },
    ["[mature] Cryene"] = {
        Folder = "matureCryene",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Cryene/back.png", File = "matureCryene_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Cryene/front.png", File = "matureCryene_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Cryene/left.png", File = "matureCryene_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Cryene/right.png", File = "matureCryene_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Cryene/Top.png", File = "matureCryene_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Cryene/down.png", File = "matureCryene_Dn.png" },
        },
    },
    ["[mature] Rio Tsukatsuki"] = {
         Folder = "RioTsukatsuki",
         ResetHaze = true,
         Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Back.png", File = "Rio TsukatsukiBack.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Front.png", File = "Rio TsukatsukiFront.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Left.png", File = "Rio TsukatsukiLeft.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Right.png", File = "Rio TsukatsukiRight.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Top.png", File = "Rio TsukatsukiTop.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Down.png", File = "Rio TsukatsukiDown.png" },
        },
    },
    ["[sfw] Rio Tsukatsuki Generic"] = {
        Folder = "RioTsukatsuki",
        ResetHaze = true,
        Faces = {
        { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Generic-Back.png", File = "Rio-Tsukatsuki-GenericBack.png" },
        { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Generic-Front.png", File = "Rio-Tsukatsuki-GenericFront.png" },
        { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Generic-Left.png", File = "Rio-Tsukatsuki-GenericLeft.png" },
        { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Generic-Right.png", File = "Rio-Tsukatsuki-GenericRight.png" },
        { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Generic-Top.png", File = "Rio-Tsukatsuki-GenericTop.png" },
        { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rio-Tsukatsuki/Rio-Tsukatsuki-Generic-Down.png", File = "Rio-Tsukatsuki-GenericDown.png" },
        },
    },
    ["[sfw] Yue"] = {
        Folder = "sfwYue",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Yue/Yue-Back.png", File = "sfwYue_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Yue/Yue-Front.png", File = "sfwYue_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Yue/Yue-Left.png", File = "sfwYue_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Yue/Yue-Right.png", File = "sfwYue_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Yue/Yue-Top.png", File = "sfwYue_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Yue/Yue-Down.png", File = "sfwYue_Dn.png" },
        },
    },
    ["[sfw] miku "] = {
        Folder = "sfwmiku",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Miku/Miku-Back.png", File = "sfwmiku_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Miku/Miku-Front.png", File = "sfwmiku_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Miku/Miku-Left.png", File = "sfwmiku_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Miku/Miku-Right.png", File = "sfwmiku_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Miku/Miku-Top.png", File = "sfwmiku_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Miku/Miku-Down.png", File = "sfwmiku_Dn.png" },
        },
    },
    ["[nsfw] RiasGremory"] = {
        Folder = "nsfwRiasGremory",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/RiasGremory/RiasGremory-Back.png", File = "nsfwRiasGremory_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/RiasGremory/RiasGremory-Front.png", File = "nsfwRiasGremory_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/RiasGremory/RiasGremory-Left.png", File = "nsfwRiasGremory_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/RiasGremory/RiasGremory-Right.png", File = "nsfwRiasGremory_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/RiasGremory/RiasGremory-Top.png", File = "nsfwRiasGremory_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/RiasGremory/RiasGremory-Down.png", File = "nsfwRiasGremory_Dn.png" },
        },
    },
    ["[nsfw] MaiSakurajima"] = {
        Folder = "nsfwMaiSakurajima",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/MaiSakurajima-Back.png", File = "nsfwMaiSakurajima_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/MaiSakurajima-Front.png", File = "nsfwMaiSakurajima_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/MaiSakurajima-Left.png", File = "nsfwMaiSakurajima_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/MaiSakurajima-Right.png", File = "nsfwMaiSakurajima_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/MaiSakurajima-Top.png", File = "nsfwMaiSakurajima_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/MaiSakurajima-Down.png", File = "nsfwMaiSakurajima_Dn.png" },
        },
    },
    ["[nsfw] Elbe"] = {
        Folder = "nsfwElbe",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Elbe/Elbe-AzurLane-Back.png", File = "nsfwElbe_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Elbe/Elbe-AzurLane-Front.png", File = "nsfwElbe_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Elbe/Elbe-AzurLane-Left.png", File = "nsfwElbe_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Elbe/Elbe-AzurLane-Right.png", File = "nsfwElbe_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Elbe/Elbe-AzurLane-Top.png", File = "nsfwElbe_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Elbe/Elbe-AzurLane-Down.png", File = "nsfwElbe_Dn.png" },
        },
    },
    ["[nsfw] Mitsuri"] = {
        Folder = "nsfwMitsuri",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Mitsuri/Mitsuri-Back.png", File = "nsfwMitsuri_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Mitsuri/Mitsuri-Front.png", File = "nsfwMitsuri_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Mitsuri/Mitsuri-Left.png", File = "nsfwMitsuri_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Mitsuri/Mitsuri-Right.png", File = "nsfwMitsuri_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Mitsuri/Mitsuri-Top.png", File = "nsfwMitsuri_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Mitsuri/Mitsuri-Down.png", File = "nsfwMitsuri_Dn.png" },
        },
    },
    ["[nsfw] Itsuki Nakano"] = {
        Folder = "nsfwItsukiNakano",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/Itsuki-Nakano-Back.png", File = "nsfwItsukiNakano_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/Itsuki-Nakano-Front.png", File = "nsfwItsukiNakano_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/Itsuki-Nakano-Left.png", File = "nsfwItsukiNakano_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/Itsuki-Nakano-Right.png", File = "nsfwItsukiNakano_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/Itsuki-Nakano-Top.png", File = "nsfwItsukiNakano_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/Itsuki-Nakano-Down.png", File = "nsfwItsukiNakano_Dn.png" },
        },
    },
    ["[sfw] EllenJoe"] = {
        Folder = "sfwEllenJoe",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/EllenJoe/Ellen-Joe-Back.png", File = "sfwEllenJoe_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/EllenJoe/Ellen-Joe-Front.png", File = "sfwEllenJoe_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/EllenJoe/Ellen-Joe-Left.png", File = "sfwEllenJoe_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/EllenJoe/Ellen-Joe-Right.png", File = "sfwEllenJoe_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/EllenJoe/Ellen-Joe-Top.png", File = "sfwEllenJoe_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/EllenJoe/Ellen-Joe-Down.png", File = "sfwEllenJoe_Dn.png" },
        },
    },
    ["[nsfw] Lucoa"] = {
        Folder = "nsfwLucoa",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Lucoa/Lucoa-Back.png", File = "nsfwLucoa_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Lucoa/Lucoa-Front.png", File = "nsfwLucoa_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Lucoa/Lucoa-Left.png", File = "nsfwLucoa_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Lucoa/Lucoa-Right.png", File = "nsfwLucoa_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Lucoa/Lucoa-Top.png", File = "nsfwLucoa_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Lucoa/Lucoa-Down.png", File = "nsfwLucoa_Dn.png" },
        },
    },
    ["[nsfw] Furina"] = {
        Folder = "nsfwFurina",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Furina/Furina-Back.png", File = "nsfwFurina_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Furina/Furina-Front.png", File = "nsfwFurina_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Furina/Furina-Left.png", File = "nsfwFurina_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Furina/Furina-Right.png", File = "nsfwFurina_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Furina/Furina-Top.png", File = "nsfwFurina_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Furina/Furina-Down.png", File = "nsfwFurina_Dn.png" },
        },
    },
    ["[nsfw] Castorice"] = {
        Folder = "nsfwCastorice",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Castorice/back.png", File = "nsfwCastorice_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Castorice/front.png", File = "nsfwCastorice_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Castorice/left.png", File = "nsfwCastorice_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Castorice/right.png", File = "nsfwCastorice_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Castorice/top.png", File = "nsfwCastorice_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Castorice/down.png", File = "nsfwCastorice_Dn.png" },
        },
    },
    ["[sfw] IochiMari"] = {
        Folder = "sfwIochiMari",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/IochiMari/back.png", File = "sfwIochiMari_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/IochiMari/front.png", File = "sfwIochiMari_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/IochiMari/left.png", File = "sfwIochiMari_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/IochiMari/right.png", File = "sfwIochiMari_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/IochiMari/top.png", File = "sfwIochiMari_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/IochiMari/down.png", File = "sfwIochiMari_Dn.png" },
        },
    },
    ["[sfw] Hoshimachi"] = {
        Folder = "sfwHoshimachi",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshimachi/back.png", File = "sfwHoshimachi_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshimachi/front.png", File = "sfwHoshimachi_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshimachi/left.png", File = "sfwHoshimachi_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshimachi/right.png", File = "sfwHoshimachi_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshimachi/top.png", File = "sfwHoshimachi_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshimachi/down.png", File = "sfwHoshimachi_Dn.png" },
        },
    },
    ["[mature] Hoshino"] = {
        Folder = "matureHoshino",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshino/back.png", File = "matureHoshino_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshino/front.png", File = "matureHoshino_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshino/left.png", File = "matureHoshino_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshino/right.png", File = "matureHoshino_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshino/top.png", File = "matureHoshino_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Hoshino/down.png", File = "matureHoshino_Dn.png" },
        },
    },
    ["[nsfw] Rossweisse"] = {
        Folder = "nsfwRossweisse",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rossweisse/back.png", File = "nsfwRossweisse_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rossweisse/front.png", File = "nsfwRossweisse_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rossweisse/left.png", File = "nsfwRossweisse_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rossweisse/right.png", File = "nsfwRossweisse_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rossweisse/top.png", File = "nsfwRossweisse_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rossweisse/down.png", File = "nsfwRossweisse_Dn.png" },
        },
    },
    ["[sfw] ItsukiNakano"] = {
        Folder = "sfwItsukiNakano",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Bk.png", File = "sfwItsukiNakano_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Ft.png", File = "sfwItsukiNakano_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Lf.png", File = "sfwItsukiNakano_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Rt.png", File = "sfwItsukiNakano_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Up.png", File = "sfwItsukiNakano_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Dn.png", File = "sfwItsukiNakano_Dn.png" },
        },
    },
    ["[sfw] ItsukiNakano2"] = {
        Folder = "sfwItsukiNakano2",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Bk.png", File = "sfwItsukiNakano2_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Ft.png", File = "sfwItsukiNakano2_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Lf.png", File = "sfwItsukiNakano2_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Rt.png", File = "sfwItsukiNakano2_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Up.png", File = "sfwItsukiNakano2_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Dn.png", File = "sfwItsukiNakano2_Dn.png" },
        },
    },
    ["[sfw] MaiSakurajima"] = {
        Folder = "sfwMaiSakurajima",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/top.png", File = "sfwMaiSakurajima_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/down.png", File = "sfwMaiSakurajima_Dn.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/left.png", File = "sfwMaiSakurajima_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/right.png", File = "sfwMaiSakurajima_Rt.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/front.png", File = "sfwMaiSakurajima_Ft.png" },
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/back.png", File = "sfwMaiSakurajima_Bk.png" },
        },
    },
    ["[mature] Nakiri-Ayame [Heavy:50+mb]"] = {
        Folder = "matureNakiriAyameHeavy50mb",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Nakiri-Ayame/Nakiri-Ayame-Back.png", File = "matureNakiriAyameHeavy50mb_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Nakiri-Ayame/Nakiri-Ayame-Front.png", File = "matureNakiriAyameHeavy50mb_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Nakiri-Ayame/Nakiri-Ayame-Left.png", File = "matureNakiriAyameHeavy50mb_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Nakiri-Ayame/Nakiri-Ayame-Right.png", File = "matureNakiriAyameHeavy50mb_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Nakiri-Ayame/Nakiri-Ayame-Top.png", File = "matureNakiriAyameHeavy50mb_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Nakiri-Ayame/Nakiri-Ayame-Down.png", File = "matureNakiriAyameHeavy50mb_Dn.png" },
        },
    },
    ["[mature] MikuNakano"] = {
        Folder = "matureMikuNakano",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Bk.png", File = "matureMikuNakano_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Ft.png", File = "matureMikuNakano_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Lf.png", File = "matureMikuNakano_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Rt.png", File = "matureMikuNakano_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Up.png", File = "matureMikuNakano_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Dn.png", File = "matureMikuNakano_Dn.png" },
        },
    },
    ["[sfw] TohkaYatogami"] = {
        Folder = "sfwTohkaYatogami",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami_BK.png", File = "sfwTohkaYatogami_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami_FT.png", File = "sfwTohkaYatogami_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami_LF.png", File = "sfwTohkaYatogami_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami_RT.png", File = "sfwTohkaYatogami_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami_UP.png", File = "sfwTohkaYatogami_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami_DN.png", File = "sfwTohkaYatogami_Dn.png" },
        },
    },
    ["[sfw] TohkaYatogami2"] = {
        Folder = "sfwTohkaYatogami2",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_BK.png", File = "sfwTohkaYatogami2_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_FT.png", File = "sfwTohkaYatogami2_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_LF.png", File = "sfwTohkaYatogami2_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_RT.png", File = "sfwTohkaYatogami2_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_UP.png", File = "sfwTohkaYatogami2_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_DN.png", File = "sfwTohkaYatogami2_Dn.png" },
        },
    },
    ["[mature] LilithAsami"] = {
        Folder = "matureLilithAsami",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_BK.png", File = "matureLilithAsami_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_FT.png", File = "matureLilithAsami_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_LF.png", File = "matureLilithAsami_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_RT.png", File = "matureLilithAsami_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_UP.png", File = "matureLilithAsami_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_DN.png", File = "matureLilithAsami_Dn.png" },
        },
    },
    ["[sfw] Evernight"] = {
        Folder = "sfwEvernight",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_RT.png", File = "sfwEvernight_Bk.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_LF.png", File = "sfwEvernight_Rt.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_BK.png", File = "sfwEvernight_Lf.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_FT.png", File = "sfwEvernight_Ft.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_UP.png", File = "sfwEvernight_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_DN.png", File = "sfwEvernight_Dn.png" },
        },
    },
    ["[nsfw] Rem"] = {
        Folder = "nsfwRem",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rem/Rem-ReZero-Back.png", File = "nsfwRem_Bk.png" },
            { Prop = "SkyboxRt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rem/Rem-ReZero-Right.png", File = "nsfwRem_Rt.png" },
            { Prop = "SkyboxLf", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rem/Rem-ReZero-Left.png", File = "nsfwRem_Lf.png" },
            { Prop = "SkyboxFt", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rem/Rem-ReZero-Front.png", File = "nsfwRem_Ft.png" },
            { Prop = "SkyboxUp", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rem/Rem-ReZero-Top.png", File = "nsfwRem_Up.png" },
            { Prop = "SkyboxDn", Url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Rem/Rem-ReZero-Down.png", File = "nsfwRem_Dn.png" },
        },
    },
    ["[mature] Xenovia Quarta"] = {
        Folder = "matureXenoviaQuarta",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NjM0ODhf/if.png", File = "matureXenoviaQuarta_Lf.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NjM0ODlf/ft.png", File = "matureXenoviaQuarta_Bk.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NjM0OTBf/dn.png", File = "matureXenoviaQuarta_Dn.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NjM0OTFf/bk.png", File = "matureXenoviaQuarta_Ft.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NjM0ODZf/up.png", File = "matureXenoviaQuarta_Up.png" },
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NjM0ODdf/rt.png", File = "matureXenoviaQuarta_Rt.png" },
        },
    },
    ["[sfw] Nino Nakano"] = {
        Folder = "sfwNinoNakano",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NjQyODNf/right1.png", File = "sfwNinoNakano_Rt.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NjQyNzhf/back.png", File = "sfwNinoNakano_Lf.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NjQyODBf/front.png", File = "sfwNinoNakano_Ft.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NjQyODJf/left1.png", File = "sfwNinoNakano_Bk.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NjQyNzlf/down.png", File = "sfwNinoNakano_Dn.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NjQyODFf/up.png", File = "sfwNinoNakano_Up.png" },
        },
    },
    ["[sfw] Nino Nakano 2"] = {
        Folder = "sfwNinoNakano2",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NjQyNTJf/rt.png", File = "sfwNinoNakano2_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NjQyNTBf/up.png", File = "sfwNinoNakano2_Up.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NjQyNTVf/dn.png", File = "sfwNinoNakano2_Dn.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NjQyNTNf/if.png", File = "sfwNinoNakano2_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NjQyNTZf/bk.png", File = "sfwNinoNakano2_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NjQyNTRf/ft.png", File = "sfwNinoNakano2_Lf.png" },
        },
    },
    ["[sfw] Saki Saki"] = {
        Folder = "sfwSakiSaki",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NjQyNzNf/right.png", File = "sfwSakiSaki_Rt.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NjQyNzBf/left.png", File = "sfwSakiSaki_Lf.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NjQyNjhf/front1.png", File = "sfwSakiSaki_Ft.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NjQyNjZf/back1.png", File = "sfwSakiSaki_Bk.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NjQyNjdf/down1.png", File = "sfwSakiSaki_Dn.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NjQyNjlf/Up1.png", File = "sfwSakiSaki_Up.png" },
        },
    },
    ["[mature] Rias Gremory"] = {
        Folder = "matureRiasGremory",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NzkyOTFf/RightRias.png", File = "matureRiasGremory_Rt.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NzkyOTNf/leftRias.png", File = "matureRiasGremory_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NzkyOTVf/front%20Rias.png", File = "matureRiasGremory_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NzkyOTRf/BackRias.png", File = "matureRiasGremory_Lf.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NzkyOThf/downRias.png", File = "matureRiasGremory_Dn.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NzkyOTJf/UpRias.png", File = "matureRiasGremory_Up.png" },
        },
    },
    ["[sfw] Yotsuba Nakano"] = {
        Folder = "sfwYotsubaNakano",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NzkzMzdf/YotsubaRt.png", File = "sfwYotsubaNakano_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NzkzMzhf/YotsubaUp.png", File = "sfwYotsubaNakano_Up.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NzkzMzNf/YotsubaDn.png", File = "sfwYotsubaNakano_Dn.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NzkzMzRf/YotsubaFt.png", File = "sfwYotsubaNakano_Ft.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NzkzMzFf/YotsubaBk.png", File = "sfwYotsubaNakano_Bk.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NzkzMzZf/YotsubaLeft.png", File = "sfwYotsubaNakano_Lf.png" },
        },
    },
    ["[sfw] Hakari Hananozo"] = {
        Folder = "sfwHakariHananozo",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NjEzMTVf/SkyBk.tex", File = "sfwHakariHananozo_Bk.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/s/NjNfOTg0NjEzMTdf/SkyFt.tex", File = "sfwHakariHananozo_Ft.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/s/NjNfOTg0NjEzMThf/SkyIf.tex", File = "sfwHakariHananozo_Lf.png" },
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NjEzMTlf/SkyRt.tex", File = "sfwHakariHananozo_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NjEzMjBf/SkyUp.tex", File = "sfwHakariHananozo_Up.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NjEzMTZf/Skydn.tex", File = "sfwHakariHananozo_Dn.png" },
        },
    },
    ["[sfw] Alya"] = {
        Folder = "sfwAlya",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NzkzMTZf/Rt.png", File = "sfwAlya_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NzkzMTVf/Up.png", File = "sfwAlya_Up.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NzkzMTJf/dn.png", File = "sfwAlya_Dn.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NzkzMTNf/ft.png", File = "sfwAlya_Ft.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NzkzMTFf/bk.png", File = "sfwAlya_Bk.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NzkzMTRf/if.png", File = "sfwAlya_Lf.png" },
        },
    },
    ["[sfw] Alya 2"] = {
        Folder = "sfwAlya2",
        ResetHaze = true,
        Faces = {
            { Prop = "SkyboxRt", Url = "https://od.lk/d/NjNfOTg0NzkzMjRf/AlyaRt.png", File = "sfwAlya2_Rt.png" },
            { Prop = "SkyboxUp", Url = "https://od.lk/d/NjNfOTg0NzkzMjVf/AlyaUp.png", File = "sfwAlya2_Up.png" },
            { Prop = "SkyboxDn", Url = "https://od.lk/d/NjNfOTg0NzkzMjFf/alyaDn.png", File = "sfwAlya2_Dn.png" },
            { Prop = "SkyboxFt", Url = "https://od.lk/d/NjNfOTg0NzkzMjJf/AlyaFt.png", File = "sfwAlya2_Ft.png" },
            { Prop = "SkyboxBk", Url = "https://od.lk/d/NjNfOTg0NzkzMjBf/AlyaBk.png", File = "sfwAlya2_Bk.png" },
            { Prop = "SkyboxLf", Url = "https://od.lk/d/NjNfOTg0NzkzMjNf/AlyaLf.png", File = "sfwAlya2_Lf.png" },
        },
    },
    ["Iteration 3.2.0"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxLf = "rbxassetid://111969418190645",
            SkyboxFt = "rbxassetid://86300370158690",
            SkyboxRt = "rbxassetid://90660761614046",
            SkyboxBk = "rbxassetid://94155581950702",
            SkyboxDn = "rbxassetid://74377450776557",
            SkyboxUp = "rbxassetid://110123630908028",
        },
        StarCount = 3000,
        SunAngularSize = 0,
        MoonAngularSize = 0,
    },
    ["IterationT Remake"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxLf = "rbxassetid://131895067742893",
            SkyboxFt = "rbxassetid://139394863985793",
            SkyboxRt = "rbxassetid://93313124175539",
            SkyboxBk = "rbxassetid://93271230842735",
            SkyboxDn = "rbxassetid://72142305760362",
            SkyboxUp = "rbxassetid://86656757951125",
        },
        StarCount = 3000,
        SunAngularSize = 0,
        MoonAngularSize = 0,
    },
    ["Solas"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxLf = "rbxassetid://114101438300462",
            SkyboxFt = "rbxassetid://81853755030851",
            SkyboxRt = "rbxassetid://105249527747322",
            SkyboxBk = "rbxassetid://74791000689563",
            SkyboxDn = "rbxassetid://116875029841325",
            SkyboxUp = "rbxassetid://100091829278615",
        },
        StarCount = 3000,
        SunAngularSize = 0,
        MoonAngularSize = 0,
    },
    ["Black Storm"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://15502511288",
            SkyboxDn = "rbxassetid://15502508460",
            SkyboxFt = "rbxassetid://15502510289",
            SkyboxLf = "rbxassetid://15502507918",
            SkyboxRt = "rbxassetid://15502509398",
            SkyboxUp = "rbxassetid://15502511911",
        },
    },
    ["HD"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://16553658937",
            SkyboxDn = "rbxassetid://16553660713",
            SkyboxFt = "rbxassetid://16553662144",
            SkyboxLf = "rbxassetid://16553664042",
            SkyboxRt = "rbxassetid://16553665766",
            SkyboxUp = "rbxassetid://16553667750",
        },
    },
    ["Snow"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://155657655",
            SkyboxDn = "rbxassetid://155674246",
            SkyboxFt = "rbxassetid://155657609",
            SkyboxLf = "rbxassetid://155657671",
            SkyboxRt = "rbxassetid://155657619",
            SkyboxUp = "rbxassetid://155674931",
        },
    },
    ["Blue Space"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://15536110634",
            SkyboxDn = "rbxassetid://15536112543",
            SkyboxFt = "rbxassetid://15536116141",
            SkyboxLf = "rbxassetid://15536114370",
            SkyboxRt = "rbxassetid://15536118762",
            SkyboxUp = "rbxassetid://15536117282",
        },
    },
    ["Realistic"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://653719502",
            SkyboxDn = "rbxassetid://653718790",
            SkyboxFt = "rbxassetid://653719067",
            SkyboxLf = "rbxassetid://653719190",
            SkyboxRt = "rbxassetid://653718931",
            SkyboxUp = "rbxassetid://653719321",
        },
    },
    ["Stormy"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://18703245834",
            SkyboxDn = "rbxassetid://18703243349",
            SkyboxFt = "rbxassetid://18703240532",
            SkyboxLf = "rbxassetid://18703237556",
            SkyboxRt = "rbxassetid://18703235430",
            SkyboxUp = "rbxassetid://18703232671",
        },
    },
    ["Pink"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://12216109205",
            SkyboxDn = "rbxassetid://12216109875",
            SkyboxFt = "rbxassetid://12216109489",
            SkyboxLf = "rbxassetid://12216110170",
            SkyboxRt = "rbxassetid://12216110471",
            SkyboxUp = "rbxassetid://12216108877",
        },
    },
    ["Sunset"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://600830446",
            SkyboxDn = "rbxassetid://600831635",
            SkyboxFt = "rbxassetid://600832720",
            SkyboxLf = "rbxassetid://600886090",
            SkyboxRt = "rbxassetid://600833862",
            SkyboxUp = "rbxassetid://600835177",
        },
    },
    ["Arctic"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://225469390",
            SkyboxDn = "rbxassetid://225469395",
            SkyboxFt = "rbxassetid://225469403",
            SkyboxLf = "rbxassetid://225469450",
            SkyboxRt = "rbxassetid://225469471",
            SkyboxUp = "rbxassetid://225469481",
        },
    },
    ["Space"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://166509999",
            SkyboxDn = "rbxassetid://166510057",
            SkyboxFt = "rbxassetid://166510116",
            SkyboxLf = "rbxassetid://166510092",
            SkyboxRt = "rbxassetid://166510131",
            SkyboxUp = "rbxassetid://166510114",
        },
    },
    ["Roblox Default"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxasset://textures/sky/sky512_bk.tex",
            SkyboxDn = "rbxasset://textures/sky/sky512_dn.tex",
            SkyboxFt = "rbxasset://textures/sky/sky512_ft.tex",
            SkyboxLf = "rbxasset://textures/sky/sky512_lf.tex",
            SkyboxRt = "rbxasset://textures/sky/sky512_rt.tex",
            SkyboxUp = "rbxasset://textures/sky/sky512_up.tex",
        },
    },
    ["Red Night"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://401664839",
            SkyboxDn = "rbxassetid://401664862",
            SkyboxFt = "rbxassetid://401664960",
            SkyboxLf = "rbxassetid://401664881",
            SkyboxRt = "rbxassetid://401664901",
            SkyboxUp = "rbxassetid://401664936",
        },
    },
    ["Deep Space 1"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://149397692",
            SkyboxDn = "rbxassetid://149397686",
            SkyboxFt = "rbxassetid://149397697",
            SkyboxLf = "rbxassetid://149397684",
            SkyboxRt = "rbxassetid://149397688",
            SkyboxUp = "rbxassetid://149397702",
        },
    },
    ["Pink Skies"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://151165214",
            SkyboxDn = "rbxassetid://151165197",
            SkyboxFt = "rbxassetid://151165224",
            SkyboxLf = "rbxassetid://151165191",
            SkyboxRt = "rbxassetid://151165206",
            SkyboxUp = "rbxassetid://151165227",
        },
    },
    ["Purple Sunset"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://264908339",
            SkyboxDn = "rbxassetid://264907909",
            SkyboxFt = "rbxassetid://264909420",
            SkyboxLf = "rbxassetid://264909758",
            SkyboxRt = "rbxassetid://264908886",
            SkyboxUp = "rbxassetid://264907379",
        },
    },
    ["Blue Night"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://12064107",
            SkyboxDn = "rbxassetid://12064152",
            SkyboxFt = "rbxassetid://12064121",
            SkyboxLf = "rbxassetid://12063984",
            SkyboxRt = "rbxassetid://12064115",
            SkyboxUp = "rbxassetid://12064131",
        },
    },
    ["Blossom Daylight"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://271042516",
            SkyboxDn = "rbxassetid://271077243",
            SkyboxFt = "rbxassetid://271042556",
            SkyboxLf = "rbxassetid://271042310",
            SkyboxRt = "rbxassetid://271042467",
            SkyboxUp = "rbxassetid://271077958",
        },
    },
    ["Blue Nebula"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://135207744",
            SkyboxDn = "rbxassetid://135207662",
            SkyboxFt = "rbxassetid://135207770",
            SkyboxLf = "rbxassetid://135207615",
            SkyboxRt = "rbxassetid://135207695",
            SkyboxUp = "rbxassetid://135207794",
        },
    },
    ["Blue Planet"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://218955819",
            SkyboxDn = "rbxassetid://218953419",
            SkyboxFt = "rbxassetid://218954524",
            SkyboxLf = "rbxassetid://218958493",
            SkyboxRt = "rbxassetid://218957134",
            SkyboxUp = "rbxassetid://218950090",
        },
    },
    ["Deep Space 2"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://159248188",
            SkyboxDn = "rbxassetid://159248183",
            SkyboxFt = "rbxassetid://159248187",
            SkyboxLf = "rbxassetid://159248173",
            SkyboxRt = "rbxassetid://159248192",
            SkyboxUp = "rbxassetid://159248176",
        },
    },
    ["Summer"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://16648590964",
            SkyboxDn = "rbxassetid://16648617436",
            SkyboxFt = "rbxassetid://16648595424",
            SkyboxLf = "rbxassetid://16648566370",
            SkyboxRt = "rbxassetid://16648577071",
            SkyboxUp = "rbxassetid://16648598180",
        },
    },
    ["Galaxy"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://15983968922",
            SkyboxDn = "rbxassetid://15983966825",
            SkyboxFt = "rbxassetid://15983965025",
            SkyboxLf = "rbxassetid://15983967420",
            SkyboxRt = "rbxassetid://15983966246",
            SkyboxUp = "rbxassetid://15983964246",
        },
    },
    ["Stylized"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://18351376859",
            SkyboxDn = "rbxassetid://18351374919",
            SkyboxFt = "rbxassetid://18351376800",
            SkyboxLf = "rbxassetid://18351376469",
            SkyboxRt = "rbxassetid://18351376457",
            SkyboxUp = "rbxassetid://18351377189",
        },
    },
    ["Minecraft"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://8735166756",
            SkyboxDn = "rbxassetid://8735166707",
            SkyboxFt = "rbxassetid://8735231668",
            SkyboxLf = "rbxassetid://8735166755",
            SkyboxRt = "rbxassetid://8735166751",
            SkyboxUp = "rbxassetid://8735166729",
        },
    },
    ["Cloudy Rain"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://4498828382",
            SkyboxDn = "rbxassetid://4498828812",
            SkyboxFt = "rbxassetid://4498829917",
            SkyboxLf = "rbxassetid://4498830911",
            SkyboxRt = "rbxassetid://4498830417",
            SkyboxUp = "rbxassetid://4498831746",
        },
    },
    ["Black Cloudy Rain"] = {
        ResetHaze = true,
        RbxAssetIds = {
            SkyboxBk = "rbxassetid://149679669",
            SkyboxDn = "rbxassetid://149681979",
            SkyboxFt = "rbxassetid://149679690",
            SkyboxLf = "rbxassetid://149679709",
            SkyboxRt = "rbxassetid://149679722",
            SkyboxUp = "rbxassetid://149680199",
        },
    },
}

function Skybox:SetFolder(Folder)
    self.Folder = Folder
    self:BuildFolderTree()
end

function Skybox:SetLibrary(Library)
    self.Library = Library
end

function Skybox:BuildFolderTree()
    local Paths = {}
    local Parts = self.Folder:split("/")
    for Index = 1, #Parts do
        Paths[#Paths + 1] = table.concat(Parts, "/", 1, Index)
    end
    table.insert(Paths, self.Folder .. "/Custom")

    for Index = 1, #Paths do
        local Path = Paths[Index]
        if not isfolder(Path) then
            makefolder(Path)
        end
    end
end

function Skybox:GetNames()
    local Names = {}
    for Name in pairs(self.Skyboxes) do
        table.insert(Names, Name)
    end
    table.sort(Names)
    return Names
end

function Skybox:Notify(Content)
    if not self.Library then return end
    self.Library:Notify({
        Title = "Skybox",
        Content = Content,
        Duration = 3,
    })
end

function Skybox:ClearSky()
    for _, Child in pairs(Lighting:GetChildren()) do
        if Child:IsA("Sky") then Child:Destroy() end
    end
end

function Skybox:Apply(Data)
    self:ClearSky()

    local NativeSky = Instance.new("Sky")
    NativeSky.SkyboxBk = "rbxasset://textures/sky/sky512_bk.tex"
    NativeSky.SkyboxDn = "rbxasset://textures/sky/sky512_dn.tex"
    NativeSky.SkyboxFt = "rbxasset://textures/sky/sky512_ft.tex"
    NativeSky.SkyboxLf = "rbxasset://textures/sky/sky512_lf.tex"
    NativeSky.SkyboxRt = "rbxasset://textures/sky/sky512_rt.tex"
    NativeSky.SkyboxUp = "rbxasset://textures/sky/sky512_up.tex"
    NativeSky.Parent = Lighting
    NativeSky:Destroy()

    for _, Child in pairs(Lighting:GetChildren()) do
        if Child:IsA("Atmosphere") then Child.Haze = 0 end
    end

    local SkyInstance = Instance.new("Sky")
    SkyInstance.Name = "Sky"
    SkyInstance.CelestialBodiesShown = false
    SkyInstance.StarCount = Data.StarCount or 0
    if Data.SunAngularSize then SkyInstance.SunAngularSize = Data.SunAngularSize end
    if Data.MoonAngularSize then SkyInstance.MoonAngularSize = Data.MoonAngularSize end

    if Data.RbxAssetIds then
        for Prop, Id in pairs(Data.RbxAssetIds) do
            SkyInstance[Prop] = Id
        end
    elseif Data.Faces then
        local Folder = self.Folder .. "/" .. Data.Folder
        self:BuildFolderTree()
        pcall(makefolder, Folder)
        for _, Face in ipairs(Data.Faces) do
            local Path = Folder .. "/" .. Face.File
            if not isfile(Path) then
                writefile(Path, game:HttpGet(Face.Url, true))
            end
            SkyInstance[Face.Prop] = getcustomasset(Path)
        end
    end

    SkyInstance.Parent = Lighting
end

function Skybox:ApplySelected()
    local Data = self.Skyboxes[self.Selected]
    if not Data then return false end
    return pcall(self.Apply, self, Data)
end

function Skybox:ApplySelectedSafely()
    if not self.Skyboxes[self.Selected] then return end
    self.Applying = true
    self:ApplySelected()
    task.wait(0.2)
    self.Applying = false
end

function Skybox:SetLock(State)
    self.Locked = State
    if self.Connection then
        self.Connection:Disconnect()
        self.Connection = nil
    end
    if not State then return end

    self:ApplySelectedSafely()
    self.Connection = Lighting.ChildAdded:Connect(function(Child)
        if not self.Locked then return end
        if self.Applying then return end
        if Child:IsA("Sky") then
            task.wait(0.1)
            self:ApplySelectedSafely()
        end
    end)
end

function Skybox:ResolveInput(Value, FaceName)
    Value = tostring(Value or ""):gsub("^%s*(.-)%s*$", "%1")
    if Value == "" then return nil end
    if Value:match("^rbxassetid://") then
        return Value
    elseif Value:match("^%d+$") then
        return "rbxassetid://" .. Value
    elseif Value:match("^https?://") then
        self:BuildFolderTree()
        local Path = self.Folder .. "/Custom/" .. FaceName .. ".png"
        local Ok = pcall(function() writefile(Path, game:HttpGet(Value, true)) end)
        if Ok then return getcustomasset(Path) end
    end
    return nil
end

function Skybox:ApplyCustom()
    local PropMap = { Lf = "SkyboxLf", Rt = "SkyboxRt", Up = "SkyboxUp", Dn = "SkyboxDn", Ft = "SkyboxFt", Bk = "SkyboxBk" }

    self:ClearSky()

    local SkyInstance = Instance.new("Sky")
    SkyInstance.Name = "Sky"
    SkyInstance.CelestialBodiesShown = false
    SkyInstance.StarCount = 0

    local AppliedAny = false
    for Face, Prop in pairs(PropMap) do
        local Resolved = self:ResolveInput(self.CustomInputs[Face], Face)
        if Resolved then
            SkyInstance[Prop] = Resolved
            AppliedAny = true
        end
    end

    if AppliedAny then
        SkyInstance.Parent = Lighting
        self:Notify("Custom skybox applied.")
    else
        SkyInstance:Destroy()
        self:Notify("No valid inputs provided.")
    end
end

function Skybox:BuildSkyboxSection(Tab)
    assert(self.Library, "Must set Skybox.Library")

    local Names = self:GetNames()
    self.Selected = self.Selected or Names[1]

    local Changer = Tab:AddSection("Skybox Changer")
    Changer:AddSpace({ Height = 15 })

    Changer:AddDropdown("Skybox_BuiltIn", {
        Title = "Built-in Skybox",
        Values = Names,
        Default = self.Selected,
        Search = true,
        Callback = function(Value) self.Selected = Value end
    })

    Changer:AddButton({
        Title = "Apply Skybox",
        Callback = function()
            if not self.Skyboxes[self.Selected] then return end
            if self:ApplySelected() then
                self:Notify(self.Selected .. " applied.")
            else
                self:Notify("Failed to apply skybox.")
            end
        end
    })

    Changer:AddToggle("Skybox_Lock", {
        Title = "Lock Skybox",
        Default = false,
        Callback = function(State) self:SetLock(State) end
    })

    Changer:AddParagraph({
        Title = "Built-in Skybox Info",
        Content = "Apply custom skyboxes. Some may take a moment to load. Use Lock/force mode to keep it Forever."
    })

    Changer:AddSpace({ Height = 15 })

    local Custom = Tab:AddSection("Custom Skybox")
    Custom:AddSpace({ Height = 15 })

    local Faces = {
        { Key = "Lf", Title = "Left (Lf)" },
        { Key = "Rt", Title = "Right (Rt)" },
        { Key = "Up", Title = "Top (Up)" },
        { Key = "Dn", Title = "Down (Dn)" },
        { Key = "Ft", Title = "Front (Ft)" },
        { Key = "Bk", Title = "Back (Bk)" },
    }

    for _, Face in ipairs(Faces) do
        Custom:AddInput("Skybox_" .. Face.Key, {
            Title = Face.Title,
            Placeholder = "rbxassetid or URL",
            Callback = function(Value) self.CustomInputs[Face.Key] = Value end
        })
    end

    Custom:AddButton({
        Title = "Apply Custom Skybox",
        Callback = function() self:ApplyCustom() end
    })

    Custom:AddParagraph({
        Title = "Custom Skybox Info",
        Content = "Upload 6 cube skybox faces to Roblox or use direct download links, then enter the URL or rbxassetid into the 6 inputs in the correct cube directions."
    })
end

Skybox:BuildFolderTree()

return Skybox
