import sys
import requests
import json


def test_session(address):
    # write your code here
    url = address + '/balance'

    for i in range(1, 12):
        x = requests.get(url, cookies={"sessionid": "session-" + str(i)})
        user_information = x.json()
        if user_information['username'] == 'alice':
            return user_information['balance']




def main(argv):
    address = sys.argv[1]
    print(test_session(address))


# This makes sure the main function is not called immediatedly
# when TMC imports this module
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print('usage: python %s address' % sys.argv[0])
    else:
        main(sys.argv)
