// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EnumDemo {
    // Enum declaration for weekdays
    enum WeekDays {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    WeekDays public week; // State variable of type WeekDays
    WeekDays public choice; // State variable for choice
    WeekDays constant default_value = WeekDays.Sunday; // Constant with default value

    // Function to set the value of choice based on user input
    function set_value(WeekDays _day) public {
        choice = _day;
    }

    // Function to get the current choice
    function get_choice() public view returns (WeekDays) {
        return choice;
    }

    // Function to get the default value
    function get_defaultValue() public pure returns (WeekDays) {
        return default_value;
    }
}
