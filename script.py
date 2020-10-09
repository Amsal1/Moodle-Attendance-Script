import contextlib
from selenium import webdriver
from getpass import getpass
import selenium.webdriver.support.ui as ui
from selenium.common.exceptions import NoSuchElementException

username = input("Enter in your username: ")
password = getpass("Enter your password: ")
driver = webdriver.Chrome("C:\Program Files (x86)\Google\Chrome\Application\chromedriver.exe")
t=1
while (t!=0):
        driver.get("https://ilizone.iul.ac.in/my/") #Your moodle website address
        try:
                logged=driver.find_element_by_id("loginbtn")
                driver.implicitly_wait(10)
                username_textbox = driver.find_element_by_id("username")
                username_textbox.send_keys(username)
                password_textbox = driver.find_element_by_id("password")
                password_textbox.send_keys(password)
                login_button = driver.find_element_by_id("loginbtn")
                login_button.submit()
                driver.implicitly_wait(10)
                t=1
        except NoSuchElementException:
                t=0
 
                
driver.implicitly_wait(10)
driver.find_element_by_link_text("CS306_B").click()
driver.implicitly_wait(10)
driver.find_element_by_link_text("Attendance").click()
driver.implicitly_wait(10)
driver.find_element_by_link_text("Submit attendance").click()
driver.find_element_by_xpath("//input[@value='24671']").click()
driver.implicitly_wait(5)
driver.find_element_by_xpath("//input[@value='Save changes']").click()