import std;

using Foo = std::expected<int, int>;

auto foo() -> Foo {
  return 5;
}

int main() {
  std::print("Hello World", foo().value());

  return 0;
}