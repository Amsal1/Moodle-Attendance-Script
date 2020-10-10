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
username = sys.argv[1] or input("Enter in your username: ")
password = sys.argv[2] or getpass("Enter your password: ")
subject =  sys.argv[3] or input("Enter iul subject code(eg. CS311_A etc, make sure its exact like IUL): ")
path = "chromedriver.exe"       
driver = webdriver.Chrome(path)
driver.set_window_size(1920, 1080)              #Don't set it to very smaller size or else some variables might not get detected

end=0
try:
        while end==0:
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

except NoSuchElementException:
        end=0