Feature: To Do list
Scenario:
Given a To Do list board like this:
| Activity       | In Progress | Done |
| Homework       |             |      |
| Go to shopping |             |      |
| Go to market   |             |      |
| Go to library  |             |      |
| Feed pet       |             |      |
When I put "Homework" in progress
	And I put "Feed pet" in progress
Then the To Do list board should look like this:
| Activity       | In Progress | Done |
| Homework       |      x      |      |
| Go to shopping |             |      |
| Go to market   |             |      |
| Go to library  |             |      |
| Feed pet       |      x      |      |
When I put "Homework" in done
Then the To Do list board should look like this:
| Activity       | In Progress | Done |
| Homework       |             |  x   |
| Go to shopping |             |      |
| Go to market   |             |      |
| Go to library  |             |      |
| Feed pet       |      x      |      |