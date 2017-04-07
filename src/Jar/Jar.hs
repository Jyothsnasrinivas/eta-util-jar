module Jar.Jar where

import Java
import Java.Array
import Java.IO
import Zip.Zip

-- Start java.util.jar.JarFile

data {-# CLASS "java.util.jar.JarFile" #-}
  JarFile = JarFile (Object# JarFile)
  deriving Class

type instance Inherits JarFile = '[ZipFile, Closeable]

-- End java.util.jar.JarFile
