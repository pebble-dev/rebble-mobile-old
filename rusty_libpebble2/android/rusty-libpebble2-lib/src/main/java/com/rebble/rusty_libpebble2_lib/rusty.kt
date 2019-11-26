
package com.rebble.rusty_libpebble2_lib

external fun hello(to: String): String
external fun helloDirect(to: String): String

fun loadRustyLibpebble2() {
    System.loadLibrary("rustylibpebble2")
}
