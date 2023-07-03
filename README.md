# ChallengeMeli

## Description

This repository contains the Go Rest API solution implemented for the GROUP CINTE iOS Challenge

### Navigation flow

The app has the following navigation flow:
- Splash View loading
- Posts list
- Posts search

### Specification of the API

#### Product List
URL:  [https://gorest.co.in/public/v1/posts](https://gorest.co.in/public/v1/posts)

## Requirements
- Xcode 13.0
- Cocoapods
- Minimum iOS Target 14.0

## Implementation

### Architecture

The software architecture was based in View, Interactor, Presenter, Entity, Router (VIPER). This approach helps focus to concentrate on SOLID and clean code principles.
Delivery, Domain (Core in the project) and Infraestructure. The Delivery layer for flows.

### ChallengeCINTE
This is the main application. 
The project has the following dependencies
- MBProgressHUD
- SwiftyJSON

