vim.api.nvim_create_user_command("CMakeConfigure", function()
  vim.cmd(
    "!cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
  )
end, {
  desc = "Configure C/C++ project with CMake",
})


vim.api.nvim_create_user_command("CMakeBuild", function()
  vim.cmd(
    "!cmake --build build"
  )
end, {
  desc = "Build C/C++ project",
})


vim.api.nvim_create_user_command("CMakeTest", function()
  vim.cmd(
    "!ctest --test-dir build --output-on-failure"
  )
end, {
  desc = "Run C/C++ tests",
})
