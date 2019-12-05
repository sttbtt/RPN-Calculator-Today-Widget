# Calculator Today Extension

## Introduction

The goal of this project is to take the Reverse Polish Notation calculator and add a Today Extension to it that allows the user to have a calculator in their Today View.

## Instructions

Please fork and clone this repository. Commit regularly as you complete the requirements in this project.

1. Copy the Calculator project along with the RPN framework that you did in Sprint 9 and put it in this repository. If you can't find your copy, we can provide one for you.
2. Make sure (especially if you are using your own copy of the project) that the RPN framework is imported and works correctly.
3. Create a new Today Extension target/scheme.
4. Make a completely functional RPN calculator in the today extension. On top of the functionality you have done in previous iterations of the calculator, you must also:
    - Have a button that copies the number in the text field using the `UIPasteboard` API. Refer to the documentation as always first. It is fairly detailed for `UIPasteboard`.
    - Make a visually appealing layout for both `NCWidgetDisplayMode`s.

**Make sure to test your app thoroughly.** 

## Go Further

1. Share user defaults between your app and the today extension using a new app group. This can be a theme, the last number in the text field, or anything else you want.
