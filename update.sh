#!/usr/bin/env bash
echo "Formatting"
cargo fmt -- --check
echo "Linting"
cargo clippy -- -D warnings
echo "Testing"
cargo test
echo "Checking code coverage"
cargo tarpaulin --ignore-tests
echo "Auditing"
cargo audit