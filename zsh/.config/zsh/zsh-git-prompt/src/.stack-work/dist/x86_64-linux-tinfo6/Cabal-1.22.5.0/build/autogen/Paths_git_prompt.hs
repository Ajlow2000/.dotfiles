module Paths_git_prompt (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/ajlow/.dotfiles/zsh/.config/zsh/zsh-git-prompt/.stack-work/install/x86_64-linux-tinfo6/fdeddbf917b06ef24cec94428624585e57a788a826e10d2bd2402dd9ee0e710f/7.10.3/bin"
libdir     = "/home/ajlow/.dotfiles/zsh/.config/zsh/zsh-git-prompt/.stack-work/install/x86_64-linux-tinfo6/fdeddbf917b06ef24cec94428624585e57a788a826e10d2bd2402dd9ee0e710f/7.10.3/lib/x86_64-linux-ghc-7.10.3/git-prompt-0.1.0.0-GyKbGQsRujX2Ik9bjYPmgX"
datadir    = "/home/ajlow/.dotfiles/zsh/.config/zsh/zsh-git-prompt/.stack-work/install/x86_64-linux-tinfo6/fdeddbf917b06ef24cec94428624585e57a788a826e10d2bd2402dd9ee0e710f/7.10.3/share/x86_64-linux-ghc-7.10.3/git-prompt-0.1.0.0"
libexecdir = "/home/ajlow/.dotfiles/zsh/.config/zsh/zsh-git-prompt/.stack-work/install/x86_64-linux-tinfo6/fdeddbf917b06ef24cec94428624585e57a788a826e10d2bd2402dd9ee0e710f/7.10.3/libexec"
sysconfdir = "/home/ajlow/.dotfiles/zsh/.config/zsh/zsh-git-prompt/.stack-work/install/x86_64-linux-tinfo6/fdeddbf917b06ef24cec94428624585e57a788a826e10d2bd2402dd9ee0e710f/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "git_prompt_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "git_prompt_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "git_prompt_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "git_prompt_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "git_prompt_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
