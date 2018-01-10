import subprocess
import schedule
import time
import re

def job():
    batteryStatus = subprocess.check_output(['pmset', '-g', 'batt'])
    print(batteryStatus)
    
    a = re.findall('\\b(\d+)%;', batteryStatus)
    if a:
        batterLevel = int(a[0])
    print('Batter level = ' + a[0])
        if batterLevel < 10:
            slackHelpMessage(batterLevel)

def slackHelpMessage(batterLevel):
    slackChannelUrl = 'https://hooks.slack.com/services/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'
    slackMessage = 'Help!!! I am dying ... battary left = ' + str(batterLevel) + '%'
    subprocess.check_output(['curl', '-X', 'POST', '-H', 'Content-type: application/json', '--data', '{"text":"'+ slackMessage +'"}', slackChannelUrl])

job()
schedule.every(10).minutes.do(job)

while 1:
    schedule.run_pending()
    time.sleep(1)

