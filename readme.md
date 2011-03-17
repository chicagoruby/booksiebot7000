Booksiebot7000
==============

## GOAL: Create a quick and easy system to help automate the book request process for our user group

## WHAT IT DOES NOW:
the form to enter a book request is in index.haml
* title
* publisher
* electronic format if available
* created_at  (set by database hook)

## WOULD LIKE TO SEE:

(1) validate form in index.haml
  check user submitting request against meetup group via api

(2) simple admin screen that will:
  view all requests
  ordered by newest first or by publisher
  status 
    to show that request has been made to publisher
    to show that book has been received
    to show that reader has been notified
    to show that reader has collected book
    to show that reader has submitted review
    to show that review has been sent to publisher
    
(3) form for reader to enter review

(4) when book arrives, an email can be triggered to let requester know the book has arrived and they can pick it up at the next meeting

(5) admin can run a report of outstanding work
  books waiting for reader to pick up
  books waiting for reader to submit review
  books waiting for admin to send review to publisher

(6) admin can send email reminders for books waiting for reader to submit review


## WOULD LIKE TO SEE IN THE FUTURE:

