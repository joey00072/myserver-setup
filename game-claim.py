import os
import time
import datetime

def claim_game():
    os.system("sh ./game-claim.sh")

claim_game()



RUN = True

while RUN:
    # Get the current date and time
    now = datetime.datetime.now()

    # Check if it's the desired day of the week and time to run the function
    if now.weekday() == 0 and now.hour == 12 and now.minute == 0:
        claim_game()

    # Wait for one minute before checking again
    time.sleep(60)

