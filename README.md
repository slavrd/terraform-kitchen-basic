# Terraform-Kitchen basic

A basic, simple example of testing different use cases for a Terraform module with Kitchen-Terraform.

## Description

The Terraform Module under test does nothing but pass the value of an input variable to an output.

The goal is to test that:

* If no value is provided to the variable the module will assign the appropriate default value.
* If a value is assigned to the input variable the module should assign it to the output.

To achieve that there are two "fixtures" - Terraform configurations that call the module in the appropriate way for each of the test cases. The fixtures are placed in `test/fixtures` directory.

Kitchen is configured to bring up an Instance of each fixture and run the appropriate tests against it.

## Requirement

Prerequisites to run the project.

* Have Ruby `~> 2.7.2`. It is recommended to use a ruby versions manager e.g. [rbenv](https://github.com/rbenv/rbenv).
* Have [bundler](https://bundler.io/) installed.
* Install the Gems from the Gemfile e.i. run `bundle install`
* Have [Terraform](https://www.terraform.io/downloads.html) installed.

## Execution

Use the following commands to execute the tests

* Converge the Kitchen environment

  ```
  bundle exec kitchen converge
  ```

* List the Kitchen instances

  ```
  bundle exec kitchen list
  ```

* Run the inspec tests

  ```
  bundle exec kitchen verify
  ```

* Destroy the Kitchen environment

  ```
  bundle exec kitchen destroy
  ```