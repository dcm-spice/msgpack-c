### msgpack-c/msgpack-c.podspec
Pod::Spec.new do |s|
   s.name         = "msgpack-c"
   s.version      = "1.4.2"
   s.summary      = "MessagePack is an efficient binary serialization format."
   s.homepage     = "https://github.com/msgpack/msgpack-c"
   s.license      = {
      :type => "BSL",
      :file => "msgpack-c/LICENSE_1_0.txt"
   }
   s.author       = {
      "msgpack-c": "email@address.com"
   }
   s.source       = {
      :git => "https://github.com/dcm-spice/msgpack-c.git",
      :tag => "#{s.version}",
      :submodules => true
   }

   header_file_paths = %w(
   msgpack-c/include/*.h
   msgpack-c/include/*.hpp
   msgpack-c/include/msgpack/*.h
   msgpack-c/include/msgpack/*.hpp
   msgpack-c/include/msgpack/adaptor/*.h
   msgpack-c/include/msgpack/adaptor/*.hpp
   msgpack-c/include/msgpack/adaptor/boost/*.h
   msgpack-c/include/msgpack/adaptor/boost/*.hpp
   msgpack-c/include/msgpack/adaptor/cpp11/*.h
   msgpack-c/include/msgpack/adaptor/cpp11/*.hpp
   msgpack-c/include/msgpack/adaptor/detail/*.h
   msgpack-c/include/msgpack/adaptor/detail/*.hpp
   msgpack-c/include/msgpack/adaptor/tr1/*.h
   msgpack-c/include/msgpack/adaptor/tr1/*.hpp
   msgpack-c/include/msgpack/detail/*.h
   msgpack-c/include/msgpack/detail/*.hpp
   msgpack-c/include/msgpack/predef/*.h
   msgpack-c/include/msgpack/predef/*.hpp
   msgpack-c/include/msgpack/predef/architecture/*.h
   msgpack-c/include/msgpack/predef/architecture/*.hpp
   msgpack-c/include/msgpack/predef/architecture/x86/*.h
   msgpack-c/include/msgpack/predef/architecture/x86/*.hpp
   msgpack-c/include/msgpack/predef/compiler/*.h
   msgpack-c/include/msgpack/predef/compiler/*.hpp
   msgpack-c/include/msgpack/predef/detail/*.h
   msgpack-c/include/msgpack/predef/detail/*.hpp
   msgpack-c/include/msgpack/predef/language/*.h
   msgpack-c/include/msgpack/predef/language/*.hpp
   msgpack-c/include/msgpack/predef/library/*.h
   msgpack-c/include/msgpack/predef/library/*.hpp
   msgpack-c/include/msgpack/predef/library/c/*.h
   msgpack-c/include/msgpack/predef/library/c/*.hpp
   msgpack-c/include/msgpack/predef/library/std/*.h
   msgpack-c/include/msgpack/predef/library/std/*.hpp
   msgpack-c/include/msgpack/predef/os/*.h
   msgpack-c/include/msgpack/predef/os/*.hpp
   msgpack-c/include/msgpack/predef/os/bsd/*.h
   msgpack-c/include/msgpack/predef/os/bsd/*.hpp
   msgpack-c/include/msgpack/predef/other/*.h
   msgpack-c/include/msgpack/predef/other/*.hpp
   msgpack-c/include/msgpack/predef/platform/*.h
   msgpack-c/include/msgpack/predef/platform/*.hpp
   msgpack-c/include/msgpack/preprocessor/*.h
   msgpack-c/include/msgpack/preprocessor/*.hpp
   msgpack-c/include/msgpack/preprocessor/arithmetic/*.h
   msgpack-c/include/msgpack/preprocessor/arithmetic/*.hpp
   msgpack-c/include/msgpack/preprocessor/arithmetic/detail/*.h
   msgpack-c/include/msgpack/preprocessor/arithmetic/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/array/*.h
   msgpack-c/include/msgpack/preprocessor/array/*.hpp
   msgpack-c/include/msgpack/preprocessor/array/detail/*.h
   msgpack-c/include/msgpack/preprocessor/array/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/comparison/*.h
   msgpack-c/include/msgpack/preprocessor/comparison/*.hpp
   msgpack-c/include/msgpack/preprocessor/config/*.h
   msgpack-c/include/msgpack/preprocessor/config/*.hpp
   msgpack-c/include/msgpack/preprocessor/control/*.h
   msgpack-c/include/msgpack/preprocessor/control/*.hpp
   msgpack-c/include/msgpack/preprocessor/control/detail/*.h
   msgpack-c/include/msgpack/preprocessor/control/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/control/detail/dmc/*.h
   msgpack-c/include/msgpack/preprocessor/control/detail/dmc/*.hpp
   msgpack-c/include/msgpack/preprocessor/control/detail/edg/*.h
   msgpack-c/include/msgpack/preprocessor/control/detail/edg/*.hpp
   msgpack-c/include/msgpack/preprocessor/control/detail/msvc/*.h
   msgpack-c/include/msgpack/preprocessor/control/detail/msvc/*.hpp
   msgpack-c/include/msgpack/preprocessor/debug/*.h
   msgpack-c/include/msgpack/preprocessor/debug/*.hpp
   msgpack-c/include/msgpack/preprocessor/detail/*.h
   msgpack-c/include/msgpack/preprocessor/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/detail/dmc/*.h
   msgpack-c/include/msgpack/preprocessor/detail/dmc/*.hpp
   msgpack-c/include/msgpack/preprocessor/facilities/*.h
   msgpack-c/include/msgpack/preprocessor/facilities/*.hpp
   msgpack-c/include/msgpack/preprocessor/facilities/detail/*.h
   msgpack-c/include/msgpack/preprocessor/facilities/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/iteration/*.h
   msgpack-c/include/msgpack/preprocessor/iteration/*.hpp
   msgpack-c/include/msgpack/preprocessor/iteration/detail/*.h
   msgpack-c/include/msgpack/preprocessor/iteration/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/iteration/detail/bounds/*.h
   msgpack-c/include/msgpack/preprocessor/iteration/detail/bounds/*.hpp
   msgpack-c/include/msgpack/preprocessor/iteration/detail/iter/*.h
   msgpack-c/include/msgpack/preprocessor/iteration/detail/iter/*.hpp
   msgpack-c/include/msgpack/preprocessor/list/*.h
   msgpack-c/include/msgpack/preprocessor/list/*.hpp
   msgpack-c/include/msgpack/preprocessor/list/detail/*.h
   msgpack-c/include/msgpack/preprocessor/list/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/list/detail/dmc/*.h
   msgpack-c/include/msgpack/preprocessor/list/detail/dmc/*.hpp
   msgpack-c/include/msgpack/preprocessor/list/detail/edg/*.h
   msgpack-c/include/msgpack/preprocessor/list/detail/edg/*.hpp
   msgpack-c/include/msgpack/preprocessor/logical/*.h
   msgpack-c/include/msgpack/preprocessor/logical/*.hpp
   msgpack-c/include/msgpack/preprocessor/punctuation/*.h
   msgpack-c/include/msgpack/preprocessor/punctuation/*.hpp
   msgpack-c/include/msgpack/preprocessor/punctuation/detail/*.h
   msgpack-c/include/msgpack/preprocessor/punctuation/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/repetition/*.h
   msgpack-c/include/msgpack/preprocessor/repetition/*.hpp
   msgpack-c/include/msgpack/preprocessor/repetition/detail/*.h
   msgpack-c/include/msgpack/preprocessor/repetition/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/repetition/detail/dmc/*.h
   msgpack-c/include/msgpack/preprocessor/repetition/detail/dmc/*.hpp
   msgpack-c/include/msgpack/preprocessor/repetition/detail/edg/*.h
   msgpack-c/include/msgpack/preprocessor/repetition/detail/edg/*.hpp
   msgpack-c/include/msgpack/preprocessor/repetition/detail/msvc/*.h
   msgpack-c/include/msgpack/preprocessor/repetition/detail/msvc/*.hpp
   msgpack-c/include/msgpack/preprocessor/selection/*.h
   msgpack-c/include/msgpack/preprocessor/selection/*.hpp
   msgpack-c/include/msgpack/preprocessor/seq/*.h
   msgpack-c/include/msgpack/preprocessor/seq/*.hpp
   msgpack-c/include/msgpack/preprocessor/seq/detail/*.h
   msgpack-c/include/msgpack/preprocessor/seq/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/slot/*.h
   msgpack-c/include/msgpack/preprocessor/slot/*.hpp
   msgpack-c/include/msgpack/preprocessor/slot/detail/*.h
   msgpack-c/include/msgpack/preprocessor/slot/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/tuple/*.h
   msgpack-c/include/msgpack/preprocessor/tuple/*.hpp
   msgpack-c/include/msgpack/preprocessor/tuple/detail/*.h
   msgpack-c/include/msgpack/preprocessor/tuple/detail/*.hpp
   msgpack-c/include/msgpack/preprocessor/variadic/*.h
   msgpack-c/include/msgpack/preprocessor/variadic/*.hpp
   msgpack-c/include/msgpack/preprocessor/variadic/detail/*.h
   msgpack-c/include/msgpack/preprocessor/variadic/detail/*.hpp
   )

   s.public_header_files = header_file_paths
   s.header_mappings_dir = "msgpack-c/include"  # preserve the structure of header directories
   s.source_files = "msgpack-c/src/*.c"
   s.preserve_paths = "msgpack-c/include", "Android.mk" # instead of adding to 'source_files'

   local_path = if ENV["COCOA_PODS_LOCAL_DEV"]
                  File.dirname(__FILE__)
                else
                  "$(PODS_ROOT)/#{s.name}"
                end

   s.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "#{local_path}/msgpack-c/include" }

   s.platforms = { :ios => "6.0", :osx => "10.7" }
end
