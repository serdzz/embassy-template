let targets = #{
    rp2040: #{
        arch: "arm",
        rust_target: "thumbv6m-none-eabi",
	flash_start: "0x10000100",
        flash_size: "2048K - 0x100",
        ram_start: "0x20000000",
        ram_size: "264K",
        probe_chip: "RP2040"
    },

    nrf52833: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "nRF52833_xxAA",
	flash_start: "0x00000000",
        flash_size: "512K",
        ram_start: "0x20000000",
        ram_size: "128K"
    },

    nrf52840: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "",
	flash_start: "0x00000000",
        flash_size: "1024K",
        ram_start: "0x20000000",
        ram_size: "256K"
    },

    stm32f411: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "STM32F411CEUx",
	    flash_start: "0x08000000",
        flash_size: "512K",
        ram_start: "0x20000000",
        ram_size: "128K"
    },

    stm32h743zi: #{
        arch: "arm",
        rust_target: "thumbv7em-none-eabihf",
        probe_chip: "STM32743ZI"
    },

    esp32c3: #{
        arch: "riscv",
        rust_target: "riscv32imc-unknown-none-elf",
        probe_chip: "esp32c3"
    },
};

let target = variable::get("chip");
let target_properties = targets.get(target);
for key in target_properties.keys() {
    variable::set(key, target_properties.get(key));
}
