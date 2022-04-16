{ pkgs, lib }:

{
    nvim-base16 = pkgs.vimUtils.buildVimPlugin rec {
    pname = "nvim-base16";
    version = "0.1";
    src = pkgs.fetchFromGitHub {
        owner = "norcalli";
        repo = "nvim-base16.lua";
        rev = "b336f40462b3ca1ad16a17c195b83731a2942d9a";
        sha256 = "0n3gw7mkypw092n6swc4mpd1m00mm8n6fj9w4vmyscnc8xwmhnmq";
    };
    meta.homepage = "https://github.com/norcalli/nvim-base16";
    }
;

  neoscroll-nvim = pkgs.vimUtils.buildVimPlugin rec {
    pname = "neoscroll-nvim";
    version = "0.1";
    src = pkgs.fetchFromGitHub {
        owner = "karb94";
        repo = "neoscroll.nvim";
        rev = "cd4278795ed8ee120a97078b03aa6436802126d9";
        sha256 = "0byd108bmiz5rhnm4jh4sb4sqma9rcac7h8q6i89hhjwn5r0qqif";
    };
    meta.homepage = "https://github.com/karb94/neoscroll.nvim";
    };

  zenmode-nvim = pkgs.vimUtils.buildVimPlugin rec {
    pname = "zenmode-nvim";
    version = "2021-11-07";
    src = pkgs.fetchFromGitHub {
        owner = "folke";
        repo = "zen-mode.nvim";
        rev = "f1cc53d32b49cf962fb89a2eb0a31b85bb270f7c";
        sha256 = "1fxkrny1xk69w8rlmz4x5msvqb8i8xvvl9csndpplxhkn8wzirdp";
    };
    meta.homepage = "https://github.com/folke/zen-mode.nvim";
    };

  indent-blankline-nvim = pkgs.vimUtils.buildVimPlugin rec {
    pname = "indent-blankline-nvim";
    version = "2021-12-01";
    src = pkgs.fetchFromGitHub {
        owner = "lukas-reineke";
        repo = "indent-blankline.nvim";
        rev = "0f8df7e43f0cae4c44e0e8383436ad602f333419";
        sha256 = "13jqcl54ijdzk3r17fmr2zzzjxn1njwfhipaaxyk7p6qqi1hphgj";
    };
    meta.homepage = "https://github.com/lukas-reineke/indent-blankline.nvim";
    };
}


