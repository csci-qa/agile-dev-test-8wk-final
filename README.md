# Agile Development and Testing Project

## User Stories
### Course listing
As a student, I want to find the special topics course, so that I can learn Cucumber
- Searching for "csci 2994" from CSCC's homepage yields more than 1 result
- First result of search is titled "CSCI-2994 - CSCI Current Topics"
- The course lists "None" for its prerequisites. 
- There's a link to the bookstore under "Textbooks" for the course listing.

### Rubular
As a student, I want to make sure the instructor has a valid email address, so I can ask questions
- Should be able to enter a regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "jdenen@cscc.edu"
- Should return a match result of "jdenen@cscc.edu"
- Should return three match groups:
  - jdenen
  - cscc
  - edu
- Match groups should each be formatted onto a new line
- Match groups should be preceded by an index number

## Git

To complete this assignment, you need to:

1. Fork this repository
2. Clone your fork onto your machine with `git clone https://github.com/YOUR_USERNAME/automation-with-watir-webdriver`
3. Write code
4. Push your work to your forked repository with `git push`
5. Submit a pull request WITH YOUR NAME IN THE TITLE

## Questions or Concerns

Leave us a GitHub issue, email an instructor, or grab one before/after the next class.
