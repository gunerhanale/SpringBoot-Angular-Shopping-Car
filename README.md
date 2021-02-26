## Technology Stacks
**Backend**
  - Java 11
  - Spring Boot
  - Spring Data JPA
  - Hibernate
  - MySQL
  - Maven

**Frontend**
  - Angular 10
  - Angular CLI
  - Bootstrap

## Database Schema

  - https://github.com/gunerhanale/SpringBoot-Angular-Shopping-Car/blob/main/create-schema-tables.sql

## How to  Run

Start the backend server before the frontend client.  

**Backend**

  1. Install [MySQL](https://www.mysql.com/downloads/) 
  2. Configure datasource in `application.properties`.
  3. `cd backend`.
  4. Run `mvn install`.
  5. Run `mvn spring-boot:run`.
  6. The backend server is running on [localhost:8080]().

**Frontend**
  1. Install [Node.js and npm](https://www.npmjs.com/get-npm)
  2. `cd frontend/angular-carshop-ecommerce`.
  3. Run `npm install`.
  4. Run `ng serve`
  5. The frontend client is running on [localhost:4200]().
  
Note: The backend API url is configured in `src/environments/environment.ts` of the frontend project. It is `localhost:8080/api` by default.# SpringBoot-Angular-Shopping-Car
