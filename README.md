# Vaccine Web Tests

## How to run test

Install robot and selenium library

```python
pip install robotframework
pip install robotframework-seleniumlibrary
```

Make sure to webdriver on your path.

Run with command:

```python
robot create_reservation.robot
robot cancel_reservation.robot
```

In case there is no user of this ID run:

```python
robot create_citizen.robot
```

## Which do you think is a better framework for E2E testing of web applications or web services:  Robot Framework or Cucumber with Selenium/HTTP library and JUnit?

I think Robot Framework is more suitable since it's a test automation framework for E2E acceptance testing and acceptance test-driven development, while cucumber is more behavior driven development. Furthermore, Robot Framework's simple usage and library make it uncomplicated to implement, extending to more than front end, coding form back end and custom test can also be done. It's provide easy understanding to tester for both who know how to code and don't. Also, being able to manage your test case and data fairly conviniently. Personally, I use less time understanding Robot Framework over Cucumber and prefer the neat way Robot Framework provided their report.

## What tutorial or online resource(s) did you find most helpful for learning Robot Framework?

I found [SeleniumLibrary Document](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) to be extremely helpful.

The other resource that is extremely helpful for this assignment is stackoverflow.
