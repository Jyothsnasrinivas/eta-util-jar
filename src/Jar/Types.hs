module Jar.Types where

import Java
import Java.Array
import Java.Collections
import Java.Exception
import Java.IO

-- Start java.util.jar.Pack200.Packer

data {-# CLASS "java.util.jar.Pack200$Packer" #-}
  Packer = Packer (Object# Packer)
  deriving Class

foreign import java unsafe "@interface" pack :: (b <: Packer) => JarFile -> OutputStream -> Java b ()

foreign import java unsafe "@interface pack"
  pack2 :: (b <: Packer) => JarInputStream -> OutputStream -> Java b ()

foreign import java unsafe "@interface"
  properties :: (b <: Packer) => Java b (SortedMap JString JString)

-- End java.util.zip.Pack200.Packer

-- Start java.util.jar.Pack200.Unpacker

data {-# CLASS "java.util.jar.Pack200$Unpacker" #-}
  Unpacker = Unpacker (Object# Unpacker)
  deriving Class

foreign import java unsafe "@interface properties"
  propertiesUP :: (b <: Unpacker) => Java b (SortedMap JString JString)

foreign import java unsafe "@interface unpack"
  unpack :: (b <: Unpacker) => File -> JarOutputStream

foreign import java unsafe "@interface unpack"
  unpack2 :: (b <: Unpacker) => InputStream -> JarOutputStream

-- End java.util.jar.Pack200.Unpacker

-- Start java.util.jar.Attributes

data {-# CLASS "java.util.jar.Attributes" #-}
  Attributes = Attributes (Object# Attributes)
  deriving Class

type instance Inherits Attributes = '[Object, (Map Object Object)]

-- End java.util.jar.Attributes

-- Start java.util.jar.Attributes.Name

data {-# CLASS "java.util.jar.Attributes$Name" #-}
  Name = Name (Object# Name)
  deriving Class

type instance Inherits Name = '[Object, Attributes]

-- End java.util.jar.Attributes.Name
