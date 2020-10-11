import contextlib
from selenium import webdriver
from getpass import getpass
import selenium.webdriver.support.ui as ui
from selenium.common.exceptions import NoSuchElementException
import urllib
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait as wait
from selenium.webdriver.support import expected_conditions as EC
import sys
import time


print("Program is coded by a student of CSE-2 and idea was given by my friend. CSE 2022 Passout Rocks!")
print("")
print("Github repo of this program: https://github.com/Amsal1/Moodle-Attendance-Script")
print("")

w = 1920                                                        #width  
h = 1080                                                        #height
tmain=3000                                                      #default value for timeout-main

if len(sys.argv) > 1:
        username = sys.argv[1]
        password = sys.argv[2]
        subject =  sys.argv[3]
        if len(sys.argv) > 4:
                w = sys.argv[4]                                 #width of chrome window
                h = sys.argv[5]                                 #height of chrome window
                if len(sys.argv) > 6:
                        tmain=int(sys.argv[6])                  #timeout of code after which it self exits                        
else:
        print("You can also pass commandline arguments with AACS_ILI in this way: AACS_ILI.exe Username Password Subject_Code")
        print("")
        print("Optionally you can pass chrome window size and timeout of whole program(default=3000seconds) execution in commandline arguments with AACS_ILI in this way: AACS_ILI.exe Username Password Subject_Code 1920 1080 2500")
        print("")
        username = input("Enter in your username: ")
        password = getpass("Enter your password: ")
        subject =  input("Enter 1 ILI Subject Code(eg. CS311_A,CS309_B..., make sure your enter exactly like mentioned in ILI): ")
path = "chromedriver.exe"       
driver = webdriver.Chrome(path)
driver.set_window_size(w, h)                                    #Don't set it to very smaller size or else some variables might not get detected

t1=time.perf_counter()                                          #current-time
end=0
while end==0:
        try:
                driver.get("https://ilizone.iul.ac.in/my/")     #Your moodle website address
                t2=time.perf_counter()                          #time-now
                if t2-t1 > tmain:                               #comment this 'if' you don't need timeout for your works...
                        driver.quit()                           #
                        quit()                                  #
                driver.implicitly_wait(20)
                if not driver.find_elements_by_xpath("//span[@class='userbutton']"):    #For checking if logged in or not
                        username_textbox = driver.find_element_by_id("username")
                        username_textbox.send_keys(username)
                        password_textbox = driver.find_element_by_id("password")
                        password_textbox.send_keys(password)
                        login_button = driver.find_element_by_id("loginbtn")
                        login_button.submit()
                driver.find_element_by_link_text(subject).click()
                driver.find_element_by_link_text("Attendance").click()
                driver.find_element_by_link_text("Submit attendance").click()
                #wait(driver, 10).until(EC.element_to_be_clickable((By.XPATH, "//span[text()='Present']"))).click()
                driver.find_element_by_xpath("//span[text()='Present']").click()
                driver.find_element_by_xpath("//input[@value='Save changes']").click()
                end=1
        except NoSuchElementException:
                end=0
driver.quit()
quit()