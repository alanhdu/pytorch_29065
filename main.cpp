#include <pybind11/embed.h>
#include <thread>

namespace py = pybind11;

int main() {
    py::scoped_interpreter guard{};
    auto thread = std::thread([]() {
      auto hello = py::module::import("hello");
      py::object a =  hello.attr("A")();

      a.attr("run")();
    });


    thread.join();
}
