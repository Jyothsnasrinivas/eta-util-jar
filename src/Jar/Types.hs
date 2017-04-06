module Jar.Types where

import Java
import Java.Array
import Java.Exception
import Java.IO

-- Start java.util.zip.Pack200.Packer

data {-# CLASS "java.util.zip.Pack200$Packer" #-}
  Packer = Packer (Object# Packer)
  deriving Class

foreign import java unsafe "@interface" pack :: (b <: Packer) => JarFile -> OutputStream -> Java b ()

foreign import java unsafe "@interface pack"
  pack2 :: (b <: Packer) => JarInputStream -> OutputStream -> Java b ()

foreign import java unsafe "@interface"
  properties :: (b <: Packer) => Java b (SortedMap JString JString)

-- End java.util.zip.Pack200.Packer
