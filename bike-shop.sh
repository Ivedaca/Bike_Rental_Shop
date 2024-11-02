#!/bin/bash

#Welcome message
echo -e "\n~~~~~ Bike Rental Shop ~~~~~\n"

MAIN_MENU() {
  #Checks if an argument has been passed to main_menu.
  if [[ $1 ]]
    then
    echo -e "\n$1"
  fi

  #Options to user.
  echo "How may I help you?" 
  echo -e "\n1. Rent a bike\n2. Return a bike\n3. Exit"

  #Record keyboard information.
  read MAIN_MENU_SELECTION

  #Sets the 3 options for the user and outside of those 3 options it returns to the main menu
  case $MAIN_MENU_SELECTION in
  1) RENT_MENU ;;
  2) RETURN_MENU ;;
  3) EXIT ;;
  *) MAIN_MENU "Please enter a valid option." ;;
  esac
}

RENT_MENU() {
  echo "Rent Menu"
 
}

RETURN_MENU() {
  echo "Return Menu"
}

EXIT() {
  echo -e "\nThank you for stopping in.\n"
}

MAIN_MENU
  
