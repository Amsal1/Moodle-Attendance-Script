import contextlib
from selenium import webdriver
from getpass import getpass
import selenium.webdriver.support.ui as ui
from selenium.common.exceptions import *
import urllib
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait as wait
from selenium.webdriver.support import expected_conditions as EC
import sys


#Edit your details here:

print("Program is coded by a student of CSE-2 and idea was given by my friend. CSE 2022 Passout Rocks!")
print("Github repo of this program: https://github.com/Amsal1/Moodle-Attendance-Script")
w = 1920
h = 1080
if len(sys.argv) > 1:
        username = sys.argv[1]
        password = sys.argv[2]
        subject =  sys.argv[3]
        if len(sys.argv) > 4:
                w = sys.argv[4]                 #width of chrome window
                h = sys.argv[5]                 #height of chrome window
else:
        print("You can also pass commandline arguments with AACS_ILI in this way: AACS_ILI.exe Username Password Subject_Code")
        print("Optionally you can pass chrome window size in commandline arguments with AACS_ILI in this way: AACS_ILI.exe Username Password Subject_Code 1920 1080")
        username = input("Enter in your username: ")
        password = getpass("Enter your password: ")
        subject =  input("Enter 1 ILI Subject Code(eg. CS311_A,CS309_B..., make sure your enter exactly like mentioned in ILI): ")
path = "chromedriver.exe"       
driver = webdriver.Chrome(path)
driver.set_window_size(w, h)              #Don't set it to very smaller size or else some variables might not get detected

end=0

while end==0:
        try:
                driver.get("https://ilizone.iul.ac.in/my/") #Your moodle website address
                if not driver.find_elements_by_xpath("//span[@class='userbutton']"):    #For checking if logged in or not
                        driver.implicitly_wait(10)
                        username_textbox = driver.find_element_by_id("username")
                        username_textbox.send_keys(username)
                        password_textbox = driver.find_element_by_id("password")
                        password_textbox.send_keys(password)
                        login_button = driver.find_element_by_id("loginbtn")
                        login_button.submit()
                driver.implicitly_wait(10)
                driver.find_element_by_link_text(subject).click()
                driver.implicitly_wait(10)
                driver.find_element_by_link_text("Attendance").click()
                driver.implicitly_wait(10)
                driver.find_element_by_link_text("Submit attendance").click()
                #wait(driver, 10).until(EC.element_to_be_clickable((By.XPATH, "//span[text()='Present']"))).click()
                driver.find_element_by_xpath("//span[text()='Present']").click()
                driver.implicitly_wait(5)
                driver.find_element_by_xpath("//input[@value='Save changes']").click()
                driver.implicitly_wait(5)
                end=1
        except NoSuchElementException:
                end=0
driver.quit()
quit()