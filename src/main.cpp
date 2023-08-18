import std;

using Foo = std::expected<int, int>;

auto foo() -> Foo {
  return 5;
}

int main() {
  foo().value();

  return 0;
}