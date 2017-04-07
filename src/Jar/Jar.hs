module Jar.Jar where

import Java
import Java.Array
import Java.IO
import Zip.Zip


data {-# CLASS "java.security.cert.Certificate[]" #-}
  CertificateArray = CertificateArray (Object# CertificateArray)
  deriving Class

instance JArray Certificate CertificateArray

data {-# CLASS "java.security.CodeSigner[]" #-}
  CodeSignerArray = CodeSignerArray (Object# CodeSignerArray)
  deriving Class

instance JArray Certificate CertificateArray

-- Start java.util.jar.JarFile

data {-# CLASS "java.util.jar.JarFile" #-}
  JarFile = JarFile (Object# JarFile)
  deriving Class

type instance Inherits JarFile = '[ZipFile, Closeable]

-- End java.util.jar.JarFile

-- Start java.util.jar.JarEntry

data {-# CLASS "java.util.jar.JarEntry" #-}
  JarEntry = JarEntry (Object# JarEntry)
  deriving Class

type instance Inherits JarEntry = '[ZipEntry]

foreign import java unsafe getAttributes :: Java JarEntry Attributes

foreign import java unsafe getCertificates :: Java JarEntry CertificateArray

foreign import java unsafe getCodeSigners :: Java JarEntry CodeSignerArray

-- End java.util.jar.JarFile

-- Start java.util.jar.JarInputStream

data {-# CLASS "java.util.jar.JarInputStream" #-}
  JarInputStream = JarInputStream (Object# JarInputStream)
  deriving Class

type instance Inherits JarInputStream = '[ZipInputStream, Closeable]

-- End java.util.jar.JarInputStream
