-- Hall Mess Rebate System (Case_Study) Database Schema
-- Import this file into MySQL / phpMyAdmin before running the application.

CREATE DATABASE IF NOT EXISTS `ezhil`
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE `ezhil`;

-- 1. Registered Students
CREATE TABLE IF NOT EXISTS `register` (
  `name` VARCHAR(100) NOT NULL,
  `contact_no` VARCHAR(20) NOT NULL,
  `hall` VARCHAR(50) NOT NULL,
  `room` VARCHAR(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Student Login Audit Log
CREATE TABLE IF NOT EXISTS `login` (
  `name` VARCHAR(100) NOT NULL,
  `room` VARCHAR(20) NOT NULL,
  `login_time` TIME NOT NULL,
  `login_date` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Mess Rebate Applications
CREATE TABLE IF NOT EXISTS `debate` (
  `register_no` VARCHAR(50) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `room_no` VARCHAR(20) NOT NULL,
  `address_of_stay` VARCHAR(150) NOT NULL,
  `hall` VARCHAR(50) NOT NULL,
  `date_from` DATE NOT NULL,
  `date_to` DATE NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `applied_on` DATE NOT NULL,
  `status` VARCHAR(20) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Hall Admin Login Logs
CREATE TABLE IF NOT EXISTS `sadmin` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `login_time` TIME NOT NULL,
  `login_date` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `hadmin` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `login_time` TIME NOT NULL,
  `login_date` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `tadmin` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `login_time` TIME NOT NULL,
  `login_date` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
