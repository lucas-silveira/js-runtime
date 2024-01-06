main: main.cc
  g++ -I. -Ideps/v8/include src/main.cc -o build/jsruntime -fno-rtti -lv8_monolith -lv8_libbase -lv8_libplatform -ldl -Ldeps/v8/out.gn/x64.release.sample/obj/ -pthread -std=c++17 -DV8_COMPRESS_POINTERS -DV8_ENABLE_SANDBOX

clean:
  rm ./build/jsruntime