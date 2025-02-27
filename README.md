# **Swag Labs Mobile App Test Automation**

This repository contains an automation framework for testing the Swag Labs mobile application using **Robot Framework** and **Appium**. The tests cover key functionalities, including login, product selection, checkout, and order completion processes in the app.

---

## **Prerequisites**

Before running the tests, ensure you have the following installed and configured:

1. **Appium**  
   A cross-platform mobile application automation tool. [Install Appium](https://appium.io/)

2. **Robot Framework**  
   A generic test automation framework. [Install Robot Framework](https://robotframework.org/)

3. **AppiumLibrary**  
   A Robot Framework library that integrates Appium functionalities. Install it using:

   ```bash
   pip install robotframework-appiumlibrary

# Test Cases

The test suite contains the following key test cases:

1. **Successful Login**  
   Logs in with valid credentials and verifies the login is successful.

2. **Unsuccessful Login**  
   Logs in with invalid credentials and verifies that the error message is displayed.

3. **Select Products and Checkout**  
   Logs in, selects products, adds them to the cart, proceeds to checkout, fills in personal details, and confirms the order.

---

# How to Run Tests

To run the tests, execute the following command from the root directory of the repository:


```bash
robot Tests/Test.robot






